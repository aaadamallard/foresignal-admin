//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hazard_forecast_probability_range.g.dart';

/// Published range for a category
///
/// Properties:
/// * [low]
/// * [high]
@BuiltValue()
abstract class HazardForecastProbabilityRange
    implements
        Built<HazardForecastProbabilityRange,
            HazardForecastProbabilityRangeBuilder> {
  @BuiltValueField(wireName: r'low')
  num get low;

  @BuiltValueField(wireName: r'high')
  num? get high;

  HazardForecastProbabilityRange._();

  factory HazardForecastProbabilityRange(
          [void updates(HazardForecastProbabilityRangeBuilder b)]) =
      _$HazardForecastProbabilityRange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HazardForecastProbabilityRangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HazardForecastProbabilityRange> get serializer =>
      _$HazardForecastProbabilityRangeSerializer();
}

class _$HazardForecastProbabilityRangeSerializer
    implements PrimitiveSerializer<HazardForecastProbabilityRange> {
  @override
  final Iterable<Type> types = const [
    HazardForecastProbabilityRange,
    _$HazardForecastProbabilityRange
  ];

  @override
  final String wireName = r'HazardForecastProbabilityRange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HazardForecastProbabilityRange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'low';
    yield serializers.serialize(
      object.low,
      specifiedType: const FullType(num),
    );
    if (object.high != null) {
      yield r'high';
      yield serializers.serialize(
        object.high,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HazardForecastProbabilityRange object, {
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
    required HazardForecastProbabilityRangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.low = valueDes;
          break;
        case r'high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.high = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HazardForecastProbabilityRange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HazardForecastProbabilityRangeBuilder();
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
