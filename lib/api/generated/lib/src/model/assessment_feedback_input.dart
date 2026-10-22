//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_feedback_input.g.dart';

/// Rating of an assessment (stored as 102 analyst feedback)
///
/// Properties:
/// * [rating]
/// * [comment]
@BuiltValue()
abstract class AssessmentFeedbackInput
    implements Built<AssessmentFeedbackInput, AssessmentFeedbackInputBuilder> {
  @BuiltValueField(wireName: r'rating')
  AssessmentFeedbackInputRatingEnum get rating;
  // enum ratingEnum {  useful,  not_useful,  wrong,  };

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  AssessmentFeedbackInput._();

  factory AssessmentFeedbackInput(
          [void updates(AssessmentFeedbackInputBuilder b)]) =
      _$AssessmentFeedbackInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentFeedbackInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentFeedbackInput> get serializer =>
      _$AssessmentFeedbackInputSerializer();
}

class _$AssessmentFeedbackInputSerializer
    implements PrimitiveSerializer<AssessmentFeedbackInput> {
  @override
  final Iterable<Type> types = const [
    AssessmentFeedbackInput,
    _$AssessmentFeedbackInput
  ];

  @override
  final String wireName = r'AssessmentFeedbackInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentFeedbackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rating';
    yield serializers.serialize(
      object.rating,
      specifiedType: const FullType(AssessmentFeedbackInputRatingEnum),
    );
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentFeedbackInput object, {
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
    required AssessmentFeedbackInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentFeedbackInputRatingEnum),
          ) as AssessmentFeedbackInputRatingEnum;
          result.rating = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentFeedbackInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentFeedbackInputBuilder();
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

class AssessmentFeedbackInputRatingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AssessmentFeedbackInputRatingEnum useful =
      _$assessmentFeedbackInputRatingEnum_useful;
  @BuiltValueEnumConst(wireName: r'not_useful')
  static const AssessmentFeedbackInputRatingEnum notUseful =
      _$assessmentFeedbackInputRatingEnum_notUseful;
  @BuiltValueEnumConst(wireName: r'wrong')
  static const AssessmentFeedbackInputRatingEnum wrong =
      _$assessmentFeedbackInputRatingEnum_wrong;

  static Serializer<AssessmentFeedbackInputRatingEnum> get serializer =>
      _$assessmentFeedbackInputRatingEnumSerializer;

  const AssessmentFeedbackInputRatingEnum._(String name) : super(name);

  static BuiltSet<AssessmentFeedbackInputRatingEnum> get values =>
      _$assessmentFeedbackInputRatingEnumValues;
  static AssessmentFeedbackInputRatingEnum valueOf(String name) =>
      _$assessmentFeedbackInputRatingEnumValueOf(name);
}
