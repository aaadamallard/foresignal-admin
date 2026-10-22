//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/alert_context_anchor.dart';
import 'package:foresignal_api/src/model/anomaly_observation.dart';
import 'package:foresignal_api/src/model/weather_context.dart';
import 'package:foresignal_api/src/model/alert_context_near.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_context.g.dart';

/// Computed alert context (`alert.context`); `weather` (056) is the deterministic weather context of a geolocated alert, stored before dispatch; list responses carry only `weather.summary` unless `include=context`
///
/// Properties:
/// * [weather]
/// * [near]
/// * [anomaly] - Anomaly rule alerts: the evaluated bucket (100)
/// * [anchor]
@BuiltValue()
abstract class AlertContext
    implements Built<AlertContext, AlertContextBuilder> {
  @BuiltValueField(wireName: r'weather')
  WeatherContext? get weather;

  @BuiltValueField(wireName: r'near')
  AlertContextNear? get near;

  /// Anomaly rule alerts: the evaluated bucket (100)
  @BuiltValueField(wireName: r'anomaly')
  AnomalyObservation? get anomaly;

  @BuiltValueField(wireName: r'anchor')
  AlertContextAnchor? get anchor;

  AlertContext._();

  factory AlertContext([void updates(AlertContextBuilder b)]) = _$AlertContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertContext> get serializer => _$AlertContextSerializer();
}

class _$AlertContextSerializer implements PrimitiveSerializer<AlertContext> {
  @override
  final Iterable<Type> types = const [AlertContext, _$AlertContext];

  @override
  final String wireName = r'AlertContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.weather != null) {
      yield r'weather';
      yield serializers.serialize(
        object.weather,
        specifiedType: const FullType(WeatherContext),
      );
    }
    if (object.near != null) {
      yield r'near';
      yield serializers.serialize(
        object.near,
        specifiedType: const FullType(AlertContextNear),
      );
    }
    if (object.anomaly != null) {
      yield r'anomaly';
      yield serializers.serialize(
        object.anomaly,
        specifiedType: const FullType.nullable(AnomalyObservation),
      );
    }
    if (object.anchor != null) {
      yield r'anchor';
      yield serializers.serialize(
        object.anchor,
        specifiedType: const FullType(AlertContextAnchor),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertContext object, {
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
    required AlertContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weather':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WeatherContext),
                  )
                  as WeatherContext?;
          if (valueDes == null) continue;
          result.weather.replace(valueDes);
          break;
        case r'near':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlertContextNear),
                  )
                  as AlertContextNear?;
          if (valueDes == null) continue;
          result.near.replace(valueDes);
          break;
        case r'anomaly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AnomalyObservation),
                  )
                  as AnomalyObservation?;
          if (valueDes == null) continue;
          result.anomaly.replace(valueDes);
          break;
        case r'anchor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlertContextAnchor),
                  )
                  as AlertContextAnchor?;
          if (valueDes == null) continue;
          result.anchor.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertContextBuilder();
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
