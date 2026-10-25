//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/overland_batch_locations_inner.dart';
import 'package:foresignal_api/src/model/ingest_records.dart';
import 'package:foresignal_api/src/model/osm_and_location.dart';
import 'package:foresignal_api/src/model/osm_and_location_location.dart';
import 'package:foresignal_api/src/model/normalized_record_preview.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/gps_logger_fix.dart';
import 'package:foresignal_api/src/model/own_tracks_message.dart';
import 'package:foresignal_api/src/model/overland_batch.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'ingest_records_path_key_request.g.dart';

/// IngestRecordsPathKeyRequest
///
/// Properties:
/// * [deviceId]
/// * [location]
/// * [lat]
/// * [lon]
/// * [time]
/// * [acc] - Accuracy (m) → quality.accuracyMeters
/// * [alt]
/// * [spd] - m/s
/// * [dir]
/// * [batt]
/// * [dev] - → externalId
/// * [type]
/// * [tst] - Epoch seconds → observedAt
/// * [vel] - km/h → speedMs
/// * [cog]
/// * [bs] - Battery status → charging
/// * [conn]
/// * [tid]
/// * [event]
/// * [desc]
/// * [wtst]
/// * [locations]
/// * [trip] - Ignored
/// * [current] - Ignored
/// * [records]
@BuiltValue()
abstract class IngestRecordsPathKeyRequest
    implements
        Built<IngestRecordsPathKeyRequest, IngestRecordsPathKeyRequestBuilder> {
  /// Any Of [GpsLoggerFix], [IngestRecords], [OsmAndLocation], [OverlandBatch], [OwnTracksMessage]
  AnyOf get anyOf;

  IngestRecordsPathKeyRequest._();

  factory IngestRecordsPathKeyRequest([
    void updates(IngestRecordsPathKeyRequestBuilder b),
  ]) = _$IngestRecordsPathKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestRecordsPathKeyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestRecordsPathKeyRequest> get serializer =>
      _$IngestRecordsPathKeyRequestSerializer();
}

class _$IngestRecordsPathKeyRequestSerializer
    implements PrimitiveSerializer<IngestRecordsPathKeyRequest> {
  @override
  final Iterable<Type> types = const [
    IngestRecordsPathKeyRequest,
    _$IngestRecordsPathKeyRequest,
  ];

  @override
  final String wireName = r'IngestRecordsPathKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestRecordsPathKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    IngestRecordsPathKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(
      anyOf,
      specifiedType: FullType(
        AnyOf,
        anyOf.types.map((type) => FullType(type)).toList(),
      ),
    )!;
  }

  @override
  IngestRecordsPathKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestRecordsPathKeyRequestBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(OsmAndLocation),
      FullType(GpsLoggerFix),
      FullType(OwnTracksMessage),
      FullType(OverlandBatch),
      FullType(IngestRecords),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

class IngestRecordsPathKeyRequestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'location')
  static const IngestRecordsPathKeyRequestTypeEnum location =
      _$ingestRecordsPathKeyRequestTypeEnum_location;
  @BuiltValueEnumConst(wireName: r'transition')
  static const IngestRecordsPathKeyRequestTypeEnum transition =
      _$ingestRecordsPathKeyRequestTypeEnum_transition;
  @BuiltValueEnumConst(wireName: r'waypoint')
  static const IngestRecordsPathKeyRequestTypeEnum waypoint =
      _$ingestRecordsPathKeyRequestTypeEnum_waypoint;
  @BuiltValueEnumConst(wireName: r'lwt')
  static const IngestRecordsPathKeyRequestTypeEnum lwt =
      _$ingestRecordsPathKeyRequestTypeEnum_lwt;
  @BuiltValueEnumConst(wireName: r'card')
  static const IngestRecordsPathKeyRequestTypeEnum card =
      _$ingestRecordsPathKeyRequestTypeEnum_card;
  @BuiltValueEnumConst(wireName: r'status')
  static const IngestRecordsPathKeyRequestTypeEnum status =
      _$ingestRecordsPathKeyRequestTypeEnum_status;
  @BuiltValueEnumConst(wireName: r'encrypted')
  static const IngestRecordsPathKeyRequestTypeEnum encrypted =
      _$ingestRecordsPathKeyRequestTypeEnum_encrypted;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IngestRecordsPathKeyRequestTypeEnum unknownDefaultOpenApi =
      _$ingestRecordsPathKeyRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<IngestRecordsPathKeyRequestTypeEnum> get serializer =>
      _$ingestRecordsPathKeyRequestTypeEnumSerializer;

  const IngestRecordsPathKeyRequestTypeEnum._(String name) : super(name);

  static BuiltSet<IngestRecordsPathKeyRequestTypeEnum> get values =>
      _$ingestRecordsPathKeyRequestTypeEnumValues;
  static IngestRecordsPathKeyRequestTypeEnum valueOf(String name) =>
      _$ingestRecordsPathKeyRequestTypeEnumValueOf(name);
}
