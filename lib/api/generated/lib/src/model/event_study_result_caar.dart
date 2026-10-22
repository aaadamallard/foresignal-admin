//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_study_window_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_result_caar.g.dart';

/// CAAR and tests per window
///
/// Properties:
/// * [preEvent]
/// * [event]
@BuiltValue()
abstract class EventStudyResultCaar
    implements Built<EventStudyResultCaar, EventStudyResultCaarBuilder> {
  @BuiltValueField(wireName: r'preEvent')
  EventStudyWindowStats get preEvent;

  @BuiltValueField(wireName: r'event')
  EventStudyWindowStats get event;

  EventStudyResultCaar._();

  factory EventStudyResultCaar([void updates(EventStudyResultCaarBuilder b)]) =
      _$EventStudyResultCaar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyResultCaarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyResultCaar> get serializer =>
      _$EventStudyResultCaarSerializer();
}

class _$EventStudyResultCaarSerializer
    implements PrimitiveSerializer<EventStudyResultCaar> {
  @override
  final Iterable<Type> types = const [
    EventStudyResultCaar,
    _$EventStudyResultCaar,
  ];

  @override
  final String wireName = r'EventStudyResultCaar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyResultCaar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'preEvent';
    yield serializers.serialize(
      object.preEvent,
      specifiedType: const FullType(EventStudyWindowStats),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(EventStudyWindowStats),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultCaar object, {
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
    required EventStudyResultCaarBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preEvent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventStudyWindowStats),
                  )
                  as EventStudyWindowStats;
          result.preEvent.replace(valueDes);
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventStudyWindowStats),
                  )
                  as EventStudyWindowStats;
          result.event.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyResultCaar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyResultCaarBuilder();
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
