//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/forecast_question_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_question_event.g.dart';

/// SSE payload on topic `forecasts` for question lifecycle changes
///
/// Properties:
/// * [event]
/// * [question]
/// * [at]
@BuiltValue()
abstract class ForecastQuestionEvent
    implements Built<ForecastQuestionEvent, ForecastQuestionEventBuilder> {
  @BuiltValueField(wireName: r'event')
  ForecastQuestionEventEventEnum get event;
  // enum eventEnum {  question.opened,  question.closed,  question.resolved,  question.annulled,  };

  @BuiltValueField(wireName: r'question')
  ForecastQuestionSummary get question;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ForecastQuestionEvent._();

  factory ForecastQuestionEvent([
    void updates(ForecastQuestionEventBuilder b),
  ]) = _$ForecastQuestionEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastQuestionEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastQuestionEvent> get serializer =>
      _$ForecastQuestionEventSerializer();
}

class _$ForecastQuestionEventSerializer
    implements PrimitiveSerializer<ForecastQuestionEvent> {
  @override
  final Iterable<Type> types = const [
    ForecastQuestionEvent,
    _$ForecastQuestionEvent,
  ];

  @override
  final String wireName = r'ForecastQuestionEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastQuestionEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(ForecastQuestionEventEventEnum),
    );
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(ForecastQuestionSummary),
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
    ForecastQuestionEvent object, {
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
    required ForecastQuestionEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastQuestionEventEventEnum,
                    ),
                  )
                  as ForecastQuestionEventEventEnum;
          result.event = valueDes;
          break;
        case r'question':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastQuestionSummary),
                  )
                  as ForecastQuestionSummary;
          result.question.replace(valueDes);
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
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
  ForecastQuestionEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastQuestionEventBuilder();
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

class ForecastQuestionEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'question.opened')
  static const ForecastQuestionEventEventEnum questionPeriodOpened =
      _$forecastQuestionEventEventEnum_questionPeriodOpened;
  @BuiltValueEnumConst(wireName: r'question.closed')
  static const ForecastQuestionEventEventEnum questionPeriodClosed =
      _$forecastQuestionEventEventEnum_questionPeriodClosed;
  @BuiltValueEnumConst(wireName: r'question.resolved')
  static const ForecastQuestionEventEventEnum questionPeriodResolved =
      _$forecastQuestionEventEventEnum_questionPeriodResolved;
  @BuiltValueEnumConst(wireName: r'question.annulled')
  static const ForecastQuestionEventEventEnum questionPeriodAnnulled =
      _$forecastQuestionEventEventEnum_questionPeriodAnnulled;

  static Serializer<ForecastQuestionEventEventEnum> get serializer =>
      _$forecastQuestionEventEventEnumSerializer;

  const ForecastQuestionEventEventEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionEventEventEnum> get values =>
      _$forecastQuestionEventEventEnumValues;
  static ForecastQuestionEventEventEnum valueOf(String name) =>
      _$forecastQuestionEventEventEnumValueOf(name);
}
