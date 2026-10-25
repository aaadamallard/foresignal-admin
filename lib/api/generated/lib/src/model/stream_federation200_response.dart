//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/federation_item.dart';
import 'package:foresignal_api/src/model/live_event.dart';
import 'package:foresignal_api/src/model/provenance.dart';
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/resync_event.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/reset_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'stream_federation200_response.g.dart';

/// The `data:` line of each event is one JSON object. The `event:` line, not the data, selects its schema as mapped in `x-foresignal-sse-events`, so this is `anyOf` (heartbeat `{}` and other small payloads match several); clients ignore unknown event names.
///
/// Properties:
/// * [seq]
/// * [ref] - urn:foresignal:{instanceId}:{sourceId}:{externalId} (externalId percent-encoded)
/// * [sourceId]
/// * [externalId]
/// * [kind]
/// * [version] - Persisted version this live state builds on
/// * [persistReason]
/// * [historyTier] - The version's history tier; a consumer stores TRACK items in its peer-{id}-trk source (113)
/// * [observedAt]
/// * [eventTime]
/// * [validUntil]
/// * [tombstone]
/// * [geometry]
/// * [payload]
/// * [quality]
/// * [licence] - LicenceTerms id in force for this version
/// * [provenance]
/// * [bbox] - Current bounding box
/// * [prevBbox] - Bounding box before this update (used by the spatial filter)
/// * [properties] - Kinematic (non-significant) properties after this update, over the persisted payload; a JSON null value means the key was removed
/// * [leftFilter] - True when only `prevBbox` matched the spatial filter: remove the feature
/// * [reason]
/// * [watermarkSeq]
/// * [resumeAfter] - Last delivered seq to resume from (null for resync_required)
@BuiltValue()
abstract class StreamFederation200Response
    implements
        Built<StreamFederation200Response, StreamFederation200ResponseBuilder> {
  /// Any Of [FederationItem], [JsonObject], [LiveEvent], [ResetEvent], [ResyncEvent]
  AnyOf get anyOf;

  StreamFederation200Response._();

  factory StreamFederation200Response([
    void updates(StreamFederation200ResponseBuilder b),
  ]) = _$StreamFederation200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamFederation200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamFederation200Response> get serializer =>
      _$StreamFederation200ResponseSerializer();
}

class _$StreamFederation200ResponseSerializer
    implements PrimitiveSerializer<StreamFederation200Response> {
  @override
  final Iterable<Type> types = const [
    StreamFederation200Response,
    _$StreamFederation200Response,
  ];

  @override
  final String wireName = r'StreamFederation200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamFederation200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StreamFederation200Response object, {
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
  StreamFederation200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamFederation200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(FederationItem),
      FullType(LiveEvent),
      FullType(JsonObject),
      FullType(ResyncEvent),
      FullType(ResetEvent),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

class StreamFederation200ResponsePersistReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FIRST')
  static const StreamFederation200ResponsePersistReasonEnum FIRST =
      _$streamFederation200ResponsePersistReasonEnum_FIRST;
  @BuiltValueEnumConst(wireName: r'REAPPEAR')
  static const StreamFederation200ResponsePersistReasonEnum REAPPEAR =
      _$streamFederation200ResponsePersistReasonEnum_REAPPEAR;
  @BuiltValueEnumConst(wireName: r'SIGNIFICANT')
  static const StreamFederation200ResponsePersistReasonEnum SIGNIFICANT =
      _$streamFederation200ResponsePersistReasonEnum_SIGNIFICANT;
  @BuiltValueEnumConst(wireName: r'TOMBSTONE')
  static const StreamFederation200ResponsePersistReasonEnum TOMBSTONE =
      _$streamFederation200ResponsePersistReasonEnum_TOMBSTONE;
  @BuiltValueEnumConst(wireName: r'CHANGE')
  static const StreamFederation200ResponsePersistReasonEnum CHANGE =
      _$streamFederation200ResponsePersistReasonEnum_CHANGE;
  @BuiltValueEnumConst(wireName: r'SAMPLE')
  static const StreamFederation200ResponsePersistReasonEnum SAMPLE =
      _$streamFederation200ResponsePersistReasonEnum_SAMPLE;
  @BuiltValueEnumConst(wireName: r'KEYFRAME')
  static const StreamFederation200ResponsePersistReasonEnum KEYFRAME =
      _$streamFederation200ResponsePersistReasonEnum_KEYFRAME;
  @BuiltValueEnumConst(wireName: r'HEARTBEAT')
  static const StreamFederation200ResponsePersistReasonEnum HEARTBEAT =
      _$streamFederation200ResponsePersistReasonEnum_HEARTBEAT;
  @BuiltValueEnumConst(wireName: r'TRIGGER_EDGE')
  static const StreamFederation200ResponsePersistReasonEnum TRIGGER_EDGE =
      _$streamFederation200ResponsePersistReasonEnum_TRIGGER_EDGE;
  @BuiltValueEnumConst(wireName: r'SNAPSHOT')
  static const StreamFederation200ResponsePersistReasonEnum SNAPSHOT =
      _$streamFederation200ResponsePersistReasonEnum_SNAPSHOT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamFederation200ResponsePersistReasonEnum
  unknownDefaultOpenApi =
      _$streamFederation200ResponsePersistReasonEnum_unknownDefaultOpenApi;

  static Serializer<StreamFederation200ResponsePersistReasonEnum>
  get serializer => _$streamFederation200ResponsePersistReasonEnumSerializer;

  const StreamFederation200ResponsePersistReasonEnum._(String name)
    : super(name);

  static BuiltSet<StreamFederation200ResponsePersistReasonEnum> get values =>
      _$streamFederation200ResponsePersistReasonEnumValues;
  static StreamFederation200ResponsePersistReasonEnum valueOf(String name) =>
      _$streamFederation200ResponsePersistReasonEnumValueOf(name);
}

/// The version's history tier; a consumer stores TRACK items in its peer-{id}-trk source (113)
class StreamFederation200ResponseHistoryTierEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'STANDARD')
  static const StreamFederation200ResponseHistoryTierEnum STANDARD =
      _$streamFederation200ResponseHistoryTierEnum_STANDARD;
  @BuiltValueEnumConst(wireName: r'TRACK')
  static const StreamFederation200ResponseHistoryTierEnum TRACK =
      _$streamFederation200ResponseHistoryTierEnum_TRACK;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamFederation200ResponseHistoryTierEnum
  unknownDefaultOpenApi =
      _$streamFederation200ResponseHistoryTierEnum_unknownDefaultOpenApi;

  static Serializer<StreamFederation200ResponseHistoryTierEnum>
  get serializer => _$streamFederation200ResponseHistoryTierEnumSerializer;

  const StreamFederation200ResponseHistoryTierEnum._(String name) : super(name);

  static BuiltSet<StreamFederation200ResponseHistoryTierEnum> get values =>
      _$streamFederation200ResponseHistoryTierEnumValues;
  static StreamFederation200ResponseHistoryTierEnum valueOf(String name) =>
      _$streamFederation200ResponseHistoryTierEnumValueOf(name);
}

class StreamFederation200ResponseReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'buffer_overflow')
  static const StreamFederation200ResponseReasonEnum bufferOverflow =
      _$streamFederation200ResponseReasonEnum_bufferOverflow;
  @BuiltValueEnumConst(wireName: r'replay_cap')
  static const StreamFederation200ResponseReasonEnum replayCap =
      _$streamFederation200ResponseReasonEnum_replayCap;
  @BuiltValueEnumConst(wireName: r'resync_required')
  static const StreamFederation200ResponseReasonEnum resyncRequired =
      _$streamFederation200ResponseReasonEnum_resyncRequired;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamFederation200ResponseReasonEnum unknownDefaultOpenApi =
      _$streamFederation200ResponseReasonEnum_unknownDefaultOpenApi;

  static Serializer<StreamFederation200ResponseReasonEnum> get serializer =>
      _$streamFederation200ResponseReasonEnumSerializer;

  const StreamFederation200ResponseReasonEnum._(String name) : super(name);

  static BuiltSet<StreamFederation200ResponseReasonEnum> get values =>
      _$streamFederation200ResponseReasonEnumValues;
  static StreamFederation200ResponseReasonEnum valueOf(String name) =>
      _$streamFederation200ResponseReasonEnumValueOf(name);
}
