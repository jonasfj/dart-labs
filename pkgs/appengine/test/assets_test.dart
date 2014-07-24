import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:appengine/src/appengine_context.dart';
import 'package:appengine/src/client_context.dart';
import 'package:appengine/src/server/assets.dart';
import 'package:unittest/unittest.dart';


class _AssetError extends TypeMatcher {
  const _AssetError() : super("AssetError");
  bool matches(item, Map matchState) => item is AssetError;
}

const isAssetError = const _AssetError();

// HTTP client which requests /test and completes with the binary
// body.
Future<List<int>> getAsset(int port, String path,
                           [int expectedStatusCode = 200]) {
  var client;
  client = new HttpClient();
  return client.get('127.0.0.1', port, path)
      .then((request) {
        return request.close();
      })
      .then((response) {
        expect(response.statusCode, expectedStatusCode);
        return response
            .fold([], (buf, data) => buf..addAll(data));
      })
      .whenComplete(() {
        client.close();
      });
}

void main() {
  if (!FileSystemEntity.isDirectorySync(AssetsManager.root)) {
    throw new StateError('The directory "${AssetsManager.root}" does not '
        'exist in the current directory – "${Directory.current.path}". '
        'Try running from the "test" directory.');
  }

  group('pub serve proxy', () {
    var pubServe;
    var appServer;
    var appServerPort;
    var pubServeUri;

    // 'pub serve' mock which expects /test request and returns a
    // fixed body.
    Future startPubServeMock() {
      return HttpServer.bind('127.0.0.1', 0).then((server) {
        server.listen(expectAsync((request) {
          if (request.uri.path == '/test') {
            request.response.statusCode = HttpStatus.NOT_FOUND;
          } else if (request.uri.path == '/test.html') {
            request.response.write('pub serve html');
          } else {
            expect(request.uri.path, '/test.css');
            request.response.write('pub serve css');
          }
          request.response.close();
        }));
        return server;
      });
    }

    // Mock application server which passes the Assets instance to the
    // request handler.
    Future startAppServer(mockRequestHandler) {
      assert(appServer == null);
      return HttpServer.bind('127.0.0.1', 0).then((server) {
        var appengineContext = new AppengineContext(
            null,  null,  null,  null,  null, pubServeUri);
        appServer = server;
        appServerPort = server.port;
        server.listen((request) {
          var assets = new AssetsImpl(request, appengineContext);
          mockRequestHandler(request, assets);
        });
        return server;
      });
    }

    setUp(() {
      return startPubServeMock().then((server) {
        pubServe = server;
        pubServeUri =
            new Uri.http('${server.address.address}:${server.port}', '');
      });
    });

    tearDown(() {
      return pubServe.close().then((_) {
        pubServe = null;
        return appServer.close().then((_) {
          appServer = null;
        });
      });
    });

    test('test not found serve', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.serve(request.response);
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(
            appServerPort, '/test', HttpStatus.NOT_FOUND).then((body) {
          expect(body, isEmpty);
        });
      });
    });

    test('test not found read', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.read('/test').then((stream) {
          fail('Unexpected');
        }).catchError((e) {
          expect(e, isAssetError);
          request.response
              ..statusCode = HttpStatus.NOT_FOUND
              ..close();
        });
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(
            appServerPort, '/test', HttpStatus.NOT_FOUND).then((body) {
          expect(body, isEmpty);
        });
      });
    });

    test('test serve', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.serve(request.response);
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(appServerPort, '/test.html').then((body) {
          expect(LATIN1.decode(body), 'pub serve html');
        });
      });
    });

    test('test serve path', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.serve(request.response, '/test.css');
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(appServerPort, '/test.css').then((body) {
          expect(LATIN1.decode(body), 'pub serve css');
        });
      });
    });

    test('test read', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.read('/test.html').then((stream) {
          return stream.pipe(request.response);
        });
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(appServerPort, '/test.html').then((body) {
          expect(LATIN1.decode(body), 'pub serve html');
        });
      });
    });
  });

  group('no pub serve proxy', () {
    var appServer;
    var appServerPort;

    // Mock application server which passes the Assets instance to the
    // request handler.
    Future startAppServer(mockRequestHandler) {
      assert(appServer == null);
      return HttpServer.bind('127.0.0.1', 0).then((server) {
        var appengineContext = new AppengineContext(
            null,  null,  null,  null,  null, null);
        appServer = server;
        appServerPort = server.port;
        server.listen((request) {
          var assets = new AssetsImpl(request, appengineContext);
          mockRequestHandler(request, assets);
        });
        return server;
      });
    }

    tearDown(() {
      return appServer.close().then((_) {
        appServer = null;
      });
    });

    test('test not found serve', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.serve(request.response);
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(
            appServerPort, '/test', HttpStatus.NOT_FOUND).then((body) {
          expect(body, isEmpty);
        });
      });
    });

    test('test not found read', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.read('/test').then((stream) {
          fail('Unexpected');
        }).catchError((e) {
          expect(e, isAssetError);
          request.response
              ..statusCode = HttpStatus.NOT_FOUND
              ..close();
        });
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(
            appServerPort, '/test', HttpStatus.NOT_FOUND).then((body) {
          expect(body, isEmpty);
        });
      });
    });

    test('test serve', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.serve(request.response);
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(appServerPort, '/test.html').then((body) {
          expect(LATIN1.decode(body), 'from build html');
        });
      });
    });

    test('test serve path', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.serve(request.response, '/test.css');
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(appServerPort, '/test.html').then((body) {
          expect(LATIN1.decode(body), 'from build css');
        });
      });
    });

    test('test read', () {
      void requestHandler(HttpRequest request, Assets assets) {
        assets.read('/test.html').then((stream) {
          return stream.pipe(request.response);
        });
      }

      return startAppServer(requestHandler).then((_) {
        return getAsset(appServerPort, '/test.html').then((body) {
          expect(LATIN1.decode(body), 'from build html');
        });
      });
    });
  });
}
