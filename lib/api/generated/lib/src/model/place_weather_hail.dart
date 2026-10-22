//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_hail.g.dart';

/// MRMS MESH section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [meshMaxMmInRadius]
/// * [meshNearest25Km] - km (999 = none within 100 km)
@BuiltValue()
abstract class PlaceWeatherHail
    implements Built<PlaceWeatherHail, PlaceWeatherHailBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'meshMaxMmInRadius')
  num? get meshMaxMmInRadius;

  /// km (999 = none within 100 km)
  @BuiltValueField(wireName: r'meshNearest25Km')
  num? get meshNearest25Km;

  PlaceWeatherHail._();

  factory PlaceWeatherHail([void updates(PlaceWeatherHailBuilder b)]) =
      _$PlaceWeatherHail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherHailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherHail> get serializer =>
      _$PlaceWeatherHailSerializer();
}

class _$PlaceWeatherHailSerializer
    implements PrimitiveSerializer<PlaceWeatherHail> {
  @override
  final Iterable<Type> types = const [PlaceWeatherHail, _$PlaceWeatherHail];

  @override
  final String wireName = r'PlaceWeatherHail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherHail object, {
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
    if (object.meshMaxMmInRadius != null) {
      yield r'meshMaxMmInRadius';
      yield serializers.serialize(
        object.meshMaxMmInRadius,
        specifiedType: const FullType(num),
      );
    }
    if (object.meshNearest25Km != null) {
      yield r'meshNearest25Km';
      yield serializers.serialize(
        object.meshNearest25Km,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherHail object, {
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
    required PlaceWeatherHailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WeatherSectionStatus),
          ) as WeatherSectionStatus;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'statusText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'meshMaxMmInRadius':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meshMaxMmInRadius = valueDes;
          break;
        case r'meshNearest25Km':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meshNearest25Km = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherHail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherHailBuilder();
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
