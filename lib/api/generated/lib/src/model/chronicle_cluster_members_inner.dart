//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_cluster_members_inner.g.dart';

/// A cluster member
///
/// Properties:
/// * [disclosure]
/// * [chronicleId] - Only for chronicles the caller can see
/// * [envelope]
/// * [linkId] - ULID identifier
/// * [strength] - From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
@BuiltValue()
abstract class ChronicleClusterMembersInner
    implements
        Built<
          ChronicleClusterMembersInner,
          ChronicleClusterMembersInnerBuilder
        > {
  @BuiltValueField(wireName: r'disclosure')
  ChronicleClusterMembersInnerDisclosureEnum get disclosure;
  // enum disclosureEnum {  full,  opaque,  };

  /// Only for chronicles the caller can see
  @BuiltValueField(wireName: r'chronicleId')
  String? get chronicleId;

  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope? get envelope;

  /// ULID identifier
  @BuiltValueField(wireName: r'linkId')
  String? get linkId;

  /// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
  @BuiltValueField(wireName: r'strength')
  ChronicleClusterMembersInnerStrengthEnum? get strength;
  // enum strengthEnum {  low,  medium,  high,  };

  ChronicleClusterMembersInner._();

  factory ChronicleClusterMembersInner([
    void updates(ChronicleClusterMembersInnerBuilder b),
  ]) = _$ChronicleClusterMembersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleClusterMembersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleClusterMembersInner> get serializer =>
      _$ChronicleClusterMembersInnerSerializer();
}

class _$ChronicleClusterMembersInnerSerializer
    implements PrimitiveSerializer<ChronicleClusterMembersInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleClusterMembersInner,
    _$ChronicleClusterMembersInner,
  ];

  @override
  final String wireName = r'ChronicleClusterMembersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleClusterMembersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'disclosure';
    yield serializers.serialize(
      object.disclosure,
      specifiedType: const FullType(ChronicleClusterMembersInnerDisclosureEnum),
    );
    if (object.chronicleId != null) {
      yield r'chronicleId';
      yield serializers.serialize(
        object.chronicleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.envelope != null) {
      yield r'envelope';
      yield serializers.serialize(
        object.envelope,
        specifiedType: const FullType.nullable(ObjectEnvelope),
      );
    }
    if (object.linkId != null) {
      yield r'linkId';
      yield serializers.serialize(
        object.linkId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.strength != null) {
      yield r'strength';
      yield serializers.serialize(
        object.strength,
        specifiedType: const FullType(ChronicleClusterMembersInnerStrengthEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleClusterMembersInner object, {
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
    required ChronicleClusterMembersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'disclosure':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChronicleClusterMembersInnerDisclosureEnum,
                    ),
                  )
                  as ChronicleClusterMembersInnerDisclosureEnum;
          result.disclosure = valueDes;
          break;
        case r'chronicleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.chronicleId = valueDes;
          break;
        case r'envelope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ObjectEnvelope),
                  )
                  as ObjectEnvelope?;
          if (valueDes == null) continue;
          result.envelope.replace(valueDes);
          break;
        case r'linkId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.linkId = valueDes;
          break;
        case r'strength':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleClusterMembersInnerStrengthEnum,
                    ),
                  )
                  as ChronicleClusterMembersInnerStrengthEnum?;
          if (valueDes == null) continue;
          result.strength = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleClusterMembersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleClusterMembersInnerBuilder();
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

class ChronicleClusterMembersInnerDisclosureEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'full')
  static const ChronicleClusterMembersInnerDisclosureEnum full =
      _$chronicleClusterMembersInnerDisclosureEnum_full;
  @BuiltValueEnumConst(wireName: r'opaque')
  static const ChronicleClusterMembersInnerDisclosureEnum opaque =
      _$chronicleClusterMembersInnerDisclosureEnum_opaque;

  static Serializer<ChronicleClusterMembersInnerDisclosureEnum>
  get serializer => _$chronicleClusterMembersInnerDisclosureEnumSerializer;

  const ChronicleClusterMembersInnerDisclosureEnum._(String name) : super(name);

  static BuiltSet<ChronicleClusterMembersInnerDisclosureEnum> get values =>
      _$chronicleClusterMembersInnerDisclosureEnumValues;
  static ChronicleClusterMembersInnerDisclosureEnum valueOf(String name) =>
      _$chronicleClusterMembersInnerDisclosureEnumValueOf(name);
}

/// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
class ChronicleClusterMembersInnerStrengthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const ChronicleClusterMembersInnerStrengthEnum low =
      _$chronicleClusterMembersInnerStrengthEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const ChronicleClusterMembersInnerStrengthEnum medium =
      _$chronicleClusterMembersInnerStrengthEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const ChronicleClusterMembersInnerStrengthEnum high =
      _$chronicleClusterMembersInnerStrengthEnum_high;

  static Serializer<ChronicleClusterMembersInnerStrengthEnum> get serializer =>
      _$chronicleClusterMembersInnerStrengthEnumSerializer;

  const ChronicleClusterMembersInnerStrengthEnum._(String name) : super(name);

  static BuiltSet<ChronicleClusterMembersInnerStrengthEnum> get values =>
      _$chronicleClusterMembersInnerStrengthEnumValues;
  static ChronicleClusterMembersInnerStrengthEnum valueOf(String name) =>
      _$chronicleClusterMembersInnerStrengthEnumValueOf(name);
}
