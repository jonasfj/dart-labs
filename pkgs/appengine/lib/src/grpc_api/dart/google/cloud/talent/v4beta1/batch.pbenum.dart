///
//  Generated code. Do not modify.
//  source: google/cloud/talent/v4beta1/batch.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class BatchOperationMetadata_State extends $pb.ProtobufEnum {
  static const BatchOperationMetadata_State STATE_UNSPECIFIED =
      BatchOperationMetadata_State._(0, 'STATE_UNSPECIFIED');
  static const BatchOperationMetadata_State INITIALIZING =
      BatchOperationMetadata_State._(1, 'INITIALIZING');
  static const BatchOperationMetadata_State PROCESSING =
      BatchOperationMetadata_State._(2, 'PROCESSING');
  static const BatchOperationMetadata_State SUCCEEDED =
      BatchOperationMetadata_State._(3, 'SUCCEEDED');
  static const BatchOperationMetadata_State FAILED =
      BatchOperationMetadata_State._(4, 'FAILED');
  static const BatchOperationMetadata_State CANCELLING =
      BatchOperationMetadata_State._(5, 'CANCELLING');
  static const BatchOperationMetadata_State CANCELLED =
      BatchOperationMetadata_State._(6, 'CANCELLED');

  static const $core.List<BatchOperationMetadata_State> values =
      <BatchOperationMetadata_State>[
    STATE_UNSPECIFIED,
    INITIALIZING,
    PROCESSING,
    SUCCEEDED,
    FAILED,
    CANCELLING,
    CANCELLED,
  ];

  static final $core.Map<$core.int, BatchOperationMetadata_State> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static BatchOperationMetadata_State valueOf($core.int value) =>
      _byValue[value];

  const BatchOperationMetadata_State._($core.int v, $core.String n)
      : super(v, n);
}
