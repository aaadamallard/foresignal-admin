//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_area_payload_threshold.g.dart';

/// Threshold
///
/// Properties:
/// * [op]
/// * [value]
/// * [units]
@BuiltValue()
abstract class ForecastAreaPayloadThreshold
    implements
        Built<
          ForecastAreaPayloadThreshold,
          ForecastAreaPayloadThresholdBuilder
        > {
  @BuiltValueField(wireName: r'op')
  String? get op;

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'units')
  String? get units;

  ForecastAreaPayloadThreshold._();

  factory ForecastAreaPayloadThreshold([
    void updates(ForecastAreaPayloadThresholdBuilder b),
  ]) = _$ForecastAreaPayloadThreshold;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastAreaPayloadThresholdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastAreaPayloadThreshold> get serializer =>
      _$ForecastAreaPayloadThresholdSerializer();
}

class _$ForecastAreaPayloadThresholdSerializer
    implements PrimitiveSerializer<ForecastAreaPayloadThreshold> {
  @override
  final Iterable<Type> types = const [
    ForecastAreaPayloadThreshold,
    _$ForecastAreaPayloadThreshold,
  ];

  @override
  final String wireName = r'ForecastAreaPayloadThreshold';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastAreaPayloadThreshold object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.op != null) {
      yield r'op';
      yield serializers.serialize(
        object.op,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(num),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastAreaPayloadThreshold object, {
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
    required ForecastAreaPayloadThresholdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'op':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.op = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastAreaPayloadThreshold deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastAreaPayloadThresholdBuilder();
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
