//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_feedback.g.dart';

/// Recorded feedback on an assessment
///
/// Properties:
/// * [id]
/// * [assessmentId] - ULID identifier
/// * [rating]
/// * [comment]
/// * [by]
/// * [at]
@BuiltValue()
abstract class AssessmentFeedback
    implements Built<AssessmentFeedback, AssessmentFeedbackBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'assessmentId')
  String get assessmentId;

  @BuiltValueField(wireName: r'rating')
  AssessmentFeedbackRatingEnum get rating;
  // enum ratingEnum {  useful,  not_useful,  wrong,  };

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'by')
  String get by;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  AssessmentFeedback._();

  factory AssessmentFeedback([void updates(AssessmentFeedbackBuilder b)]) =
      _$AssessmentFeedback;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentFeedbackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentFeedback> get serializer =>
      _$AssessmentFeedbackSerializer();
}

class _$AssessmentFeedbackSerializer
    implements PrimitiveSerializer<AssessmentFeedback> {
  @override
  final Iterable<Type> types = const [AssessmentFeedback, _$AssessmentFeedback];

  @override
  final String wireName = r'AssessmentFeedback';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentFeedback object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'assessmentId';
    yield serializers.serialize(
      object.assessmentId,
      specifiedType: const FullType(String),
    );
    yield r'rating';
    yield serializers.serialize(
      object.rating,
      specifiedType: const FullType(AssessmentFeedbackRatingEnum),
    );
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentFeedback object, {
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
    required AssessmentFeedbackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'assessmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assessmentId = valueDes;
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentFeedbackRatingEnum),
          ) as AssessmentFeedbackRatingEnum;
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
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.by = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentFeedback deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentFeedbackBuilder();
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

class AssessmentFeedbackRatingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AssessmentFeedbackRatingEnum useful =
      _$assessmentFeedbackRatingEnum_useful;
  @BuiltValueEnumConst(wireName: r'not_useful')
  static const AssessmentFeedbackRatingEnum notUseful =
      _$assessmentFeedbackRatingEnum_notUseful;
  @BuiltValueEnumConst(wireName: r'wrong')
  static const AssessmentFeedbackRatingEnum wrong =
      _$assessmentFeedbackRatingEnum_wrong;

  static Serializer<AssessmentFeedbackRatingEnum> get serializer =>
      _$assessmentFeedbackRatingEnumSerializer;

  const AssessmentFeedbackRatingEnum._(String name) : super(name);

  static BuiltSet<AssessmentFeedbackRatingEnum> get values =>
      _$assessmentFeedbackRatingEnumValues;
  static AssessmentFeedbackRatingEnum valueOf(String name) =>
      _$assessmentFeedbackRatingEnumValueOf(name);
}
