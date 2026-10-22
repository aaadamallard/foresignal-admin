//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_precip.g.dart';

/// Precipitation section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [rateMmH] - 1 mm/h steps
/// * [qpe1hMmMax] - 053
/// * [qpe24hMmMax] - 053
/// * [ffgRatio1hPctMax] - 053; ≥ 100 means rainfall exceeds flash-flood guidance
@BuiltValue()
abstract class PlaceWeatherPrecip
    implements Built<PlaceWeatherPrecip, PlaceWeatherPrecipBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// 1 mm/h steps
  @BuiltValueField(wireName: r'rateMmH')
  num? get rateMmH;

  /// 053
  @BuiltValueField(wireName: r'qpe1hMmMax')
  num? get qpe1hMmMax;

  /// 053
  @BuiltValueField(wireName: r'qpe24hMmMax')
  num? get qpe24hMmMax;

  /// 053; ≥ 100 means rainfall exceeds flash-flood guidance
  @BuiltValueField(wireName: r'ffgRatio1hPctMax')
  num? get ffgRatio1hPctMax;

  PlaceWeatherPrecip._();

  factory PlaceWeatherPrecip([void updates(PlaceWeatherPrecipBuilder b)]) =
      _$PlaceWeatherPrecip;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherPrecipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherPrecip> get serializer =>
      _$PlaceWeatherPrecipSerializer();
}

class _$PlaceWeatherPrecipSerializer
    implements PrimitiveSerializer<PlaceWeatherPrecip> {
  @override
  final Iterable<Type> types = const [PlaceWeatherPrecip, _$PlaceWeatherPrecip];

  @override
  final String wireName = r'PlaceWeatherPrecip';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherPrecip object, {
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
    if (object.rateMmH != null) {
      yield r'rateMmH';
      yield serializers.serialize(
        object.rateMmH,
        specifiedType: const FullType(num),
      );
    }
    if (object.qpe1hMmMax != null) {
      yield r'qpe1hMmMax';
      yield serializers.serialize(
        object.qpe1hMmMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.qpe24hMmMax != null) {
      yield r'qpe24hMmMax';
      yield serializers.serialize(
        object.qpe24hMmMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.ffgRatio1hPctMax != null) {
      yield r'ffgRatio1hPctMax';
      yield serializers.serialize(
        object.ffgRatio1hPctMax,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherPrecip object, {
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
    required PlaceWeatherPrecipBuilder result,
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
        case r'rateMmH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rateMmH = valueDes;
          break;
        case r'qpe1hMmMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.qpe1hMmMax = valueDes;
          break;
        case r'qpe24hMmMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.qpe24hMmMax = valueDes;
          break;
        case r'ffgRatio1hPctMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ffgRatio1hPctMax = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherPrecip deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherPrecipBuilder();
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
