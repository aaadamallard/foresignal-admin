//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_lightning.g.dart';

/// GOES GLM flashes within 20 km over the 15 minutes before the time; stale when no GLM file ended within 2 minutes of it. GLM's footprint over Texas is about 8–10 km and its detection efficiency is below 100%, so a zero count is advisory
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [flashes20km15m] - GLM flashes within 20 km over the last 15 min
@BuiltValue()
abstract class WeatherContextLightning
    implements Built<WeatherContextLightning, WeatherContextLightningBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// GLM flashes within 20 km over the last 15 min
  @BuiltValueField(wireName: r'flashes20km15m')
  int? get flashes20km15m;

  WeatherContextLightning._();

  factory WeatherContextLightning(
          [void updates(WeatherContextLightningBuilder b)]) =
      _$WeatherContextLightning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextLightningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextLightning> get serializer =>
      _$WeatherContextLightningSerializer();
}

class _$WeatherContextLightningSerializer
    implements PrimitiveSerializer<WeatherContextLightning> {
  @override
  final Iterable<Type> types = const [
    WeatherContextLightning,
    _$WeatherContextLightning
  ];

  @override
  final String wireName = r'WeatherContextLightning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextLightning object, {
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
    if (object.flashes20km15m != null) {
      yield r'flashes20km15m';
      yield serializers.serialize(
        object.flashes20km15m,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextLightning object, {
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
    required WeatherContextLightningBuilder result,
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
        case r'flashes20km15m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.flashes20km15m = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContextLightning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextLightningBuilder();
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
