//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_smoke.g.dart';

/// HRRR smoke section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [hrrrPm25Max24h] - µg m⁻³
@BuiltValue()
abstract class PlaceWeatherSmoke
    implements Built<PlaceWeatherSmoke, PlaceWeatherSmokeBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// µg m⁻³
  @BuiltValueField(wireName: r'hrrrPm25Max24h')
  num? get hrrrPm25Max24h;

  PlaceWeatherSmoke._();

  factory PlaceWeatherSmoke([void updates(PlaceWeatherSmokeBuilder b)]) =
      _$PlaceWeatherSmoke;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherSmokeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherSmoke> get serializer =>
      _$PlaceWeatherSmokeSerializer();
}

class _$PlaceWeatherSmokeSerializer
    implements PrimitiveSerializer<PlaceWeatherSmoke> {
  @override
  final Iterable<Type> types = const [PlaceWeatherSmoke, _$PlaceWeatherSmoke];

  @override
  final String wireName = r'PlaceWeatherSmoke';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherSmoke object, {
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
    if (object.hrrrPm25Max24h != null) {
      yield r'hrrrPm25Max24h';
      yield serializers.serialize(
        object.hrrrPm25Max24h,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherSmoke object, {
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
    required PlaceWeatherSmokeBuilder result,
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
        case r'hrrrPm25Max24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.hrrrPm25Max24h = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherSmoke deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherSmokeBuilder();
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
