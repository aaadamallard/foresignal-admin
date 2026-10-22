//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/place_weather_digest_period.dart';
import 'package:foresignal_api/src/model/place_weather_digest_next.dart';
import 'package:foresignal_api/src/model/place_weather_digest_now.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest.g.dart';

/// \"Weather at places\" digest section for one place (056); stale sections are labeled, never omitted
///
/// Properties:
/// * [placeId]
/// * [place]
/// * [timezone]
/// * [now]
/// * [period]
/// * [next]
@BuiltValue()
abstract class PlaceWeatherDigest
    implements Built<PlaceWeatherDigest, PlaceWeatherDigestBuilder> {
  @BuiltValueField(wireName: r'placeId')
  String get placeId;

  @BuiltValueField(wireName: r'place')
  String get place;

  @BuiltValueField(wireName: r'timezone')
  String get timezone;

  @BuiltValueField(wireName: r'now')
  PlaceWeatherDigestNow? get now;

  @BuiltValueField(wireName: r'period')
  PlaceWeatherDigestPeriod? get period;

  @BuiltValueField(wireName: r'next')
  PlaceWeatherDigestNext? get next;

  PlaceWeatherDigest._();

  factory PlaceWeatherDigest([void updates(PlaceWeatherDigestBuilder b)]) =
      _$PlaceWeatherDigest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigest> get serializer =>
      _$PlaceWeatherDigestSerializer();
}

class _$PlaceWeatherDigestSerializer
    implements PrimitiveSerializer<PlaceWeatherDigest> {
  @override
  final Iterable<Type> types = const [PlaceWeatherDigest, _$PlaceWeatherDigest];

  @override
  final String wireName = r'PlaceWeatherDigest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'placeId';
    yield serializers.serialize(
      object.placeId,
      specifiedType: const FullType(String),
    );
    yield r'place';
    yield serializers.serialize(
      object.place,
      specifiedType: const FullType(String),
    );
    yield r'timezone';
    yield serializers.serialize(
      object.timezone,
      specifiedType: const FullType(String),
    );
    if (object.now != null) {
      yield r'now';
      yield serializers.serialize(
        object.now,
        specifiedType: const FullType(PlaceWeatherDigestNow),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(PlaceWeatherDigestPeriod),
      );
    }
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType(PlaceWeatherDigestNext),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigest object, {
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
    required PlaceWeatherDigestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeId = valueDes;
          break;
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.place = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timezone = valueDes;
          break;
        case r'now':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherDigestNow),
          ) as PlaceWeatherDigestNow?;
          if (valueDes == null) continue;
          result.now.replace(valueDes);
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherDigestPeriod),
          ) as PlaceWeatherDigestPeriod?;
          if (valueDes == null) continue;
          result.period.replace(valueDes);
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceWeatherDigestNext),
          ) as PlaceWeatherDigestNext?;
          if (valueDes == null) continue;
          result.next.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestBuilder();
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
