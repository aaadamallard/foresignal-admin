//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_prior_basis.g.dart';

/// Outside-view basis of a prior
///
/// Properties:
/// * [type]
/// * [ref] - 121 base-rate id, analog set reference, or null for an operator judgment
/// * [rationale]
/// * [value] - For a base-rate basis: the rate's pAtLeastOne when the prior was set (filled by the server); a later change of more than 20% relative records a base-rate-refresh revision
/// * [refreshedAt] - When a base-rate refresh last moved the prior
@BuiltValue()
abstract class HypothesisPriorBasis
    implements Built<HypothesisPriorBasis, HypothesisPriorBasisBuilder> {
  @BuiltValueField(wireName: r'type')
  HypothesisPriorBasisTypeEnum get type;
  // enum typeEnum {  base-rate,  analogs,  operator,  };

  /// 121 base-rate id, analog set reference, or null for an operator judgment
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  /// For a base-rate basis: the rate's pAtLeastOne when the prior was set (filled by the server); a later change of more than 20% relative records a base-rate-refresh revision
  @BuiltValueField(wireName: r'value')
  num? get value;

  /// When a base-rate refresh last moved the prior
  @BuiltValueField(wireName: r'refreshedAt')
  DateTime? get refreshedAt;

  HypothesisPriorBasis._();

  factory HypothesisPriorBasis([void updates(HypothesisPriorBasisBuilder b)]) =
      _$HypothesisPriorBasis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisPriorBasisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisPriorBasis> get serializer =>
      _$HypothesisPriorBasisSerializer();
}

class _$HypothesisPriorBasisSerializer
    implements PrimitiveSerializer<HypothesisPriorBasis> {
  @override
  final Iterable<Type> types = const [
    HypothesisPriorBasis,
    _$HypothesisPriorBasis,
  ];

  @override
  final String wireName = r'HypothesisPriorBasis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisPriorBasis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(HypothesisPriorBasisTypeEnum),
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
    if (object.refreshedAt != null) {
      yield r'refreshedAt';
      yield serializers.serialize(
        object.refreshedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisPriorBasis object, {
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
    required HypothesisPriorBasisBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisPriorBasisTypeEnum),
                  )
                  as HypothesisPriorBasisTypeEnum;
          result.type = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'refreshedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.refreshedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisPriorBasis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisPriorBasisBuilder();
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

class HypothesisPriorBasisTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'base-rate')
  static const HypothesisPriorBasisTypeEnum baseRate =
      _$hypothesisPriorBasisTypeEnum_baseRate;
  @BuiltValueEnumConst(wireName: r'analogs')
  static const HypothesisPriorBasisTypeEnum analogs =
      _$hypothesisPriorBasisTypeEnum_analogs;
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisPriorBasisTypeEnum operator_ =
      _$hypothesisPriorBasisTypeEnum_operator_;

  static Serializer<HypothesisPriorBasisTypeEnum> get serializer =>
      _$hypothesisPriorBasisTypeEnumSerializer;

  const HypothesisPriorBasisTypeEnum._(String name) : super(name);

  static BuiltSet<HypothesisPriorBasisTypeEnum> get values =>
      _$hypothesisPriorBasisTypeEnumValues;
  static HypothesisPriorBasisTypeEnum valueOf(String name) =>
      _$hypothesisPriorBasisTypeEnumValueOf(name);
}
