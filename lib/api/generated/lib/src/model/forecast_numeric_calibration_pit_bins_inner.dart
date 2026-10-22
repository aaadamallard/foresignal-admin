//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_numeric_calibration_pit_bins_inner.g.dart';

/// ForecastNumericCalibrationPitBinsInner
///
/// Properties:
/// * [lower]
/// * [upper]
/// * [count]
/// * [frequency]
/// * [expected] - The bin width; a calibrated forecaster's frequency is near it
@BuiltValue()
abstract class ForecastNumericCalibrationPitBinsInner
    implements
        Built<ForecastNumericCalibrationPitBinsInner,
            ForecastNumericCalibrationPitBinsInnerBuilder> {
  @BuiltValueField(wireName: r'lower')
  num? get lower;

  @BuiltValueField(wireName: r'upper')
  num? get upper;

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'frequency')
  num? get frequency;

  /// The bin width; a calibrated forecaster's frequency is near it
  @BuiltValueField(wireName: r'expected')
  num? get expected;

  ForecastNumericCalibrationPitBinsInner._();

  factory ForecastNumericCalibrationPitBinsInner(
          [void updates(ForecastNumericCalibrationPitBinsInnerBuilder b)]) =
      _$ForecastNumericCalibrationPitBinsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastNumericCalibrationPitBinsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastNumericCalibrationPitBinsInner> get serializer =>
      _$ForecastNumericCalibrationPitBinsInnerSerializer();
}

class _$ForecastNumericCalibrationPitBinsInnerSerializer
    implements PrimitiveSerializer<ForecastNumericCalibrationPitBinsInner> {
  @override
  final Iterable<Type> types = const [
    ForecastNumericCalibrationPitBinsInner,
    _$ForecastNumericCalibrationPitBinsInner
  ];

  @override
  final String wireName = r'ForecastNumericCalibrationPitBinsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastNumericCalibrationPitBinsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lower != null) {
      yield r'lower';
      yield serializers.serialize(
        object.lower,
        specifiedType: const FullType(num),
      );
    }
    if (object.upper != null) {
      yield r'upper';
      yield serializers.serialize(
        object.upper,
        specifiedType: const FullType(num),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.expected != null) {
      yield r'expected';
      yield serializers.serialize(
        object.expected,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastNumericCalibrationPitBinsInner object, {
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
    required ForecastNumericCalibrationPitBinsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lower':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lower = valueDes;
          break;
        case r'upper':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.upper = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        case r'expected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.expected = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastNumericCalibrationPitBinsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastNumericCalibrationPitBinsInnerBuilder();
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
