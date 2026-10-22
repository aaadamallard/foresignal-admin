//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_wind.g.dart';

/// 10-m wind of the newest complete HRRR run (else GFS) at the step nearest the time, with run, validTime and step; gustMs from the same model's gust product
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [productId]
/// * [speedMs]
/// * [gustMs]
/// * [fromDeg]
/// * [run]
/// * [validTime]
/// * [step]
@BuiltValue()
abstract class WeatherContextWind
    implements Built<WeatherContextWind, WeatherContextWindBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'speedMs')
  num? get speedMs;

  @BuiltValueField(wireName: r'gustMs')
  num? get gustMs;

  @BuiltValueField(wireName: r'fromDeg')
  int? get fromDeg;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'validTime')
  DateTime? get validTime;

  @BuiltValueField(wireName: r'step')
  int? get step;

  WeatherContextWind._();

  factory WeatherContextWind([void updates(WeatherContextWindBuilder b)]) =
      _$WeatherContextWind;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextWindBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextWind> get serializer =>
      _$WeatherContextWindSerializer();
}

class _$WeatherContextWindSerializer
    implements PrimitiveSerializer<WeatherContextWind> {
  @override
  final Iterable<Type> types = const [WeatherContextWind, _$WeatherContextWind];

  @override
  final String wireName = r'WeatherContextWind';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextWind object, {
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
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    if (object.speedMs != null) {
      yield r'speedMs';
      yield serializers.serialize(
        object.speedMs,
        specifiedType: const FullType(num),
      );
    }
    if (object.gustMs != null) {
      yield r'gustMs';
      yield serializers.serialize(
        object.gustMs,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.fromDeg != null) {
      yield r'fromDeg';
      yield serializers.serialize(
        object.fromDeg,
        specifiedType: const FullType(int),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType(String),
      );
    }
    if (object.validTime != null) {
      yield r'validTime';
      yield serializers.serialize(
        object.validTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextWind object, {
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
    required WeatherContextWindBuilder result,
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
                    specifiedType: const FullType(WeatherSectionStatus),
                  )
                  as WeatherSectionStatus;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'statusText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'productId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'speedMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.speedMs = valueDes;
          break;
        case r'gustMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.gustMs = valueDes;
          break;
        case r'fromDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fromDeg = valueDes;
          break;
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'validTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validTime = valueDes;
          break;
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContextWind deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextWindBuilder();
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
