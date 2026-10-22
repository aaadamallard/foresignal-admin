//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_response_thresholds_inner.g.dart';

/// Area above a threshold
///
/// Properties:
/// * [threshold]
/// * [areaKm2]
@BuiltValue()
abstract class StatsResponseThresholdsInner
    implements
        Built<StatsResponseThresholdsInner,
            StatsResponseThresholdsInnerBuilder> {
  @BuiltValueField(wireName: r'threshold')
  num get threshold;

  @BuiltValueField(wireName: r'areaKm2')
  num get areaKm2;

  StatsResponseThresholdsInner._();

  factory StatsResponseThresholdsInner(
          [void updates(StatsResponseThresholdsInnerBuilder b)]) =
      _$StatsResponseThresholdsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsResponseThresholdsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsResponseThresholdsInner> get serializer =>
      _$StatsResponseThresholdsInnerSerializer();
}

class _$StatsResponseThresholdsInnerSerializer
    implements PrimitiveSerializer<StatsResponseThresholdsInner> {
  @override
  final Iterable<Type> types = const [
    StatsResponseThresholdsInner,
    _$StatsResponseThresholdsInner
  ];

  @override
  final String wireName = r'StatsResponseThresholdsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsResponseThresholdsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'threshold';
    yield serializers.serialize(
      object.threshold,
      specifiedType: const FullType(num),
    );
    yield r'areaKm2';
    yield serializers.serialize(
      object.areaKm2,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsResponseThresholdsInner object, {
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
    required StatsResponseThresholdsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'threshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.threshold = valueDes;
          break;
        case r'areaKm2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.areaKm2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsResponseThresholdsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsResponseThresholdsInnerBuilder();
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
