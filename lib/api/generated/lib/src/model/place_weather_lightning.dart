//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_lightning.g.dart';

/// GLM lightning section (GLM footprint ~8–10 km; all-clears advisory)
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [nearestKm15m] - km (999 = none within 100 km)
/// * [nearestKm30m] - Rolling 30-min minimum, km (999 = none within 100 km)
/// * [count15km15m]
/// * [verifiedNearestKm30m] - Equals nearestKm30m when ok, else 0
@BuiltValue()
abstract class PlaceWeatherLightning
    implements Built<PlaceWeatherLightning, PlaceWeatherLightningBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// km (999 = none within 100 km)
  @BuiltValueField(wireName: r'nearestKm15m')
  num? get nearestKm15m;

  /// Rolling 30-min minimum, km (999 = none within 100 km)
  @BuiltValueField(wireName: r'nearestKm30m')
  num? get nearestKm30m;

  @BuiltValueField(wireName: r'count15km15m')
  int? get count15km15m;

  /// Equals nearestKm30m when ok, else 0
  @BuiltValueField(wireName: r'verifiedNearestKm30m')
  num? get verifiedNearestKm30m;

  PlaceWeatherLightning._();

  factory PlaceWeatherLightning(
      [void updates(PlaceWeatherLightningBuilder b)]) = _$PlaceWeatherLightning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherLightningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherLightning> get serializer =>
      _$PlaceWeatherLightningSerializer();
}

class _$PlaceWeatherLightningSerializer
    implements PrimitiveSerializer<PlaceWeatherLightning> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherLightning,
    _$PlaceWeatherLightning
  ];

  @override
  final String wireName = r'PlaceWeatherLightning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherLightning object, {
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
    if (object.nearestKm30m != null) {
      yield r'nearestKm30m';
      yield serializers.serialize(
        object.nearestKm30m,
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
    if (object.verifiedNearestKm30m != null) {
      yield r'verifiedNearestKm30m';
      yield serializers.serialize(
        object.verifiedNearestKm30m,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherLightning object, {
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
    required PlaceWeatherLightningBuilder result,
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
        case r'nearestKm15m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearestKm15m = valueDes;
          break;
        case r'nearestKm30m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearestKm30m = valueDes;
          break;
        case r'count15km15m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count15km15m = valueDes;
          break;
        case r'verifiedNearestKm30m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.verifiedNearestKm30m = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherLightning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherLightningBuilder();
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
