///
//  Generated code. Do not modify.
//  source: google/ads/googleads/v2/resources/detail_placement_view.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../protobuf/wrappers.pb.dart' as $0;

import '../enums/placement_type.pbenum.dart' as $1;

class DetailPlacementView extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DetailPlacementView',
      package: const $pb.PackageName('google.ads.googleads.v2.resources'),
      createEmptyInstance: create)
    ..aOS(1, 'resourceName')
    ..aOM<$0.StringValue>(2, 'placement', subBuilder: $0.StringValue.create)
    ..aOM<$0.StringValue>(3, 'displayName', subBuilder: $0.StringValue.create)
    ..aOM<$0.StringValue>(4, 'groupPlacementTargetUrl',
        subBuilder: $0.StringValue.create)
    ..aOM<$0.StringValue>(5, 'targetUrl', subBuilder: $0.StringValue.create)
    ..e<$1.PlacementTypeEnum_PlacementType>(
        6, 'placementType', $pb.PbFieldType.OE,
        defaultOrMaker: $1.PlacementTypeEnum_PlacementType.UNSPECIFIED,
        valueOf: $1.PlacementTypeEnum_PlacementType.valueOf,
        enumValues: $1.PlacementTypeEnum_PlacementType.values)
    ..hasRequiredFields = false;

  DetailPlacementView._() : super();
  factory DetailPlacementView() => create();
  factory DetailPlacementView.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DetailPlacementView.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DetailPlacementView clone() => DetailPlacementView()..mergeFromMessage(this);
  DetailPlacementView copyWith(void Function(DetailPlacementView) updates) =>
      super.copyWith((message) => updates(message as DetailPlacementView));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailPlacementView create() => DetailPlacementView._();
  DetailPlacementView createEmptyInstance() => create();
  static $pb.PbList<DetailPlacementView> createRepeated() =>
      $pb.PbList<DetailPlacementView>();
  @$core.pragma('dart2js:noInline')
  static DetailPlacementView getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DetailPlacementView>(create);
  static DetailPlacementView _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resourceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set resourceName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResourceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceName() => clearField(1);

  @$pb.TagNumber(2)
  $0.StringValue get placement => $_getN(1);
  @$pb.TagNumber(2)
  set placement($0.StringValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPlacement() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlacement() => clearField(2);
  @$pb.TagNumber(2)
  $0.StringValue ensurePlacement() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.StringValue get displayName => $_getN(2);
  @$pb.TagNumber(3)
  set displayName($0.StringValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => clearField(3);
  @$pb.TagNumber(3)
  $0.StringValue ensureDisplayName() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.StringValue get groupPlacementTargetUrl => $_getN(3);
  @$pb.TagNumber(4)
  set groupPlacementTargetUrl($0.StringValue v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasGroupPlacementTargetUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupPlacementTargetUrl() => clearField(4);
  @$pb.TagNumber(4)
  $0.StringValue ensureGroupPlacementTargetUrl() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.StringValue get targetUrl => $_getN(4);
  @$pb.TagNumber(5)
  set targetUrl($0.StringValue v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTargetUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetUrl() => clearField(5);
  @$pb.TagNumber(5)
  $0.StringValue ensureTargetUrl() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.PlacementTypeEnum_PlacementType get placementType => $_getN(5);
  @$pb.TagNumber(6)
  set placementType($1.PlacementTypeEnum_PlacementType v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPlacementType() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlacementType() => clearField(6);
}
