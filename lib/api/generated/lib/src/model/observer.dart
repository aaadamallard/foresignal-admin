//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'observer.g.dart';

/// A receiver that observed this version (≤ 8 per version; returned only when gated in)
///
/// Properties:
/// * [receiverId]
/// * [frequencyHz]
/// * [rssi]
/// * [snr]
/// * [decodeQuality]
@BuiltValue()
abstract class Observer implements Built<Observer, ObserverBuilder> {
  @BuiltValueField(wireName: r'receiverId')
  String get receiverId;

  @BuiltValueField(wireName: r'frequencyHz')
  int? get frequencyHz;

  @BuiltValueField(wireName: r'rssi')
  num? get rssi;

  @BuiltValueField(wireName: r'snr')
  num? get snr;

  @BuiltValueField(wireName: r'decodeQuality')
  num? get decodeQuality;

  Observer._();

  factory Observer([void updates(ObserverBuilder b)]) = _$Observer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObserverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Observer> get serializer => _$ObserverSerializer();
}

class _$ObserverSerializer implements PrimitiveSerializer<Observer> {
  @override
  final Iterable<Type> types = const [Observer, _$Observer];

  @override
  final String wireName = r'Observer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Observer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'receiverId';
    yield serializers.serialize(
      object.receiverId,
      specifiedType: const FullType(String),
    );
    if (object.frequencyHz != null) {
      yield r'frequencyHz';
      yield serializers.serialize(
        object.frequencyHz,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.rssi != null) {
      yield r'rssi';
      yield serializers.serialize(
        object.rssi,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.snr != null) {
      yield r'snr';
      yield serializers.serialize(
        object.snr,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.decodeQuality != null) {
      yield r'decodeQuality';
      yield serializers.serialize(
        object.decodeQuality,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Observer object, {
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
    required ObserverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'receiverId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.receiverId = valueDes;
          break;
        case r'frequencyHz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.frequencyHz = valueDes;
          break;
        case r'rssi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rssi = valueDes;
          break;
        case r'snr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.snr = valueDes;
          break;
        case r'decodeQuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.decodeQuality = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Observer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObserverBuilder();
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
