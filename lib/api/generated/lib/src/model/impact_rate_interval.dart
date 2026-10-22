//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'impact_rate_interval.g.dart';

/// Interval bounds
///
/// Properties:
/// * [lo]
/// * [hi]
@BuiltValue()
abstract class ImpactRateInterval
    implements Built<ImpactRateInterval, ImpactRateIntervalBuilder> {
  @BuiltValueField(wireName: r'lo')
  num get lo;

  @BuiltValueField(wireName: r'hi')
  num get hi;

  ImpactRateInterval._();

  factory ImpactRateInterval([void updates(ImpactRateIntervalBuilder b)]) =
      _$ImpactRateInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImpactRateIntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImpactRateInterval> get serializer =>
      _$ImpactRateIntervalSerializer();
}

class _$ImpactRateIntervalSerializer
    implements PrimitiveSerializer<ImpactRateInterval> {
  @override
  final Iterable<Type> types = const [ImpactRateInterval, _$ImpactRateInterval];

  @override
  final String wireName = r'ImpactRateInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImpactRateInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lo';
    yield serializers.serialize(
      object.lo,
      specifiedType: const FullType(num),
    );
    yield r'hi';
    yield serializers.serialize(
      object.hi,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImpactRateInterval object, {
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
    required ImpactRateIntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lo = valueDes;
          break;
        case r'hi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.hi = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImpactRateInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImpactRateIntervalBuilder();
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
