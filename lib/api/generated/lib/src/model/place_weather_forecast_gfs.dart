//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_forecast_gfs.g.dart';

/// GFS 24-h maxima
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [gustMax24h] - m/s
/// * [precip24hMm]
@BuiltValue()
abstract class PlaceWeatherForecastGfs
    implements Built<PlaceWeatherForecastGfs, PlaceWeatherForecastGfsBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus? get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// m/s
  @BuiltValueField(wireName: r'gustMax24h')
  num? get gustMax24h;

  @BuiltValueField(wireName: r'precip24hMm')
  num? get precip24hMm;

  PlaceWeatherForecastGfs._();

  factory PlaceWeatherForecastGfs([
    void updates(PlaceWeatherForecastGfsBuilder b),
  ]) = _$PlaceWeatherForecastGfs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherForecastGfsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherForecastGfs> get serializer =>
      _$PlaceWeatherForecastGfsSerializer();
}

class _$PlaceWeatherForecastGfsSerializer
    implements PrimitiveSerializer<PlaceWeatherForecastGfs> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherForecastGfs,
    _$PlaceWeatherForecastGfs,
  ];

  @override
  final String wireName = r'PlaceWeatherForecastGfs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherForecastGfs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(WeatherSectionStatus),
      );
    }
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
    if (object.gustMax24h != null) {
      yield r'gustMax24h';
      yield serializers.serialize(
        object.gustMax24h,
        specifiedType: const FullType(num),
      );
    }
    if (object.precip24hMm != null) {
      yield r'precip24hMm';
      yield serializers.serialize(
        object.precip24hMm,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherForecastGfs object, {
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
    required PlaceWeatherForecastGfsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherSectionStatus,
                    ),
                  )
                  as WeatherSectionStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'statusText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'gustMax24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.gustMax24h = valueDes;
          break;
        case r'precip24hMm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.precip24hMm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherForecastGfs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherForecastGfsBuilder();
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
