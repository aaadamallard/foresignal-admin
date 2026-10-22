//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'radar_cell_payload_motion.g.dart';

/// Cell motion
///
/// Properties:
/// * [speedKmh]
/// * [bearingDeg]
/// * [method]
@BuiltValue()
abstract class RadarCellPayloadMotion
    implements Built<RadarCellPayloadMotion, RadarCellPayloadMotionBuilder> {
  @BuiltValueField(wireName: r'speedKmh')
  num? get speedKmh;

  @BuiltValueField(wireName: r'bearingDeg')
  int? get bearingDeg;

  @BuiltValueField(wireName: r'method')
  RadarCellPayloadMotionMethodEnum get method;
  // enum methodEnum {  centroid-v1,  };

  RadarCellPayloadMotion._();

  factory RadarCellPayloadMotion(
          [void updates(RadarCellPayloadMotionBuilder b)]) =
      _$RadarCellPayloadMotion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RadarCellPayloadMotionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RadarCellPayloadMotion> get serializer =>
      _$RadarCellPayloadMotionSerializer();
}

class _$RadarCellPayloadMotionSerializer
    implements PrimitiveSerializer<RadarCellPayloadMotion> {
  @override
  final Iterable<Type> types = const [
    RadarCellPayloadMotion,
    _$RadarCellPayloadMotion
  ];

  @override
  final String wireName = r'RadarCellPayloadMotion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RadarCellPayloadMotion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.speedKmh != null) {
      yield r'speedKmh';
      yield serializers.serialize(
        object.speedKmh,
        specifiedType: const FullType(num),
      );
    }
    if (object.bearingDeg != null) {
      yield r'bearingDeg';
      yield serializers.serialize(
        object.bearingDeg,
        specifiedType: const FullType(int),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(RadarCellPayloadMotionMethodEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RadarCellPayloadMotion object, {
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
    required RadarCellPayloadMotionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speedKmh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.speedKmh = valueDes;
          break;
        case r'bearingDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bearingDeg = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RadarCellPayloadMotionMethodEnum),
          ) as RadarCellPayloadMotionMethodEnum;
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
  RadarCellPayloadMotion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RadarCellPayloadMotionBuilder();
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

class RadarCellPayloadMotionMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'centroid-v1')
  static const RadarCellPayloadMotionMethodEnum centroidV1 =
      _$radarCellPayloadMotionMethodEnum_centroidV1;

  static Serializer<RadarCellPayloadMotionMethodEnum> get serializer =>
      _$radarCellPayloadMotionMethodEnumSerializer;

  const RadarCellPayloadMotionMethodEnum._(String name) : super(name);

  static BuiltSet<RadarCellPayloadMotionMethodEnum> get values =>
      _$radarCellPayloadMotionMethodEnumValues;
  static RadarCellPayloadMotionMethodEnum valueOf(String name) =>
      _$radarCellPayloadMotionMethodEnumValueOf(name);
}
