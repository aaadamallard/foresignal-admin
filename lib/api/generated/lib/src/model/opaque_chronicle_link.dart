//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'opaque_chronicle_link.g.dart';

/// A relationship to a chronicle the caller cannot see: strength band and dimensions only; title and owner only if revealed
///
/// Properties:
/// * [linkId] - ULID identifier
/// * [disclosure]
/// * [chronicleId] - The caller's own chronicle in this link
/// * [strength] - From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
/// * [dimensions]
/// * [timeOverlap]
/// * [remote]
/// * [ownerHandle]
/// * [title]
/// * [accessRequestStatus]
@BuiltValue()
abstract class OpaqueChronicleLink
    implements Built<OpaqueChronicleLink, OpaqueChronicleLinkBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'linkId')
  String get linkId;

  @BuiltValueField(wireName: r'disclosure')
  OpaqueChronicleLinkDisclosureEnum get disclosure;
  // enum disclosureEnum {  opaque,  };

  /// The caller's own chronicle in this link
  @BuiltValueField(wireName: r'chronicleId')
  String? get chronicleId;

  /// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
  @BuiltValueField(wireName: r'strength')
  OpaqueChronicleLinkStrengthEnum get strength;
  // enum strengthEnum {  low,  medium,  high,  };

  @BuiltValueField(wireName: r'dimensions')
  BuiltList<OpaqueChronicleLinkDimensionsEnum> get dimensions;
  // enum dimensionsEnum {  evidence,  entities,  area-time,  topics,  };

  @BuiltValueField(wireName: r'timeOverlap')
  OpaqueChronicleLinkTimeOverlapEnum get timeOverlap;
  // enum timeOverlapEnum {  none,  partial,  full,  };

  @BuiltValueField(wireName: r'remote')
  bool? get remote;

  @BuiltValueField(wireName: r'ownerHandle')
  String? get ownerHandle;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'accessRequestStatus')
  OpaqueChronicleLinkAccessRequestStatusEnum? get accessRequestStatus;
  // enum accessRequestStatusEnum {  pending,  granted,  declined,  };

  OpaqueChronicleLink._();

  factory OpaqueChronicleLink([void updates(OpaqueChronicleLinkBuilder b)]) =
      _$OpaqueChronicleLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpaqueChronicleLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpaqueChronicleLink> get serializer =>
      _$OpaqueChronicleLinkSerializer();
}

class _$OpaqueChronicleLinkSerializer
    implements PrimitiveSerializer<OpaqueChronicleLink> {
  @override
  final Iterable<Type> types = const [
    OpaqueChronicleLink,
    _$OpaqueChronicleLink
  ];

  @override
  final String wireName = r'OpaqueChronicleLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpaqueChronicleLink object, {
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
      specifiedType: const FullType(OpaqueChronicleLinkDisclosureEnum),
    );
    if (object.chronicleId != null) {
      yield r'chronicleId';
      yield serializers.serialize(
        object.chronicleId,
        specifiedType: const FullType(String),
      );
    }
    yield r'strength';
    yield serializers.serialize(
      object.strength,
      specifiedType: const FullType(OpaqueChronicleLinkStrengthEnum),
    );
    yield r'dimensions';
    yield serializers.serialize(
      object.dimensions,
      specifiedType: const FullType(
          BuiltList, [FullType(OpaqueChronicleLinkDimensionsEnum)]),
    );
    yield r'timeOverlap';
    yield serializers.serialize(
      object.timeOverlap,
      specifiedType: const FullType(OpaqueChronicleLinkTimeOverlapEnum),
    );
    if (object.remote != null) {
      yield r'remote';
      yield serializers.serialize(
        object.remote,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ownerHandle != null) {
      yield r'ownerHandle';
      yield serializers.serialize(
        object.ownerHandle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.accessRequestStatus != null) {
      yield r'accessRequestStatus';
      yield serializers.serialize(
        object.accessRequestStatus,
        specifiedType:
            const FullType.nullable(OpaqueChronicleLinkAccessRequestStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OpaqueChronicleLink object, {
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
    required OpaqueChronicleLinkBuilder result,
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
            specifiedType: const FullType(OpaqueChronicleLinkDisclosureEnum),
          ) as OpaqueChronicleLinkDisclosureEnum;
          result.disclosure = valueDes;
          break;
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chronicleId = valueDes;
          break;
        case r'strength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OpaqueChronicleLinkStrengthEnum),
          ) as OpaqueChronicleLinkStrengthEnum;
          result.strength = valueDes;
          break;
        case r'dimensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OpaqueChronicleLinkDimensionsEnum)]),
          ) as BuiltList<OpaqueChronicleLinkDimensionsEnum>;
          result.dimensions.replace(valueDes);
          break;
        case r'timeOverlap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OpaqueChronicleLinkTimeOverlapEnum),
          ) as OpaqueChronicleLinkTimeOverlapEnum;
          result.timeOverlap = valueDes;
          break;
        case r'remote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.remote = valueDes;
          break;
        case r'ownerHandle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerHandle = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'accessRequestStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                OpaqueChronicleLinkAccessRequestStatusEnum),
          ) as OpaqueChronicleLinkAccessRequestStatusEnum?;
          if (valueDes == null) continue;
          result.accessRequestStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OpaqueChronicleLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpaqueChronicleLinkBuilder();
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

class OpaqueChronicleLinkDisclosureEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'opaque')
  static const OpaqueChronicleLinkDisclosureEnum opaque =
      _$opaqueChronicleLinkDisclosureEnum_opaque;

  static Serializer<OpaqueChronicleLinkDisclosureEnum> get serializer =>
      _$opaqueChronicleLinkDisclosureEnumSerializer;

  const OpaqueChronicleLinkDisclosureEnum._(String name) : super(name);

  static BuiltSet<OpaqueChronicleLinkDisclosureEnum> get values =>
      _$opaqueChronicleLinkDisclosureEnumValues;
  static OpaqueChronicleLinkDisclosureEnum valueOf(String name) =>
      _$opaqueChronicleLinkDisclosureEnumValueOf(name);
}

/// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
class OpaqueChronicleLinkStrengthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const OpaqueChronicleLinkStrengthEnum low =
      _$opaqueChronicleLinkStrengthEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const OpaqueChronicleLinkStrengthEnum medium =
      _$opaqueChronicleLinkStrengthEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const OpaqueChronicleLinkStrengthEnum high =
      _$opaqueChronicleLinkStrengthEnum_high;

  static Serializer<OpaqueChronicleLinkStrengthEnum> get serializer =>
      _$opaqueChronicleLinkStrengthEnumSerializer;

  const OpaqueChronicleLinkStrengthEnum._(String name) : super(name);

  static BuiltSet<OpaqueChronicleLinkStrengthEnum> get values =>
      _$opaqueChronicleLinkStrengthEnumValues;
  static OpaqueChronicleLinkStrengthEnum valueOf(String name) =>
      _$opaqueChronicleLinkStrengthEnumValueOf(name);
}

class OpaqueChronicleLinkDimensionsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'evidence')
  static const OpaqueChronicleLinkDimensionsEnum evidence =
      _$opaqueChronicleLinkDimensionsEnum_evidence;
  @BuiltValueEnumConst(wireName: r'entities')
  static const OpaqueChronicleLinkDimensionsEnum entities =
      _$opaqueChronicleLinkDimensionsEnum_entities;
  @BuiltValueEnumConst(wireName: r'area-time')
  static const OpaqueChronicleLinkDimensionsEnum areaTime =
      _$opaqueChronicleLinkDimensionsEnum_areaTime;
  @BuiltValueEnumConst(wireName: r'topics')
  static const OpaqueChronicleLinkDimensionsEnum topics =
      _$opaqueChronicleLinkDimensionsEnum_topics;

  static Serializer<OpaqueChronicleLinkDimensionsEnum> get serializer =>
      _$opaqueChronicleLinkDimensionsEnumSerializer;

  const OpaqueChronicleLinkDimensionsEnum._(String name) : super(name);

  static BuiltSet<OpaqueChronicleLinkDimensionsEnum> get values =>
      _$opaqueChronicleLinkDimensionsEnumValues;
  static OpaqueChronicleLinkDimensionsEnum valueOf(String name) =>
      _$opaqueChronicleLinkDimensionsEnumValueOf(name);
}

class OpaqueChronicleLinkTimeOverlapEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const OpaqueChronicleLinkTimeOverlapEnum none =
      _$opaqueChronicleLinkTimeOverlapEnum_none;
  @BuiltValueEnumConst(wireName: r'partial')
  static const OpaqueChronicleLinkTimeOverlapEnum partial =
      _$opaqueChronicleLinkTimeOverlapEnum_partial;
  @BuiltValueEnumConst(wireName: r'full')
  static const OpaqueChronicleLinkTimeOverlapEnum full =
      _$opaqueChronicleLinkTimeOverlapEnum_full;

  static Serializer<OpaqueChronicleLinkTimeOverlapEnum> get serializer =>
      _$opaqueChronicleLinkTimeOverlapEnumSerializer;

  const OpaqueChronicleLinkTimeOverlapEnum._(String name) : super(name);

  static BuiltSet<OpaqueChronicleLinkTimeOverlapEnum> get values =>
      _$opaqueChronicleLinkTimeOverlapEnumValues;
  static OpaqueChronicleLinkTimeOverlapEnum valueOf(String name) =>
      _$opaqueChronicleLinkTimeOverlapEnumValueOf(name);
}

class OpaqueChronicleLinkAccessRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const OpaqueChronicleLinkAccessRequestStatusEnum pending =
      _$opaqueChronicleLinkAccessRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'granted')
  static const OpaqueChronicleLinkAccessRequestStatusEnum granted =
      _$opaqueChronicleLinkAccessRequestStatusEnum_granted;
  @BuiltValueEnumConst(wireName: r'declined')
  static const OpaqueChronicleLinkAccessRequestStatusEnum declined =
      _$opaqueChronicleLinkAccessRequestStatusEnum_declined;

  static Serializer<OpaqueChronicleLinkAccessRequestStatusEnum>
      get serializer => _$opaqueChronicleLinkAccessRequestStatusEnumSerializer;

  const OpaqueChronicleLinkAccessRequestStatusEnum._(String name) : super(name);

  static BuiltSet<OpaqueChronicleLinkAccessRequestStatusEnum> get values =>
      _$opaqueChronicleLinkAccessRequestStatusEnumValues;
  static OpaqueChronicleLinkAccessRequestStatusEnum valueOf(String name) =>
      _$opaqueChronicleLinkAccessRequestStatusEnumValueOf(name);
}
