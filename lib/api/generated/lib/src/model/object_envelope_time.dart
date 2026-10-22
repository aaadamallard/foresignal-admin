//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_envelope_time.g.dart';

/// ObjectEnvelopeTime
///
/// Properties:
/// * [start]
/// * [end]
/// * [observedAt]
@BuiltValue()
abstract class ObjectEnvelopeTime
    implements Built<ObjectEnvelopeTime, ObjectEnvelopeTimeBuilder> {
  @BuiltValueField(wireName: r'start')
  DateTime? get start;

  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  ObjectEnvelopeTime._();

  factory ObjectEnvelopeTime([void updates(ObjectEnvelopeTimeBuilder b)]) =
      _$ObjectEnvelopeTime;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectEnvelopeTimeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectEnvelopeTime> get serializer =>
      _$ObjectEnvelopeTimeSerializer();
}

class _$ObjectEnvelopeTimeSerializer
    implements PrimitiveSerializer<ObjectEnvelopeTime> {
  @override
  final Iterable<Type> types = const [ObjectEnvelopeTime, _$ObjectEnvelopeTime];

  @override
  final String wireName = r'ObjectEnvelopeTime';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectEnvelopeTime object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectEnvelopeTime object, {
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
    required ObjectEnvelopeTimeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.end = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectEnvelopeTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectEnvelopeTimeBuilder();
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
