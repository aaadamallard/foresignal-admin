//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_actual.g.dart';

/// Alerts the rule really fired in range
///
/// Properties:
/// * [alerts]
/// * [comparable] - Definition hash matches the alert's rule version or the rule is unchanged
@BuiltValue()
abstract class RuleBacktestResultActual
    implements
        Built<RuleBacktestResultActual, RuleBacktestResultActualBuilder> {
  @BuiltValueField(wireName: r'alerts')
  int? get alerts;

  /// Definition hash matches the alert's rule version or the rule is unchanged
  @BuiltValueField(wireName: r'comparable')
  bool? get comparable;

  RuleBacktestResultActual._();

  factory RuleBacktestResultActual(
          [void updates(RuleBacktestResultActualBuilder b)]) =
      _$RuleBacktestResultActual;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultActualBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultActual> get serializer =>
      _$RuleBacktestResultActualSerializer();
}

class _$RuleBacktestResultActualSerializer
    implements PrimitiveSerializer<RuleBacktestResultActual> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultActual,
    _$RuleBacktestResultActual
  ];

  @override
  final String wireName = r'RuleBacktestResultActual';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultActual object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(int),
      );
    }
    if (object.comparable != null) {
      yield r'comparable';
      yield serializers.serialize(
        object.comparable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultActual object, {
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
    required RuleBacktestResultActualBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alerts = valueDes;
          break;
        case r'comparable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.comparable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResultActual deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultActualBuilder();
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
