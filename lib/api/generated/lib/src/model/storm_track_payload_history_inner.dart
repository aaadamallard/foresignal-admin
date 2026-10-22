//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload_history_inner.g.dart';

/// Past position
///
/// Properties:
/// * [time]
/// * [lon]
/// * [lat]
@BuiltValue()
abstract class StormTrackPayloadHistoryInner
    implements
        Built<StormTrackPayloadHistoryInner,
            StormTrackPayloadHistoryInnerBuilder> {
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'lat')
  num get lat;

  StormTrackPayloadHistoryInner._();

  factory StormTrackPayloadHistoryInner(
          [void updates(StormTrackPayloadHistoryInnerBuilder b)]) =
      _$StormTrackPayloadHistoryInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadHistoryInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayloadHistoryInner> get serializer =>
      _$StormTrackPayloadHistoryInnerSerializer();
}

class _$StormTrackPayloadHistoryInnerSerializer
    implements PrimitiveSerializer<StormTrackPayloadHistoryInner> {
  @override
  final Iterable<Type> types = const [
    StormTrackPayloadHistoryInner,
    _$StormTrackPayloadHistoryInner
  ];

  @override
  final String wireName = r'StormTrackPayloadHistoryInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayloadHistoryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'lon';
    yield serializers.serialize(
      object.lon,
      specifiedType: const FullType(num),
    );
    yield r'lat';
    yield serializers.serialize(
      object.lat,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadHistoryInner object, {
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
    required StormTrackPayloadHistoryInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'lon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lon = valueDes;
          break;
        case r'lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayloadHistoryInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadHistoryInnerBuilder();
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
