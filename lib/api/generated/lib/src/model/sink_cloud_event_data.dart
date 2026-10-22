//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/provenance.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/persist_reason.dart';
import 'package:foresignal_api/src/model/region_tags.dart';
import 'package:foresignal_api/src/model/observer.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_cloud_event_data.g.dart';

/// The version item plus attributions
///
/// Properties:
/// * [id] - <sourceId>:<externalId>
/// * [source_]
/// * [externalId]
/// * [kind]
/// * [version]
/// * [seq]
/// * [observedAt]
/// * [ingestedAt]
/// * [validUntil]
/// * [tombstone]
/// * [geometry]
/// * [payload] - Current payload `jsonb_strip_nulls(h.payload || l.kinematic)`; projected by `fields`
/// * [attribution]
/// * [title] - record_head.title (titleField, else title > name > callsign > place > r > hex > mmsi)
/// * [persistedObservedAt] - observedAt of the persisted version (observedAt may be newer from live updates)
/// * [eventTime] - Discrete event time or measurement period start
/// * [validFrom] - Start of validity (`onset ?? effective` for alerts, scheduled start for road events); nullable, hashed like validUntil
/// * [quality]
/// * [live] - True when live state differs from the persisted version (record_live.dirty)
/// * [qaFlags] - Quality bitmask: 1 FUTURE_CLAMPED, 2 GEOMETRY_FIXED, 4 NULL_ISLAND, 8 TIME_IMPUTED, 16 POSITION_STALE
/// * [distanceKm] - Distance from `near` (sort=distance only)
/// * [observer] - Only with include=observer for agent/admin tokens or when security.exposeObserver is on; otherwise omitted
/// * [region] - Present with include=region (040)
/// * [entityId] - Canonical entity from the record's open link; present with `include=entity`
/// * [provenance]
/// * [globalRef] - urn:foresignal:{instanceId}:{sourceId}:{externalId}
/// * [persistReason]
/// * [prevSeq] - seq of the previous version of this record
/// * [historyTier]
/// * [receivedAt]
/// * [batchId] - fetch_log id of the batch that wrote this version
/// * [downsampled] - Seq falls in a downsampled (thinned) TRACK leaf; a `prevSeq` that no longer exists was removed by downsampling
/// * [attributions]
@BuiltValue()
abstract class SinkCloudEventData
    implements Built<SinkCloudEventData, SinkCloudEventDataBuilder> {
  /// <sourceId>:<externalId>
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'ingestedAt')
  DateTime get ingestedAt;

  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  @BuiltValueField(wireName: r'tombstone')
  bool? get tombstone;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// Current payload `jsonb_strip_nulls(h.payload || l.kinematic)`; projected by `fields`
  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?> get payload;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  /// record_head.title (titleField, else title > name > callsign > place > r > hex > mmsi)
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// observedAt of the persisted version (observedAt may be newer from live updates)
  @BuiltValueField(wireName: r'persistedObservedAt')
  DateTime? get persistedObservedAt;

  /// Discrete event time or measurement period start
  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  /// Start of validity (`onset ?? effective` for alerts, scheduled start for road events); nullable, hashed like validUntil
  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  /// True when live state differs from the persisted version (record_live.dirty)
  @BuiltValueField(wireName: r'live')
  bool? get live;

  /// Quality bitmask: 1 FUTURE_CLAMPED, 2 GEOMETRY_FIXED, 4 NULL_ISLAND, 8 TIME_IMPUTED, 16 POSITION_STALE
  @BuiltValueField(wireName: r'qaFlags')
  int? get qaFlags;

  /// Distance from `near` (sort=distance only)
  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  /// Only with include=observer for agent/admin tokens or when security.exposeObserver is on; otherwise omitted
  @BuiltValueField(wireName: r'observer')
  BuiltList<Observer>? get observer;

  /// Present with include=region (040)
  @BuiltValueField(wireName: r'region')
  RegionTags? get region;

  /// Canonical entity from the record's open link; present with `include=entity`
  @BuiltValueField(wireName: r'entityId')
  String? get entityId;

  @BuiltValueField(wireName: r'provenance')
  Provenance? get provenance;

  /// urn:foresignal:{instanceId}:{sourceId}:{externalId}
  @BuiltValueField(wireName: r'globalRef')
  String? get globalRef;

  @BuiltValueField(wireName: r'persistReason')
  PersistReason get persistReason;
  // enum persistReasonEnum {  FIRST,  REAPPEAR,  SIGNIFICANT,  TOMBSTONE,  CHANGE,  SAMPLE,  KEYFRAME,  HEARTBEAT,  TRIGGER_EDGE,  };

  /// seq of the previous version of this record
  @BuiltValueField(wireName: r'prevSeq')
  int? get prevSeq;

  @BuiltValueField(wireName: r'historyTier')
  HistoryTier? get historyTier;
  // enum historyTierEnum {  STANDARD,  TRACK,  };

  @BuiltValueField(wireName: r'receivedAt')
  DateTime get receivedAt;

  /// fetch_log id of the batch that wrote this version
  @BuiltValueField(wireName: r'batchId')
  int? get batchId;

  /// Seq falls in a downsampled (thinned) TRACK leaf; a `prevSeq` that no longer exists was removed by downsampling
  @BuiltValueField(wireName: r'downsampled')
  bool? get downsampled;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  SinkCloudEventData._();

  factory SinkCloudEventData([void updates(SinkCloudEventDataBuilder b)]) =
      _$SinkCloudEventData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkCloudEventDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkCloudEventData> get serializer =>
      _$SinkCloudEventDataSerializer();
}

class _$SinkCloudEventDataSerializer
    implements PrimitiveSerializer<SinkCloudEventData> {
  @override
  final Iterable<Type> types = const [SinkCloudEventData, _$SinkCloudEventData];

  @override
  final String wireName = r'SinkCloudEventData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkCloudEventData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'ingestedAt';
    yield serializers.serialize(
      object.ingestedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tombstone != null) {
      yield r'tombstone';
      yield serializers.serialize(
        object.tombstone,
        specifiedType: const FullType(bool),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.persistedObservedAt != null) {
      yield r'persistedObservedAt';
      yield serializers.serialize(
        object.persistedObservedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(Quality),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(bool),
      );
    }
    if (object.qaFlags != null) {
      yield r'qaFlags';
      yield serializers.serialize(
        object.qaFlags,
        specifiedType: const FullType(int),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.observer != null) {
      yield r'observer';
      yield serializers.serialize(
        object.observer,
        specifiedType: const FullType(BuiltList, [FullType(Observer)]),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType.nullable(RegionTags),
      );
    }
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.provenance != null) {
      yield r'provenance';
      yield serializers.serialize(
        object.provenance,
        specifiedType: const FullType(Provenance),
      );
    }
    if (object.globalRef != null) {
      yield r'globalRef';
      yield serializers.serialize(
        object.globalRef,
        specifiedType: const FullType(String),
      );
    }
    yield r'persistReason';
    yield serializers.serialize(
      object.persistReason,
      specifiedType: const FullType(PersistReason),
    );
    if (object.prevSeq != null) {
      yield r'prevSeq';
      yield serializers.serialize(
        object.prevSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.historyTier != null) {
      yield r'historyTier';
      yield serializers.serialize(
        object.historyTier,
        specifiedType: const FullType(HistoryTier),
      );
    }
    yield r'receivedAt';
    yield serializers.serialize(
      object.receivedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.batchId != null) {
      yield r'batchId';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.downsampled != null) {
      yield r'downsampled';
      yield serializers.serialize(
        object.downsampled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attributions != null) {
      yield r'attributions';
      yield serializers.serialize(
        object.attributions,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkCloudEventData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SinkCloudEventDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        case r'ingestedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.ingestedAt = valueDes;
          break;
        case r'validUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validUntil = valueDes;
          break;
        case r'tombstone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.tombstone = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'payload':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.payload.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'persistedObservedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.persistedObservedAt = valueDes;
          break;
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'quality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quality),
                  )
                  as Quality?;
          if (valueDes == null) continue;
          result.quality.replace(valueDes);
          break;
        case r'live':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.live = valueDes;
          break;
        case r'qaFlags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.qaFlags = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'observer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Observer),
                    ]),
                  )
                  as BuiltList<Observer>?;
          if (valueDes == null) continue;
          result.observer.replace(valueDes);
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RegionTags),
                  )
                  as RegionTags?;
          if (valueDes == null) continue;
          result.region.replace(valueDes);
          break;
        case r'entityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'provenance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Provenance),
                  )
                  as Provenance?;
          if (valueDes == null) continue;
          result.provenance.replace(valueDes);
          break;
        case r'globalRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.globalRef = valueDes;
          break;
        case r'persistReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PersistReason),
                  )
                  as PersistReason;
          result.persistReason = valueDes;
          break;
        case r'prevSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.prevSeq = valueDes;
          break;
        case r'historyTier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HistoryTier),
                  )
                  as HistoryTier?;
          if (valueDes == null) continue;
          result.historyTier = valueDes;
          break;
        case r'receivedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.receivedAt = valueDes;
          break;
        case r'batchId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.batchId = valueDes;
          break;
        case r'downsampled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.downsampled = valueDes;
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkCloudEventData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkCloudEventDataBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
