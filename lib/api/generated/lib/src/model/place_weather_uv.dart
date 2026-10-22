//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_uv.g.dart';

/// 106: EPA UV (needs place.attributes.zip)
///
/// Properties:
/// * [status]
/// * [maxToday]
@BuiltValue()
abstract class PlaceWeatherUv
    implements Built<PlaceWeatherUv, PlaceWeatherUvBuilder> {
  @BuiltValueField(wireName: r'status')
  SampleStatus? get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'maxToday')
  num? get maxToday;

  PlaceWeatherUv._();

  factory PlaceWeatherUv([void updates(PlaceWeatherUvBuilder b)]) =
      _$PlaceWeatherUv;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherUvBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherUv> get serializer =>
      _$PlaceWeatherUvSerializer();
}

class _$PlaceWeatherUvSerializer
    implements PrimitiveSerializer<PlaceWeatherUv> {
  @override
  final Iterable<Type> types = const [PlaceWeatherUv, _$PlaceWeatherUv];

  @override
  final String wireName = r'PlaceWeatherUv';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherUv object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SampleStatus),
      );
    }
    if (object.maxToday != null) {
      yield r'maxToday';
      yield serializers.serialize(
        object.maxToday,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherUv object, {
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
    required PlaceWeatherUvBuilder result,
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
                    specifiedType: const FullType.nullable(SampleStatus),
                  )
                  as SampleStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'maxToday':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxToday = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherUv deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherUvBuilder();
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
