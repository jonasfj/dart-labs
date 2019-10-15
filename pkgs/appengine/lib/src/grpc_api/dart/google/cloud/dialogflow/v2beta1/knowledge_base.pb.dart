///
//  Generated code. Do not modify.
//  source: google/cloud/dialogflow/v2beta1/knowledge_base.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../protobuf/field_mask.pb.dart' as $2;

class KnowledgeBase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KnowledgeBase',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'displayName')
    ..hasRequiredFields = false;

  KnowledgeBase._() : super();
  factory KnowledgeBase() => create();
  factory KnowledgeBase.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KnowledgeBase.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  KnowledgeBase clone() => KnowledgeBase()..mergeFromMessage(this);
  KnowledgeBase copyWith(void Function(KnowledgeBase) updates) =>
      super.copyWith((message) => updates(message as KnowledgeBase));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KnowledgeBase create() => KnowledgeBase._();
  KnowledgeBase createEmptyInstance() => create();
  static $pb.PbList<KnowledgeBase> createRepeated() =>
      $pb.PbList<KnowledgeBase>();
  @$core.pragma('dart2js:noInline')
  static KnowledgeBase getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KnowledgeBase>(create);
  static KnowledgeBase _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => clearField(2);
}

class ListKnowledgeBasesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListKnowledgeBasesRequest',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'parent')
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, 'pageToken')
    ..hasRequiredFields = false;

  ListKnowledgeBasesRequest._() : super();
  factory ListKnowledgeBasesRequest() => create();
  factory ListKnowledgeBasesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListKnowledgeBasesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListKnowledgeBasesRequest clone() =>
      ListKnowledgeBasesRequest()..mergeFromMessage(this);
  ListKnowledgeBasesRequest copyWith(
          void Function(ListKnowledgeBasesRequest) updates) =>
      super
          .copyWith((message) => updates(message as ListKnowledgeBasesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListKnowledgeBasesRequest create() => ListKnowledgeBasesRequest._();
  ListKnowledgeBasesRequest createEmptyInstance() => create();
  static $pb.PbList<ListKnowledgeBasesRequest> createRepeated() =>
      $pb.PbList<ListKnowledgeBasesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListKnowledgeBasesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListKnowledgeBasesRequest>(create);
  static ListKnowledgeBasesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);
}

class ListKnowledgeBasesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ListKnowledgeBasesResponse',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..pc<KnowledgeBase>(1, 'knowledgeBases', $pb.PbFieldType.PM,
        subBuilder: KnowledgeBase.create)
    ..aOS(2, 'nextPageToken')
    ..hasRequiredFields = false;

  ListKnowledgeBasesResponse._() : super();
  factory ListKnowledgeBasesResponse() => create();
  factory ListKnowledgeBasesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListKnowledgeBasesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListKnowledgeBasesResponse clone() =>
      ListKnowledgeBasesResponse()..mergeFromMessage(this);
  ListKnowledgeBasesResponse copyWith(
          void Function(ListKnowledgeBasesResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ListKnowledgeBasesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListKnowledgeBasesResponse create() => ListKnowledgeBasesResponse._();
  ListKnowledgeBasesResponse createEmptyInstance() => create();
  static $pb.PbList<ListKnowledgeBasesResponse> createRepeated() =>
      $pb.PbList<ListKnowledgeBasesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListKnowledgeBasesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListKnowledgeBasesResponse>(create);
  static ListKnowledgeBasesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<KnowledgeBase> get knowledgeBases => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

class GetKnowledgeBaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetKnowledgeBaseRequest',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..hasRequiredFields = false;

  GetKnowledgeBaseRequest._() : super();
  factory GetKnowledgeBaseRequest() => create();
  factory GetKnowledgeBaseRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetKnowledgeBaseRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetKnowledgeBaseRequest clone() =>
      GetKnowledgeBaseRequest()..mergeFromMessage(this);
  GetKnowledgeBaseRequest copyWith(
          void Function(GetKnowledgeBaseRequest) updates) =>
      super.copyWith((message) => updates(message as GetKnowledgeBaseRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetKnowledgeBaseRequest create() => GetKnowledgeBaseRequest._();
  GetKnowledgeBaseRequest createEmptyInstance() => create();
  static $pb.PbList<GetKnowledgeBaseRequest> createRepeated() =>
      $pb.PbList<GetKnowledgeBaseRequest>();
  @$core.pragma('dart2js:noInline')
  static GetKnowledgeBaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetKnowledgeBaseRequest>(create);
  static GetKnowledgeBaseRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class CreateKnowledgeBaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CreateKnowledgeBaseRequest',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'parent')
    ..aOM<KnowledgeBase>(2, 'knowledgeBase', subBuilder: KnowledgeBase.create)
    ..hasRequiredFields = false;

  CreateKnowledgeBaseRequest._() : super();
  factory CreateKnowledgeBaseRequest() => create();
  factory CreateKnowledgeBaseRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateKnowledgeBaseRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateKnowledgeBaseRequest clone() =>
      CreateKnowledgeBaseRequest()..mergeFromMessage(this);
  CreateKnowledgeBaseRequest copyWith(
          void Function(CreateKnowledgeBaseRequest) updates) =>
      super.copyWith(
          (message) => updates(message as CreateKnowledgeBaseRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateKnowledgeBaseRequest create() => CreateKnowledgeBaseRequest._();
  CreateKnowledgeBaseRequest createEmptyInstance() => create();
  static $pb.PbList<CreateKnowledgeBaseRequest> createRepeated() =>
      $pb.PbList<CreateKnowledgeBaseRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateKnowledgeBaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateKnowledgeBaseRequest>(create);
  static CreateKnowledgeBaseRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  @$pb.TagNumber(2)
  KnowledgeBase get knowledgeBase => $_getN(1);
  @$pb.TagNumber(2)
  set knowledgeBase(KnowledgeBase v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKnowledgeBase() => $_has(1);
  @$pb.TagNumber(2)
  void clearKnowledgeBase() => clearField(2);
  @$pb.TagNumber(2)
  KnowledgeBase ensureKnowledgeBase() => $_ensure(1);
}

class DeleteKnowledgeBaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DeleteKnowledgeBaseRequest',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOB(2, 'force')
    ..hasRequiredFields = false;

  DeleteKnowledgeBaseRequest._() : super();
  factory DeleteKnowledgeBaseRequest() => create();
  factory DeleteKnowledgeBaseRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteKnowledgeBaseRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteKnowledgeBaseRequest clone() =>
      DeleteKnowledgeBaseRequest()..mergeFromMessage(this);
  DeleteKnowledgeBaseRequest copyWith(
          void Function(DeleteKnowledgeBaseRequest) updates) =>
      super.copyWith(
          (message) => updates(message as DeleteKnowledgeBaseRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteKnowledgeBaseRequest create() => DeleteKnowledgeBaseRequest._();
  DeleteKnowledgeBaseRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteKnowledgeBaseRequest> createRepeated() =>
      $pb.PbList<DeleteKnowledgeBaseRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteKnowledgeBaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteKnowledgeBaseRequest>(create);
  static DeleteKnowledgeBaseRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get force => $_getBF(1);
  @$pb.TagNumber(2)
  set force($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForce() => $_has(1);
  @$pb.TagNumber(2)
  void clearForce() => clearField(2);
}

class UpdateKnowledgeBaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'UpdateKnowledgeBaseRequest',
      package: const $pb.PackageName('google.cloud.dialogflow.v2beta1'),
      createEmptyInstance: create)
    ..aOM<KnowledgeBase>(1, 'knowledgeBase', subBuilder: KnowledgeBase.create)
    ..aOM<$2.FieldMask>(2, 'updateMask', subBuilder: $2.FieldMask.create)
    ..hasRequiredFields = false;

  UpdateKnowledgeBaseRequest._() : super();
  factory UpdateKnowledgeBaseRequest() => create();
  factory UpdateKnowledgeBaseRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateKnowledgeBaseRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateKnowledgeBaseRequest clone() =>
      UpdateKnowledgeBaseRequest()..mergeFromMessage(this);
  UpdateKnowledgeBaseRequest copyWith(
          void Function(UpdateKnowledgeBaseRequest) updates) =>
      super.copyWith(
          (message) => updates(message as UpdateKnowledgeBaseRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateKnowledgeBaseRequest create() => UpdateKnowledgeBaseRequest._();
  UpdateKnowledgeBaseRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateKnowledgeBaseRequest> createRepeated() =>
      $pb.PbList<UpdateKnowledgeBaseRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateKnowledgeBaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateKnowledgeBaseRequest>(create);
  static UpdateKnowledgeBaseRequest _defaultInstance;

  @$pb.TagNumber(1)
  KnowledgeBase get knowledgeBase => $_getN(0);
  @$pb.TagNumber(1)
  set knowledgeBase(KnowledgeBase v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKnowledgeBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearKnowledgeBase() => clearField(1);
  @$pb.TagNumber(1)
  KnowledgeBase ensureKnowledgeBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($2.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $2.FieldMask ensureUpdateMask() => $_ensure(1);
}
