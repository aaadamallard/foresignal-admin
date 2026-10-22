//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_radar.g.dart';

/// MRMS reflectivity section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [maxDbzInRadius] - 0.5 dBZ steps
/// * [nearest40Km] - km (999 = none within 100 km)
/// * [nearest50Km] - km (999 = none within 100 km)
/// * [nearest50Km10m] - Rolling 10-min minimum, km (999 = none within 100 km)
/// * [nearest60Km] - km (999 = none within 100 km)
/// * [verifiedNearest50Km10m] - Equals nearest50Km10m when ok, else 0 (for all-clear rules)
@BuiltValue()
abstract class PlaceWeatherRadar
    implements Built<PlaceWeatherRadar, PlaceWeatherRadarBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// 0.5 dBZ steps
  @BuiltValueField(wireName: r'maxDbzInRadius')
  num? get maxDbzInRadius;

  /// km (999 = none within 100 km)
  @BuiltValueField(wireName: r'nearest40Km')
  num? get nearest40Km;

  /// km (999 = none within 100 km)
  @BuiltValueField(wireName: r'nearest50Km')
  num? get nearest50Km;

  /// Rolling 10-min minimum, km (999 = none within 100 km)
  @BuiltValueField(wireName: r'nearest50Km10m')
  num? get nearest50Km10m;

  /// km (999 = none within 100 km)
  @BuiltValueField(wireName: r'nearest60Km')
  num? get nearest60Km;

  /// Equals nearest50Km10m when ok, else 0 (for all-clear rules)
  @BuiltValueField(wireName: r'verifiedNearest50Km10m')
  num? get verifiedNearest50Km10m;

  PlaceWeatherRadar._();

  factory PlaceWeatherRadar([void updates(PlaceWeatherRadarBuilder b)]) =
      _$PlaceWeatherRadar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherRadarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherRadar> get serializer =>
      _$PlaceWeatherRadarSerializer();
}

class _$PlaceWeatherRadarSerializer
    implements PrimitiveSerializer<PlaceWeatherRadar> {
  @override
  final Iterable<Type> types = const [PlaceWeatherRadar, _$PlaceWeatherRadar];

  @override
  final String wireName = r'PlaceWeatherRadar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherRadar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(WeatherSectionStatus),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.statusText != null) {
      yield r'statusText';
      yield serializers.serialize(
        object.statusText,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxDbzInRadius != null) {
      yield r'maxDbzInRadius';
      yield serializers.serialize(
        object.maxDbzInRadius,
        specifiedType: const FullType(num),
      );
    }
    if (object.nearest40Km != null) {
      yield r'nearest40Km';
      yield serializers.serialize(
        object.nearest40Km,
        specifiedType: const FullType(num),
      );
    }
    if (object.nearest50Km != null) {
      yield r'nearest50Km';
      yield serializers.serialize(
        object.nearest50Km,
        specifiedType: const FullType(num),
      );
    }
    if (object.nearest50Km10m != null) {
      yield r'nearest50Km10m';
      yield serializers.serialize(
        object.nearest50Km10m,
        specifiedType: const FullType(num),
      );
    }
    if (object.nearest60Km != null) {
      yield r'nearest60Km';
      yield serializers.serialize(
        object.nearest60Km,
        specifiedType: const FullType(num),
      );
    }
    if (object.verifiedNearest50Km10m != null) {
      yield r'verifiedNearest50Km10m';
      yield serializers.serialize(
        object.verifiedNearest50Km10m,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherRadar object, {
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
    required PlaceWeatherRadarBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WeatherSectionStatus),
          ) as WeatherSectionStatus;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'statusText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'maxDbzInRadius':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxDbzInRadius = valueDes;
          break;
        case r'nearest40Km':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearest40Km = valueDes;
          break;
        case r'nearest50Km':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearest50Km = valueDes;
          break;
        case r'nearest50Km10m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearest50Km10m = valueDes;
          break;
        case r'nearest60Km':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearest60Km = valueDes;
          break;
        case r'verifiedNearest50Km10m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.verifiedNearest50Km10m = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherRadar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherRadarBuilder();
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
