//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quantiles.g.dart';

/// Quantiles
///
/// Properties:
/// * [p05]
/// * [p10]
/// * [p25]
/// * [p50]
/// * [p75]
/// * [p90]
/// * [p95]
@BuiltValue()
abstract class Quantiles implements Built<Quantiles, QuantilesBuilder> {
  @BuiltValueField(wireName: r'p05')
  num get p05;

  @BuiltValueField(wireName: r'p10')
  num? get p10;

  @BuiltValueField(wireName: r'p25')
  num get p25;

  @BuiltValueField(wireName: r'p50')
  num get p50;

  @BuiltValueField(wireName: r'p75')
  num get p75;

  @BuiltValueField(wireName: r'p90')
  num? get p90;

  @BuiltValueField(wireName: r'p95')
  num get p95;

  Quantiles._();

  factory Quantiles([void updates(QuantilesBuilder b)]) = _$Quantiles;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuantilesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Quantiles> get serializer => _$QuantilesSerializer();
}

class _$QuantilesSerializer implements PrimitiveSerializer<Quantiles> {
  @override
  final Iterable<Type> types = const [Quantiles, _$Quantiles];

  @override
  final String wireName = r'Quantiles';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Quantiles object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'p05';
    yield serializers.serialize(object.p05, specifiedType: const FullType(num));
    if (object.p10 != null) {
      yield r'p10';
      yield serializers.serialize(
        object.p10,
        specifiedType: const FullType(num),
      );
    }
    yield r'p25';
    yield serializers.serialize(object.p25, specifiedType: const FullType(num));
    yield r'p50';
    yield serializers.serialize(object.p50, specifiedType: const FullType(num));
    yield r'p75';
    yield serializers.serialize(object.p75, specifiedType: const FullType(num));
    if (object.p90 != null) {
      yield r'p90';
      yield serializers.serialize(
        object.p90,
        specifiedType: const FullType(num),
      );
    }
    yield r'p95';
    yield serializers.serialize(object.p95, specifiedType: const FullType(num));
  }

  @override
  Object serialize(
    Serializers serializers,
    Quantiles object, {
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
    required QuantilesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p05':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p05 = valueDes;
          break;
        case r'p10':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.p10 = valueDes;
          break;
        case r'p25':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p25 = valueDes;
          break;
        case r'p50':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p50 = valueDes;
          break;
        case r'p75':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p75 = valueDes;
          break;
        case r'p90':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.p90 = valueDes;
          break;
        case r'p95':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p95 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Quantiles deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuantilesBuilder();
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
