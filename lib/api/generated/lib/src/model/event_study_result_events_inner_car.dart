//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_result_events_inner_car.g.dart';

/// CAR per window
///
/// Properties:
/// * [preEvent]
/// * [event]
@BuiltValue()
abstract class EventStudyResultEventsInnerCar
    implements
        Built<EventStudyResultEventsInnerCar,
            EventStudyResultEventsInnerCarBuilder> {
  @BuiltValueField(wireName: r'preEvent')
  num? get preEvent;

  @BuiltValueField(wireName: r'event')
  num? get event;

  EventStudyResultEventsInnerCar._();

  factory EventStudyResultEventsInnerCar(
          [void updates(EventStudyResultEventsInnerCarBuilder b)]) =
      _$EventStudyResultEventsInnerCar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyResultEventsInnerCarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyResultEventsInnerCar> get serializer =>
      _$EventStudyResultEventsInnerCarSerializer();
}

class _$EventStudyResultEventsInnerCarSerializer
    implements PrimitiveSerializer<EventStudyResultEventsInnerCar> {
  @override
  final Iterable<Type> types = const [
    EventStudyResultEventsInnerCar,
    _$EventStudyResultEventsInnerCar
  ];

  @override
  final String wireName = r'EventStudyResultEventsInnerCar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyResultEventsInnerCar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.preEvent != null) {
      yield r'preEvent';
      yield serializers.serialize(
        object.preEvent,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultEventsInnerCar object, {
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
    required EventStudyResultEventsInnerCarBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preEvent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.preEvent = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.event = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyResultEventsInnerCar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyResultEventsInnerCarBuilder();
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
