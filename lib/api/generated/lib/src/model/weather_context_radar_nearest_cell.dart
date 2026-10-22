//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_context_radar_nearest_cell_motion.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_radar_nearest_cell.g.dart';

/// Nearest radar cell
///
/// Properties:
/// * [id] - radar-cell externalId
/// * [distanceKm]
/// * [motion]
/// * [meshMaxMm]
@BuiltValue()
abstract class WeatherContextRadarNearestCell
    implements
        Built<WeatherContextRadarNearestCell,
            WeatherContextRadarNearestCellBuilder> {
  /// radar-cell externalId
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'motion')
  WeatherContextRadarNearestCellMotion? get motion;

  @BuiltValueField(wireName: r'meshMaxMm')
  num? get meshMaxMm;

  WeatherContextRadarNearestCell._();

  factory WeatherContextRadarNearestCell(
          [void updates(WeatherContextRadarNearestCellBuilder b)]) =
      _$WeatherContextRadarNearestCell;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextRadarNearestCellBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextRadarNearestCell> get serializer =>
      _$WeatherContextRadarNearestCellSerializer();
}

class _$WeatherContextRadarNearestCellSerializer
    implements PrimitiveSerializer<WeatherContextRadarNearestCell> {
  @override
  final Iterable<Type> types = const [
    WeatherContextRadarNearestCell,
    _$WeatherContextRadarNearestCell
  ];

  @override
  final String wireName = r'WeatherContextRadarNearestCell';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextRadarNearestCell object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.motion != null) {
      yield r'motion';
      yield serializers.serialize(
        object.motion,
        specifiedType: const FullType(WeatherContextRadarNearestCellMotion),
      );
    }
    if (object.meshMaxMm != null) {
      yield r'meshMaxMm';
      yield serializers.serialize(
        object.meshMaxMm,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextRadarNearestCell object, {
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
    required WeatherContextRadarNearestCellBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'distanceKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'motion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(WeatherContextRadarNearestCellMotion),
          ) as WeatherContextRadarNearestCellMotion?;
          if (valueDes == null) continue;
          result.motion.replace(valueDes);
          break;
        case r'meshMaxMm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meshMaxMm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContextRadarNearestCell deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextRadarNearestCellBuilder();
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
