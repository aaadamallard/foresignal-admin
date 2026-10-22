//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_pit_bins_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_numeric_calibration_pit.g.dart';

/// PIT histogram over the required-quantile bins
///
/// Properties:
/// * [n]
/// * [bins]
@BuiltValue()
abstract class ForecastNumericCalibrationPit
    implements
        Built<ForecastNumericCalibrationPit,
            ForecastNumericCalibrationPitBuilder> {
  @BuiltValueField(wireName: r'n')
  int? get n;

  @BuiltValueField(wireName: r'bins')
  BuiltList<ForecastNumericCalibrationPitBinsInner>? get bins;

  ForecastNumericCalibrationPit._();

  factory ForecastNumericCalibrationPit(
          [void updates(ForecastNumericCalibrationPitBuilder b)]) =
      _$ForecastNumericCalibrationPit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastNumericCalibrationPitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastNumericCalibrationPit> get serializer =>
      _$ForecastNumericCalibrationPitSerializer();
}

class _$ForecastNumericCalibrationPitSerializer
    implements PrimitiveSerializer<ForecastNumericCalibrationPit> {
  @override
  final Iterable<Type> types = const [
    ForecastNumericCalibrationPit,
    _$ForecastNumericCalibrationPit
  ];

  @override
  final String wireName = r'ForecastNumericCalibrationPit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastNumericCalibrationPit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType(int),
      );
    }
    if (object.bins != null) {
      yield r'bins';
      yield serializers.serialize(
        object.bins,
        specifiedType: const FullType(
            BuiltList, [FullType(ForecastNumericCalibrationPitBinsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastNumericCalibrationPit object, {
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
    required ForecastNumericCalibrationPitBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'bins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ForecastNumericCalibrationPitBinsInner)]),
          ) as BuiltList<ForecastNumericCalibrationPitBinsInner>?;
          if (valueDes == null) continue;
          result.bins.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastNumericCalibrationPit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastNumericCalibrationPitBuilder();
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
