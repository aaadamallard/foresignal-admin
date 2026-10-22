//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hypothesis_set_input_ledger_question_resolver.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_input_ledger_question.g.dart';

/// Ledger question to create with the set (when `horizon` and a resolver are given)
///
/// Properties:
/// * [resolver]
/// * [resolutionCriteria]
/// * [category]
@BuiltValue()
abstract class HypothesisSetInputLedgerQuestion
    implements
        Built<HypothesisSetInputLedgerQuestion,
            HypothesisSetInputLedgerQuestionBuilder> {
  @BuiltValueField(wireName: r'resolver')
  HypothesisSetInputLedgerQuestionResolver get resolver;

  @BuiltValueField(wireName: r'resolutionCriteria')
  String? get resolutionCriteria;

  @BuiltValueField(wireName: r'category')
  String? get category;

  HypothesisSetInputLedgerQuestion._();

  factory HypothesisSetInputLedgerQuestion(
          [void updates(HypothesisSetInputLedgerQuestionBuilder b)]) =
      _$HypothesisSetInputLedgerQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetInputLedgerQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetInputLedgerQuestion> get serializer =>
      _$HypothesisSetInputLedgerQuestionSerializer();
}

class _$HypothesisSetInputLedgerQuestionSerializer
    implements PrimitiveSerializer<HypothesisSetInputLedgerQuestion> {
  @override
  final Iterable<Type> types = const [
    HypothesisSetInputLedgerQuestion,
    _$HypothesisSetInputLedgerQuestion
  ];

  @override
  final String wireName = r'HypothesisSetInputLedgerQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetInputLedgerQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'resolver';
    yield serializers.serialize(
      object.resolver,
      specifiedType: const FullType(HypothesisSetInputLedgerQuestionResolver),
    );
    if (object.resolutionCriteria != null) {
      yield r'resolutionCriteria';
      yield serializers.serialize(
        object.resolutionCriteria,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetInputLedgerQuestion object, {
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
    required HypothesisSetInputLedgerQuestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resolver':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(HypothesisSetInputLedgerQuestionResolver),
          ) as HypothesisSetInputLedgerQuestionResolver;
          result.resolver.replace(valueDes);
          break;
        case r'resolutionCriteria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resolutionCriteria = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetInputLedgerQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetInputLedgerQuestionBuilder();
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
