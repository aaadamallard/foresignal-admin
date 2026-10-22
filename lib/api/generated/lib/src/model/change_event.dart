//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/change.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/persist_reason.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_event.g.dart';

/// SSE `change` event payload (`id:` = seq on /v1/changes/stream, composite cursor on /v1/events/stream); same shape as Change
///
/// Properties:
/// * [seq]
/// * [source_]
/// * [externalId]
/// * [kind]
/// * [version]
/// * [observedAt]
/// * [tombstone]
/// * [geometry]
/// * [payload] - Present with payload=true, and always for kinds in `inlinePayloadKinds` (default raster-frame)
/// * [prevSeq] - seq of the previous version; null for FIRST
/// * [historyTier]
/// * [persistReason]
/// * [eventTime]
/// * [validUntil] - Effective expiry; offline mirrors drop the record after it
/// * [qaFlags] - Quality bitmask: 1 FUTURE_CLAMPED, 2 GEOMETRY_FIXED, 4 NULL_ISLAND, 8 TIME_IMPUTED, 16 POSITION_STALE
/// * [bbox] - Bounding box of this version
/// * [prevPersistedBbox] - SSE only: bbox of the previous persisted version
/// * [prevLiveBbox] - SSE only: bbox of the live position before this version
/// * [leftFilter] - SSE only: only a previous box matched the spatial filter; remove the feature
/// * [purged] - Tombstone written by an entity purge: clients and caches delete the entity (039)
/// * [validFrom] - Start of validity (see Record.validFrom)
/// * [globalRef] - urn:foresignal:{instanceId}:{sourceId}:{externalId}
@BuiltValue()
abstract class ChangeEvent
    implements Change, Built<ChangeEvent, ChangeEventBuilder> {
  ChangeEvent._();

  factory ChangeEvent([void updates(ChangeEventBuilder b)]) = _$ChangeEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangeEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangeEvent> get serializer => _$ChangeEventSerializer();
}

class _$ChangeEventSerializer implements PrimitiveSerializer<ChangeEvent> {
  @override
  final Iterable<Type> types = const [ChangeEvent, _$ChangeEvent];

  @override
  final String wireName = r'ChangeEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangeEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tombstone';
    yield serializers.serialize(
      object.tombstone,
      specifiedType: const FullType(bool),
    );
    if (object.prevSeq != null) {
      yield r'prevSeq';
      yield serializers.serialize(
        object.prevSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.qaFlags != null) {
      yield r'qaFlags';
      yield serializers.serialize(
        object.qaFlags,
        specifiedType: const FullType(int),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.persistReason != null) {
      yield r'persistReason';
      yield serializers.serialize(
        object.persistReason,
        specifiedType: const FullType(PersistReason),
      );
    }
    if (object.leftFilter != null) {
      yield r'leftFilter';
      yield serializers.serialize(
        object.leftFilter,
        specifiedType: const FullType(bool),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.historyTier != null) {
      yield r'historyTier';
      yield serializers.serialize(
        object.historyTier,
        specifiedType: const FullType(HistoryTier),
      );
    }
    if (object.prevLiveBbox != null) {
      yield r'prevLiveBbox';
      yield serializers.serialize(
        object.prevLiveBbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.globalRef != null) {
      yield r'globalRef';
      yield serializers.serialize(
        object.globalRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.prevPersistedBbox != null) {
      yield r'prevPersistedBbox';
      yield serializers.serialize(
        object.prevPersistedBbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.purged != null) {
      yield r'purged';
      yield serializers.serialize(
        object.purged,
        specifiedType: const FullType(bool),
      );
    }
    yield r'seq';
    yield serializers.serialize(
      object.seq,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangeEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangeEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tombstone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.tombstone = valueDes;
          break;
        case r'prevSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.prevSeq = valueDes;
          break;
        case r'qaFlags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.qaFlags = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.observedAt = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'validFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'persistReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PersistReason),
          ) as PersistReason?;
          if (valueDes == null) continue;
          result.persistReason = valueDes;
          break;
        case r'leftFilter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.leftFilter = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'historyTier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HistoryTier),
          ) as HistoryTier?;
          if (valueDes == null) continue;
          result.historyTier = valueDes;
          break;
        case r'prevLiveBbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.prevLiveBbox.replace(valueDes);
          break;
        case r'globalRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.globalRef = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.payload.replace(valueDes);
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'eventTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'validUntil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.validUntil = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'prevPersistedBbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.prevPersistedBbox.replace(valueDes);
          break;
        case r'purged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.purged = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChangeEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeEventBuilder();
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
