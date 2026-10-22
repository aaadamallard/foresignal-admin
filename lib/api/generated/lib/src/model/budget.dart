//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'budget.g.dart';

/// Budget
///
/// Properties:
/// * [perMinute]
/// * [perDay]
/// * [monthlyCapUsd] - Money cap per calendar month for paid adapters (135; X default 25); refused with BUDGET_EXCEEDED
@BuiltValue()
abstract class Budget implements Built<Budget, BudgetBuilder> {
  @BuiltValueField(wireName: r'perMinute')
  int get perMinute;

  @BuiltValueField(wireName: r'perDay')
  int get perDay;

  /// Money cap per calendar month for paid adapters (135; X default 25); refused with BUDGET_EXCEEDED
  @BuiltValueField(wireName: r'monthlyCapUsd')
  num? get monthlyCapUsd;

  Budget._();

  factory Budget([void updates(BudgetBuilder b)]) = _$Budget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BudgetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Budget> get serializer => _$BudgetSerializer();
}

class _$BudgetSerializer implements PrimitiveSerializer<Budget> {
  @override
  final Iterable<Type> types = const [Budget, _$Budget];

  @override
  final String wireName = r'Budget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Budget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'perMinute';
    yield serializers.serialize(
      object.perMinute,
      specifiedType: const FullType(int),
    );
    yield r'perDay';
    yield serializers.serialize(
      object.perDay,
      specifiedType: const FullType(int),
    );
    if (object.monthlyCapUsd != null) {
      yield r'monthlyCapUsd';
      yield serializers.serialize(
        object.monthlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Budget object, {
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
    required BudgetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'perMinute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perMinute = valueDes;
          break;
        case r'perDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perDay = valueDes;
          break;
        case r'monthlyCapUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.monthlyCapUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Budget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BudgetBuilder();
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
