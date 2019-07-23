///
//  Generated code. Do not modify.
//  source: google/ads/googleads/v2/services/ad_group_audience_view_service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class GetAdGroupAudienceViewRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'GetAdGroupAudienceViewRequest',
      package: const $pb.PackageName('google.ads.googleads.v2.services'))
    ..aOS(1, 'resourceName')
    ..hasRequiredFields = false;

  GetAdGroupAudienceViewRequest._() : super();
  factory GetAdGroupAudienceViewRequest() => create();
  factory GetAdGroupAudienceViewRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAdGroupAudienceViewRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetAdGroupAudienceViewRequest clone() =>
      GetAdGroupAudienceViewRequest()..mergeFromMessage(this);
  GetAdGroupAudienceViewRequest copyWith(
          void Function(GetAdGroupAudienceViewRequest) updates) =>
      super.copyWith(
          (message) => updates(message as GetAdGroupAudienceViewRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAdGroupAudienceViewRequest create() =>
      GetAdGroupAudienceViewRequest._();
  GetAdGroupAudienceViewRequest createEmptyInstance() => create();
  static $pb.PbList<GetAdGroupAudienceViewRequest> createRepeated() =>
      $pb.PbList<GetAdGroupAudienceViewRequest>();
  static GetAdGroupAudienceViewRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetAdGroupAudienceViewRequest _defaultInstance;

  $core.String get resourceName => $_getS(0, '');
  set resourceName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasResourceName() => $_has(0);
  void clearResourceName() => clearField(1);
}
