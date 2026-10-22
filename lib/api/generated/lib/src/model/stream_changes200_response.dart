//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/live_event.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/persist_reason.dart';
import 'package:foresignal_api/src/model/resync_event.dart';
import 'package:foresignal_api/src/model/touch_event.dart';
import 'package:foresignal_api/src/model/change_event.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/reset_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'stream_changes200_response.g.dart';

/// The `data:` line of each event is one JSON object. The `event:` line, not the data, selects its schema as mapped in `x-foresignal-sse-events`, so this is `anyOf` (heartbeat `{}` and other small payloads match several); clients ignore unknown event names.
///
/// Properties:
/// * [seq]
/// * [source_]
/// * [externalId]
/// * [kind]
/// * [version] - Persisted version this live state builds on
/// * [observedAt]
/// * [tombstone]
/// * [geometry]
/// * [payload] - Present with payload=true, and always for kinds in `inlinePayloadKinds` (default raster-frame)
/// * [prevSeq] - seq of the previous version; null for FIRST
/// * [historyTier]
/// * [persistReason]
/// * [eventTime]
/// * [validUntil]
/// * [qaFlags] - Quality bitmask: 1 FUTURE_CLAMPED, 2 GEOMETRY_FIXED, 4 NULL_ISLAND, 8 TIME_IMPUTED, 16 POSITION_STALE
/// * [bbox] - Bounding box [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [prevPersistedBbox] - SSE only: bbox of the previous persisted version
/// * [prevLiveBbox] - SSE only: bbox of the live position before this version
/// * [leftFilter] - True when only `prevBbox` matched the spatial filter: remove the feature
/// * [purged] - Tombstone written by an entity purge: clients and caches delete the entity (039)
/// * [validFrom] - Start of validity (see Record.validFrom)
/// * [globalRef] - urn:foresignal:{instanceId}:{sourceId}:{externalId}
/// * [sourceId]
/// * [prevBbox] - Bounding box before this update (used by the spatial filter)
/// * [properties] - Kinematic (non-significant) properties after this update, over the persisted payload; a JSON null value means the key was removed
/// * [quality]
/// * [reason]
/// * [watermarkSeq]
/// * [resumeAfter] - Last delivered seq to resume from (null for resync_required)
@BuiltValue()
abstract class StreamChanges200Response
    implements
        Built<StreamChanges200Response, StreamChanges200ResponseBuilder> {
  /// Any Of [ChangeEvent], [JsonObject], [LiveEvent], [ResetEvent], [ResyncEvent], [TouchEvent]
  AnyOf get anyOf;

  StreamChanges200Response._();

  factory StreamChanges200Response([
    void updates(StreamChanges200ResponseBuilder b),
  ]) = _$StreamChanges200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamChanges200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamChanges200Response> get serializer =>
      _$StreamChanges200ResponseSerializer();
}

class _$StreamChanges200ResponseSerializer
    implements PrimitiveSerializer<StreamChanges200Response> {
  @override
  final Iterable<Type> types = const [
    StreamChanges200Response,
    _$StreamChanges200Response,
  ];

  @override
  final String wireName = r'StreamChanges200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamChanges200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StreamChanges200Response object, {
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
  StreamChanges200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamChanges200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(ChangeEvent),
      FullType(LiveEvent),
      FullType(TouchEvent),
      FullType(ResyncEvent),
      FullType(ResetEvent),
      FullType(JsonObject),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

class StreamChanges200ResponseReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'buffer_overflow')
  static const StreamChanges200ResponseReasonEnum bufferOverflow =
      _$streamChanges200ResponseReasonEnum_bufferOverflow;
  @BuiltValueEnumConst(wireName: r'replay_cap')
  static const StreamChanges200ResponseReasonEnum replayCap =
      _$streamChanges200ResponseReasonEnum_replayCap;
  @BuiltValueEnumConst(wireName: r'resync_required')
  static const StreamChanges200ResponseReasonEnum resyncRequired =
      _$streamChanges200ResponseReasonEnum_resyncRequired;

  static Serializer<StreamChanges200ResponseReasonEnum> get serializer =>
      _$streamChanges200ResponseReasonEnumSerializer;

  const StreamChanges200ResponseReasonEnum._(String name) : super(name);

  static BuiltSet<StreamChanges200ResponseReasonEnum> get values =>
      _$streamChanges200ResponseReasonEnumValues;
  static StreamChanges200ResponseReasonEnum valueOf(String name) =>
      _$streamChanges200ResponseReasonEnumValueOf(name);
}
