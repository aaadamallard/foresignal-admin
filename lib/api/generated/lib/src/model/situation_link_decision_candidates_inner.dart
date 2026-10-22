//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_link_decision_candidates_inner.g.dart';

/// A scored candidate situation
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [score]
@BuiltValue()
abstract class SituationLinkDecisionCandidatesInner
    implements
        Built<
          SituationLinkDecisionCandidatesInner,
          SituationLinkDecisionCandidatesInnerBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String get situationId;

  @BuiltValueField(wireName: r'score')
  num get score;

  SituationLinkDecisionCandidatesInner._();

  factory SituationLinkDecisionCandidatesInner([
    void updates(SituationLinkDecisionCandidatesInnerBuilder b),
  ]) = _$SituationLinkDecisionCandidatesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationLinkDecisionCandidatesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationLinkDecisionCandidatesInner> get serializer =>
      _$SituationLinkDecisionCandidatesInnerSerializer();
}

class _$SituationLinkDecisionCandidatesInnerSerializer
    implements PrimitiveSerializer<SituationLinkDecisionCandidatesInner> {
  @override
  final Iterable<Type> types = const [
    SituationLinkDecisionCandidatesInner,
    _$SituationLinkDecisionCandidatesInner,
  ];

  @override
  final String wireName = r'SituationLinkDecisionCandidatesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationLinkDecisionCandidatesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'situationId';
    yield serializers.serialize(
      object.situationId,
      specifiedType: const FullType(String),
    );
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationLinkDecisionCandidatesInner object, {
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
    required SituationLinkDecisionCandidatesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.situationId = valueDes;
          break;
        case r'score':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.score = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationLinkDecisionCandidatesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationLinkDecisionCandidatesInnerBuilder();
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
