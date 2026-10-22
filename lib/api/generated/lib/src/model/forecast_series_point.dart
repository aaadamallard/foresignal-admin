//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_series_point.g.dart';

/// One step of a cached forecast series
///
/// Properties:
/// * [time]
/// * [tempC]
/// * [windSpeedMs]
/// * [windFromDeg]
/// * [gustMs]
/// * [popPct]
/// * [precipMm]
/// * [skyCoverPct]
/// * [smokeUgM3]
@BuiltValue()
abstract class ForecastSeriesPoint
    implements Built<ForecastSeriesPoint, ForecastSeriesPointBuilder> {
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'tempC')
  num? get tempC;

  @BuiltValueField(wireName: r'windSpeedMs')
  num? get windSpeedMs;

  @BuiltValueField(wireName: r'windFromDeg')
  int? get windFromDeg;

  @BuiltValueField(wireName: r'gustMs')
  num? get gustMs;

  @BuiltValueField(wireName: r'popPct')
  int? get popPct;

  @BuiltValueField(wireName: r'precipMm')
  num? get precipMm;

  @BuiltValueField(wireName: r'skyCoverPct')
  int? get skyCoverPct;

  @BuiltValueField(wireName: r'smokeUgM3')
  num? get smokeUgM3;

  ForecastSeriesPoint._();

  factory ForecastSeriesPoint([void updates(ForecastSeriesPointBuilder b)]) =
      _$ForecastSeriesPoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastSeriesPointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastSeriesPoint> get serializer =>
      _$ForecastSeriesPointSerializer();
}

class _$ForecastSeriesPointSerializer
    implements PrimitiveSerializer<ForecastSeriesPoint> {
  @override
  final Iterable<Type> types = const [
    ForecastSeriesPoint,
    _$ForecastSeriesPoint,
  ];

  @override
  final String wireName = r'ForecastSeriesPoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastSeriesPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    if (object.tempC != null) {
      yield r'tempC';
      yield serializers.serialize(
        object.tempC,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.windSpeedMs != null) {
      yield r'windSpeedMs';
      yield serializers.serialize(
        object.windSpeedMs,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.windFromDeg != null) {
      yield r'windFromDeg';
      yield serializers.serialize(
        object.windFromDeg,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.gustMs != null) {
      yield r'gustMs';
      yield serializers.serialize(
        object.gustMs,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.popPct != null) {
      yield r'popPct';
      yield serializers.serialize(
        object.popPct,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.precipMm != null) {
      yield r'precipMm';
      yield serializers.serialize(
        object.precipMm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.skyCoverPct != null) {
      yield r'skyCoverPct';
      yield serializers.serialize(
        object.skyCoverPct,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.smokeUgM3 != null) {
      yield r'smokeUgM3';
      yield serializers.serialize(
        object.smokeUgM3,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastSeriesPoint object, {
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
    required ForecastSeriesPointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        case r'tempC':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.tempC = valueDes;
          break;
        case r'windSpeedMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.windSpeedMs = valueDes;
          break;
        case r'windFromDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.windFromDeg = valueDes;
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
        case r'popPct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.popPct = valueDes;
          break;
        case r'precipMm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.precipMm = valueDes;
          break;
        case r'skyCoverPct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.skyCoverPct = valueDes;
          break;
        case r'smokeUgM3':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.smokeUgM3 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastSeriesPoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastSeriesPointBuilder();
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
