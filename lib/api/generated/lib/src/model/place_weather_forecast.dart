//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/place_weather_forecast_gfs.dart';
import 'package:foresignal_api/src/model/place_weather_forecast_nws.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_forecast.g.dart';

/// Forecast summaries
///
/// Properties:
/// * [gfs]
/// * [nws]
@BuiltValue()
abstract class PlaceWeatherForecast
    implements Built<PlaceWeatherForecast, PlaceWeatherForecastBuilder> {
  @BuiltValueField(wireName: r'gfs')
  PlaceWeatherForecastGfs? get gfs;

  @BuiltValueField(wireName: r'nws')
  PlaceWeatherForecastNws? get nws;

  PlaceWeatherForecast._();

  factory PlaceWeatherForecast([void updates(PlaceWeatherForecastBuilder b)]) =
      _$PlaceWeatherForecast;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherForecastBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherForecast> get serializer =>
      _$PlaceWeatherForecastSerializer();
}

class _$PlaceWeatherForecastSerializer
    implements PrimitiveSerializer<PlaceWeatherForecast> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherForecast,
    _$PlaceWeatherForecast,
  ];

  @override
  final String wireName = r'PlaceWeatherForecast';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherForecast object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.gfs != null) {
      yield r'gfs';
      yield serializers.serialize(
        object.gfs,
        specifiedType: const FullType(PlaceWeatherForecastGfs),
      );
    }
    if (object.nws != null) {
      yield r'nws';
      yield serializers.serialize(
        object.nws,
        specifiedType: const FullType(PlaceWeatherForecastNws),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherForecast object, {
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
    required PlaceWeatherForecastBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gfs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherForecastGfs,
                    ),
                  )
                  as PlaceWeatherForecastGfs?;
          if (valueDes == null) continue;
          result.gfs.replace(valueDes);
          break;
        case r'nws':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherForecastNws,
                    ),
                  )
                  as PlaceWeatherForecastNws?;
          if (valueDes == null) continue;
          result.nws.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherForecast deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherForecastBuilder();
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
