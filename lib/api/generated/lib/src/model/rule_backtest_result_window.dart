//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_window.g.dart';

/// Windowed rules
///
/// Properties:
/// * [steps]
/// * [unknownSteps]
@BuiltValue()
abstract class RuleBacktestResultWindow
    implements
        Built<RuleBacktestResultWindow, RuleBacktestResultWindowBuilder> {
  @BuiltValueField(wireName: r'steps')
  int? get steps;

  @BuiltValueField(wireName: r'unknownSteps')
  int? get unknownSteps;

  RuleBacktestResultWindow._();

  factory RuleBacktestResultWindow([
    void updates(RuleBacktestResultWindowBuilder b),
  ]) = _$RuleBacktestResultWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultWindow> get serializer =>
      _$RuleBacktestResultWindowSerializer();
}

class _$RuleBacktestResultWindowSerializer
    implements PrimitiveSerializer<RuleBacktestResultWindow> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultWindow,
    _$RuleBacktestResultWindow,
  ];

  @override
  final String wireName = r'RuleBacktestResultWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(int),
      );
    }
    if (object.unknownSteps != null) {
      yield r'unknownSteps';
      yield serializers.serialize(
        object.unknownSteps,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultWindow object, {
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
    required RuleBacktestResultWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'steps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.steps = valueDes;
          break;
        case r'unknownSteps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.unknownSteps = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResultWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultWindowBuilder();
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
