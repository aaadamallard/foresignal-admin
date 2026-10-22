//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_envelope_page.g.dart';

/// One page of object envelopes (Client-Contract §3)
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class ObjectEnvelopePage
    implements Built<ObjectEnvelopePage, ObjectEnvelopePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ObjectEnvelope> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ObjectEnvelopePage._();

  factory ObjectEnvelopePage([void updates(ObjectEnvelopePageBuilder b)]) =
      _$ObjectEnvelopePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectEnvelopePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectEnvelopePage> get serializer =>
      _$ObjectEnvelopePageSerializer();
}

class _$ObjectEnvelopePageSerializer
    implements PrimitiveSerializer<ObjectEnvelopePage> {
  @override
  final Iterable<Type> types = const [ObjectEnvelopePage, _$ObjectEnvelopePage];

  @override
  final String wireName = r'ObjectEnvelopePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectEnvelopePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectEnvelopePage object, {
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
    required ObjectEnvelopePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ObjectEnvelope)]),
          ) as BuiltList<ObjectEnvelope>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectEnvelopePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectEnvelopePageBuilder();
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
