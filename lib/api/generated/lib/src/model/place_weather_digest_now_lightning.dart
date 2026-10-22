//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_now_lightning.g.dart';

/// Lightning now
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [nearestKm15m]
/// * [count15km15m]
@BuiltValue()
abstract class PlaceWeatherDigestNowLightning
    implements
        Built<
          PlaceWeatherDigestNowLightning,
          PlaceWeatherDigestNowLightningBuilder
        > {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'nearestKm15m')
  num? get nearestKm15m;

  @BuiltValueField(wireName: r'count15km15m')
  int? get count15km15m;

  PlaceWeatherDigestNowLightning._();

  factory PlaceWeatherDigestNowLightning([
    void updates(PlaceWeatherDigestNowLightningBuilder b),
  ]) = _$PlaceWeatherDigestNowLightning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNowLightningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNowLightning> get serializer =>
      _$PlaceWeatherDigestNowLightningSerializer();
}

class _$PlaceWeatherDigestNowLightningSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNowLightning> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNowLightning,
    _$PlaceWeatherDigestNowLightning,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNowLightning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNowLightning object, {
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
    if (object.nearestKm15m != null) {
      yield r'nearestKm15m';
      yield serializers.serialize(
        object.nearestKm15m,
        specifiedType: const FullType(num),
      );
    }
    if (object.count15km15m != null) {
      yield r'count15km15m';
      yield serializers.serialize(
        object.count15km15m,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNowLightning object, {
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
    required PlaceWeatherDigestNowLightningBuilder result,
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
        case r'nearestKm15m':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.nearestKm15m = valueDes;
          break;
        case r'count15km15m':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.count15km15m = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNowLightning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNowLightningBuilder();
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
