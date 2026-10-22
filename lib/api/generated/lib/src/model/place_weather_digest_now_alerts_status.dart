//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_now_alerts_status.g.dart';

/// Status of the NWS alerts list (056): not ok when the nws-alerts source is disabled, failing or not visible, so an empty list is unknown, not quiet
///
/// Properties:
/// * [status]
/// * [asOf]
/// * [statusText]
@BuiltValue()
abstract class PlaceWeatherDigestNowAlertsStatus
    implements
        Built<
          PlaceWeatherDigestNowAlertsStatus,
          PlaceWeatherDigestNowAlertsStatusBuilder
        > {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  PlaceWeatherDigestNowAlertsStatus._();

  factory PlaceWeatherDigestNowAlertsStatus([
    void updates(PlaceWeatherDigestNowAlertsStatusBuilder b),
  ]) = _$PlaceWeatherDigestNowAlertsStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNowAlertsStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNowAlertsStatus> get serializer =>
      _$PlaceWeatherDigestNowAlertsStatusSerializer();
}

class _$PlaceWeatherDigestNowAlertsStatusSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNowAlertsStatus> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNowAlertsStatus,
    _$PlaceWeatherDigestNowAlertsStatus,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNowAlertsStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNowAlertsStatus object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNowAlertsStatus object, {
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
    required PlaceWeatherDigestNowAlertsStatusBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNowAlertsStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNowAlertsStatusBuilder();
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
