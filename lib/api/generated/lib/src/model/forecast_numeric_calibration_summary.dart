//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_numeric_calibration_summary.g.dart';

/// ForecastNumericCalibrationSummary
///
/// Properties:
/// * [meanAbsoluteCoverageError] - Mean |empirical − nominal| over the stated levels
/// * [maxCoverageDeviation]
@BuiltValue()
abstract class ForecastNumericCalibrationSummary
    implements
        Built<
          ForecastNumericCalibrationSummary,
          ForecastNumericCalibrationSummaryBuilder
        > {
  /// Mean |empirical − nominal| over the stated levels
  @BuiltValueField(wireName: r'meanAbsoluteCoverageError')
  num? get meanAbsoluteCoverageError;

  @BuiltValueField(wireName: r'maxCoverageDeviation')
  num? get maxCoverageDeviation;

  ForecastNumericCalibrationSummary._();

  factory ForecastNumericCalibrationSummary([
    void updates(ForecastNumericCalibrationSummaryBuilder b),
  ]) = _$ForecastNumericCalibrationSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastNumericCalibrationSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastNumericCalibrationSummary> get serializer =>
      _$ForecastNumericCalibrationSummarySerializer();
}

class _$ForecastNumericCalibrationSummarySerializer
    implements PrimitiveSerializer<ForecastNumericCalibrationSummary> {
  @override
  final Iterable<Type> types = const [
    ForecastNumericCalibrationSummary,
    _$ForecastNumericCalibrationSummary,
  ];

  @override
  final String wireName = r'ForecastNumericCalibrationSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastNumericCalibrationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meanAbsoluteCoverageError != null) {
      yield r'meanAbsoluteCoverageError';
      yield serializers.serialize(
        object.meanAbsoluteCoverageError,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maxCoverageDeviation != null) {
      yield r'maxCoverageDeviation';
      yield serializers.serialize(
        object.maxCoverageDeviation,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastNumericCalibrationSummary object, {
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
    required ForecastNumericCalibrationSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meanAbsoluteCoverageError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.meanAbsoluteCoverageError = valueDes;
          break;
        case r'maxCoverageDeviation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxCoverageDeviation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastNumericCalibrationSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastNumericCalibrationSummaryBuilder();
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
