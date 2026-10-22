//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_calibration_bins_inner.g.dart';

/// IntelCalibrationBinsInner
///
/// Properties:
/// * [lower]
/// * [upper]
/// * [n]
/// * [meanForecast]
/// * [observedFrequency]
@BuiltValue()
abstract class IntelCalibrationBinsInner
    implements
        Built<IntelCalibrationBinsInner, IntelCalibrationBinsInnerBuilder> {
  @BuiltValueField(wireName: r'lower')
  num? get lower;

  @BuiltValueField(wireName: r'upper')
  num? get upper;

  @BuiltValueField(wireName: r'n')
  int? get n;

  @BuiltValueField(wireName: r'meanForecast')
  num? get meanForecast;

  @BuiltValueField(wireName: r'observedFrequency')
  num? get observedFrequency;

  IntelCalibrationBinsInner._();

  factory IntelCalibrationBinsInner(
          [void updates(IntelCalibrationBinsInnerBuilder b)]) =
      _$IntelCalibrationBinsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCalibrationBinsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCalibrationBinsInner> get serializer =>
      _$IntelCalibrationBinsInnerSerializer();
}

class _$IntelCalibrationBinsInnerSerializer
    implements PrimitiveSerializer<IntelCalibrationBinsInner> {
  @override
  final Iterable<Type> types = const [
    IntelCalibrationBinsInner,
    _$IntelCalibrationBinsInner
  ];

  @override
  final String wireName = r'IntelCalibrationBinsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCalibrationBinsInner object, {
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
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType(int),
      );
    }
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
    IntelCalibrationBinsInner object, {
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
    required IntelCalibrationBinsInnerBuilder result,
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
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'meanForecast':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meanForecast = valueDes;
          break;
        case r'observedFrequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
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
  IntelCalibrationBinsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCalibrationBinsInnerBuilder();
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
