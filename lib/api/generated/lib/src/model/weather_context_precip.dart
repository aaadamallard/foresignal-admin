//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_precip.g.dart';

/// Precipitation section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [rateMmH]
/// * [qpe1hMm]
@BuiltValue()
abstract class WeatherContextPrecip
    implements Built<WeatherContextPrecip, WeatherContextPrecipBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'rateMmH')
  num? get rateMmH;

  @BuiltValueField(wireName: r'qpe1hMm')
  num? get qpe1hMm;

  WeatherContextPrecip._();

  factory WeatherContextPrecip([void updates(WeatherContextPrecipBuilder b)]) =
      _$WeatherContextPrecip;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextPrecipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextPrecip> get serializer =>
      _$WeatherContextPrecipSerializer();
}

class _$WeatherContextPrecipSerializer
    implements PrimitiveSerializer<WeatherContextPrecip> {
  @override
  final Iterable<Type> types = const [
    WeatherContextPrecip,
    _$WeatherContextPrecip,
  ];

  @override
  final String wireName = r'WeatherContextPrecip';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextPrecip object, {
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
    if (object.rateMmH != null) {
      yield r'rateMmH';
      yield serializers.serialize(
        object.rateMmH,
        specifiedType: const FullType(num),
      );
    }
    if (object.qpe1hMm != null) {
      yield r'qpe1hMm';
      yield serializers.serialize(
        object.qpe1hMm,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextPrecip object, {
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
    required WeatherContextPrecipBuilder result,
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
        case r'rateMmH':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rateMmH = valueDes;
          break;
        case r'qpe1hMm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.qpe1hMm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContextPrecip deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextPrecipBuilder();
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
