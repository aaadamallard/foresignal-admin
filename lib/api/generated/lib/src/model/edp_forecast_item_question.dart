//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_forecast_item_question.g.dart';

/// EdpForecastItemQuestion
///
/// Properties:
/// * [externalId]
/// * [title]
/// * [closeTime]
/// * [resolutionCriteria]
@BuiltValue()
abstract class EdpForecastItemQuestion
    implements Built<EdpForecastItemQuestion, EdpForecastItemQuestionBuilder> {
  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'closeTime')
  DateTime? get closeTime;

  @BuiltValueField(wireName: r'resolutionCriteria')
  String? get resolutionCriteria;

  EdpForecastItemQuestion._();

  factory EdpForecastItemQuestion(
          [void updates(EdpForecastItemQuestionBuilder b)]) =
      _$EdpForecastItemQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpForecastItemQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpForecastItemQuestion> get serializer =>
      _$EdpForecastItemQuestionSerializer();
}

class _$EdpForecastItemQuestionSerializer
    implements PrimitiveSerializer<EdpForecastItemQuestion> {
  @override
  final Iterable<Type> types = const [
    EdpForecastItemQuestion,
    _$EdpForecastItemQuestion
  ];

  @override
  final String wireName = r'EdpForecastItemQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpForecastItemQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.closeTime != null) {
      yield r'closeTime';
      yield serializers.serialize(
        object.closeTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.resolutionCriteria != null) {
      yield r'resolutionCriteria';
      yield serializers.serialize(
        object.resolutionCriteria,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpForecastItemQuestion object, {
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
    required EdpForecastItemQuestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'closeTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.closeTime = valueDes;
          break;
        case r'resolutionCriteria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resolutionCriteria = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpForecastItemQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpForecastItemQuestionBuilder();
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
