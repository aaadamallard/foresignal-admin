//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_article.g.dart';

/// A news article (metadata only; no body, no bylines or author names)
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [externalId] - sha256 of the canonicalised URL
/// * [title]
/// * [url]
/// * [domain]
/// * [outletId]
/// * [outletName]
/// * [language]
/// * [sourceCountry]
/// * [seenAt]
/// * [publishedAt]
/// * [topicIds]
/// * [summary] - Feed summary only
/// * [imageUrl] - Link only
/// * [storyId] - ULID identifier
/// * [evidenceGroupId]
/// * [syndicated] - Reprint of a wire story
/// * [sourceId] - `gdelt-articles` or a `news-feed-*` source
@BuiltValue()
abstract class NewsArticle implements Built<NewsArticle, NewsArticleBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// sha256 of the canonicalised URL
  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'outletId')
  String? get outletId;

  @BuiltValueField(wireName: r'outletName')
  String? get outletName;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'sourceCountry')
  String? get sourceCountry;

  @BuiltValueField(wireName: r'seenAt')
  DateTime get seenAt;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime? get publishedAt;

  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  /// Feed summary only
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  /// Link only
  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  /// ULID identifier
  @BuiltValueField(wireName: r'storyId')
  String? get storyId;

  @BuiltValueField(wireName: r'evidenceGroupId')
  String? get evidenceGroupId;

  /// Reprint of a wire story
  @BuiltValueField(wireName: r'syndicated')
  bool? get syndicated;

  /// `gdelt-articles` or a `news-feed-*` source
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  NewsArticle._();

  factory NewsArticle([void updates(NewsArticleBuilder b)]) = _$NewsArticle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsArticleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsArticle> get serializer => _$NewsArticleSerializer();
}

class _$NewsArticleSerializer implements PrimitiveSerializer<NewsArticle> {
  @override
  final Iterable<Type> types = const [NewsArticle, _$NewsArticle];

  @override
  final String wireName = r'NewsArticle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsArticle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    if (object.outletId != null) {
      yield r'outletId';
      yield serializers.serialize(
        object.outletId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.outletName != null) {
      yield r'outletName';
      yield serializers.serialize(
        object.outletName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceCountry != null) {
      yield r'sourceCountry';
      yield serializers.serialize(
        object.sourceCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'seenAt';
    yield serializers.serialize(
      object.seenAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.storyId != null) {
      yield r'storyId';
      yield serializers.serialize(
        object.storyId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.evidenceGroupId != null) {
      yield r'evidenceGroupId';
      yield serializers.serialize(
        object.evidenceGroupId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.syndicated != null) {
      yield r'syndicated';
      yield serializers.serialize(
        object.syndicated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsArticle object, {
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
    required NewsArticleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'outletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.outletId = valueDes;
          break;
        case r'outletName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.outletName = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'sourceCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceCountry = valueDes;
          break;
        case r'seenAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.seenAt = valueDes;
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.publishedAt = valueDes;
          break;
        case r'topicIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topicIds.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'storyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.storyId = valueDes;
          break;
        case r'evidenceGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.evidenceGroupId = valueDes;
          break;
        case r'syndicated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.syndicated = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsArticle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsArticleBuilder();
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
