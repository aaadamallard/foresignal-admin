//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate_definition_condition.g.dart';

/// Conditional rate: P(event in window | antecedent family occurred)
///
/// Properties:
/// * [family]
/// * [withinDays]
@BuiltValue()
abstract class BaseRateDefinitionCondition
    implements
        Built<BaseRateDefinitionCondition, BaseRateDefinitionConditionBuilder> {
  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'withinDays')
  int get withinDays;

  BaseRateDefinitionCondition._();

  factory BaseRateDefinitionCondition([
    void updates(BaseRateDefinitionConditionBuilder b),
  ]) = _$BaseRateDefinitionCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateDefinitionConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRateDefinitionCondition> get serializer =>
      _$BaseRateDefinitionConditionSerializer();
}

class _$BaseRateDefinitionConditionSerializer
    implements PrimitiveSerializer<BaseRateDefinitionCondition> {
  @override
  final Iterable<Type> types = const [
    BaseRateDefinitionCondition,
    _$BaseRateDefinitionCondition,
  ];

  @override
  final String wireName = r'BaseRateDefinitionCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRateDefinitionCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'withinDays';
    yield serializers.serialize(
      object.withinDays,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRateDefinitionCondition object, {
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
    required BaseRateDefinitionConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'withinDays':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.withinDays = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRateDefinitionCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateDefinitionConditionBuilder();
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
