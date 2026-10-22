//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_numeric_calibration_quantile_reliability_inner.g.dart';

/// ForecastNumericCalibrationQuantileReliabilityInner
///
/// Properties:
/// * [level]
/// * [quantile]
/// * [nominal]
/// * [empirical]
/// * [n]
@BuiltValue()
abstract class ForecastNumericCalibrationQuantileReliabilityInner
    implements
        Built<ForecastNumericCalibrationQuantileReliabilityInner,
            ForecastNumericCalibrationQuantileReliabilityInnerBuilder> {
  @BuiltValueField(wireName: r'level')
  num? get level;

  @BuiltValueField(wireName: r'quantile')
  String? get quantile;

  @BuiltValueField(wireName: r'nominal')
  num? get nominal;

  @BuiltValueField(wireName: r'empirical')
  num? get empirical;

  @BuiltValueField(wireName: r'n')
  int? get n;

  ForecastNumericCalibrationQuantileReliabilityInner._();

  factory ForecastNumericCalibrationQuantileReliabilityInner(
          [void updates(
              ForecastNumericCalibrationQuantileReliabilityInnerBuilder b)]) =
      _$ForecastNumericCalibrationQuantileReliabilityInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ForecastNumericCalibrationQuantileReliabilityInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastNumericCalibrationQuantileReliabilityInner>
      get serializer =>
          _$ForecastNumericCalibrationQuantileReliabilityInnerSerializer();
}

class _$ForecastNumericCalibrationQuantileReliabilityInnerSerializer
    implements
        PrimitiveSerializer<
            ForecastNumericCalibrationQuantileReliabilityInner> {
  @override
  final Iterable<Type> types = const [
    ForecastNumericCalibrationQuantileReliabilityInner,
    _$ForecastNumericCalibrationQuantileReliabilityInner
  ];

  @override
  final String wireName = r'ForecastNumericCalibrationQuantileReliabilityInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastNumericCalibrationQuantileReliabilityInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(num),
      );
    }
    if (object.quantile != null) {
      yield r'quantile';
      yield serializers.serialize(
        object.quantile,
        specifiedType: const FullType(String),
      );
    }
    if (object.nominal != null) {
      yield r'nominal';
      yield serializers.serialize(
        object.nominal,
        specifiedType: const FullType(num),
      );
    }
    if (object.empirical != null) {
      yield r'empirical';
      yield serializers.serialize(
        object.empirical,
        specifiedType: const FullType(num),
      );
    }
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastNumericCalibrationQuantileReliabilityInner object, {
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
    required ForecastNumericCalibrationQuantileReliabilityInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.level = valueDes;
          break;
        case r'quantile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.quantile = valueDes;
          break;
        case r'nominal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nominal = valueDes;
          break;
        case r'empirical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.empirical = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastNumericCalibrationQuantileReliabilityInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastNumericCalibrationQuantileReliabilityInnerBuilder();
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
