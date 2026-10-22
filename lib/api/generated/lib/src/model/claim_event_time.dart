//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_event_time.g.dart';

/// Claimed event time, resolved relative to post `createdAt`
///
/// Properties:
/// * [from]
/// * [to]
/// * [precision] - Resolution of the time expression, e.g. `minute`, `hour`, `day`
@BuiltValue()
abstract class ClaimEventTime
    implements Built<ClaimEventTime, ClaimEventTimeBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  /// Resolution of the time expression, e.g. `minute`, `hour`, `day`
  @BuiltValueField(wireName: r'precision')
  String get precision;

  ClaimEventTime._();

  factory ClaimEventTime([void updates(ClaimEventTimeBuilder b)]) =
      _$ClaimEventTime;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimEventTimeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimEventTime> get serializer =>
      _$ClaimEventTimeSerializer();
}

class _$ClaimEventTimeSerializer
    implements PrimitiveSerializer<ClaimEventTime> {
  @override
  final Iterable<Type> types = const [ClaimEventTime, _$ClaimEventTime];

  @override
  final String wireName = r'ClaimEventTime';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimEventTime object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'precision';
    yield serializers.serialize(
      object.precision,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimEventTime object, {
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
    required ClaimEventTimeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'precision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.precision = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimEventTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimEventTimeBuilder();
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
