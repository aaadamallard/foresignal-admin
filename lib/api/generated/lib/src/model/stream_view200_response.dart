//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/change.dart';
import 'package:foresignal_api/src/model/live_event.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/persist_reason.dart';
import 'package:foresignal_api/src/model/resync_event.dart';
import 'package:foresignal_api/src/model/touch_event.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/reset_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'stream_view200_response.g.dart';

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
abstract class StreamView200Response
    implements Built<StreamView200Response, StreamView200ResponseBuilder> {
  /// Any Of [Change], [JsonObject], [LiveEvent], [ResetEvent], [ResyncEvent], [TouchEvent]
  AnyOf get anyOf;

  StreamView200Response._();

  factory StreamView200Response([
    void updates(StreamView200ResponseBuilder b),
  ]) = _$StreamView200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamView200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamView200Response> get serializer =>
      _$StreamView200ResponseSerializer();
}

class _$StreamView200ResponseSerializer
    implements PrimitiveSerializer<StreamView200Response> {
  @override
  final Iterable<Type> types = const [
    StreamView200Response,
    _$StreamView200Response,
  ];

  @override
  final String wireName = r'StreamView200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamView200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StreamView200Response object, {
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
  StreamView200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamView200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(Change),
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

class StreamView200ResponseReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'buffer_overflow')
  static const StreamView200ResponseReasonEnum bufferOverflow =
      _$streamView200ResponseReasonEnum_bufferOverflow;
  @BuiltValueEnumConst(wireName: r'replay_cap')
  static const StreamView200ResponseReasonEnum replayCap =
      _$streamView200ResponseReasonEnum_replayCap;
  @BuiltValueEnumConst(wireName: r'resync_required')
  static const StreamView200ResponseReasonEnum resyncRequired =
      _$streamView200ResponseReasonEnum_resyncRequired;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamView200ResponseReasonEnum unknownDefaultOpenApi =
      _$streamView200ResponseReasonEnum_unknownDefaultOpenApi;

  static Serializer<StreamView200ResponseReasonEnum> get serializer =>
      _$streamView200ResponseReasonEnumSerializer;

  const StreamView200ResponseReasonEnum._(String name) : super(name);

  static BuiltSet<StreamView200ResponseReasonEnum> get values =>
      _$streamView200ResponseReasonEnumValues;
  static StreamView200ResponseReasonEnum valueOf(String name) =>
      _$streamView200ResponseReasonEnumValueOf(name);
}
