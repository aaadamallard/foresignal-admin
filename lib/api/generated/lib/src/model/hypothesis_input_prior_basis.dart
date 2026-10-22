//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_input_prior_basis.g.dart';

/// Outside-view basis of a prior
///
/// Properties:
/// * [type]
/// * [ref] - 121 base-rate id, analog set reference, or null for an operator judgment
/// * [rationale]
/// * [value] - For a base-rate basis: the rate's pAtLeastOne when the prior was set (filled by the server); a later change of more than 20% relative records a base-rate-refresh revision
@BuiltValue()
abstract class HypothesisInputPriorBasis
    implements
        Built<HypothesisInputPriorBasis, HypothesisInputPriorBasisBuilder> {
  @BuiltValueField(wireName: r'type')
  HypothesisInputPriorBasisTypeEnum get type;
  // enum typeEnum {  base-rate,  analogs,  operator,  };

  /// 121 base-rate id, analog set reference, or null for an operator judgment
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  /// For a base-rate basis: the rate's pAtLeastOne when the prior was set (filled by the server); a later change of more than 20% relative records a base-rate-refresh revision
  @BuiltValueField(wireName: r'value')
  num? get value;

  HypothesisInputPriorBasis._();

  factory HypothesisInputPriorBasis(
          [void updates(HypothesisInputPriorBasisBuilder b)]) =
      _$HypothesisInputPriorBasis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisInputPriorBasisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisInputPriorBasis> get serializer =>
      _$HypothesisInputPriorBasisSerializer();
}

class _$HypothesisInputPriorBasisSerializer
    implements PrimitiveSerializer<HypothesisInputPriorBasis> {
  @override
  final Iterable<Type> types = const [
    HypothesisInputPriorBasis,
    _$HypothesisInputPriorBasis
  ];

  @override
  final String wireName = r'HypothesisInputPriorBasis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisInputPriorBasis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(HypothesisInputPriorBasisTypeEnum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisInputPriorBasis object, {
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
    required HypothesisInputPriorBasisBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisInputPriorBasisTypeEnum),
          ) as HypothesisInputPriorBasisTypeEnum;
          result.type = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisInputPriorBasis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisInputPriorBasisBuilder();
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

class HypothesisInputPriorBasisTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'base-rate')
  static const HypothesisInputPriorBasisTypeEnum baseRate =
      _$hypothesisInputPriorBasisTypeEnum_baseRate;
  @BuiltValueEnumConst(wireName: r'analogs')
  static const HypothesisInputPriorBasisTypeEnum analogs =
      _$hypothesisInputPriorBasisTypeEnum_analogs;
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisInputPriorBasisTypeEnum operator_ =
      _$hypothesisInputPriorBasisTypeEnum_operator_;

  static Serializer<HypothesisInputPriorBasisTypeEnum> get serializer =>
      _$hypothesisInputPriorBasisTypeEnumSerializer;

  const HypothesisInputPriorBasisTypeEnum._(String name) : super(name);

  static BuiltSet<HypothesisInputPriorBasisTypeEnum> get values =>
      _$hypothesisInputPriorBasisTypeEnumValues;
  static HypothesisInputPriorBasisTypeEnum valueOf(String name) =>
      _$hypothesisInputPriorBasisTypeEnumValueOf(name);
}
