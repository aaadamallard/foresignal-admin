//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_result_windows.g.dart';

/// Windows in buckets of the series' frequency
///
/// Properties:
/// * [estimation]
/// * [preEvent]
/// * [event]
@BuiltValue()
abstract class EventStudyResultWindows
    implements Built<EventStudyResultWindows, EventStudyResultWindowsBuilder> {
  @BuiltValueField(wireName: r'estimation')
  BuiltList<int> get estimation;

  @BuiltValueField(wireName: r'preEvent')
  BuiltList<int> get preEvent;

  @BuiltValueField(wireName: r'event')
  BuiltList<int> get event;

  EventStudyResultWindows._();

  factory EventStudyResultWindows(
          [void updates(EventStudyResultWindowsBuilder b)]) =
      _$EventStudyResultWindows;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyResultWindowsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyResultWindows> get serializer =>
      _$EventStudyResultWindowsSerializer();
}

class _$EventStudyResultWindowsSerializer
    implements PrimitiveSerializer<EventStudyResultWindows> {
  @override
  final Iterable<Type> types = const [
    EventStudyResultWindows,
    _$EventStudyResultWindows
  ];

  @override
  final String wireName = r'EventStudyResultWindows';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyResultWindows object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'estimation';
    yield serializers.serialize(
      object.estimation,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'preEvent';
    yield serializers.serialize(
      object.preEvent,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultWindows object, {
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
    required EventStudyResultWindowsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'estimation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.estimation.replace(valueDes);
          break;
        case r'preEvent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.preEvent.replace(valueDes);
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
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
  EventStudyResultWindows deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyResultWindowsBuilder();
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
