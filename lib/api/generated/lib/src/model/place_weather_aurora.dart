//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_aurora.g.dart';

/// 106: only when |lat| ≥ 40°
///
/// Properties:
/// * [status]
/// * [probMaxNearby]
@BuiltValue()
abstract class PlaceWeatherAurora
    implements Built<PlaceWeatherAurora, PlaceWeatherAuroraBuilder> {
  @BuiltValueField(wireName: r'status')
  SampleStatus? get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'probMaxNearby')
  num? get probMaxNearby;

  PlaceWeatherAurora._();

  factory PlaceWeatherAurora([void updates(PlaceWeatherAuroraBuilder b)]) =
      _$PlaceWeatherAurora;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherAuroraBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherAurora> get serializer =>
      _$PlaceWeatherAuroraSerializer();
}

class _$PlaceWeatherAuroraSerializer
    implements PrimitiveSerializer<PlaceWeatherAurora> {
  @override
  final Iterable<Type> types = const [PlaceWeatherAurora, _$PlaceWeatherAurora];

  @override
  final String wireName = r'PlaceWeatherAurora';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherAurora object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SampleStatus),
      );
    }
    if (object.probMaxNearby != null) {
      yield r'probMaxNearby';
      yield serializers.serialize(
        object.probMaxNearby,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherAurora object, {
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
    required PlaceWeatherAuroraBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleStatus),
          ) as SampleStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'probMaxNearby':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.probMaxNearby = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherAurora deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherAuroraBuilder();
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
