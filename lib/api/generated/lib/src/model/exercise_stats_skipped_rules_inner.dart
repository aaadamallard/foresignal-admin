//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exercise_stats_skipped_rules_inner.g.dart';

/// A rule the backtest engine cannot replay
///
/// Properties:
/// * [ruleId]
/// * [reason]
@BuiltValue()
abstract class ExerciseStatsSkippedRulesInner
    implements
        Built<
          ExerciseStatsSkippedRulesInner,
          ExerciseStatsSkippedRulesInnerBuilder
        > {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  ExerciseStatsSkippedRulesInner._();

  factory ExerciseStatsSkippedRulesInner([
    void updates(ExerciseStatsSkippedRulesInnerBuilder b),
  ]) = _$ExerciseStatsSkippedRulesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExerciseStatsSkippedRulesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExerciseStatsSkippedRulesInner> get serializer =>
      _$ExerciseStatsSkippedRulesInnerSerializer();
}

class _$ExerciseStatsSkippedRulesInnerSerializer
    implements PrimitiveSerializer<ExerciseStatsSkippedRulesInner> {
  @override
  final Iterable<Type> types = const [
    ExerciseStatsSkippedRulesInner,
    _$ExerciseStatsSkippedRulesInner,
  ];

  @override
  final String wireName = r'ExerciseStatsSkippedRulesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExerciseStatsSkippedRulesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExerciseStatsSkippedRulesInner object, {
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
    required ExerciseStatsSkippedRulesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExerciseStatsSkippedRulesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExerciseStatsSkippedRulesInnerBuilder();
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
