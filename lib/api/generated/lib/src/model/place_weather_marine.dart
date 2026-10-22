//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_marine.g.dart';

/// 106: places tagged `coastal` only
///
/// Properties:
/// * [status]
/// * [waveHeightMaxM24h]
@BuiltValue()
abstract class PlaceWeatherMarine
    implements Built<PlaceWeatherMarine, PlaceWeatherMarineBuilder> {
  @BuiltValueField(wireName: r'status')
  SampleStatus? get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'waveHeightMaxM24h')
  num? get waveHeightMaxM24h;

  PlaceWeatherMarine._();

  factory PlaceWeatherMarine([void updates(PlaceWeatherMarineBuilder b)]) =
      _$PlaceWeatherMarine;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherMarineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherMarine> get serializer =>
      _$PlaceWeatherMarineSerializer();
}

class _$PlaceWeatherMarineSerializer
    implements PrimitiveSerializer<PlaceWeatherMarine> {
  @override
  final Iterable<Type> types = const [PlaceWeatherMarine, _$PlaceWeatherMarine];

  @override
  final String wireName = r'PlaceWeatherMarine';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherMarine object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SampleStatus),
      );
    }
    if (object.waveHeightMaxM24h != null) {
      yield r'waveHeightMaxM24h';
      yield serializers.serialize(
        object.waveHeightMaxM24h,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherMarine object, {
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
    required PlaceWeatherMarineBuilder result,
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
        case r'waveHeightMaxM24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.waveHeightMaxM24h = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherMarine deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherMarineBuilder();
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
