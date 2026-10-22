//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_forecast_nws.g.dart';

/// NWS gridpoint summary (053); stale when older than 6 h
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [popMax24h]
/// * [qpf24hMm]
/// * [gustMaxMs24h]
@BuiltValue()
abstract class PlaceWeatherForecastNws
    implements Built<PlaceWeatherForecastNws, PlaceWeatherForecastNwsBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'popMax24h')
  int? get popMax24h;

  @BuiltValueField(wireName: r'qpf24hMm')
  num? get qpf24hMm;

  @BuiltValueField(wireName: r'gustMaxMs24h')
  num? get gustMaxMs24h;

  PlaceWeatherForecastNws._();

  factory PlaceWeatherForecastNws(
          [void updates(PlaceWeatherForecastNwsBuilder b)]) =
      _$PlaceWeatherForecastNws;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherForecastNwsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherForecastNws> get serializer =>
      _$PlaceWeatherForecastNwsSerializer();
}

class _$PlaceWeatherForecastNwsSerializer
    implements PrimitiveSerializer<PlaceWeatherForecastNws> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherForecastNws,
    _$PlaceWeatherForecastNws
  ];

  @override
  final String wireName = r'PlaceWeatherForecastNws';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherForecastNws object, {
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
    if (object.popMax24h != null) {
      yield r'popMax24h';
      yield serializers.serialize(
        object.popMax24h,
        specifiedType: const FullType(int),
      );
    }
    if (object.qpf24hMm != null) {
      yield r'qpf24hMm';
      yield serializers.serialize(
        object.qpf24hMm,
        specifiedType: const FullType(num),
      );
    }
    if (object.gustMaxMs24h != null) {
      yield r'gustMaxMs24h';
      yield serializers.serialize(
        object.gustMaxMs24h,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherForecastNws object, {
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
    required PlaceWeatherForecastNwsBuilder result,
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
        case r'popMax24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.popMax24h = valueDes;
          break;
        case r'qpf24hMm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.qpf24hMm = valueDes;
          break;
        case r'gustMaxMs24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.gustMaxMs24h = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherForecastNws deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherForecastNwsBuilder();
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
