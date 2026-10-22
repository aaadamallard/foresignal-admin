//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload_motion.g.dart';

/// Storm motion
///
/// Properties:
/// * [speedKmh]
/// * [bearingDeg]
/// * [method]
@BuiltValue()
abstract class StormTrackPayloadMotion
    implements Built<StormTrackPayloadMotion, StormTrackPayloadMotionBuilder> {
  @BuiltValueField(wireName: r'speedKmh')
  num get speedKmh;

  @BuiltValueField(wireName: r'bearingDeg')
  num get bearingDeg;

  @BuiltValueField(wireName: r'method')
  StormTrackPayloadMotionMethodEnum get method;
  // enum methodEnum {  titan-lite-v1,  centroid-v1,  };

  StormTrackPayloadMotion._();

  factory StormTrackPayloadMotion(
          [void updates(StormTrackPayloadMotionBuilder b)]) =
      _$StormTrackPayloadMotion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadMotionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayloadMotion> get serializer =>
      _$StormTrackPayloadMotionSerializer();
}

class _$StormTrackPayloadMotionSerializer
    implements PrimitiveSerializer<StormTrackPayloadMotion> {
  @override
  final Iterable<Type> types = const [
    StormTrackPayloadMotion,
    _$StormTrackPayloadMotion
  ];

  @override
  final String wireName = r'StormTrackPayloadMotion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayloadMotion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'speedKmh';
    yield serializers.serialize(
      object.speedKmh,
      specifiedType: const FullType(num),
    );
    yield r'bearingDeg';
    yield serializers.serialize(
      object.bearingDeg,
      specifiedType: const FullType(num),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(StormTrackPayloadMotionMethodEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadMotion object, {
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
    required StormTrackPayloadMotionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speedKmh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.speedKmh = valueDes;
          break;
        case r'bearingDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.bearingDeg = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StormTrackPayloadMotionMethodEnum),
          ) as StormTrackPayloadMotionMethodEnum;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayloadMotion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadMotionBuilder();
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

class StormTrackPayloadMotionMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'titan-lite-v1')
  static const StormTrackPayloadMotionMethodEnum titanLiteV1 =
      _$stormTrackPayloadMotionMethodEnum_titanLiteV1;
  @BuiltValueEnumConst(wireName: r'centroid-v1')
  static const StormTrackPayloadMotionMethodEnum centroidV1 =
      _$stormTrackPayloadMotionMethodEnum_centroidV1;

  static Serializer<StormTrackPayloadMotionMethodEnum> get serializer =>
      _$stormTrackPayloadMotionMethodEnumSerializer;

  const StormTrackPayloadMotionMethodEnum._(String name) : super(name);

  static BuiltSet<StormTrackPayloadMotionMethodEnum> get values =>
      _$stormTrackPayloadMotionMethodEnumValues;
  static StormTrackPayloadMotionMethodEnum valueOf(String name) =>
      _$stormTrackPayloadMotionMethodEnumValueOf(name);
}
