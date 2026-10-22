//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collab_attachment_links.g.dart';

/// Related links
///
/// Properties:
/// * [content] - `/v1/attachments/{id}/content`
@BuiltValue()
abstract class CollabAttachmentLinks
    implements Built<CollabAttachmentLinks, CollabAttachmentLinksBuilder> {
  /// `/v1/attachments/{id}/content`
  @BuiltValueField(wireName: r'content')
  String? get content;

  CollabAttachmentLinks._();

  factory CollabAttachmentLinks([
    void updates(CollabAttachmentLinksBuilder b),
  ]) = _$CollabAttachmentLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollabAttachmentLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollabAttachmentLinks> get serializer =>
      _$CollabAttachmentLinksSerializer();
}

class _$CollabAttachmentLinksSerializer
    implements PrimitiveSerializer<CollabAttachmentLinks> {
  @override
  final Iterable<Type> types = const [
    CollabAttachmentLinks,
    _$CollabAttachmentLinks,
  ];

  @override
  final String wireName = r'CollabAttachmentLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollabAttachmentLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollabAttachmentLinks object, {
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
    required CollabAttachmentLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollabAttachmentLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollabAttachmentLinksBuilder();
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
