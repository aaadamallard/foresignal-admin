//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_feedback_input.g.dart';

/// Feedback body
///
/// Properties:
/// * [rating]
/// * [comment]
@BuiltValue()
abstract class AnalystFeedbackInput
    implements Built<AnalystFeedbackInput, AnalystFeedbackInputBuilder> {
  @BuiltValueField(wireName: r'rating')
  AnalystFeedbackInputRatingEnum get rating;
  // enum ratingEnum {  useful,  not_useful,  wrong,  };

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  AnalystFeedbackInput._();

  factory AnalystFeedbackInput([void updates(AnalystFeedbackInputBuilder b)]) =
      _$AnalystFeedbackInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystFeedbackInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystFeedbackInput> get serializer =>
      _$AnalystFeedbackInputSerializer();
}

class _$AnalystFeedbackInputSerializer
    implements PrimitiveSerializer<AnalystFeedbackInput> {
  @override
  final Iterable<Type> types = const [
    AnalystFeedbackInput,
    _$AnalystFeedbackInput
  ];

  @override
  final String wireName = r'AnalystFeedbackInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystFeedbackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rating';
    yield serializers.serialize(
      object.rating,
      specifiedType: const FullType(AnalystFeedbackInputRatingEnum),
    );
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystFeedbackInput object, {
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
    required AnalystFeedbackInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystFeedbackInputRatingEnum),
          ) as AnalystFeedbackInputRatingEnum;
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
  AnalystFeedbackInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystFeedbackInputBuilder();
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

class AnalystFeedbackInputRatingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AnalystFeedbackInputRatingEnum useful =
      _$analystFeedbackInputRatingEnum_useful;
  @BuiltValueEnumConst(wireName: r'not_useful')
  static const AnalystFeedbackInputRatingEnum notUseful =
      _$analystFeedbackInputRatingEnum_notUseful;
  @BuiltValueEnumConst(wireName: r'wrong')
  static const AnalystFeedbackInputRatingEnum wrong =
      _$analystFeedbackInputRatingEnum_wrong;

  static Serializer<AnalystFeedbackInputRatingEnum> get serializer =>
      _$analystFeedbackInputRatingEnumSerializer;

  const AnalystFeedbackInputRatingEnum._(String name) : super(name);

  static BuiltSet<AnalystFeedbackInputRatingEnum> get values =>
      _$analystFeedbackInputRatingEnumValues;
  static AnalystFeedbackInputRatingEnum valueOf(String name) =>
      _$analystFeedbackInputRatingEnumValueOf(name);
}
