//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/place_weather_cell.dart';
import 'package:foresignal_api/src/model/place_weather_lightning.dart';
import 'package:foresignal_api/src/model/place_weather_marine.dart';
import 'package:foresignal_api/src/model/place_weather_smoke.dart';
import 'package:foresignal_api/src/model/place_weather_uv.dart';
import 'package:foresignal_api/src/model/place_weather_forecast.dart';
import 'package:foresignal_api/src/model/place_weather_aurora.dart';
import 'package:foresignal_api/src/model/place_weather_hail.dart';
import 'package:foresignal_api/src/model/place_weather_radar.dart';
import 'package:foresignal_api/src/model/place_weather_precip.dart';
import 'package:foresignal_api/src/model/place_weather_heat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather.g.dart';

/// Payload of `place-weather` records (wx-places, externalId `place:{id}`); metric keys are omitted before first data, never null
///
/// Properties:
/// * [place] - Place name
/// * [radiusKm]
/// * [radar]
/// * [hail]
/// * [precip]
/// * [lightning]
/// * [cell]
/// * [smoke]
/// * [forecast]
/// * [automated]
/// * [notAWarning]
/// * [marine]
/// * [aurora]
/// * [heat]
/// * [uv]
@BuiltValue()
abstract class PlaceWeather
    implements Built<PlaceWeather, PlaceWeatherBuilder> {
  /// Place name
  @BuiltValueField(wireName: r'place')
  String get place;

  @BuiltValueField(wireName: r'radiusKm')
  num get radiusKm;

  @BuiltValueField(wireName: r'radar')
  PlaceWeatherRadar? get radar;

  @BuiltValueField(wireName: r'hail')
  PlaceWeatherHail? get hail;

  @BuiltValueField(wireName: r'precip')
  PlaceWeatherPrecip? get precip;

  @BuiltValueField(wireName: r'lightning')
  PlaceWeatherLightning? get lightning;

  @BuiltValueField(wireName: r'cell')
  PlaceWeatherCell? get cell;

  @BuiltValueField(wireName: r'smoke')
  PlaceWeatherSmoke? get smoke;

  @BuiltValueField(wireName: r'forecast')
  PlaceWeatherForecast? get forecast;

  @BuiltValueField(wireName: r'automated')
  bool get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool get notAWarning;

  @BuiltValueField(wireName: r'marine')
  PlaceWeatherMarine? get marine;

  @BuiltValueField(wireName: r'aurora')
  PlaceWeatherAurora? get aurora;

  @BuiltValueField(wireName: r'heat')
  PlaceWeatherHeat? get heat;

  @BuiltValueField(wireName: r'uv')
  PlaceWeatherUv? get uv;

  PlaceWeather._();

  factory PlaceWeather([void updates(PlaceWeatherBuilder b)]) = _$PlaceWeather;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeather> get serializer => _$PlaceWeatherSerializer();
}

class _$PlaceWeatherSerializer implements PrimitiveSerializer<PlaceWeather> {
  @override
  final Iterable<Type> types = const [PlaceWeather, _$PlaceWeather];

  @override
  final String wireName = r'PlaceWeather';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeather object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'place';
    yield serializers.serialize(
      object.place,
      specifiedType: const FullType(String),
    );
    yield r'radiusKm';
    yield serializers.serialize(
      object.radiusKm,
      specifiedType: const FullType(num),
    );
    if (object.radar != null) {
      yield r'radar';
      yield serializers.serialize(
        object.radar,
        specifiedType: const FullType(PlaceWeatherRadar),
      );
    }
    if (object.hail != null) {
      yield r'hail';
      yield serializers.serialize(
        object.hail,
        specifiedType: const FullType(PlaceWeatherHail),
      );
    }
    if (object.precip != null) {
      yield r'precip';
      yield serializers.serialize(
        object.precip,
        specifiedType: const FullType(PlaceWeatherPrecip),
      );
    }
    if (object.lightning != null) {
      yield r'lightning';
      yield serializers.serialize(
        object.lightning,
        specifiedType: const FullType(PlaceWeatherLightning),
      );
    }
    if (object.cell != null) {
      yield r'cell';
      yield serializers.serialize(
        object.cell,
        specifiedType: const FullType(PlaceWeatherCell),
      );
    }
    if (object.smoke != null) {
      yield r'smoke';
      yield serializers.serialize(
        object.smoke,
        specifiedType: const FullType(PlaceWeatherSmoke),
      );
    }
    if (object.forecast != null) {
      yield r'forecast';
      yield serializers.serialize(
        object.forecast,
        specifiedType: const FullType(PlaceWeatherForecast),
      );
    }
    yield r'automated';
    yield serializers.serialize(
      object.automated,
      specifiedType: const FullType(bool),
    );
    yield r'notAWarning';
    yield serializers.serialize(
      object.notAWarning,
      specifiedType: const FullType(bool),
    );
    if (object.marine != null) {
      yield r'marine';
      yield serializers.serialize(
        object.marine,
        specifiedType: const FullType.nullable(PlaceWeatherMarine),
      );
    }
    if (object.aurora != null) {
      yield r'aurora';
      yield serializers.serialize(
        object.aurora,
        specifiedType: const FullType.nullable(PlaceWeatherAurora),
      );
    }
    if (object.heat != null) {
      yield r'heat';
      yield serializers.serialize(
        object.heat,
        specifiedType: const FullType.nullable(PlaceWeatherHeat),
      );
    }
    if (object.uv != null) {
      yield r'uv';
      yield serializers.serialize(
        object.uv,
        specifiedType: const FullType.nullable(PlaceWeatherUv),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeather object, {
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
    required PlaceWeatherBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.place = valueDes;
          break;
        case r'radiusKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.radiusKm = valueDes;
          break;
        case r'radar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherRadar),
          ) as PlaceWeatherRadar?;
          if (valueDes == null) continue;
          result.radar.replace(valueDes);
          break;
        case r'hail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherHail),
          ) as PlaceWeatherHail?;
          if (valueDes == null) continue;
          result.hail.replace(valueDes);
          break;
        case r'precip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherPrecip),
          ) as PlaceWeatherPrecip?;
          if (valueDes == null) continue;
          result.precip.replace(valueDes);
          break;
        case r'lightning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherLightning),
          ) as PlaceWeatherLightning?;
          if (valueDes == null) continue;
          result.lightning.replace(valueDes);
          break;
        case r'cell':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherCell),
          ) as PlaceWeatherCell?;
          if (valueDes == null) continue;
          result.cell.replace(valueDes);
          break;
        case r'smoke':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherSmoke),
          ) as PlaceWeatherSmoke?;
          if (valueDes == null) continue;
          result.smoke.replace(valueDes);
          break;
        case r'forecast':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherForecast),
          ) as PlaceWeatherForecast?;
          if (valueDes == null) continue;
          result.forecast.replace(valueDes);
          break;
        case r'automated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notAWarning = valueDes;
          break;
        case r'marine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherMarine),
          ) as PlaceWeatherMarine?;
          if (valueDes == null) continue;
          result.marine.replace(valueDes);
          break;
        case r'aurora':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherAurora),
          ) as PlaceWeatherAurora?;
          if (valueDes == null) continue;
          result.aurora.replace(valueDes);
          break;
        case r'heat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherHeat),
          ) as PlaceWeatherHeat?;
          if (valueDes == null) continue;
          result.heat.replace(valueDes);
          break;
        case r'uv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherUv),
          ) as PlaceWeatherUv?;
          if (valueDes == null) continue;
          result.uv.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeather deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherBuilder();
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
