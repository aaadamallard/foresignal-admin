//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:foresignal_api/src/model/forecast_series.dart';
import 'package:foresignal_api/src/model/place_weather.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_response.g.dart';

/// The place-weather record (head) plus cached forecast series for one place
///
/// Properties:
/// * [placeId]
/// * [place]
/// * [timezone]
/// * [record]
/// * [weather]
/// * [forecastSeries]
/// * [serverTime]
@BuiltValue()
abstract class PlaceWeatherResponse
    implements Built<PlaceWeatherResponse, PlaceWeatherResponseBuilder> {
  @BuiltValueField(wireName: r'placeId')
  String get placeId;

  @BuiltValueField(wireName: r'place')
  String? get place;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'record')
  Record? get record;

  @BuiltValueField(wireName: r'weather')
  PlaceWeather? get weather;

  @BuiltValueField(wireName: r'forecastSeries')
  BuiltList<ForecastSeries> get forecastSeries;

  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  PlaceWeatherResponse._();

  factory PlaceWeatherResponse([void updates(PlaceWeatherResponseBuilder b)]) =
      _$PlaceWeatherResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherResponse> get serializer =>
      _$PlaceWeatherResponseSerializer();
}

class _$PlaceWeatherResponseSerializer
    implements PrimitiveSerializer<PlaceWeatherResponse> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherResponse,
    _$PlaceWeatherResponse
  ];

  @override
  final String wireName = r'PlaceWeatherResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'placeId';
    yield serializers.serialize(
      object.placeId,
      specifiedType: const FullType(String),
    );
    if (object.place != null) {
      yield r'place';
      yield serializers.serialize(
        object.place,
        specifiedType: const FullType(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType.nullable(Record),
      );
    }
    if (object.weather != null) {
      yield r'weather';
      yield serializers.serialize(
        object.weather,
        specifiedType: const FullType.nullable(PlaceWeather),
      );
    }
    yield r'forecastSeries';
    yield serializers.serialize(
      object.forecastSeries,
      specifiedType: const FullType(BuiltList, [FullType(ForecastSeries)]),
    );
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherResponse object, {
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
    required PlaceWeatherResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeId = valueDes;
          break;
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.place = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'record':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Record),
          ) as Record?;
          if (valueDes == null) continue;
          result.record.replace(valueDes);
          break;
        case r'weather':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeather),
          ) as PlaceWeather?;
          if (valueDes == null) continue;
          result.weather.replace(valueDes);
          break;
        case r'forecastSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ForecastSeries)]),
          ) as BuiltList<ForecastSeries>;
          result.forecastSeries.replace(valueDes);
          break;
        case r'serverTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.serverTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherResponseBuilder();
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
