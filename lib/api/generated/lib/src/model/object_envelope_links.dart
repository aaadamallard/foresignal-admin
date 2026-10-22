//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_envelope_links.g.dart';

/// ObjectEnvelopeLinks
///
/// Properties:
/// * [self]
/// * [related]
@BuiltValue()
abstract class ObjectEnvelopeLinks
    implements Built<ObjectEnvelopeLinks, ObjectEnvelopeLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  String? get self;

  @BuiltValueField(wireName: r'related')
  String? get related;

  ObjectEnvelopeLinks._();

  factory ObjectEnvelopeLinks([void updates(ObjectEnvelopeLinksBuilder b)]) =
      _$ObjectEnvelopeLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectEnvelopeLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectEnvelopeLinks> get serializer =>
      _$ObjectEnvelopeLinksSerializer();
}

class _$ObjectEnvelopeLinksSerializer
    implements PrimitiveSerializer<ObjectEnvelopeLinks> {
  @override
  final Iterable<Type> types = const [
    ObjectEnvelopeLinks,
    _$ObjectEnvelopeLinks
  ];

  @override
  final String wireName = r'ObjectEnvelopeLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectEnvelopeLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(String),
      );
    }
    if (object.related != null) {
      yield r'related';
      yield serializers.serialize(
        object.related,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectEnvelopeLinks object, {
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
    required ObjectEnvelopeLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.self = valueDes;
          break;
        case r'related':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.related = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectEnvelopeLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectEnvelopeLinksBuilder();
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
