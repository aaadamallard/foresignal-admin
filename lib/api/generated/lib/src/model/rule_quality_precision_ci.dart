//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_quality_precision_ci.g.dart';

/// RuleQualityPrecisionCi
///
/// Properties:
/// * [lower]
/// * [upper]
@BuiltValue()
abstract class RuleQualityPrecisionCi
    implements Built<RuleQualityPrecisionCi, RuleQualityPrecisionCiBuilder> {
  @BuiltValueField(wireName: r'lower')
  num? get lower;

  @BuiltValueField(wireName: r'upper')
  num? get upper;

  RuleQualityPrecisionCi._();

  factory RuleQualityPrecisionCi(
          [void updates(RuleQualityPrecisionCiBuilder b)]) =
      _$RuleQualityPrecisionCi;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleQualityPrecisionCiBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleQualityPrecisionCi> get serializer =>
      _$RuleQualityPrecisionCiSerializer();
}

class _$RuleQualityPrecisionCiSerializer
    implements PrimitiveSerializer<RuleQualityPrecisionCi> {
  @override
  final Iterable<Type> types = const [
    RuleQualityPrecisionCi,
    _$RuleQualityPrecisionCi
  ];

  @override
  final String wireName = r'RuleQualityPrecisionCi';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleQualityPrecisionCi object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lower != null) {
      yield r'lower';
      yield serializers.serialize(
        object.lower,
        specifiedType: const FullType(num),
      );
    }
    if (object.upper != null) {
      yield r'upper';
      yield serializers.serialize(
        object.upper,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleQualityPrecisionCi object, {
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
    required RuleQualityPrecisionCiBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lower':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lower = valueDes;
          break;
        case r'upper':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.upper = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleQualityPrecisionCi deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleQualityPrecisionCiBuilder();
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
