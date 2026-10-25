//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_submitted_event.g.dart';

/// SSE payload on topic `forecasts` when a forecast is recorded (summary only)
///
/// Properties:
/// * [event]
/// * [questionId] - ULID identifier
/// * [forecastId] - ULID identifier
/// * [forecasterId]
/// * [madeAt]
/// * [probability]
/// * [estimativeTerm]
/// * [private]
@BuiltValue()
abstract class ForecastSubmittedEvent
    implements Built<ForecastSubmittedEvent, ForecastSubmittedEventBuilder> {
  @BuiltValueField(wireName: r'event')
  ForecastSubmittedEventEventEnum get event;
  // enum eventEnum {  forecast.submitted,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  /// ULID identifier
  @BuiltValueField(wireName: r'forecastId')
  String get forecastId;

  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'madeAt')
  DateTime get madeAt;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'private')
  bool? get private;

  ForecastSubmittedEvent._();

  factory ForecastSubmittedEvent([
    void updates(ForecastSubmittedEventBuilder b),
  ]) = _$ForecastSubmittedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastSubmittedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastSubmittedEvent> get serializer =>
      _$ForecastSubmittedEventSerializer();
}

class _$ForecastSubmittedEventSerializer
    implements PrimitiveSerializer<ForecastSubmittedEvent> {
  @override
  final Iterable<Type> types = const [
    ForecastSubmittedEvent,
    _$ForecastSubmittedEvent,
  ];

  @override
  final String wireName = r'ForecastSubmittedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastSubmittedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(ForecastSubmittedEventEventEnum),
    );
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'forecastId';
    yield serializers.serialize(
      object.forecastId,
      specifiedType: const FullType(String),
    );
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'madeAt';
    yield serializers.serialize(
      object.madeAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType.nullable(IcdTerm),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastSubmittedEvent object, {
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
    required ForecastSubmittedEventBuilder result,
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
                      ForecastSubmittedEventEventEnum,
                    ),
                  )
                  as ForecastSubmittedEventEventEnum;
          result.event = valueDes;
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.questionId = valueDes;
          break;
        case r'forecastId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecastId = valueDes;
          break;
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
        case r'madeAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.madeAt = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IcdTerm),
                  )
                  as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastSubmittedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastSubmittedEventBuilder();
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

class ForecastSubmittedEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'forecast.submitted')
  static const ForecastSubmittedEventEventEnum forecastPeriodSubmitted =
      _$forecastSubmittedEventEventEnum_forecastPeriodSubmitted;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastSubmittedEventEventEnum unknownDefaultOpenApi =
      _$forecastSubmittedEventEventEnum_unknownDefaultOpenApi;

  static Serializer<ForecastSubmittedEventEventEnum> get serializer =>
      _$forecastSubmittedEventEventEnumSerializer;

  const ForecastSubmittedEventEventEnum._(String name) : super(name);

  static BuiltSet<ForecastSubmittedEventEventEnum> get values =>
      _$forecastSubmittedEventEventEnumValues;
  static ForecastSubmittedEventEventEnum valueOf(String name) =>
      _$forecastSubmittedEventEventEnumValueOf(name);
}
