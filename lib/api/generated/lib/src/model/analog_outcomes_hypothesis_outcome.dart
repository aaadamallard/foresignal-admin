//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_outcomes_hypothesis_outcome.g.dart';

/// Resolved related hypothesis set
///
/// Properties:
/// * [setId] - ULID identifier
/// * [outcome]
@BuiltValue()
abstract class AnalogOutcomesHypothesisOutcome
    implements
        Built<
          AnalogOutcomesHypothesisOutcome,
          AnalogOutcomesHypothesisOutcomeBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'outcome')
  String get outcome;

  AnalogOutcomesHypothesisOutcome._();

  factory AnalogOutcomesHypothesisOutcome([
    void updates(AnalogOutcomesHypothesisOutcomeBuilder b),
  ]) = _$AnalogOutcomesHypothesisOutcome;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogOutcomesHypothesisOutcomeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogOutcomesHypothesisOutcome> get serializer =>
      _$AnalogOutcomesHypothesisOutcomeSerializer();
}

class _$AnalogOutcomesHypothesisOutcomeSerializer
    implements PrimitiveSerializer<AnalogOutcomesHypothesisOutcome> {
  @override
  final Iterable<Type> types = const [
    AnalogOutcomesHypothesisOutcome,
    _$AnalogOutcomesHypothesisOutcome,
  ];

  @override
  final String wireName = r'AnalogOutcomesHypothesisOutcome';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogOutcomesHypothesisOutcome object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'outcome';
    yield serializers.serialize(
      object.outcome,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogOutcomesHypothesisOutcome object, {
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
    required AnalogOutcomesHypothesisOutcomeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
        case r'outcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.outcome = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogOutcomesHypothesisOutcome deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogOutcomesHypothesisOutcomeBuilder();
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
