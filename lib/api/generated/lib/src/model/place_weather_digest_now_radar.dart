//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_now_radar.g.dart';

/// Radar now
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [maxDbzInRadius]
/// * [nearest50Km]
@BuiltValue()
abstract class PlaceWeatherDigestNowRadar
    implements
        Built<PlaceWeatherDigestNowRadar, PlaceWeatherDigestNowRadarBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'maxDbzInRadius')
  num? get maxDbzInRadius;

  @BuiltValueField(wireName: r'nearest50Km')
  num? get nearest50Km;

  PlaceWeatherDigestNowRadar._();

  factory PlaceWeatherDigestNowRadar([
    void updates(PlaceWeatherDigestNowRadarBuilder b),
  ]) = _$PlaceWeatherDigestNowRadar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNowRadarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNowRadar> get serializer =>
      _$PlaceWeatherDigestNowRadarSerializer();
}

class _$PlaceWeatherDigestNowRadarSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNowRadar> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNowRadar,
    _$PlaceWeatherDigestNowRadar,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNowRadar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNowRadar object, {
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
    if (object.nearest50Km != null) {
      yield r'nearest50Km';
      yield serializers.serialize(
        object.nearest50Km,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNowRadar object, {
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
    required PlaceWeatherDigestNowRadarBuilder result,
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
                    specifiedType: const FullType(WeatherSectionStatus),
                  )
                  as WeatherSectionStatus;
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
        case r'maxDbzInRadius':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxDbzInRadius = valueDes;
          break;
        case r'nearest50Km':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.nearest50Km = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNowRadar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNowRadarBuilder();
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
