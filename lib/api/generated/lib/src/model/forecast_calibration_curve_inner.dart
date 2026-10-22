//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_calibration_curve_inner.g.dart';

/// Point of the recalibrated (PAV) curve
///
/// Properties:
/// * [forecast]
/// * [calibrated]
@BuiltValue()
abstract class ForecastCalibrationCurveInner
    implements
        Built<
          ForecastCalibrationCurveInner,
          ForecastCalibrationCurveInnerBuilder
        > {
  @BuiltValueField(wireName: r'forecast')
  num get forecast;

  @BuiltValueField(wireName: r'calibrated')
  num get calibrated;

  ForecastCalibrationCurveInner._();

  factory ForecastCalibrationCurveInner([
    void updates(ForecastCalibrationCurveInnerBuilder b),
  ]) = _$ForecastCalibrationCurveInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastCalibrationCurveInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastCalibrationCurveInner> get serializer =>
      _$ForecastCalibrationCurveInnerSerializer();
}

class _$ForecastCalibrationCurveInnerSerializer
    implements PrimitiveSerializer<ForecastCalibrationCurveInner> {
  @override
  final Iterable<Type> types = const [
    ForecastCalibrationCurveInner,
    _$ForecastCalibrationCurveInner,
  ];

  @override
  final String wireName = r'ForecastCalibrationCurveInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastCalibrationCurveInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecast';
    yield serializers.serialize(
      object.forecast,
      specifiedType: const FullType(num),
    );
    yield r'calibrated';
    yield serializers.serialize(
      object.calibrated,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastCalibrationCurveInner object, {
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
    required ForecastCalibrationCurveInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecast':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.forecast = valueDes;
          break;
        case r'calibrated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.calibrated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastCalibrationCurveInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastCalibrationCurveInnerBuilder();
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
