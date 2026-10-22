//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/place_weather_digest_now_lightning.dart';
import 'package:foresignal_api/src/model/place_weather_digest_now_alerts_inner.dart';
import 'package:foresignal_api/src/model/place_weather_digest_now_radar.dart';
import 'package:foresignal_api/src/model/place_weather_digest_now_alerts_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_now.g.dart';

/// Current conditions
///
/// Properties:
/// * [radar]
/// * [lightning]
/// * [alerts]
/// * [alertsStatus]
@BuiltValue()
abstract class PlaceWeatherDigestNow
    implements Built<PlaceWeatherDigestNow, PlaceWeatherDigestNowBuilder> {
  @BuiltValueField(wireName: r'radar')
  PlaceWeatherDigestNowRadar? get radar;

  @BuiltValueField(wireName: r'lightning')
  PlaceWeatherDigestNowLightning? get lightning;

  @BuiltValueField(wireName: r'alerts')
  BuiltList<PlaceWeatherDigestNowAlertsInner>? get alerts;

  @BuiltValueField(wireName: r'alertsStatus')
  PlaceWeatherDigestNowAlertsStatus? get alertsStatus;

  PlaceWeatherDigestNow._();

  factory PlaceWeatherDigestNow([
    void updates(PlaceWeatherDigestNowBuilder b),
  ]) = _$PlaceWeatherDigestNow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNow> get serializer =>
      _$PlaceWeatherDigestNowSerializer();
}

class _$PlaceWeatherDigestNowSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNow> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNow,
    _$PlaceWeatherDigestNow,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.radar != null) {
      yield r'radar';
      yield serializers.serialize(
        object.radar,
        specifiedType: const FullType(PlaceWeatherDigestNowRadar),
      );
    }
    if (object.lightning != null) {
      yield r'lightning';
      yield serializers.serialize(
        object.lightning,
        specifiedType: const FullType(PlaceWeatherDigestNowLightning),
      );
    }
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(BuiltList, [
          FullType(PlaceWeatherDigestNowAlertsInner),
        ]),
      );
    }
    if (object.alertsStatus != null) {
      yield r'alertsStatus';
      yield serializers.serialize(
        object.alertsStatus,
        specifiedType: const FullType(PlaceWeatherDigestNowAlertsStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNow object, {
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
    required PlaceWeatherDigestNowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'radar':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherDigestNowRadar,
                    ),
                  )
                  as PlaceWeatherDigestNowRadar?;
          if (valueDes == null) continue;
          result.radar.replace(valueDes);
          break;
        case r'lightning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherDigestNowLightning,
                    ),
                  )
                  as PlaceWeatherDigestNowLightning?;
          if (valueDes == null) continue;
          result.lightning.replace(valueDes);
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(PlaceWeatherDigestNowAlertsInner),
                    ]),
                  )
                  as BuiltList<PlaceWeatherDigestNowAlertsInner>?;
          if (valueDes == null) continue;
          result.alerts.replace(valueDes);
          break;
        case r'alertsStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherDigestNowAlertsStatus,
                    ),
                  )
                  as PlaceWeatherDigestNowAlertsStatus?;
          if (valueDes == null) continue;
          result.alertsStatus.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNowBuilder();
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
