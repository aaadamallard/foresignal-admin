//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_calibration_curve_inner.g.dart';

/// IntelCalibrationCurveInner
///
/// Properties:
/// * [forecast]
/// * [calibrated]
@BuiltValue()
abstract class IntelCalibrationCurveInner
    implements
        Built<IntelCalibrationCurveInner, IntelCalibrationCurveInnerBuilder> {
  @BuiltValueField(wireName: r'forecast')
  num? get forecast;

  @BuiltValueField(wireName: r'calibrated')
  num? get calibrated;

  IntelCalibrationCurveInner._();

  factory IntelCalibrationCurveInner(
          [void updates(IntelCalibrationCurveInnerBuilder b)]) =
      _$IntelCalibrationCurveInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCalibrationCurveInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCalibrationCurveInner> get serializer =>
      _$IntelCalibrationCurveInnerSerializer();
}

class _$IntelCalibrationCurveInnerSerializer
    implements PrimitiveSerializer<IntelCalibrationCurveInner> {
  @override
  final Iterable<Type> types = const [
    IntelCalibrationCurveInner,
    _$IntelCalibrationCurveInner
  ];

  @override
  final String wireName = r'IntelCalibrationCurveInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCalibrationCurveInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.forecast != null) {
      yield r'forecast';
      yield serializers.serialize(
        object.forecast,
        specifiedType: const FullType(num),
      );
    }
    if (object.calibrated != null) {
      yield r'calibrated';
      yield serializers.serialize(
        object.calibrated,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelCalibrationCurveInner object, {
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
    required IntelCalibrationCurveInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecast':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.forecast = valueDes;
          break;
        case r'calibrated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
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
  IntelCalibrationCurveInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCalibrationCurveInnerBuilder();
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
