//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_link_scores.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_link.g.dart';

/// A relationship between two chronicles at full disclosure (the caller can see both)
///
/// Properties:
/// * [linkId] - ULID identifier
/// * [disclosure]
/// * [a] - Local chronicle id
/// * [b] - Local chronicle id or `remote:{instanceId}/chronicle:{sketchId}`
/// * [other]
/// * [strength] - From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
/// * [dimensions]
/// * [scores]
/// * [temporal]
/// * [timeOverlap]
/// * [sharedSituations]
/// * [sharedCanonicalEvents] - Computed exactly from both key sets (capped)
/// * [sharedEntities]
/// * [sharedKeyCount]
/// * [status]
/// * [firstFound]
/// * [lastUpdated]
@BuiltValue()
abstract class ChronicleLink
    implements Built<ChronicleLink, ChronicleLinkBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'linkId')
  String get linkId;

  @BuiltValueField(wireName: r'disclosure')
  ChronicleLinkDisclosureEnum get disclosure;
  // enum disclosureEnum {  full,  };

  /// Local chronicle id
  @BuiltValueField(wireName: r'a')
  String get a;

  /// Local chronicle id or `remote:{instanceId}/chronicle:{sketchId}`
  @BuiltValueField(wireName: r'b')
  String get b;

  @BuiltValueField(wireName: r'other')
  ObjectEnvelope? get other;

  /// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
  @BuiltValueField(wireName: r'strength')
  ChronicleLinkStrengthEnum get strength;
  // enum strengthEnum {  low,  medium,  high,  };

  @BuiltValueField(wireName: r'dimensions')
  BuiltList<ChronicleLinkDimensionsEnum> get dimensions;
  // enum dimensionsEnum {  evidence,  entities,  area-time,  topics,  };

  @BuiltValueField(wireName: r'scores')
  ChronicleLinkScores? get scores;

  @BuiltValueField(wireName: r'temporal')
  ChronicleLinkTemporalEnum get temporal;
  // enum temporalEnum {  a-precedes-b,  b-precedes-a,  concurrent,  };

  @BuiltValueField(wireName: r'timeOverlap')
  ChronicleLinkTimeOverlapEnum? get timeOverlap;
  // enum timeOverlapEnum {  none,  partial,  full,  };

  @BuiltValueField(wireName: r'sharedSituations')
  BuiltList<String>? get sharedSituations;

  /// Computed exactly from both key sets (capped)
  @BuiltValueField(wireName: r'sharedCanonicalEvents')
  BuiltList<String>? get sharedCanonicalEvents;

  @BuiltValueField(wireName: r'sharedEntities')
  BuiltList<String>? get sharedEntities;

  @BuiltValueField(wireName: r'sharedKeyCount')
  int? get sharedKeyCount;

  @BuiltValueField(wireName: r'status')
  ChronicleLinkStatusEnum get status;
  // enum statusEnum {  active,  dismissed,  };

  @BuiltValueField(wireName: r'firstFound')
  DateTime get firstFound;

  @BuiltValueField(wireName: r'lastUpdated')
  DateTime? get lastUpdated;

  ChronicleLink._();

  factory ChronicleLink([void updates(ChronicleLinkBuilder b)]) =
      _$ChronicleLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLink> get serializer =>
      _$ChronicleLinkSerializer();
}

class _$ChronicleLinkSerializer implements PrimitiveSerializer<ChronicleLink> {
  @override
  final Iterable<Type> types = const [ChronicleLink, _$ChronicleLink];

  @override
  final String wireName = r'ChronicleLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'linkId';
    yield serializers.serialize(
      object.linkId,
      specifiedType: const FullType(String),
    );
    yield r'disclosure';
    yield serializers.serialize(
      object.disclosure,
      specifiedType: const FullType(ChronicleLinkDisclosureEnum),
    );
    yield r'a';
    yield serializers.serialize(
      object.a,
      specifiedType: const FullType(String),
    );
    yield r'b';
    yield serializers.serialize(
      object.b,
      specifiedType: const FullType(String),
    );
    if (object.other != null) {
      yield r'other';
      yield serializers.serialize(
        object.other,
        specifiedType: const FullType.nullable(ObjectEnvelope),
      );
    }
    yield r'strength';
    yield serializers.serialize(
      object.strength,
      specifiedType: const FullType(ChronicleLinkStrengthEnum),
    );
    yield r'dimensions';
    yield serializers.serialize(
      object.dimensions,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleLinkDimensionsEnum)]),
    );
    if (object.scores != null) {
      yield r'scores';
      yield serializers.serialize(
        object.scores,
        specifiedType: const FullType(ChronicleLinkScores),
      );
    }
    yield r'temporal';
    yield serializers.serialize(
      object.temporal,
      specifiedType: const FullType(ChronicleLinkTemporalEnum),
    );
    if (object.timeOverlap != null) {
      yield r'timeOverlap';
      yield serializers.serialize(
        object.timeOverlap,
        specifiedType: const FullType(ChronicleLinkTimeOverlapEnum),
      );
    }
    if (object.sharedSituations != null) {
      yield r'sharedSituations';
      yield serializers.serialize(
        object.sharedSituations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sharedCanonicalEvents != null) {
      yield r'sharedCanonicalEvents';
      yield serializers.serialize(
        object.sharedCanonicalEvents,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sharedEntities != null) {
      yield r'sharedEntities';
      yield serializers.serialize(
        object.sharedEntities,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sharedKeyCount != null) {
      yield r'sharedKeyCount';
      yield serializers.serialize(
        object.sharedKeyCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ChronicleLinkStatusEnum),
    );
    yield r'firstFound';
    yield serializers.serialize(
      object.firstFound,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastUpdated != null) {
      yield r'lastUpdated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLink object, {
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
    required ChronicleLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'linkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.linkId = valueDes;
          break;
        case r'disclosure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleLinkDisclosureEnum),
          ) as ChronicleLinkDisclosureEnum;
          result.disclosure = valueDes;
          break;
        case r'a':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.a = valueDes;
          break;
        case r'b':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.b = valueDes;
          break;
        case r'other':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ObjectEnvelope),
          ) as ObjectEnvelope?;
          if (valueDes == null) continue;
          result.other.replace(valueDes);
          break;
        case r'strength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleLinkStrengthEnum),
          ) as ChronicleLinkStrengthEnum;
          result.strength = valueDes;
          break;
        case r'dimensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleLinkDimensionsEnum)]),
          ) as BuiltList<ChronicleLinkDimensionsEnum>;
          result.dimensions.replace(valueDes);
          break;
        case r'scores':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChronicleLinkScores),
          ) as ChronicleLinkScores?;
          if (valueDes == null) continue;
          result.scores.replace(valueDes);
          break;
        case r'temporal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleLinkTemporalEnum),
          ) as ChronicleLinkTemporalEnum;
          result.temporal = valueDes;
          break;
        case r'timeOverlap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ChronicleLinkTimeOverlapEnum),
          ) as ChronicleLinkTimeOverlapEnum?;
          if (valueDes == null) continue;
          result.timeOverlap = valueDes;
          break;
        case r'sharedSituations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sharedSituations.replace(valueDes);
          break;
        case r'sharedCanonicalEvents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sharedCanonicalEvents.replace(valueDes);
          break;
        case r'sharedEntities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sharedEntities.replace(valueDes);
          break;
        case r'sharedKeyCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sharedKeyCount = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleLinkStatusEnum),
          ) as ChronicleLinkStatusEnum;
          result.status = valueDes;
          break;
        case r'firstFound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.firstFound = valueDes;
          break;
        case r'lastUpdated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLinkBuilder();
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

class ChronicleLinkDisclosureEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'full')
  static const ChronicleLinkDisclosureEnum full =
      _$chronicleLinkDisclosureEnum_full;

  static Serializer<ChronicleLinkDisclosureEnum> get serializer =>
      _$chronicleLinkDisclosureEnumSerializer;

  const ChronicleLinkDisclosureEnum._(String name) : super(name);

  static BuiltSet<ChronicleLinkDisclosureEnum> get values =>
      _$chronicleLinkDisclosureEnumValues;
  static ChronicleLinkDisclosureEnum valueOf(String name) =>
      _$chronicleLinkDisclosureEnumValueOf(name);
}

/// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
class ChronicleLinkStrengthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const ChronicleLinkStrengthEnum low = _$chronicleLinkStrengthEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const ChronicleLinkStrengthEnum medium =
      _$chronicleLinkStrengthEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const ChronicleLinkStrengthEnum high =
      _$chronicleLinkStrengthEnum_high;

  static Serializer<ChronicleLinkStrengthEnum> get serializer =>
      _$chronicleLinkStrengthEnumSerializer;

  const ChronicleLinkStrengthEnum._(String name) : super(name);

  static BuiltSet<ChronicleLinkStrengthEnum> get values =>
      _$chronicleLinkStrengthEnumValues;
  static ChronicleLinkStrengthEnum valueOf(String name) =>
      _$chronicleLinkStrengthEnumValueOf(name);
}

class ChronicleLinkDimensionsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ChronicleLinkDimensionsEnum evidence =
      _$chronicleLinkDimensionsEnum_evidence;
  @BuiltValueEnumConst(wireName: r'entities')
  static const ChronicleLinkDimensionsEnum entities =
      _$chronicleLinkDimensionsEnum_entities;
  @BuiltValueEnumConst(wireName: r'area-time')
  static const ChronicleLinkDimensionsEnum areaTime =
      _$chronicleLinkDimensionsEnum_areaTime;
  @BuiltValueEnumConst(wireName: r'topics')
  static const ChronicleLinkDimensionsEnum topics =
      _$chronicleLinkDimensionsEnum_topics;

  static Serializer<ChronicleLinkDimensionsEnum> get serializer =>
      _$chronicleLinkDimensionsEnumSerializer;

  const ChronicleLinkDimensionsEnum._(String name) : super(name);

  static BuiltSet<ChronicleLinkDimensionsEnum> get values =>
      _$chronicleLinkDimensionsEnumValues;
  static ChronicleLinkDimensionsEnum valueOf(String name) =>
      _$chronicleLinkDimensionsEnumValueOf(name);
}

class ChronicleLinkTemporalEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'a-precedes-b')
  static const ChronicleLinkTemporalEnum aPrecedesB =
      _$chronicleLinkTemporalEnum_aPrecedesB;
  @BuiltValueEnumConst(wireName: r'b-precedes-a')
  static const ChronicleLinkTemporalEnum bPrecedesA =
      _$chronicleLinkTemporalEnum_bPrecedesA;
  @BuiltValueEnumConst(wireName: r'concurrent')
  static const ChronicleLinkTemporalEnum concurrent =
      _$chronicleLinkTemporalEnum_concurrent;

  static Serializer<ChronicleLinkTemporalEnum> get serializer =>
      _$chronicleLinkTemporalEnumSerializer;

  const ChronicleLinkTemporalEnum._(String name) : super(name);

  static BuiltSet<ChronicleLinkTemporalEnum> get values =>
      _$chronicleLinkTemporalEnumValues;
  static ChronicleLinkTemporalEnum valueOf(String name) =>
      _$chronicleLinkTemporalEnumValueOf(name);
}

class ChronicleLinkTimeOverlapEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const ChronicleLinkTimeOverlapEnum none =
      _$chronicleLinkTimeOverlapEnum_none;
  @BuiltValueEnumConst(wireName: r'partial')
  static const ChronicleLinkTimeOverlapEnum partial =
      _$chronicleLinkTimeOverlapEnum_partial;
  @BuiltValueEnumConst(wireName: r'full')
  static const ChronicleLinkTimeOverlapEnum full =
      _$chronicleLinkTimeOverlapEnum_full;

  static Serializer<ChronicleLinkTimeOverlapEnum> get serializer =>
      _$chronicleLinkTimeOverlapEnumSerializer;

  const ChronicleLinkTimeOverlapEnum._(String name) : super(name);

  static BuiltSet<ChronicleLinkTimeOverlapEnum> get values =>
      _$chronicleLinkTimeOverlapEnumValues;
  static ChronicleLinkTimeOverlapEnum valueOf(String name) =>
      _$chronicleLinkTimeOverlapEnumValueOf(name);
}

class ChronicleLinkStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ChronicleLinkStatusEnum active =
      _$chronicleLinkStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const ChronicleLinkStatusEnum dismissed =
      _$chronicleLinkStatusEnum_dismissed;

  static Serializer<ChronicleLinkStatusEnum> get serializer =>
      _$chronicleLinkStatusEnumSerializer;

  const ChronicleLinkStatusEnum._(String name) : super(name);

  static BuiltSet<ChronicleLinkStatusEnum> get values =>
      _$chronicleLinkStatusEnumValues;
  static ChronicleLinkStatusEnum valueOf(String name) =>
      _$chronicleLinkStatusEnumValueOf(name);
}
