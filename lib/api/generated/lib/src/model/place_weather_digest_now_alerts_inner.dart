//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_now_alerts_inner.g.dart';

/// Active NWS alert
///
/// Properties:
/// * [id]
/// * [event]
/// * [severity]
/// * [expires]
@BuiltValue()
abstract class PlaceWeatherDigestNowAlertsInner
    implements
        Built<PlaceWeatherDigestNowAlertsInner,
            PlaceWeatherDigestNowAlertsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'event')
  String get event;

  @BuiltValueField(wireName: r'severity')
  String? get severity;

  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  PlaceWeatherDigestNowAlertsInner._();

  factory PlaceWeatherDigestNowAlertsInner(
          [void updates(PlaceWeatherDigestNowAlertsInnerBuilder b)]) =
      _$PlaceWeatherDigestNowAlertsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNowAlertsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNowAlertsInner> get serializer =>
      _$PlaceWeatherDigestNowAlertsInnerSerializer();
}

class _$PlaceWeatherDigestNowAlertsInnerSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNowAlertsInner> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNowAlertsInner,
    _$PlaceWeatherDigestNowAlertsInner
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNowAlertsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNowAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(String),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(String),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNowAlertsInner object, {
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
    required PlaceWeatherDigestNowAlertsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.event = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expires = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNowAlertsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNowAlertsInnerBuilder();
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
