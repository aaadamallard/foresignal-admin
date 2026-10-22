//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_likelihood.g.dart';

/// Likelihood ratio of an indicator for one hypothesis
///
/// Properties:
/// * [class_] - Diagnosticity class: high 5.0/0.2, medium 2.5/0.4, low 1.4/0.7, neutral 1.0
/// * [direction]
/// * [value] - Explicit LR overriding the class value; requires a rationale
/// * [rationale]
/// * [effective] - LR the updater applies
@BuiltValue()
abstract class IndicatorLikelihood
    implements Built<IndicatorLikelihood, IndicatorLikelihoodBuilder> {
  /// Diagnosticity class: high 5.0/0.2, medium 2.5/0.4, low 1.4/0.7, neutral 1.0
  @BuiltValueField(wireName: r'class')
  IndicatorLikelihoodClass_Enum get class_;
  // enum class_Enum {  high,  medium,  low,  neutral,  };

  @BuiltValueField(wireName: r'direction')
  IndicatorLikelihoodDirectionEnum get direction;
  // enum directionEnum {  supports,  weakens,  };

  /// Explicit LR overriding the class value; requires a rationale
  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  /// LR the updater applies
  @BuiltValueField(wireName: r'effective')
  num? get effective;

  IndicatorLikelihood._();

  factory IndicatorLikelihood([void updates(IndicatorLikelihoodBuilder b)]) =
      _$IndicatorLikelihood;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorLikelihoodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorLikelihood> get serializer =>
      _$IndicatorLikelihoodSerializer();
}

class _$IndicatorLikelihoodSerializer
    implements PrimitiveSerializer<IndicatorLikelihood> {
  @override
  final Iterable<Type> types = const [
    IndicatorLikelihood,
    _$IndicatorLikelihood
  ];

  @override
  final String wireName = r'IndicatorLikelihood';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorLikelihood object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'class';
    yield serializers.serialize(
      object.class_,
      specifiedType: const FullType(IndicatorLikelihoodClass_Enum),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(IndicatorLikelihoodDirectionEnum),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.effective != null) {
      yield r'effective';
      yield serializers.serialize(
        object.effective,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorLikelihood object, {
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
    required IndicatorLikelihoodBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorLikelihoodClass_Enum),
          ) as IndicatorLikelihoodClass_Enum;
          result.class_ = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorLikelihoodDirectionEnum),
          ) as IndicatorLikelihoodDirectionEnum;
          result.direction = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'effective':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.effective = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorLikelihood deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorLikelihoodBuilder();
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

/// Diagnosticity class: high 5.0/0.2, medium 2.5/0.4, low 1.4/0.7, neutral 1.0
class IndicatorLikelihoodClass_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'high')
  static const IndicatorLikelihoodClass_Enum high =
      _$indicatorLikelihoodClassEnum_high;
  @BuiltValueEnumConst(wireName: r'medium')
  static const IndicatorLikelihoodClass_Enum medium =
      _$indicatorLikelihoodClassEnum_medium;
  @BuiltValueEnumConst(wireName: r'low')
  static const IndicatorLikelihoodClass_Enum low =
      _$indicatorLikelihoodClassEnum_low;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const IndicatorLikelihoodClass_Enum neutral =
      _$indicatorLikelihoodClassEnum_neutral;

  static Serializer<IndicatorLikelihoodClass_Enum> get serializer =>
      _$indicatorLikelihoodClassEnumSerializer;

  const IndicatorLikelihoodClass_Enum._(String name) : super(name);

  static BuiltSet<IndicatorLikelihoodClass_Enum> get values =>
      _$indicatorLikelihoodClassEnumValues;
  static IndicatorLikelihoodClass_Enum valueOf(String name) =>
      _$indicatorLikelihoodClassEnumValueOf(name);
}

class IndicatorLikelihoodDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supports')
  static const IndicatorLikelihoodDirectionEnum supports =
      _$indicatorLikelihoodDirectionEnum_supports;
  @BuiltValueEnumConst(wireName: r'weakens')
  static const IndicatorLikelihoodDirectionEnum weakens =
      _$indicatorLikelihoodDirectionEnum_weakens;

  static Serializer<IndicatorLikelihoodDirectionEnum> get serializer =>
      _$indicatorLikelihoodDirectionEnumSerializer;

  const IndicatorLikelihoodDirectionEnum._(String name) : super(name);

  static BuiltSet<IndicatorLikelihoodDirectionEnum> get values =>
      _$indicatorLikelihoodDirectionEnumValues;
  static IndicatorLikelihoodDirectionEnum valueOf(String name) =>
      _$indicatorLikelihoodDirectionEnumValueOf(name);
}
