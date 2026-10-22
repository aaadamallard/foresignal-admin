//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_result_events_inner_abnormal_inner.g.dart';

/// Abnormal value at an offset
///
/// Properties:
/// * [offset]
/// * [value]
/// * [cumulative]
@BuiltValue()
abstract class EventStudyResultEventsInnerAbnormalInner
    implements
        Built<EventStudyResultEventsInnerAbnormalInner,
            EventStudyResultEventsInnerAbnormalInnerBuilder> {
  @BuiltValueField(wireName: r'offset')
  int get offset;

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'cumulative')
  num? get cumulative;

  EventStudyResultEventsInnerAbnormalInner._();

  factory EventStudyResultEventsInnerAbnormalInner(
          [void updates(EventStudyResultEventsInnerAbnormalInnerBuilder b)]) =
      _$EventStudyResultEventsInnerAbnormalInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyResultEventsInnerAbnormalInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyResultEventsInnerAbnormalInner> get serializer =>
      _$EventStudyResultEventsInnerAbnormalInnerSerializer();
}

class _$EventStudyResultEventsInnerAbnormalInnerSerializer
    implements PrimitiveSerializer<EventStudyResultEventsInnerAbnormalInner> {
  @override
  final Iterable<Type> types = const [
    EventStudyResultEventsInnerAbnormalInner,
    _$EventStudyResultEventsInnerAbnormalInner
  ];

  @override
  final String wireName = r'EventStudyResultEventsInnerAbnormalInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyResultEventsInnerAbnormalInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(int),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.cumulative != null) {
      yield r'cumulative';
      yield serializers.serialize(
        object.cumulative,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultEventsInnerAbnormalInner object, {
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
    required EventStudyResultEventsInnerAbnormalInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.offset = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'cumulative':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.cumulative = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyResultEventsInnerAbnormalInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyResultEventsInnerAbnormalInnerBuilder();
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
