//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/collab_attachment_image_meta.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/collab_attachment_links.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collab_attachment.g.dart';

/// An uploaded document or image stored content-addressed (043) and served only as an attachment; data, never code
///
/// Properties:
/// * [id] - ULID identifier
/// * [mediaId] - 043 content-addressed media id
/// * [filename]
/// * [contentType]
/// * [size]
/// * [sha256]
/// * [text] - Extracted text (PDF via PDFBox, plain text, HTML stripped), ≤ 1 MB
/// * [textTruncated]
/// * [imageMeta]
/// * [uploadedBy]
/// * [owner]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [createdAt]
/// * [links]
@BuiltValue()
abstract class CollabAttachment
    implements Built<CollabAttachment, CollabAttachmentBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// 043 content-addressed media id
  @BuiltValueField(wireName: r'mediaId')
  String get mediaId;

  @BuiltValueField(wireName: r'filename')
  String get filename;

  @BuiltValueField(wireName: r'contentType')
  String get contentType;

  @BuiltValueField(wireName: r'size')
  int get size;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  /// Extracted text (PDF via PDFBox, plain text, HTML stripped), ≤ 1 MB
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'textTruncated')
  bool? get textTruncated;

  @BuiltValueField(wireName: r'imageMeta')
  CollabAttachmentImageMeta? get imageMeta;

  @BuiltValueField(wireName: r'uploadedBy')
  PrincipalSummary get uploadedBy;

  @BuiltValueField(wireName: r'owner')
  PrincipalSummary? get owner;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'links')
  CollabAttachmentLinks? get links;

  CollabAttachment._();

  factory CollabAttachment([void updates(CollabAttachmentBuilder b)]) =
      _$CollabAttachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollabAttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollabAttachment> get serializer =>
      _$CollabAttachmentSerializer();
}

class _$CollabAttachmentSerializer
    implements PrimitiveSerializer<CollabAttachment> {
  @override
  final Iterable<Type> types = const [CollabAttachment, _$CollabAttachment];

  @override
  final String wireName = r'CollabAttachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollabAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'mediaId';
    yield serializers.serialize(
      object.mediaId,
      specifiedType: const FullType(String),
    );
    yield r'filename';
    yield serializers.serialize(
      object.filename,
      specifiedType: const FullType(String),
    );
    yield r'contentType';
    yield serializers.serialize(
      object.contentType,
      specifiedType: const FullType(String),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.textTruncated != null) {
      yield r'textTruncated';
      yield serializers.serialize(
        object.textTruncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.imageMeta != null) {
      yield r'imageMeta';
      yield serializers.serialize(
        object.imageMeta,
        specifiedType: const FullType.nullable(CollabAttachmentImageMeta),
      );
    }
    yield r'uploadedBy';
    yield serializers.serialize(
      object.uploadedBy,
      specifiedType: const FullType(PrincipalSummary),
    );
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(PrincipalSummary),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CollabAttachmentLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollabAttachment object, {
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
    required CollabAttachmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'mediaId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.mediaId = valueDes;
          break;
        case r'filename':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.filename = valueDes;
          break;
        case r'contentType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.contentType = valueDes;
          break;
        case r'size':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.size = valueDes;
          break;
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sha256 = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'textTruncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.textTruncated = valueDes;
          break;
        case r'imageMeta':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CollabAttachmentImageMeta,
                    ),
                  )
                  as CollabAttachmentImageMeta?;
          if (valueDes == null) continue;
          result.imageMeta.replace(valueDes);
          break;
        case r'uploadedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.uploadedBy.replace(valueDes);
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.owner.replace(valueDes);
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Visibility),
                  )
                  as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CollabAttachmentLinks,
                    ),
                  )
                  as CollabAttachmentLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollabAttachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollabAttachmentBuilder();
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
