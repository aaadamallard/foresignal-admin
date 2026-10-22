//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_author.dart';
import 'package:foresignal_api/src/model/social_post_link.dart';
import 'package:foresignal_api/src/model/social_engagement.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_collection_type.dart';
import 'package:foresignal_api/src/model/social_post_geo.dart';
import 'package:foresignal_api/src/model/social_post_media.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_post.g.dart';

/// A stored social post: record identity plus the `social-post` payload; edits are new versions (135)
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [postId] - Platform post id (Bluesky AT-URI rkey path, Mastodon `{instance}/{id}`, …)
/// * [url]
/// * [author]
/// * [authorKey] - HMAC-SHA256 of `{platform}:{accountId}` with the instance social salt; used for distinct-author counts and coordination statistics
/// * [text] - Null once deleted (tombstoned)
/// * [language] - BCP 47; platform-supplied, else detected (Lingua, restricted to `social.languages`)
/// * [createdAt] - Platform creation time
/// * [observedAt] - When Foresignal saw the post
/// * [replyTo]
/// * [quoteOf]
/// * [repostOf]
/// * [links] - Expanded URLs
/// * [hashtags]
/// * [mentions] - Mentioned handles
/// * [media]
/// * [engagement]
/// * [geo]
/// * [channel] - Subreddit, Mastodon instance or YouTube channel
/// * [collection] - How the post was collected; `cue` posts (137) are a targeted sample and never feed baselines
/// * [topicIds] - 117 attention topics the post matched
/// * [cueId] - 137 cue that found the post (`collection = cue`)
/// * [deleted] - Tombstoned by deletion sync: text and media links removed, aggregates kept
/// * [ref] - Record ref `record:{sourceId}/{platform}%3A{postId}`
/// * [sourceId] - Collecting source (adapter id or 024 custom source)
/// * [externalId]
/// * [seq]
/// * [version]
/// * [collectionType]
/// * [narrativeIds] - 136 narratives the post belongs to
@BuiltValue()
abstract class SocialPost implements Built<SocialPost, SocialPostBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  /// Platform post id (Bluesky AT-URI rkey path, Mastodon `{instance}/{id}`, …)
  @BuiltValueField(wireName: r'postId')
  String get postId;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'author')
  SocialAuthor get author;

  /// HMAC-SHA256 of `{platform}:{accountId}` with the instance social salt; used for distinct-author counts and coordination statistics
  @BuiltValueField(wireName: r'authorKey')
  String get authorKey;

  /// Null once deleted (tombstoned)
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// BCP 47; platform-supplied, else detected (Lingua, restricted to `social.languages`)
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Platform creation time
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// When Foresignal saw the post
  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'replyTo')
  SocialPostLink? get replyTo;

  @BuiltValueField(wireName: r'quoteOf')
  SocialPostLink? get quoteOf;

  @BuiltValueField(wireName: r'repostOf')
  SocialPostLink? get repostOf;

  /// Expanded URLs
  @BuiltValueField(wireName: r'links')
  BuiltList<String>? get links;

  @BuiltValueField(wireName: r'hashtags')
  BuiltList<String>? get hashtags;

  /// Mentioned handles
  @BuiltValueField(wireName: r'mentions')
  BuiltList<String>? get mentions;

  @BuiltValueField(wireName: r'media')
  BuiltList<SocialPostMedia>? get media;

  @BuiltValueField(wireName: r'engagement')
  SocialEngagement? get engagement;

  @BuiltValueField(wireName: r'geo')
  SocialPostGeo? get geo;

  /// Subreddit, Mastodon instance or YouTube channel
  @BuiltValueField(wireName: r'channel')
  String? get channel;

  /// How the post was collected; `cue` posts (137) are a targeted sample and never feed baselines
  @BuiltValueField(wireName: r'collection')
  SocialPostCollectionEnum get collection;
  // enum collectionEnum {  stream,  search,  sample,  cue,  import,  };

  /// 117 attention topics the post matched
  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  /// 137 cue that found the post (`collection = cue`)
  @BuiltValueField(wireName: r'cueId')
  String? get cueId;

  /// Tombstoned by deletion sync: text and media links removed, aggregates kept
  @BuiltValueField(wireName: r'deleted')
  bool get deleted;

  /// Record ref `record:{sourceId}/{platform}%3A{postId}`
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Collecting source (adapter id or 024 custom source)
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'collectionType')
  SocialCollectionType? get collectionType;
  // enum collectionTypeEnum {  complete,  paged,  sampled,  };

  /// 136 narratives the post belongs to
  @BuiltValueField(wireName: r'narrativeIds')
  BuiltList<String>? get narrativeIds;

  SocialPost._();

  factory SocialPost([void updates(SocialPostBuilder b)]) = _$SocialPost;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPostBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPost> get serializer => _$SocialPostSerializer();
}

class _$SocialPostSerializer implements PrimitiveSerializer<SocialPost> {
  @override
  final Iterable<Type> types = const [SocialPost, _$SocialPost];

  @override
  final String wireName = r'SocialPost';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPost object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'postId';
    yield serializers.serialize(
      object.postId,
      specifiedType: const FullType(String),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'author';
    yield serializers.serialize(
      object.author,
      specifiedType: const FullType(SocialAuthor),
    );
    yield r'authorKey';
    yield serializers.serialize(
      object.authorKey,
      specifiedType: const FullType(String),
    );
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
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
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.replyTo != null) {
      yield r'replyTo';
      yield serializers.serialize(
        object.replyTo,
        specifiedType: const FullType.nullable(SocialPostLink),
      );
    }
    if (object.quoteOf != null) {
      yield r'quoteOf';
      yield serializers.serialize(
        object.quoteOf,
        specifiedType: const FullType.nullable(SocialPostLink),
      );
    }
    if (object.repostOf != null) {
      yield r'repostOf';
      yield serializers.serialize(
        object.repostOf,
        specifiedType: const FullType.nullable(SocialPostLink),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.hashtags != null) {
      yield r'hashtags';
      yield serializers.serialize(
        object.hashtags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mentions != null) {
      yield r'mentions';
      yield serializers.serialize(
        object.mentions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType(BuiltList, [FullType(SocialPostMedia)]),
      );
    }
    if (object.engagement != null) {
      yield r'engagement';
      yield serializers.serialize(
        object.engagement,
        specifiedType: const FullType.nullable(SocialEngagement),
      );
    }
    if (object.geo != null) {
      yield r'geo';
      yield serializers.serialize(
        object.geo,
        specifiedType: const FullType.nullable(SocialPostGeo),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'collection';
    yield serializers.serialize(
      object.collection,
      specifiedType: const FullType(SocialPostCollectionEnum),
    );
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.cueId != null) {
      yield r'cueId';
      yield serializers.serialize(
        object.cueId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'deleted';
    yield serializers.serialize(
      object.deleted,
      specifiedType: const FullType(bool),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'seq';
    yield serializers.serialize(
      object.seq,
      specifiedType: const FullType(int),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.collectionType != null) {
      yield r'collectionType';
      yield serializers.serialize(
        object.collectionType,
        specifiedType: const FullType(SocialCollectionType),
      );
    }
    if (object.narrativeIds != null) {
      yield r'narrativeIds';
      yield serializers.serialize(
        object.narrativeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPost object, {
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
    required SocialPostBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        case r'postId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postId = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialAuthor),
          ) as SocialAuthor;
          result.author.replace(valueDes);
          break;
        case r'authorKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorKey = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.observedAt = valueDes;
          break;
        case r'replyTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPostLink),
          ) as SocialPostLink?;
          if (valueDes == null) continue;
          result.replyTo.replace(valueDes);
          break;
        case r'quoteOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPostLink),
          ) as SocialPostLink?;
          if (valueDes == null) continue;
          result.quoteOf.replace(valueDes);
          break;
        case r'repostOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPostLink),
          ) as SocialPostLink?;
          if (valueDes == null) continue;
          result.repostOf.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'hashtags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hashtags.replace(valueDes);
          break;
        case r'mentions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mentions.replace(valueDes);
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(SocialPostMedia)]),
          ) as BuiltList<SocialPostMedia>?;
          if (valueDes == null) continue;
          result.media.replace(valueDes);
          break;
        case r'engagement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialEngagement),
          ) as SocialEngagement?;
          if (valueDes == null) continue;
          result.engagement.replace(valueDes);
          break;
        case r'geo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPostGeo),
          ) as SocialPostGeo?;
          if (valueDes == null) continue;
          result.geo.replace(valueDes);
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.channel = valueDes;
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialPostCollectionEnum),
          ) as SocialPostCollectionEnum;
          result.collection = valueDes;
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
        case r'cueId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cueId = valueDes;
          break;
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleted = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seq = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'collectionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialCollectionType),
          ) as SocialCollectionType?;
          if (valueDes == null) continue;
          result.collectionType = valueDes;
          break;
        case r'narrativeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.narrativeIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPost deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPostBuilder();
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

/// How the post was collected; `cue` posts (137) are a targeted sample and never feed baselines
class SocialPostCollectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'stream')
  static const SocialPostCollectionEnum stream =
      _$socialPostCollectionEnum_stream;
  @BuiltValueEnumConst(wireName: r'search')
  static const SocialPostCollectionEnum search =
      _$socialPostCollectionEnum_search;
  @BuiltValueEnumConst(wireName: r'sample')
  static const SocialPostCollectionEnum sample =
      _$socialPostCollectionEnum_sample;
  @BuiltValueEnumConst(wireName: r'cue')
  static const SocialPostCollectionEnum cue = _$socialPostCollectionEnum_cue;
  @BuiltValueEnumConst(wireName: r'import')
  static const SocialPostCollectionEnum import_ =
      _$socialPostCollectionEnum_import_;

  static Serializer<SocialPostCollectionEnum> get serializer =>
      _$socialPostCollectionEnumSerializer;

  const SocialPostCollectionEnum._(String name) : super(name);

  static BuiltSet<SocialPostCollectionEnum> get values =>
      _$socialPostCollectionEnumValues;
  static SocialPostCollectionEnum valueOf(String name) =>
      _$socialPostCollectionEnumValueOf(name);
}
