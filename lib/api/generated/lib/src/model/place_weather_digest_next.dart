//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/place_weather_digest_next_hrrr.dart';
import 'package:foresignal_api/src/model/place_weather_digest_next_nws.dart';
import 'package:foresignal_api/src/model/place_weather_digest_next_gfs.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_next.g.dart';

/// Next 24–72 h
///
/// Properties:
/// * [nws]
/// * [gfs]
/// * [hrrr]
@BuiltValue()
abstract class PlaceWeatherDigestNext
    implements Built<PlaceWeatherDigestNext, PlaceWeatherDigestNextBuilder> {
  @BuiltValueField(wireName: r'nws')
  PlaceWeatherDigestNextNws? get nws;

  @BuiltValueField(wireName: r'gfs')
  PlaceWeatherDigestNextGfs? get gfs;

  @BuiltValueField(wireName: r'hrrr')
  PlaceWeatherDigestNextHrrr? get hrrr;

  PlaceWeatherDigestNext._();

  factory PlaceWeatherDigestNext([
    void updates(PlaceWeatherDigestNextBuilder b),
  ]) = _$PlaceWeatherDigestNext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNext> get serializer =>
      _$PlaceWeatherDigestNextSerializer();
}

class _$PlaceWeatherDigestNextSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNext> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNext,
    _$PlaceWeatherDigestNext,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nws != null) {
      yield r'nws';
      yield serializers.serialize(
        object.nws,
        specifiedType: const FullType(PlaceWeatherDigestNextNws),
      );
    }
    if (object.gfs != null) {
      yield r'gfs';
      yield serializers.serialize(
        object.gfs,
        specifiedType: const FullType(PlaceWeatherDigestNextGfs),
      );
    }
    if (object.hrrr != null) {
      yield r'hrrr';
      yield serializers.serialize(
        object.hrrr,
        specifiedType: const FullType(PlaceWeatherDigestNextHrrr),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNext object, {
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
    required PlaceWeatherDigestNextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nws':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherDigestNextNws,
                    ),
                  )
                  as PlaceWeatherDigestNextNws?;
          if (valueDes == null) continue;
          result.nws.replace(valueDes);
          break;
        case r'gfs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherDigestNextGfs,
                    ),
                  )
                  as PlaceWeatherDigestNextGfs?;
          if (valueDes == null) continue;
          result.gfs.replace(valueDes);
          break;
        case r'hrrr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceWeatherDigestNextHrrr,
                    ),
                  )
                  as PlaceWeatherDigestNextHrrr?;
          if (valueDes == null) continue;
          result.hrrr.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNextBuilder();
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
