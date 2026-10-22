//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_records.dart';
import 'package:foresignal_api/src/model/feature.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/normalized_record_preview.dart';
import 'package:foresignal_api/src/model/feature_collection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'ingest_records_request.g.dart';

/// IngestRecordsRequest
///
/// Properties:
/// * [type]
/// * [features]
/// * [nextCursor]
/// * [attributions] - Foreign member: aggregated attributions
/// * [watermarkSeq] - ChangeBus.lastPublishedSeq() read before the query; open SSE with after=watermarkSeq
/// * [asOfSeq] - Echo of the pinned snapshot seq (asOfSeq or order=id)
/// * [asOf] - Echo of asOf
/// * [approximate] - asOf only: true when a source is SAMPLED/LATEST or the range is downsampled
/// * [horizon] - asOf only: earliest supported T over the involved sources
/// * [licenceFiltered]
/// * [records]
@BuiltValue()
abstract class IngestRecordsRequest
    implements Built<IngestRecordsRequest, IngestRecordsRequestBuilder> {
  /// One Of [FeatureCollection], [IngestRecords]
  OneOf get oneOf;

  IngestRecordsRequest._();

  factory IngestRecordsRequest([void updates(IngestRecordsRequestBuilder b)]) =
      _$IngestRecordsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestRecordsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestRecordsRequest> get serializer =>
      _$IngestRecordsRequestSerializer();
}

class _$IngestRecordsRequestSerializer
    implements PrimitiveSerializer<IngestRecordsRequest> {
  @override
  final Iterable<Type> types = const [
    IngestRecordsRequest,
    _$IngestRecordsRequest,
  ];

  @override
  final String wireName = r'IngestRecordsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestRecordsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    IngestRecordsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  IngestRecordsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestRecordsRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(FeatureCollection),
      FullType(IngestRecords),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class IngestRecordsRequestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FeatureCollection')
  static const IngestRecordsRequestTypeEnum featureCollection =
      _$ingestRecordsRequestTypeEnum_featureCollection;

  static Serializer<IngestRecordsRequestTypeEnum> get serializer =>
      _$ingestRecordsRequestTypeEnumSerializer;

  const IngestRecordsRequestTypeEnum._(String name) : super(name);

  static BuiltSet<IngestRecordsRequestTypeEnum> get values =>
      _$ingestRecordsRequestTypeEnumValues;
  static IngestRecordsRequestTypeEnum valueOf(String name) =>
      _$ingestRecordsRequestTypeEnumValueOf(name);
}
