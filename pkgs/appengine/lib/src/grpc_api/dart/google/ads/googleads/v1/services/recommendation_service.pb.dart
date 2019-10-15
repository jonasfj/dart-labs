///
//  Generated code. Do not modify.
//  source: google/ads/googleads/v1/services/recommendation_service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../protobuf/wrappers.pb.dart' as $2;
import '../resources/ad.pb.dart' as $3;
import '../common/extensions.pb.dart' as $4;
import '../../../../rpc/status.pb.dart' as $5;

import '../enums/keyword_match_type.pbenum.dart' as $6;

class GetRecommendationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetRecommendationRequest',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOS(1, 'resourceName')
    ..hasRequiredFields = false;

  GetRecommendationRequest._() : super();
  factory GetRecommendationRequest() => create();
  factory GetRecommendationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRecommendationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetRecommendationRequest clone() =>
      GetRecommendationRequest()..mergeFromMessage(this);
  GetRecommendationRequest copyWith(
          void Function(GetRecommendationRequest) updates) =>
      super.copyWith((message) => updates(message as GetRecommendationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecommendationRequest create() => GetRecommendationRequest._();
  GetRecommendationRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecommendationRequest> createRepeated() =>
      $pb.PbList<GetRecommendationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecommendationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRecommendationRequest>(create);
  static GetRecommendationRequest _defaultInstance;

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
}

class ApplyRecommendationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationRequest',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOS(1, 'customerId')
    ..pc<ApplyRecommendationOperation>(2, 'operations', $pb.PbFieldType.PM,
        subBuilder: ApplyRecommendationOperation.create)
    ..aOB(3, 'partialFailure')
    ..hasRequiredFields = false;

  ApplyRecommendationRequest._() : super();
  factory ApplyRecommendationRequest() => create();
  factory ApplyRecommendationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationRequest clone() =>
      ApplyRecommendationRequest()..mergeFromMessage(this);
  ApplyRecommendationRequest copyWith(
          void Function(ApplyRecommendationRequest) updates) =>
      super.copyWith(
          (message) => updates(message as ApplyRecommendationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationRequest create() => ApplyRecommendationRequest._();
  ApplyRecommendationRequest createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationRequest> createRepeated() =>
      $pb.PbList<ApplyRecommendationRequest>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyRecommendationRequest>(create);
  static ApplyRecommendationRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get customerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set customerId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCustomerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCustomerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ApplyRecommendationOperation> get operations => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get partialFailure => $_getBF(2);
  @$pb.TagNumber(3)
  set partialFailure($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPartialFailure() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartialFailure() => clearField(3);
}

class ApplyRecommendationOperation_CampaignBudgetParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.CampaignBudgetParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOM<$2.Int64Value>(1, 'newBudgetAmountMicros',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_CampaignBudgetParameters._() : super();
  factory ApplyRecommendationOperation_CampaignBudgetParameters() => create();
  factory ApplyRecommendationOperation_CampaignBudgetParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_CampaignBudgetParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_CampaignBudgetParameters clone() =>
      ApplyRecommendationOperation_CampaignBudgetParameters()
        ..mergeFromMessage(this);
  ApplyRecommendationOperation_CampaignBudgetParameters copyWith(
          void Function(ApplyRecommendationOperation_CampaignBudgetParameters)
              updates) =>
      super.copyWith((message) => updates(
          message as ApplyRecommendationOperation_CampaignBudgetParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_CampaignBudgetParameters create() =>
      ApplyRecommendationOperation_CampaignBudgetParameters._();
  ApplyRecommendationOperation_CampaignBudgetParameters createEmptyInstance() =>
      create();
  static $pb.PbList<ApplyRecommendationOperation_CampaignBudgetParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_CampaignBudgetParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_CampaignBudgetParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_CampaignBudgetParameters>(create);
  static ApplyRecommendationOperation_CampaignBudgetParameters _defaultInstance;

  @$pb.TagNumber(1)
  $2.Int64Value get newBudgetAmountMicros => $_getN(0);
  @$pb.TagNumber(1)
  set newBudgetAmountMicros($2.Int64Value v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNewBudgetAmountMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewBudgetAmountMicros() => clearField(1);
  @$pb.TagNumber(1)
  $2.Int64Value ensureNewBudgetAmountMicros() => $_ensure(0);
}

class ApplyRecommendationOperation_TextAdParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.TextAdParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOM<$3.Ad>(1, 'ad', subBuilder: $3.Ad.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_TextAdParameters._() : super();
  factory ApplyRecommendationOperation_TextAdParameters() => create();
  factory ApplyRecommendationOperation_TextAdParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_TextAdParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_TextAdParameters clone() =>
      ApplyRecommendationOperation_TextAdParameters()..mergeFromMessage(this);
  ApplyRecommendationOperation_TextAdParameters copyWith(
          void Function(ApplyRecommendationOperation_TextAdParameters)
              updates) =>
      super.copyWith((message) =>
          updates(message as ApplyRecommendationOperation_TextAdParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_TextAdParameters create() =>
      ApplyRecommendationOperation_TextAdParameters._();
  ApplyRecommendationOperation_TextAdParameters createEmptyInstance() =>
      create();
  static $pb.PbList<ApplyRecommendationOperation_TextAdParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_TextAdParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_TextAdParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_TextAdParameters>(create);
  static ApplyRecommendationOperation_TextAdParameters _defaultInstance;

  @$pb.TagNumber(1)
  $3.Ad get ad => $_getN(0);
  @$pb.TagNumber(1)
  set ad($3.Ad v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAd() => $_has(0);
  @$pb.TagNumber(1)
  void clearAd() => clearField(1);
  @$pb.TagNumber(1)
  $3.Ad ensureAd() => $_ensure(0);
}

class ApplyRecommendationOperation_KeywordParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.KeywordParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOM<$2.StringValue>(1, 'adGroup', subBuilder: $2.StringValue.create)
    ..e<$6.KeywordMatchTypeEnum_KeywordMatchType>(
        2, 'matchType', $pb.PbFieldType.OE,
        defaultOrMaker: $6.KeywordMatchTypeEnum_KeywordMatchType.UNSPECIFIED,
        valueOf: $6.KeywordMatchTypeEnum_KeywordMatchType.valueOf,
        enumValues: $6.KeywordMatchTypeEnum_KeywordMatchType.values)
    ..aOM<$2.Int64Value>(3, 'cpcBidMicros', subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_KeywordParameters._() : super();
  factory ApplyRecommendationOperation_KeywordParameters() => create();
  factory ApplyRecommendationOperation_KeywordParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_KeywordParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_KeywordParameters clone() =>
      ApplyRecommendationOperation_KeywordParameters()..mergeFromMessage(this);
  ApplyRecommendationOperation_KeywordParameters copyWith(
          void Function(ApplyRecommendationOperation_KeywordParameters)
              updates) =>
      super.copyWith((message) =>
          updates(message as ApplyRecommendationOperation_KeywordParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_KeywordParameters create() =>
      ApplyRecommendationOperation_KeywordParameters._();
  ApplyRecommendationOperation_KeywordParameters createEmptyInstance() =>
      create();
  static $pb.PbList<ApplyRecommendationOperation_KeywordParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_KeywordParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_KeywordParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_KeywordParameters>(create);
  static ApplyRecommendationOperation_KeywordParameters _defaultInstance;

  @$pb.TagNumber(1)
  $2.StringValue get adGroup => $_getN(0);
  @$pb.TagNumber(1)
  set adGroup($2.StringValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAdGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdGroup() => clearField(1);
  @$pb.TagNumber(1)
  $2.StringValue ensureAdGroup() => $_ensure(0);

  @$pb.TagNumber(2)
  $6.KeywordMatchTypeEnum_KeywordMatchType get matchType => $_getN(1);
  @$pb.TagNumber(2)
  set matchType($6.KeywordMatchTypeEnum_KeywordMatchType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMatchType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatchType() => clearField(2);

  @$pb.TagNumber(3)
  $2.Int64Value get cpcBidMicros => $_getN(2);
  @$pb.TagNumber(3)
  set cpcBidMicros($2.Int64Value v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCpcBidMicros() => $_has(2);
  @$pb.TagNumber(3)
  void clearCpcBidMicros() => clearField(3);
  @$pb.TagNumber(3)
  $2.Int64Value ensureCpcBidMicros() => $_ensure(2);
}

class ApplyRecommendationOperation_TargetCpaOptInParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.TargetCpaOptInParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOM<$2.Int64Value>(1, 'targetCpaMicros', subBuilder: $2.Int64Value.create)
    ..aOM<$2.Int64Value>(2, 'newCampaignBudgetAmountMicros',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_TargetCpaOptInParameters._() : super();
  factory ApplyRecommendationOperation_TargetCpaOptInParameters() => create();
  factory ApplyRecommendationOperation_TargetCpaOptInParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_TargetCpaOptInParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_TargetCpaOptInParameters clone() =>
      ApplyRecommendationOperation_TargetCpaOptInParameters()
        ..mergeFromMessage(this);
  ApplyRecommendationOperation_TargetCpaOptInParameters copyWith(
          void Function(ApplyRecommendationOperation_TargetCpaOptInParameters)
              updates) =>
      super.copyWith((message) => updates(
          message as ApplyRecommendationOperation_TargetCpaOptInParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_TargetCpaOptInParameters create() =>
      ApplyRecommendationOperation_TargetCpaOptInParameters._();
  ApplyRecommendationOperation_TargetCpaOptInParameters createEmptyInstance() =>
      create();
  static $pb.PbList<ApplyRecommendationOperation_TargetCpaOptInParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_TargetCpaOptInParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_TargetCpaOptInParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_TargetCpaOptInParameters>(create);
  static ApplyRecommendationOperation_TargetCpaOptInParameters _defaultInstance;

  @$pb.TagNumber(1)
  $2.Int64Value get targetCpaMicros => $_getN(0);
  @$pb.TagNumber(1)
  set targetCpaMicros($2.Int64Value v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTargetCpaMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetCpaMicros() => clearField(1);
  @$pb.TagNumber(1)
  $2.Int64Value ensureTargetCpaMicros() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Int64Value get newCampaignBudgetAmountMicros => $_getN(1);
  @$pb.TagNumber(2)
  set newCampaignBudgetAmountMicros($2.Int64Value v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNewCampaignBudgetAmountMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewCampaignBudgetAmountMicros() => clearField(2);
  @$pb.TagNumber(2)
  $2.Int64Value ensureNewCampaignBudgetAmountMicros() => $_ensure(1);
}

class ApplyRecommendationOperation_CalloutExtensionParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.CalloutExtensionParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..pc<$4.CalloutFeedItem>(1, 'calloutExtensions', $pb.PbFieldType.PM,
        subBuilder: $4.CalloutFeedItem.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_CalloutExtensionParameters._() : super();
  factory ApplyRecommendationOperation_CalloutExtensionParameters() => create();
  factory ApplyRecommendationOperation_CalloutExtensionParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_CalloutExtensionParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_CalloutExtensionParameters clone() =>
      ApplyRecommendationOperation_CalloutExtensionParameters()
        ..mergeFromMessage(this);
  ApplyRecommendationOperation_CalloutExtensionParameters copyWith(
          void Function(ApplyRecommendationOperation_CalloutExtensionParameters)
              updates) =>
      super.copyWith((message) => updates(
          message as ApplyRecommendationOperation_CalloutExtensionParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_CalloutExtensionParameters create() =>
      ApplyRecommendationOperation_CalloutExtensionParameters._();
  ApplyRecommendationOperation_CalloutExtensionParameters
      createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationOperation_CalloutExtensionParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_CalloutExtensionParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_CalloutExtensionParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_CalloutExtensionParameters>(create);
  static ApplyRecommendationOperation_CalloutExtensionParameters
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.CalloutFeedItem> get calloutExtensions => $_getList(0);
}

class ApplyRecommendationOperation_CallExtensionParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.CallExtensionParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..pc<$4.CallFeedItem>(1, 'callExtensions', $pb.PbFieldType.PM,
        subBuilder: $4.CallFeedItem.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_CallExtensionParameters._() : super();
  factory ApplyRecommendationOperation_CallExtensionParameters() => create();
  factory ApplyRecommendationOperation_CallExtensionParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_CallExtensionParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_CallExtensionParameters clone() =>
      ApplyRecommendationOperation_CallExtensionParameters()
        ..mergeFromMessage(this);
  ApplyRecommendationOperation_CallExtensionParameters copyWith(
          void Function(ApplyRecommendationOperation_CallExtensionParameters)
              updates) =>
      super.copyWith((message) => updates(
          message as ApplyRecommendationOperation_CallExtensionParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_CallExtensionParameters create() =>
      ApplyRecommendationOperation_CallExtensionParameters._();
  ApplyRecommendationOperation_CallExtensionParameters createEmptyInstance() =>
      create();
  static $pb.PbList<ApplyRecommendationOperation_CallExtensionParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_CallExtensionParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_CallExtensionParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_CallExtensionParameters>(create);
  static ApplyRecommendationOperation_CallExtensionParameters _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.CallFeedItem> get callExtensions => $_getList(0);
}

class ApplyRecommendationOperation_SitelinkExtensionParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.SitelinkExtensionParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..pc<$4.SitelinkFeedItem>(1, 'sitelinkExtensions', $pb.PbFieldType.PM,
        subBuilder: $4.SitelinkFeedItem.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_SitelinkExtensionParameters._() : super();
  factory ApplyRecommendationOperation_SitelinkExtensionParameters() =>
      create();
  factory ApplyRecommendationOperation_SitelinkExtensionParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_SitelinkExtensionParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_SitelinkExtensionParameters clone() =>
      ApplyRecommendationOperation_SitelinkExtensionParameters()
        ..mergeFromMessage(this);
  ApplyRecommendationOperation_SitelinkExtensionParameters copyWith(
          void Function(
                  ApplyRecommendationOperation_SitelinkExtensionParameters)
              updates) =>
      super.copyWith((message) => updates(
          message as ApplyRecommendationOperation_SitelinkExtensionParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_SitelinkExtensionParameters create() =>
      ApplyRecommendationOperation_SitelinkExtensionParameters._();
  ApplyRecommendationOperation_SitelinkExtensionParameters
      createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationOperation_SitelinkExtensionParameters>
      createRepeated() => $pb.PbList<
          ApplyRecommendationOperation_SitelinkExtensionParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_SitelinkExtensionParameters
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_SitelinkExtensionParameters>(create);
  static ApplyRecommendationOperation_SitelinkExtensionParameters
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.SitelinkFeedItem> get sitelinkExtensions => $_getList(0);
}

class ApplyRecommendationOperation_MoveUnusedBudgetParameters
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationOperation.MoveUnusedBudgetParameters',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOM<$2.Int64Value>(1, 'budgetMicrosToMove',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation_MoveUnusedBudgetParameters._() : super();
  factory ApplyRecommendationOperation_MoveUnusedBudgetParameters() => create();
  factory ApplyRecommendationOperation_MoveUnusedBudgetParameters.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation_MoveUnusedBudgetParameters.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation_MoveUnusedBudgetParameters clone() =>
      ApplyRecommendationOperation_MoveUnusedBudgetParameters()
        ..mergeFromMessage(this);
  ApplyRecommendationOperation_MoveUnusedBudgetParameters copyWith(
          void Function(ApplyRecommendationOperation_MoveUnusedBudgetParameters)
              updates) =>
      super.copyWith((message) => updates(
          message as ApplyRecommendationOperation_MoveUnusedBudgetParameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_MoveUnusedBudgetParameters create() =>
      ApplyRecommendationOperation_MoveUnusedBudgetParameters._();
  ApplyRecommendationOperation_MoveUnusedBudgetParameters
      createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationOperation_MoveUnusedBudgetParameters>
      createRepeated() =>
          $pb.PbList<ApplyRecommendationOperation_MoveUnusedBudgetParameters>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation_MoveUnusedBudgetParameters getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyRecommendationOperation_MoveUnusedBudgetParameters>(create);
  static ApplyRecommendationOperation_MoveUnusedBudgetParameters
      _defaultInstance;

  @$pb.TagNumber(1)
  $2.Int64Value get budgetMicrosToMove => $_getN(0);
  @$pb.TagNumber(1)
  set budgetMicrosToMove($2.Int64Value v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBudgetMicrosToMove() => $_has(0);
  @$pb.TagNumber(1)
  void clearBudgetMicrosToMove() => clearField(1);
  @$pb.TagNumber(1)
  $2.Int64Value ensureBudgetMicrosToMove() => $_ensure(0);
}

enum ApplyRecommendationOperation_ApplyParameters {
  campaignBudget,
  textAd,
  keyword,
  targetCpaOptIn,
  calloutExtension,
  callExtension,
  sitelinkExtension,
  moveUnusedBudget,
  notSet
}

class ApplyRecommendationOperation extends $pb.GeneratedMessage {
  static const $core
          .Map<$core.int, ApplyRecommendationOperation_ApplyParameters>
      _ApplyRecommendationOperation_ApplyParametersByTag = {
    2: ApplyRecommendationOperation_ApplyParameters.campaignBudget,
    3: ApplyRecommendationOperation_ApplyParameters.textAd,
    4: ApplyRecommendationOperation_ApplyParameters.keyword,
    5: ApplyRecommendationOperation_ApplyParameters.targetCpaOptIn,
    6: ApplyRecommendationOperation_ApplyParameters.calloutExtension,
    7: ApplyRecommendationOperation_ApplyParameters.callExtension,
    8: ApplyRecommendationOperation_ApplyParameters.sitelinkExtension,
    9: ApplyRecommendationOperation_ApplyParameters.moveUnusedBudget,
    0: ApplyRecommendationOperation_ApplyParameters.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApplyRecommendationOperation',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9])
    ..aOS(1, 'resourceName')
    ..aOM<ApplyRecommendationOperation_CampaignBudgetParameters>(2, 'campaignBudget',
        subBuilder:
            ApplyRecommendationOperation_CampaignBudgetParameters.create)
    ..aOM<ApplyRecommendationOperation_TextAdParameters>(3, 'textAd',
        subBuilder: ApplyRecommendationOperation_TextAdParameters.create)
    ..aOM<ApplyRecommendationOperation_KeywordParameters>(4, 'keyword',
        subBuilder: ApplyRecommendationOperation_KeywordParameters.create)
    ..aOM<ApplyRecommendationOperation_TargetCpaOptInParameters>(
        5, 'targetCpaOptIn',
        subBuilder:
            ApplyRecommendationOperation_TargetCpaOptInParameters.create)
    ..aOM<ApplyRecommendationOperation_CalloutExtensionParameters>(
        6, 'calloutExtension',
        subBuilder:
            ApplyRecommendationOperation_CalloutExtensionParameters.create)
    ..aOM<ApplyRecommendationOperation_CallExtensionParameters>(7, 'callExtension',
        subBuilder: ApplyRecommendationOperation_CallExtensionParameters.create)
    ..aOM<ApplyRecommendationOperation_SitelinkExtensionParameters>(
        8, 'sitelinkExtension',
        subBuilder: ApplyRecommendationOperation_SitelinkExtensionParameters.create)
    ..aOM<ApplyRecommendationOperation_MoveUnusedBudgetParameters>(9, 'moveUnusedBudget', subBuilder: ApplyRecommendationOperation_MoveUnusedBudgetParameters.create)
    ..hasRequiredFields = false;

  ApplyRecommendationOperation._() : super();
  factory ApplyRecommendationOperation() => create();
  factory ApplyRecommendationOperation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationOperation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationOperation clone() =>
      ApplyRecommendationOperation()..mergeFromMessage(this);
  ApplyRecommendationOperation copyWith(
          void Function(ApplyRecommendationOperation) updates) =>
      super.copyWith(
          (message) => updates(message as ApplyRecommendationOperation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation create() =>
      ApplyRecommendationOperation._();
  ApplyRecommendationOperation createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationOperation> createRepeated() =>
      $pb.PbList<ApplyRecommendationOperation>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationOperation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyRecommendationOperation>(create);
  static ApplyRecommendationOperation _defaultInstance;

  ApplyRecommendationOperation_ApplyParameters whichApplyParameters() =>
      _ApplyRecommendationOperation_ApplyParametersByTag[$_whichOneof(0)];
  void clearApplyParameters() => clearField($_whichOneof(0));

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
  ApplyRecommendationOperation_CampaignBudgetParameters get campaignBudget =>
      $_getN(1);
  @$pb.TagNumber(2)
  set campaignBudget(ApplyRecommendationOperation_CampaignBudgetParameters v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCampaignBudget() => $_has(1);
  @$pb.TagNumber(2)
  void clearCampaignBudget() => clearField(2);
  @$pb.TagNumber(2)
  ApplyRecommendationOperation_CampaignBudgetParameters
      ensureCampaignBudget() => $_ensure(1);

  @$pb.TagNumber(3)
  ApplyRecommendationOperation_TextAdParameters get textAd => $_getN(2);
  @$pb.TagNumber(3)
  set textAd(ApplyRecommendationOperation_TextAdParameters v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTextAd() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextAd() => clearField(3);
  @$pb.TagNumber(3)
  ApplyRecommendationOperation_TextAdParameters ensureTextAd() => $_ensure(2);

  @$pb.TagNumber(4)
  ApplyRecommendationOperation_KeywordParameters get keyword => $_getN(3);
  @$pb.TagNumber(4)
  set keyword(ApplyRecommendationOperation_KeywordParameters v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasKeyword() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyword() => clearField(4);
  @$pb.TagNumber(4)
  ApplyRecommendationOperation_KeywordParameters ensureKeyword() => $_ensure(3);

  @$pb.TagNumber(5)
  ApplyRecommendationOperation_TargetCpaOptInParameters get targetCpaOptIn =>
      $_getN(4);
  @$pb.TagNumber(5)
  set targetCpaOptIn(ApplyRecommendationOperation_TargetCpaOptInParameters v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTargetCpaOptIn() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetCpaOptIn() => clearField(5);
  @$pb.TagNumber(5)
  ApplyRecommendationOperation_TargetCpaOptInParameters
      ensureTargetCpaOptIn() => $_ensure(4);

  @$pb.TagNumber(6)
  ApplyRecommendationOperation_CalloutExtensionParameters
      get calloutExtension => $_getN(5);
  @$pb.TagNumber(6)
  set calloutExtension(
      ApplyRecommendationOperation_CalloutExtensionParameters v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCalloutExtension() => $_has(5);
  @$pb.TagNumber(6)
  void clearCalloutExtension() => clearField(6);
  @$pb.TagNumber(6)
  ApplyRecommendationOperation_CalloutExtensionParameters
      ensureCalloutExtension() => $_ensure(5);

  @$pb.TagNumber(7)
  ApplyRecommendationOperation_CallExtensionParameters get callExtension =>
      $_getN(6);
  @$pb.TagNumber(7)
  set callExtension(ApplyRecommendationOperation_CallExtensionParameters v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCallExtension() => $_has(6);
  @$pb.TagNumber(7)
  void clearCallExtension() => clearField(7);
  @$pb.TagNumber(7)
  ApplyRecommendationOperation_CallExtensionParameters ensureCallExtension() =>
      $_ensure(6);

  @$pb.TagNumber(8)
  ApplyRecommendationOperation_SitelinkExtensionParameters
      get sitelinkExtension => $_getN(7);
  @$pb.TagNumber(8)
  set sitelinkExtension(
      ApplyRecommendationOperation_SitelinkExtensionParameters v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSitelinkExtension() => $_has(7);
  @$pb.TagNumber(8)
  void clearSitelinkExtension() => clearField(8);
  @$pb.TagNumber(8)
  ApplyRecommendationOperation_SitelinkExtensionParameters
      ensureSitelinkExtension() => $_ensure(7);

  @$pb.TagNumber(9)
  ApplyRecommendationOperation_MoveUnusedBudgetParameters
      get moveUnusedBudget => $_getN(8);
  @$pb.TagNumber(9)
  set moveUnusedBudget(
      ApplyRecommendationOperation_MoveUnusedBudgetParameters v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasMoveUnusedBudget() => $_has(8);
  @$pb.TagNumber(9)
  void clearMoveUnusedBudget() => clearField(9);
  @$pb.TagNumber(9)
  ApplyRecommendationOperation_MoveUnusedBudgetParameters
      ensureMoveUnusedBudget() => $_ensure(8);
}

class ApplyRecommendationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ApplyRecommendationResponse',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..pc<ApplyRecommendationResult>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: ApplyRecommendationResult.create)
    ..aOM<$5.Status>(2, 'partialFailureError', subBuilder: $5.Status.create)
    ..hasRequiredFields = false;

  ApplyRecommendationResponse._() : super();
  factory ApplyRecommendationResponse() => create();
  factory ApplyRecommendationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationResponse clone() =>
      ApplyRecommendationResponse()..mergeFromMessage(this);
  ApplyRecommendationResponse copyWith(
          void Function(ApplyRecommendationResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ApplyRecommendationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationResponse create() =>
      ApplyRecommendationResponse._();
  ApplyRecommendationResponse createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationResponse> createRepeated() =>
      $pb.PbList<ApplyRecommendationResponse>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyRecommendationResponse>(create);
  static ApplyRecommendationResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ApplyRecommendationResult> get results => $_getList(0);

  @$pb.TagNumber(2)
  $5.Status get partialFailureError => $_getN(1);
  @$pb.TagNumber(2)
  set partialFailureError($5.Status v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPartialFailureError() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartialFailureError() => clearField(2);
  @$pb.TagNumber(2)
  $5.Status ensurePartialFailureError() => $_ensure(1);
}

class ApplyRecommendationResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApplyRecommendationResult',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOS(1, 'resourceName')
    ..hasRequiredFields = false;

  ApplyRecommendationResult._() : super();
  factory ApplyRecommendationResult() => create();
  factory ApplyRecommendationResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApplyRecommendationResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ApplyRecommendationResult clone() =>
      ApplyRecommendationResult()..mergeFromMessage(this);
  ApplyRecommendationResult copyWith(
          void Function(ApplyRecommendationResult) updates) =>
      super
          .copyWith((message) => updates(message as ApplyRecommendationResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationResult create() => ApplyRecommendationResult._();
  ApplyRecommendationResult createEmptyInstance() => create();
  static $pb.PbList<ApplyRecommendationResult> createRepeated() =>
      $pb.PbList<ApplyRecommendationResult>();
  @$core.pragma('dart2js:noInline')
  static ApplyRecommendationResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyRecommendationResult>(create);
  static ApplyRecommendationResult _defaultInstance;

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
}

class DismissRecommendationRequest_DismissRecommendationOperation
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DismissRecommendationRequest.DismissRecommendationOperation',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOS(1, 'resourceName')
    ..hasRequiredFields = false;

  DismissRecommendationRequest_DismissRecommendationOperation._() : super();
  factory DismissRecommendationRequest_DismissRecommendationOperation() =>
      create();
  factory DismissRecommendationRequest_DismissRecommendationOperation.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DismissRecommendationRequest_DismissRecommendationOperation.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DismissRecommendationRequest_DismissRecommendationOperation clone() =>
      DismissRecommendationRequest_DismissRecommendationOperation()
        ..mergeFromMessage(this);
  DismissRecommendationRequest_DismissRecommendationOperation copyWith(
          void Function(
                  DismissRecommendationRequest_DismissRecommendationOperation)
              updates) =>
      super.copyWith((message) => updates(message
          as DismissRecommendationRequest_DismissRecommendationOperation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationRequest_DismissRecommendationOperation create() =>
      DismissRecommendationRequest_DismissRecommendationOperation._();
  DismissRecommendationRequest_DismissRecommendationOperation
      createEmptyInstance() => create();
  static $pb.PbList<DismissRecommendationRequest_DismissRecommendationOperation>
      createRepeated() => $pb.PbList<
          DismissRecommendationRequest_DismissRecommendationOperation>();
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationRequest_DismissRecommendationOperation
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          DismissRecommendationRequest_DismissRecommendationOperation>(create);
  static DismissRecommendationRequest_DismissRecommendationOperation
      _defaultInstance;

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
}

class DismissRecommendationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DismissRecommendationRequest',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOS(1, 'customerId')
    ..aOB(2, 'partialFailure')
    ..pc<DismissRecommendationRequest_DismissRecommendationOperation>(
        3, 'operations', $pb.PbFieldType.PM,
        subBuilder:
            DismissRecommendationRequest_DismissRecommendationOperation.create)
    ..hasRequiredFields = false;

  DismissRecommendationRequest._() : super();
  factory DismissRecommendationRequest() => create();
  factory DismissRecommendationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DismissRecommendationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DismissRecommendationRequest clone() =>
      DismissRecommendationRequest()..mergeFromMessage(this);
  DismissRecommendationRequest copyWith(
          void Function(DismissRecommendationRequest) updates) =>
      super.copyWith(
          (message) => updates(message as DismissRecommendationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationRequest create() =>
      DismissRecommendationRequest._();
  DismissRecommendationRequest createEmptyInstance() => create();
  static $pb.PbList<DismissRecommendationRequest> createRepeated() =>
      $pb.PbList<DismissRecommendationRequest>();
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DismissRecommendationRequest>(create);
  static DismissRecommendationRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get customerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set customerId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCustomerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCustomerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get partialFailure => $_getBF(1);
  @$pb.TagNumber(2)
  set partialFailure($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPartialFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartialFailure() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<DismissRecommendationRequest_DismissRecommendationOperation>
      get operations => $_getList(2);
}

class DismissRecommendationResponse_DismissRecommendationResult
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DismissRecommendationResponse.DismissRecommendationResult',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..aOS(1, 'resourceName')
    ..hasRequiredFields = false;

  DismissRecommendationResponse_DismissRecommendationResult._() : super();
  factory DismissRecommendationResponse_DismissRecommendationResult() =>
      create();
  factory DismissRecommendationResponse_DismissRecommendationResult.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DismissRecommendationResponse_DismissRecommendationResult.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DismissRecommendationResponse_DismissRecommendationResult clone() =>
      DismissRecommendationResponse_DismissRecommendationResult()
        ..mergeFromMessage(this);
  DismissRecommendationResponse_DismissRecommendationResult copyWith(
          void Function(
                  DismissRecommendationResponse_DismissRecommendationResult)
              updates) =>
      super.copyWith((message) => updates(message
          as DismissRecommendationResponse_DismissRecommendationResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationResponse_DismissRecommendationResult create() =>
      DismissRecommendationResponse_DismissRecommendationResult._();
  DismissRecommendationResponse_DismissRecommendationResult
      createEmptyInstance() => create();
  static $pb.PbList<DismissRecommendationResponse_DismissRecommendationResult>
      createRepeated() => $pb.PbList<
          DismissRecommendationResponse_DismissRecommendationResult>();
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationResponse_DismissRecommendationResult
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          DismissRecommendationResponse_DismissRecommendationResult>(create);
  static DismissRecommendationResponse_DismissRecommendationResult
      _defaultInstance;

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
}

class DismissRecommendationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DismissRecommendationResponse',
      package: const $pb.PackageName('google.ads.googleads.v1.services'),
      createEmptyInstance: create)
    ..pc<DismissRecommendationResponse_DismissRecommendationResult>(
        1, 'results', $pb.PbFieldType.PM,
        subBuilder:
            DismissRecommendationResponse_DismissRecommendationResult.create)
    ..aOM<$5.Status>(2, 'partialFailureError', subBuilder: $5.Status.create)
    ..hasRequiredFields = false;

  DismissRecommendationResponse._() : super();
  factory DismissRecommendationResponse() => create();
  factory DismissRecommendationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DismissRecommendationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DismissRecommendationResponse clone() =>
      DismissRecommendationResponse()..mergeFromMessage(this);
  DismissRecommendationResponse copyWith(
          void Function(DismissRecommendationResponse) updates) =>
      super.copyWith(
          (message) => updates(message as DismissRecommendationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationResponse create() =>
      DismissRecommendationResponse._();
  DismissRecommendationResponse createEmptyInstance() => create();
  static $pb.PbList<DismissRecommendationResponse> createRepeated() =>
      $pb.PbList<DismissRecommendationResponse>();
  @$core.pragma('dart2js:noInline')
  static DismissRecommendationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DismissRecommendationResponse>(create);
  static DismissRecommendationResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DismissRecommendationResponse_DismissRecommendationResult>
      get results => $_getList(0);

  @$pb.TagNumber(2)
  $5.Status get partialFailureError => $_getN(1);
  @$pb.TagNumber(2)
  set partialFailureError($5.Status v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPartialFailureError() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartialFailureError() => clearField(2);
  @$pb.TagNumber(2)
  $5.Status ensurePartialFailureError() => $_ensure(1);
}
