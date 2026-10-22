//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_airtime.g.dart';

/// LoRa airtime governor window of a mesh channel (084)
///
/// Properties:
/// * [windowSeconds]
/// * [usedSeconds]
/// * [limitSeconds]
/// * [dutyCyclePercent]
/// * [queued]
/// * [foldedLastHour]
/// * [droppedLastHour]
@BuiltValue()
abstract class ChannelAirtime
    implements Built<ChannelAirtime, ChannelAirtimeBuilder> {
  @BuiltValueField(wireName: r'windowSeconds')
  int get windowSeconds;

  @BuiltValueField(wireName: r'usedSeconds')
  num get usedSeconds;

  @BuiltValueField(wireName: r'limitSeconds')
  num get limitSeconds;

  @BuiltValueField(wireName: r'dutyCyclePercent')
  num get dutyCyclePercent;

  @BuiltValueField(wireName: r'queued')
  int get queued;

  @BuiltValueField(wireName: r'foldedLastHour')
  int get foldedLastHour;

  @BuiltValueField(wireName: r'droppedLastHour')
  int get droppedLastHour;

  ChannelAirtime._();

  factory ChannelAirtime([void updates(ChannelAirtimeBuilder b)]) =
      _$ChannelAirtime;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelAirtimeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelAirtime> get serializer =>
      _$ChannelAirtimeSerializer();
}

class _$ChannelAirtimeSerializer
    implements PrimitiveSerializer<ChannelAirtime> {
  @override
  final Iterable<Type> types = const [ChannelAirtime, _$ChannelAirtime];

  @override
  final String wireName = r'ChannelAirtime';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelAirtime object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'windowSeconds';
    yield serializers.serialize(
      object.windowSeconds,
      specifiedType: const FullType(int),
    );
    yield r'usedSeconds';
    yield serializers.serialize(
      object.usedSeconds,
      specifiedType: const FullType(num),
    );
    yield r'limitSeconds';
    yield serializers.serialize(
      object.limitSeconds,
      specifiedType: const FullType(num),
    );
    yield r'dutyCyclePercent';
    yield serializers.serialize(
      object.dutyCyclePercent,
      specifiedType: const FullType(num),
    );
    yield r'queued';
    yield serializers.serialize(
      object.queued,
      specifiedType: const FullType(int),
    );
    yield r'foldedLastHour';
    yield serializers.serialize(
      object.foldedLastHour,
      specifiedType: const FullType(int),
    );
    yield r'droppedLastHour';
    yield serializers.serialize(
      object.droppedLastHour,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelAirtime object, {
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
    required ChannelAirtimeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'windowSeconds':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.windowSeconds = valueDes;
          break;
        case r'usedSeconds':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.usedSeconds = valueDes;
          break;
        case r'limitSeconds':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.limitSeconds = valueDes;
          break;
        case r'dutyCyclePercent':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.dutyCyclePercent = valueDes;
          break;
        case r'queued':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.queued = valueDes;
          break;
        case r'foldedLastHour':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.foldedLastHour = valueDes;
          break;
        case r'droppedLastHour':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.droppedLastHour = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelAirtime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelAirtimeBuilder();
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
