//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_origin.dart';
import 'package:foresignal_api/src/model/edp_document_item_media_inner.dart';
import 'package:foresignal_api/src/model/edp_document_item_author.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_document_item.g.dart';

/// A text item: post, article, report, transcript or note
///
/// Properties:
/// * [stream]
/// * [type]
/// * [id]
/// * [observedAt]
/// * [properties] - Item properties, validated against the stream's payloadSchema
/// * [documentType]
/// * [text]
/// * [title]
/// * [url]
/// * [author]
/// * [language]
/// * [publishedAt]
/// * [about] - Foresignal object references or URLs
/// * [media]
/// * [geometry]
/// * [engagement]
/// * [origin]
@BuiltValue()
abstract class EdpDocumentItem
    implements Built<EdpDocumentItem, EdpDocumentItemBuilder> {
  @BuiltValueField(wireName: r'stream')
  String get stream;

  @BuiltValueField(wireName: r'type')
  EdpDocumentItemTypeEnum get type;
  // enum typeEnum {  document,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Item properties, validated against the stream's payloadSchema
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'documentType')
  EdpDocumentItemDocumentTypeEnum get documentType;
  // enum documentTypeEnum {  social-post,  article,  report,  transcript,  note,  };

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'author')
  EdpDocumentItemAuthor? get author;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime? get publishedAt;

  /// Foresignal object references or URLs
  @BuiltValueField(wireName: r'about')
  BuiltList<String>? get about;

  @BuiltValueField(wireName: r'media')
  BuiltList<EdpDocumentItemMediaInner>? get media;

  @BuiltValueField(wireName: r'geometry')
  EdpGeometry? get geometry;

  @BuiltValueField(wireName: r'engagement')
  BuiltMap<String, num?>? get engagement;

  @BuiltValueField(wireName: r'origin')
  EdpOrigin? get origin;

  EdpDocumentItem._();

  factory EdpDocumentItem([void updates(EdpDocumentItemBuilder b)]) =
      _$EdpDocumentItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpDocumentItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpDocumentItem> get serializer =>
      _$EdpDocumentItemSerializer();
}

class _$EdpDocumentItemSerializer
    implements PrimitiveSerializer<EdpDocumentItem> {
  @override
  final Iterable<Type> types = const [EdpDocumentItem, _$EdpDocumentItem];

  @override
  final String wireName = r'EdpDocumentItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpDocumentItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'stream';
    yield serializers.serialize(
      object.stream,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EdpDocumentItemTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'documentType';
    yield serializers.serialize(
      object.documentType,
      specifiedType: const FullType(EdpDocumentItemDocumentTypeEnum),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType.nullable(EdpDocumentItemAuthor),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.about != null) {
      yield r'about';
      yield serializers.serialize(
        object.about,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType(BuiltList, [
          FullType(EdpDocumentItemMediaInner),
        ]),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(EdpGeometry),
      );
    }
    if (object.engagement != null) {
      yield r'engagement';
      yield serializers.serialize(
        object.engagement,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(num),
        ]),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType.nullable(EdpOrigin),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpDocumentItem object, {
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
    required EdpDocumentItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stream':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.stream = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpDocumentItemTypeEnum),
                  )
                  as EdpDocumentItemTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
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
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'documentType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      EdpDocumentItemDocumentTypeEnum,
                    ),
                  )
                  as EdpDocumentItemDocumentTypeEnum;
          result.documentType = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'author':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EdpDocumentItemAuthor,
                    ),
                  )
                  as EdpDocumentItemAuthor?;
          if (valueDes == null) continue;
          result.author.replace(valueDes);
          break;
        case r'language':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'publishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.publishedAt = valueDes;
          break;
        case r'about':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.about.replace(valueDes);
          break;
        case r'media':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EdpDocumentItemMediaInner),
                    ]),
                  )
                  as BuiltList<EdpDocumentItemMediaInner>?;
          if (valueDes == null) continue;
          result.media.replace(valueDes);
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpGeometry),
                  )
                  as EdpGeometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'engagement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(num),
                    ]),
                  )
                  as BuiltMap<String, num?>?;
          if (valueDes == null) continue;
          result.engagement.replace(valueDes);
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpOrigin),
                  )
                  as EdpOrigin?;
          if (valueDes == null) continue;
          result.origin.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpDocumentItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpDocumentItemBuilder();
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

class EdpDocumentItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'document')
  static const EdpDocumentItemTypeEnum document =
      _$edpDocumentItemTypeEnum_document;

  static Serializer<EdpDocumentItemTypeEnum> get serializer =>
      _$edpDocumentItemTypeEnumSerializer;

  const EdpDocumentItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpDocumentItemTypeEnum> get values =>
      _$edpDocumentItemTypeEnumValues;
  static EdpDocumentItemTypeEnum valueOf(String name) =>
      _$edpDocumentItemTypeEnumValueOf(name);
}

class EdpDocumentItemDocumentTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social-post')
  static const EdpDocumentItemDocumentTypeEnum socialPost =
      _$edpDocumentItemDocumentTypeEnum_socialPost;
  @BuiltValueEnumConst(wireName: r'article')
  static const EdpDocumentItemDocumentTypeEnum article =
      _$edpDocumentItemDocumentTypeEnum_article;
  @BuiltValueEnumConst(wireName: r'report')
  static const EdpDocumentItemDocumentTypeEnum report =
      _$edpDocumentItemDocumentTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'transcript')
  static const EdpDocumentItemDocumentTypeEnum transcript =
      _$edpDocumentItemDocumentTypeEnum_transcript;
  @BuiltValueEnumConst(wireName: r'note')
  static const EdpDocumentItemDocumentTypeEnum note =
      _$edpDocumentItemDocumentTypeEnum_note;

  static Serializer<EdpDocumentItemDocumentTypeEnum> get serializer =>
      _$edpDocumentItemDocumentTypeEnumSerializer;

  const EdpDocumentItemDocumentTypeEnum._(String name) : super(name);

  static BuiltSet<EdpDocumentItemDocumentTypeEnum> get values =>
      _$edpDocumentItemDocumentTypeEnumValues;
  static EdpDocumentItemDocumentTypeEnum valueOf(String name) =>
      _$edpDocumentItemDocumentTypeEnumValueOf(name);
}
