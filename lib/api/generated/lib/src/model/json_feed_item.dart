//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/json_feed_item_authors_inner.dart';
import 'package:foresignal_api/src/model/json_feed_item_foresignal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_feed_item.g.dart';

/// One JSON Feed item (alert or briefing run) with the `_foresignal` extension (058)
///
/// Properties:
/// * [id]
/// * [url] - Client deep link, else `publicBaseUrl/v1/alerts/{id}`
/// * [title]
/// * [contentHtml] - Markdown rendered with commonmark-java and sanitised by the allowlist policy
/// * [contentText]
/// * [datePublished] - `firedAt` (alerts) or run start
/// * [dateModified] - Last lifecycle change
/// * [tags] - Severity and rule tags
/// * [authors]
/// * [foresignal]
@BuiltValue()
abstract class JsonFeedItem
    implements Built<JsonFeedItem, JsonFeedItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Client deep link, else `publicBaseUrl/v1/alerts/{id}`
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Markdown rendered with commonmark-java and sanitised by the allowlist policy
  @BuiltValueField(wireName: r'content_html')
  String? get contentHtml;

  @BuiltValueField(wireName: r'content_text')
  String? get contentText;

  /// `firedAt` (alerts) or run start
  @BuiltValueField(wireName: r'date_published')
  DateTime? get datePublished;

  /// Last lifecycle change
  @BuiltValueField(wireName: r'date_modified')
  DateTime? get dateModified;

  /// Severity and rule tags
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'authors')
  BuiltList<JsonFeedItemAuthorsInner>? get authors;

  @BuiltValueField(wireName: r'_foresignal')
  JsonFeedItemForesignal? get foresignal;

  JsonFeedItem._();

  factory JsonFeedItem([void updates(JsonFeedItemBuilder b)]) = _$JsonFeedItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonFeedItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonFeedItem> get serializer => _$JsonFeedItemSerializer();
}

class _$JsonFeedItemSerializer implements PrimitiveSerializer<JsonFeedItem> {
  @override
  final Iterable<Type> types = const [JsonFeedItem, _$JsonFeedItem];

  @override
  final String wireName = r'JsonFeedItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonFeedItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.contentHtml != null) {
      yield r'content_html';
      yield serializers.serialize(
        object.contentHtml,
        specifiedType: const FullType(String),
      );
    }
    if (object.contentText != null) {
      yield r'content_text';
      yield serializers.serialize(
        object.contentText,
        specifiedType: const FullType(String),
      );
    }
    if (object.datePublished != null) {
      yield r'date_published';
      yield serializers.serialize(
        object.datePublished,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.dateModified != null) {
      yield r'date_modified';
      yield serializers.serialize(
        object.dateModified,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType:
            const FullType(BuiltList, [FullType(JsonFeedItemAuthorsInner)]),
      );
    }
    if (object.foresignal != null) {
      yield r'_foresignal';
      yield serializers.serialize(
        object.foresignal,
        specifiedType: const FullType(JsonFeedItemForesignal),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonFeedItem object, {
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
    required JsonFeedItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'content_html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentHtml = valueDes;
          break;
        case r'content_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentText = valueDes;
          break;
        case r'date_published':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.datePublished = valueDes;
          break;
        case r'date_modified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dateModified = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(JsonFeedItemAuthorsInner)]),
          ) as BuiltList<JsonFeedItemAuthorsInner>?;
          if (valueDes == null) continue;
          result.authors.replace(valueDes);
          break;
        case r'_foresignal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonFeedItemForesignal),
          ) as JsonFeedItemForesignal?;
          if (valueDes == null) continue;
          result.foresignal.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonFeedItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonFeedItemBuilder();
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
