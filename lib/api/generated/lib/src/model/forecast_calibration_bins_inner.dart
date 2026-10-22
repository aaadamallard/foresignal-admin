//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_calibration_bins_inner.g.dart';

/// Reliability bin
///
/// Properties:
/// * [lower]
/// * [upper]
/// * [n]
/// * [meanForecast]
/// * [observedFrequency]
@BuiltValue()
abstract class ForecastCalibrationBinsInner
    implements
        Built<
          ForecastCalibrationBinsInner,
          ForecastCalibrationBinsInnerBuilder
        > {
  @BuiltValueField(wireName: r'lower')
  num get lower;

  @BuiltValueField(wireName: r'upper')
  num get upper;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'meanForecast')
  num? get meanForecast;

  @BuiltValueField(wireName: r'observedFrequency')
  num? get observedFrequency;

  ForecastCalibrationBinsInner._();

  factory ForecastCalibrationBinsInner([
    void updates(ForecastCalibrationBinsInnerBuilder b),
  ]) = _$ForecastCalibrationBinsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastCalibrationBinsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastCalibrationBinsInner> get serializer =>
      _$ForecastCalibrationBinsInnerSerializer();
}

class _$ForecastCalibrationBinsInnerSerializer
    implements PrimitiveSerializer<ForecastCalibrationBinsInner> {
  @override
  final Iterable<Type> types = const [
    ForecastCalibrationBinsInner,
    _$ForecastCalibrationBinsInner,
  ];

  @override
  final String wireName = r'ForecastCalibrationBinsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastCalibrationBinsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lower';
    yield serializers.serialize(
      object.lower,
      specifiedType: const FullType(num),
    );
    yield r'upper';
    yield serializers.serialize(
      object.upper,
      specifiedType: const FullType(num),
    );
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    if (object.meanForecast != null) {
      yield r'meanForecast';
      yield serializers.serialize(
        object.meanForecast,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.observedFrequency != null) {
      yield r'observedFrequency';
      yield serializers.serialize(
        object.observedFrequency,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastCalibrationBinsInner object, {
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
    required ForecastCalibrationBinsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lower':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lower = valueDes;
          break;
        case r'upper':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.upper = valueDes;
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        case r'meanForecast':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.meanForecast = valueDes;
          break;
        case r'observedFrequency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.observedFrequency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastCalibrationBinsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastCalibrationBinsInnerBuilder();
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
