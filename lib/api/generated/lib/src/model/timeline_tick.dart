//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/timeline_tick_frames_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline_tick.g.dart';

/// One tick of the cross-product timeline
///
/// Properties:
/// * [time]
/// * [kind]
/// * [frames]
@BuiltValue()
abstract class TimelineTick
    implements Built<TimelineTick, TimelineTickBuilder> {
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'kind')
  TimelineTickKindEnum get kind;
  // enum kindEnum {  observed,  forecast,  };

  @BuiltValueField(wireName: r'frames')
  BuiltList<TimelineTickFramesInner> get frames;

  TimelineTick._();

  factory TimelineTick([void updates(TimelineTickBuilder b)]) = _$TimelineTick;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineTickBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimelineTick> get serializer => _$TimelineTickSerializer();
}

class _$TimelineTickSerializer implements PrimitiveSerializer<TimelineTick> {
  @override
  final Iterable<Type> types = const [TimelineTick, _$TimelineTick];

  @override
  final String wireName = r'TimelineTick';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimelineTick object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(TimelineTickKindEnum),
    );
    yield r'frames';
    yield serializers.serialize(
      object.frames,
      specifiedType: const FullType(BuiltList, [
        FullType(TimelineTickFramesInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TimelineTick object, {
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
    required TimelineTickBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TimelineTickKindEnum),
                  )
                  as TimelineTickKindEnum;
          result.kind = valueDes;
          break;
        case r'frames':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(TimelineTickFramesInner),
                    ]),
                  )
                  as BuiltList<TimelineTickFramesInner>;
          result.frames.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimelineTick deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineTickBuilder();
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

class TimelineTickKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observed')
  static const TimelineTickKindEnum observed = _$timelineTickKindEnum_observed;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const TimelineTickKindEnum forecast = _$timelineTickKindEnum_forecast;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TimelineTickKindEnum unknownDefaultOpenApi =
      _$timelineTickKindEnum_unknownDefaultOpenApi;

  static Serializer<TimelineTickKindEnum> get serializer =>
      _$timelineTickKindEnumSerializer;

  const TimelineTickKindEnum._(String name) : super(name);

  static BuiltSet<TimelineTickKindEnum> get values =>
      _$timelineTickKindEnumValues;
  static TimelineTickKindEnum valueOf(String name) =>
      _$timelineTickKindEnumValueOf(name);
}
