//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/persist_reason.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change.g.dart';

/// Change
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
@BuiltValue(instantiable: false)
abstract class Change {
  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'tombstone')
  bool get tombstone;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// Present with payload=true, and always for kinds in `inlinePayloadKinds` (default raster-frame)
  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?>? get payload;

  /// seq of the previous version; null for FIRST
  @BuiltValueField(wireName: r'prevSeq')
  int? get prevSeq;

  @BuiltValueField(wireName: r'historyTier')
  HistoryTier? get historyTier;
  // enum historyTierEnum {  STANDARD,  TRACK,  };

  @BuiltValueField(wireName: r'persistReason')
  PersistReason? get persistReason;
  // enum persistReasonEnum {  FIRST,  REAPPEAR,  SIGNIFICANT,  TOMBSTONE,  CHANGE,  SAMPLE,  KEYFRAME,  HEARTBEAT,  TRIGGER_EDGE,  };

  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  /// Effective expiry; offline mirrors drop the record after it
  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  /// Quality bitmask: 1 FUTURE_CLAMPED, 2 GEOMETRY_FIXED, 4 NULL_ISLAND, 8 TIME_IMPUTED, 16 POSITION_STALE
  @BuiltValueField(wireName: r'qaFlags')
  int? get qaFlags;

  /// Bounding box of this version
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// SSE only: bbox of the previous persisted version
  @BuiltValueField(wireName: r'prevPersistedBbox')
  BuiltList<num>? get prevPersistedBbox;

  /// SSE only: bbox of the live position before this version
  @BuiltValueField(wireName: r'prevLiveBbox')
  BuiltList<num>? get prevLiveBbox;

  /// SSE only: only a previous box matched the spatial filter; remove the feature
  @BuiltValueField(wireName: r'leftFilter')
  bool? get leftFilter;

  /// Tombstone written by an entity purge: clients and caches delete the entity (039)
  @BuiltValueField(wireName: r'purged')
  bool? get purged;

  /// Start of validity (see Record.validFrom)
  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  /// urn:foresignal:{instanceId}:{sourceId}:{externalId}
  @BuiltValueField(wireName: r'globalRef')
  String? get globalRef;

  @BuiltValueSerializer(custom: true)
  static Serializer<Change> get serializer => _$ChangeSerializer();
}

class _$ChangeSerializer implements PrimitiveSerializer<Change> {
  @override
  final Iterable<Type> types = const [Change];

  @override
  final String wireName = r'Change';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Change object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seq';
    yield serializers.serialize(
      object.seq,
      specifiedType: const FullType(int),
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
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'tombstone';
    yield serializers.serialize(
      object.tombstone,
      specifiedType: const FullType(bool),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
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
    if (object.persistReason != null) {
      yield r'persistReason';
      yield serializers.serialize(
        object.persistReason,
        specifiedType: const FullType(PersistReason),
      );
    }
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
    if (object.qaFlags != null) {
      yield r'qaFlags';
      yield serializers.serialize(
        object.qaFlags,
        specifiedType: const FullType(int),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.prevPersistedBbox != null) {
      yield r'prevPersistedBbox';
      yield serializers.serialize(
        object.prevPersistedBbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.prevLiveBbox != null) {
      yield r'prevLiveBbox';
      yield serializers.serialize(
        object.prevLiveBbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.leftFilter != null) {
      yield r'leftFilter';
      yield serializers.serialize(
        object.leftFilter,
        specifiedType: const FullType(bool),
      );
    }
    if (object.purged != null) {
      yield r'purged';
      yield serializers.serialize(
        object.purged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.globalRef != null) {
      yield r'globalRef';
      yield serializers.serialize(
        object.globalRef,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Change object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  Change deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Change))
        as $Change;
  }
}

/// a concrete implementation of [Change], since [Change] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Change implements Change, Built<$Change, $ChangeBuilder> {
  $Change._();

  factory $Change([void Function($ChangeBuilder)? updates]) = _$$Change;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ChangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Change> get serializer => _$$ChangeSerializer();
}

class _$$ChangeSerializer implements PrimitiveSerializer<$Change> {
  @override
  final Iterable<Type> types = const [$Change, _$$Change];

  @override
  final String wireName = r'$Change';

  @override
  Object serialize(
    Serializers serializers,
    $Change object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Change))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seq = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.observedAt = valueDes;
          break;
        case r'tombstone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.tombstone = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
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
        case r'prevSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.prevSeq = valueDes;
          break;
        case r'historyTier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HistoryTier),
          ) as HistoryTier?;
          if (valueDes == null) continue;
          result.historyTier = valueDes;
          break;
        case r'persistReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PersistReason),
          ) as PersistReason?;
          if (valueDes == null) continue;
          result.persistReason = valueDes;
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
        case r'qaFlags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.qaFlags = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'prevPersistedBbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.prevPersistedBbox.replace(valueDes);
          break;
        case r'prevLiveBbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.prevLiveBbox.replace(valueDes);
          break;
        case r'leftFilter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.leftFilter = valueDes;
          break;
        case r'purged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.purged = valueDes;
          break;
        case r'validFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'globalRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.globalRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Change deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ChangeBuilder();
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
