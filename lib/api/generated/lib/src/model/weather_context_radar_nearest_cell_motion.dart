//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_radar_nearest_cell_motion.g.dart';

/// Cell motion
///
/// Properties:
/// * [speedKmh]
/// * [bearingDeg]
/// * [method]
@BuiltValue()
abstract class WeatherContextRadarNearestCellMotion
    implements
        Built<
          WeatherContextRadarNearestCellMotion,
          WeatherContextRadarNearestCellMotionBuilder
        > {
  @BuiltValueField(wireName: r'speedKmh')
  num? get speedKmh;

  @BuiltValueField(wireName: r'bearingDeg')
  int? get bearingDeg;

  @BuiltValueField(wireName: r'method')
  String? get method;

  WeatherContextRadarNearestCellMotion._();

  factory WeatherContextRadarNearestCellMotion([
    void updates(WeatherContextRadarNearestCellMotionBuilder b),
  ]) = _$WeatherContextRadarNearestCellMotion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextRadarNearestCellMotionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextRadarNearestCellMotion> get serializer =>
      _$WeatherContextRadarNearestCellMotionSerializer();
}

class _$WeatherContextRadarNearestCellMotionSerializer
    implements PrimitiveSerializer<WeatherContextRadarNearestCellMotion> {
  @override
  final Iterable<Type> types = const [
    WeatherContextRadarNearestCellMotion,
    _$WeatherContextRadarNearestCellMotion,
  ];

  @override
  final String wireName = r'WeatherContextRadarNearestCellMotion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextRadarNearestCellMotion object, {
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
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextRadarNearestCellMotion object, {
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
    required WeatherContextRadarNearestCellMotionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speedKmh':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.speedKmh = valueDes;
          break;
        case r'bearingDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bearingDeg = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
  WeatherContextRadarNearestCellMotion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextRadarNearestCellMotionBuilder();
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
