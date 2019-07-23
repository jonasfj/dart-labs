///
//  Generated code. Do not modify.
//  source: google/ads/googleads/v2/services/topic_view_service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class GetTopicViewRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTopicViewRequest',
      package: const $pb.PackageName('google.ads.googleads.v2.services'))
    ..aOS(1, 'resourceName')
    ..hasRequiredFields = false;

  GetTopicViewRequest._() : super();
  factory GetTopicViewRequest() => create();
  factory GetTopicViewRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetTopicViewRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetTopicViewRequest clone() => GetTopicViewRequest()..mergeFromMessage(this);
  GetTopicViewRequest copyWith(void Function(GetTopicViewRequest) updates) =>
      super.copyWith((message) => updates(message as GetTopicViewRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTopicViewRequest create() => GetTopicViewRequest._();
  GetTopicViewRequest createEmptyInstance() => create();
  static $pb.PbList<GetTopicViewRequest> createRepeated() =>
      $pb.PbList<GetTopicViewRequest>();
  static GetTopicViewRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetTopicViewRequest _defaultInstance;

  $core.String get resourceName => $_getS(0, '');
  set resourceName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasResourceName() => $_has(0);
  void clearResourceName() => clearField(1);
}
