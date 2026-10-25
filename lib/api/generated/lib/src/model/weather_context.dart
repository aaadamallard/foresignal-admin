//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/weather_context_lightning.dart';
import 'package:foresignal_api/src/model/weather_context_warnings.dart';
import 'package:foresignal_api/src/model/weather_context_wind.dart';
import 'package:foresignal_api/src/model/weather_context_precip.dart';
import 'package:foresignal_api/src/model/weather_context_smoke.dart';
import 'package:foresignal_api/src/model/weather_context_radar.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context.g.dart';

/// Deterministic weather facts around an alert geometry (056), computed from stored frames and record heads at the alert's observed_at within a 500 ms budget (a section that misses it is unavailable); non-ok sections carry statusText and no values and mean unknown, never clear
///
/// Properties:
/// * [status] - unavailable when the computation failed or timed out (sections omitted)
/// * [at] - Time computed for (the alert's observed_at)
/// * [computedAt]
/// * [radar]
/// * [lightning]
/// * [precip]
/// * [warnings]
/// * [wind]
/// * [smoke]
/// * [summary] - One deterministic sentence; non-ok sections are worded as unknown, never as absence
@BuiltValue()
abstract class WeatherContext
    implements Built<WeatherContext, WeatherContextBuilder> {
  /// unavailable when the computation failed or timed out (sections omitted)
  @BuiltValueField(wireName: r'status')
  WeatherContextStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  };

  /// Time computed for (the alert's observed_at)
  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  @BuiltValueField(wireName: r'computedAt')
  DateTime? get computedAt;

  @BuiltValueField(wireName: r'radar')
  WeatherContextRadar? get radar;

  @BuiltValueField(wireName: r'lightning')
  WeatherContextLightning? get lightning;

  @BuiltValueField(wireName: r'precip')
  WeatherContextPrecip? get precip;

  @BuiltValueField(wireName: r'warnings')
  WeatherContextWarnings? get warnings;

  @BuiltValueField(wireName: r'wind')
  WeatherContextWind? get wind;

  @BuiltValueField(wireName: r'smoke')
  WeatherContextSmoke? get smoke;

  /// One deterministic sentence; non-ok sections are worded as unknown, never as absence
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  WeatherContext._();

  factory WeatherContext([void updates(WeatherContextBuilder b)]) =
      _$WeatherContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContext> get serializer =>
      _$WeatherContextSerializer();
}

class _$WeatherContextSerializer
    implements PrimitiveSerializer<WeatherContext> {
  @override
  final Iterable<Type> types = const [WeatherContext, _$WeatherContext];

  @override
  final String wireName = r'WeatherContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(WeatherContextStatusEnum),
    );
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.computedAt != null) {
      yield r'computedAt';
      yield serializers.serialize(
        object.computedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.radar != null) {
      yield r'radar';
      yield serializers.serialize(
        object.radar,
        specifiedType: const FullType(WeatherContextRadar),
      );
    }
    if (object.lightning != null) {
      yield r'lightning';
      yield serializers.serialize(
        object.lightning,
        specifiedType: const FullType(WeatherContextLightning),
      );
    }
    if (object.precip != null) {
      yield r'precip';
      yield serializers.serialize(
        object.precip,
        specifiedType: const FullType(WeatherContextPrecip),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(WeatherContextWarnings),
      );
    }
    if (object.wind != null) {
      yield r'wind';
      yield serializers.serialize(
        object.wind,
        specifiedType: const FullType(WeatherContextWind),
      );
    }
    if (object.smoke != null) {
      yield r'smoke';
      yield serializers.serialize(
        object.smoke,
        specifiedType: const FullType(WeatherContextSmoke),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContext object, {
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
    required WeatherContextBuilder result,
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
                    specifiedType: const FullType(WeatherContextStatusEnum),
                  )
                  as WeatherContextStatusEnum;
          result.status = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.computedAt = valueDes;
          break;
        case r'radar':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WeatherContextRadar),
                  )
                  as WeatherContextRadar?;
          if (valueDes == null) continue;
          result.radar.replace(valueDes);
          break;
        case r'lightning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherContextLightning,
                    ),
                  )
                  as WeatherContextLightning?;
          if (valueDes == null) continue;
          result.lightning.replace(valueDes);
          break;
        case r'precip':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherContextPrecip,
                    ),
                  )
                  as WeatherContextPrecip?;
          if (valueDes == null) continue;
          result.precip.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherContextWarnings,
                    ),
                  )
                  as WeatherContextWarnings?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'wind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WeatherContextWind),
                  )
                  as WeatherContextWind?;
          if (valueDes == null) continue;
          result.wind.replace(valueDes);
          break;
        case r'smoke':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WeatherContextSmoke),
                  )
                  as WeatherContextSmoke?;
          if (valueDes == null) continue;
          result.smoke.replace(valueDes);
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextBuilder();
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

/// unavailable when the computation failed or timed out (sections omitted)
class WeatherContextStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const WeatherContextStatusEnum ok = _$weatherContextStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const WeatherContextStatusEnum unavailable =
      _$weatherContextStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WeatherContextStatusEnum unknownDefaultOpenApi =
      _$weatherContextStatusEnum_unknownDefaultOpenApi;

  static Serializer<WeatherContextStatusEnum> get serializer =>
      _$weatherContextStatusEnumSerializer;

  const WeatherContextStatusEnum._(String name) : super(name);

  static BuiltSet<WeatherContextStatusEnum> get values =>
      _$weatherContextStatusEnumValues;
  static WeatherContextStatusEnum valueOf(String name) =>
      _$weatherContextStatusEnumValueOf(name);
}
