//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collab_attachment_image_meta.g.dart';

/// Image metadata
///
/// Properties:
/// * [width]
/// * [height]
/// * [exifStripped]
@BuiltValue()
abstract class CollabAttachmentImageMeta
    implements
        Built<CollabAttachmentImageMeta, CollabAttachmentImageMetaBuilder> {
  @BuiltValueField(wireName: r'width')
  int get width;

  @BuiltValueField(wireName: r'height')
  int get height;

  @BuiltValueField(wireName: r'exifStripped')
  bool get exifStripped;

  CollabAttachmentImageMeta._();

  factory CollabAttachmentImageMeta([
    void updates(CollabAttachmentImageMetaBuilder b),
  ]) = _$CollabAttachmentImageMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollabAttachmentImageMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollabAttachmentImageMeta> get serializer =>
      _$CollabAttachmentImageMetaSerializer();
}

class _$CollabAttachmentImageMetaSerializer
    implements PrimitiveSerializer<CollabAttachmentImageMeta> {
  @override
  final Iterable<Type> types = const [
    CollabAttachmentImageMeta,
    _$CollabAttachmentImageMeta,
  ];

  @override
  final String wireName = r'CollabAttachmentImageMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollabAttachmentImageMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'width';
    yield serializers.serialize(
      object.width,
      specifiedType: const FullType(int),
    );
    yield r'height';
    yield serializers.serialize(
      object.height,
      specifiedType: const FullType(int),
    );
    yield r'exifStripped';
    yield serializers.serialize(
      object.exifStripped,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CollabAttachmentImageMeta object, {
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
    required CollabAttachmentImageMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'width':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.height = valueDes;
          break;
        case r'exifStripped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.exifStripped = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollabAttachmentImageMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollabAttachmentImageMetaBuilder();
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
