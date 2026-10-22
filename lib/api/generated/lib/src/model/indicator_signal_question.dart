//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_signal_question.g.dart';

/// 122 question resolution
///
/// Properties:
/// * [questionId] - ULID identifier
/// * [outcome]
@BuiltValue()
abstract class IndicatorSignalQuestion
    implements Built<IndicatorSignalQuestion, IndicatorSignalQuestionBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'outcome')
  String get outcome;

  IndicatorSignalQuestion._();

  factory IndicatorSignalQuestion(
          [void updates(IndicatorSignalQuestionBuilder b)]) =
      _$IndicatorSignalQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorSignalQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorSignalQuestion> get serializer =>
      _$IndicatorSignalQuestionSerializer();
}

class _$IndicatorSignalQuestionSerializer
    implements PrimitiveSerializer<IndicatorSignalQuestion> {
  @override
  final Iterable<Type> types = const [
    IndicatorSignalQuestion,
    _$IndicatorSignalQuestion
  ];

  @override
  final String wireName = r'IndicatorSignalQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorSignalQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
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
    IndicatorSignalQuestion object, {
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
    required IndicatorSignalQuestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  IndicatorSignalQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorSignalQuestionBuilder();
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
