//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prob_severe_payload_motion.g.dart';

/// Storm motion
///
/// Properties:
/// * [speedKmh]
/// * [bearingDeg]
@BuiltValue()
abstract class ProbSeverePayloadMotion
    implements Built<ProbSeverePayloadMotion, ProbSeverePayloadMotionBuilder> {
  @BuiltValueField(wireName: r'speedKmh')
  num get speedKmh;

  @BuiltValueField(wireName: r'bearingDeg')
  int get bearingDeg;

  ProbSeverePayloadMotion._();

  factory ProbSeverePayloadMotion(
          [void updates(ProbSeverePayloadMotionBuilder b)]) =
      _$ProbSeverePayloadMotion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProbSeverePayloadMotionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProbSeverePayloadMotion> get serializer =>
      _$ProbSeverePayloadMotionSerializer();
}

class _$ProbSeverePayloadMotionSerializer
    implements PrimitiveSerializer<ProbSeverePayloadMotion> {
  @override
  final Iterable<Type> types = const [
    ProbSeverePayloadMotion,
    _$ProbSeverePayloadMotion
  ];

  @override
  final String wireName = r'ProbSeverePayloadMotion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProbSeverePayloadMotion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'speedKmh';
    yield serializers.serialize(
      object.speedKmh,
      specifiedType: const FullType(num),
    );
    yield r'bearingDeg';
    yield serializers.serialize(
      object.bearingDeg,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProbSeverePayloadMotion object, {
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
    required ProbSeverePayloadMotionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speedKmh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.speedKmh = valueDes;
          break;
        case r'bearingDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bearingDeg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProbSeverePayloadMotion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProbSeverePayloadMotionBuilder();
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
