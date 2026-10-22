//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_per_day_inner.g.dart';

/// Count on one day
///
/// Properties:
/// * [date]
/// * [count]
@BuiltValue()
abstract class RuleBacktestResultPerDayInner
    implements
        Built<
          RuleBacktestResultPerDayInner,
          RuleBacktestResultPerDayInnerBuilder
        > {
  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'count')
  int get count;

  RuleBacktestResultPerDayInner._();

  factory RuleBacktestResultPerDayInner([
    void updates(RuleBacktestResultPerDayInnerBuilder b),
  ]) = _$RuleBacktestResultPerDayInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultPerDayInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultPerDayInner> get serializer =>
      _$RuleBacktestResultPerDayInnerSerializer();
}

class _$RuleBacktestResultPerDayInnerSerializer
    implements PrimitiveSerializer<RuleBacktestResultPerDayInner> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultPerDayInner,
    _$RuleBacktestResultPerDayInner,
  ];

  @override
  final String wireName = r'RuleBacktestResultPerDayInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultPerDayInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultPerDayInner object, {
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
    required RuleBacktestResultPerDayInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.date = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResultPerDayInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultPerDayInnerBuilder();
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
