//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_next_hrrr.g.dart';

/// HRRR maxima
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [run]
/// * [gustMaxMs]
/// * [precipMm]
/// * [smokeMaxUgM3]
/// * [validTime]
@BuiltValue()
abstract class PlaceWeatherDigestNextHrrr
    implements
        Built<PlaceWeatherDigestNextHrrr, PlaceWeatherDigestNextHrrrBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'gustMaxMs')
  num? get gustMaxMs;

  @BuiltValueField(wireName: r'precipMm')
  num? get precipMm;

  @BuiltValueField(wireName: r'smokeMaxUgM3')
  num? get smokeMaxUgM3;

  @BuiltValueField(wireName: r'validTime')
  DateTime? get validTime;

  PlaceWeatherDigestNextHrrr._();

  factory PlaceWeatherDigestNextHrrr([
    void updates(PlaceWeatherDigestNextHrrrBuilder b),
  ]) = _$PlaceWeatherDigestNextHrrr;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNextHrrrBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNextHrrr> get serializer =>
      _$PlaceWeatherDigestNextHrrrSerializer();
}

class _$PlaceWeatherDigestNextHrrrSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNextHrrr> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNextHrrr,
    _$PlaceWeatherDigestNextHrrr,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNextHrrr';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNextHrrr object, {
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
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType(String),
      );
    }
    if (object.gustMaxMs != null) {
      yield r'gustMaxMs';
      yield serializers.serialize(
        object.gustMaxMs,
        specifiedType: const FullType(num),
      );
    }
    if (object.precipMm != null) {
      yield r'precipMm';
      yield serializers.serialize(
        object.precipMm,
        specifiedType: const FullType(num),
      );
    }
    if (object.smokeMaxUgM3 != null) {
      yield r'smokeMaxUgM3';
      yield serializers.serialize(
        object.smokeMaxUgM3,
        specifiedType: const FullType(num),
      );
    }
    if (object.validTime != null) {
      yield r'validTime';
      yield serializers.serialize(
        object.validTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNextHrrr object, {
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
    required PlaceWeatherDigestNextHrrrBuilder result,
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
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'gustMaxMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.gustMaxMs = valueDes;
          break;
        case r'precipMm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.precipMm = valueDes;
          break;
        case r'smokeMaxUgM3':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.smokeMaxUgM3 = valueDes;
          break;
        case r'validTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNextHrrr deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNextHrrrBuilder();
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
