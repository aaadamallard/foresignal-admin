// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_post_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialPostPayloadCollectionEnum _$socialPostPayloadCollectionEnum_stream =
    const SocialPostPayloadCollectionEnum._('stream');
const SocialPostPayloadCollectionEnum _$socialPostPayloadCollectionEnum_search =
    const SocialPostPayloadCollectionEnum._('search');
const SocialPostPayloadCollectionEnum _$socialPostPayloadCollectionEnum_sample =
    const SocialPostPayloadCollectionEnum._('sample');
const SocialPostPayloadCollectionEnum _$socialPostPayloadCollectionEnum_cue =
    const SocialPostPayloadCollectionEnum._('cue');
const SocialPostPayloadCollectionEnum
_$socialPostPayloadCollectionEnum_import_ =
    const SocialPostPayloadCollectionEnum._('import_');
const SocialPostPayloadCollectionEnum
_$socialPostPayloadCollectionEnum_unknownDefaultOpenApi =
    const SocialPostPayloadCollectionEnum._('unknownDefaultOpenApi');

SocialPostPayloadCollectionEnum _$socialPostPayloadCollectionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'stream':
      return _$socialPostPayloadCollectionEnum_stream;
    case 'search':
      return _$socialPostPayloadCollectionEnum_search;
    case 'sample':
      return _$socialPostPayloadCollectionEnum_sample;
    case 'cue':
      return _$socialPostPayloadCollectionEnum_cue;
    case 'import_':
      return _$socialPostPayloadCollectionEnum_import_;
    case 'unknownDefaultOpenApi':
      return _$socialPostPayloadCollectionEnum_unknownDefaultOpenApi;
    default:
      return _$socialPostPayloadCollectionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialPostPayloadCollectionEnum>
_$socialPostPayloadCollectionEnumValues =
    BuiltSet<SocialPostPayloadCollectionEnum>(
      const <SocialPostPayloadCollectionEnum>[
        _$socialPostPayloadCollectionEnum_stream,
        _$socialPostPayloadCollectionEnum_search,
        _$socialPostPayloadCollectionEnum_sample,
        _$socialPostPayloadCollectionEnum_cue,
        _$socialPostPayloadCollectionEnum_import_,
        _$socialPostPayloadCollectionEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SocialPostPayloadCollectionEnum>
_$socialPostPayloadCollectionEnumSerializer =
    _$SocialPostPayloadCollectionEnumSerializer();

class _$SocialPostPayloadCollectionEnumSerializer
    implements PrimitiveSerializer<SocialPostPayloadCollectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stream': 'stream',
    'search': 'search',
    'sample': 'sample',
    'cue': 'cue',
    'import_': 'import',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stream': 'stream',
    'search': 'search',
    'sample': 'sample',
    'cue': 'cue',
    'import': 'import_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialPostPayloadCollectionEnum];
  @override
  final String wireName = 'SocialPostPayloadCollectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialPostPayloadCollectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialPostPayloadCollectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialPostPayloadCollectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialPostPayload extends SocialPostPayload {
  @override
  final String platform;
  @override
  final String postId;
  @override
  final String? url;
  @override
  final SocialAuthor author;
  @override
  final String authorKey;
  @override
  final String? text;
  @override
  final String? language;
  @override
  final DateTime createdAt;
  @override
  final DateTime observedAt;
  @override
  final SocialPostLink? replyTo;
  @override
  final SocialPostLink? quoteOf;
  @override
  final SocialPostLink? repostOf;
  @override
  final BuiltList<String>? links;
  @override
  final BuiltList<String>? hashtags;
  @override
  final BuiltList<String>? mentions;
  @override
  final BuiltList<SocialPostMedia>? media;
  @override
  final SocialEngagement? engagement;
  @override
  final SocialPostGeo? geo;
  @override
  final String? channel;
  @override
  final SocialPostPayloadCollectionEnum collection;
  @override
  final BuiltList<String>? topicIds;
  @override
  final String? cueId;
  @override
  final bool deleted;

  factory _$SocialPostPayload([
    void Function(SocialPostPayloadBuilder)? updates,
  ]) => (SocialPostPayloadBuilder()..update(updates))._build();

  _$SocialPostPayload._({
    required this.platform,
    required this.postId,
    this.url,
    required this.author,
    required this.authorKey,
    this.text,
    this.language,
    required this.createdAt,
    required this.observedAt,
    this.replyTo,
    this.quoteOf,
    this.repostOf,
    this.links,
    this.hashtags,
    this.mentions,
    this.media,
    this.engagement,
    this.geo,
    this.channel,
    required this.collection,
    this.topicIds,
    this.cueId,
    required this.deleted,
  }) : super._();
  @override
  SocialPostPayload rebuild(void Function(SocialPostPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPostPayloadBuilder toBuilder() =>
      SocialPostPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPostPayload &&
        platform == other.platform &&
        postId == other.postId &&
        url == other.url &&
        author == other.author &&
        authorKey == other.authorKey &&
        text == other.text &&
        language == other.language &&
        createdAt == other.createdAt &&
        observedAt == other.observedAt &&
        replyTo == other.replyTo &&
        quoteOf == other.quoteOf &&
        repostOf == other.repostOf &&
        links == other.links &&
        hashtags == other.hashtags &&
        mentions == other.mentions &&
        media == other.media &&
        engagement == other.engagement &&
        geo == other.geo &&
        channel == other.channel &&
        collection == other.collection &&
        topicIds == other.topicIds &&
        cueId == other.cueId &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, authorKey.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, replyTo.hashCode);
    _$hash = $jc(_$hash, quoteOf.hashCode);
    _$hash = $jc(_$hash, repostOf.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, hashtags.hashCode);
    _$hash = $jc(_$hash, mentions.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, engagement.hashCode);
    _$hash = $jc(_$hash, geo.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, cueId.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPostPayload')
          ..add('platform', platform)
          ..add('postId', postId)
          ..add('url', url)
          ..add('author', author)
          ..add('authorKey', authorKey)
          ..add('text', text)
          ..add('language', language)
          ..add('createdAt', createdAt)
          ..add('observedAt', observedAt)
          ..add('replyTo', replyTo)
          ..add('quoteOf', quoteOf)
          ..add('repostOf', repostOf)
          ..add('links', links)
          ..add('hashtags', hashtags)
          ..add('mentions', mentions)
          ..add('media', media)
          ..add('engagement', engagement)
          ..add('geo', geo)
          ..add('channel', channel)
          ..add('collection', collection)
          ..add('topicIds', topicIds)
          ..add('cueId', cueId)
          ..add('deleted', deleted))
        .toString();
  }
}

class SocialPostPayloadBuilder
    implements Builder<SocialPostPayload, SocialPostPayloadBuilder> {
  _$SocialPostPayload? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  SocialAuthorBuilder? _author;
  SocialAuthorBuilder get author => _$this._author ??= SocialAuthorBuilder();
  set author(SocialAuthorBuilder? author) => _$this._author = author;

  String? _authorKey;
  String? get authorKey => _$this._authorKey;
  set authorKey(String? authorKey) => _$this._authorKey = authorKey;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  SocialPostLinkBuilder? _replyTo;
  SocialPostLinkBuilder get replyTo =>
      _$this._replyTo ??= SocialPostLinkBuilder();
  set replyTo(SocialPostLinkBuilder? replyTo) => _$this._replyTo = replyTo;

  SocialPostLinkBuilder? _quoteOf;
  SocialPostLinkBuilder get quoteOf =>
      _$this._quoteOf ??= SocialPostLinkBuilder();
  set quoteOf(SocialPostLinkBuilder? quoteOf) => _$this._quoteOf = quoteOf;

  SocialPostLinkBuilder? _repostOf;
  SocialPostLinkBuilder get repostOf =>
      _$this._repostOf ??= SocialPostLinkBuilder();
  set repostOf(SocialPostLinkBuilder? repostOf) => _$this._repostOf = repostOf;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  ListBuilder<String>? _hashtags;
  ListBuilder<String> get hashtags =>
      _$this._hashtags ??= ListBuilder<String>();
  set hashtags(ListBuilder<String>? hashtags) => _$this._hashtags = hashtags;

  ListBuilder<String>? _mentions;
  ListBuilder<String> get mentions =>
      _$this._mentions ??= ListBuilder<String>();
  set mentions(ListBuilder<String>? mentions) => _$this._mentions = mentions;

  ListBuilder<SocialPostMedia>? _media;
  ListBuilder<SocialPostMedia> get media =>
      _$this._media ??= ListBuilder<SocialPostMedia>();
  set media(ListBuilder<SocialPostMedia>? media) => _$this._media = media;

  SocialEngagementBuilder? _engagement;
  SocialEngagementBuilder get engagement =>
      _$this._engagement ??= SocialEngagementBuilder();
  set engagement(SocialEngagementBuilder? engagement) =>
      _$this._engagement = engagement;

  SocialPostGeoBuilder? _geo;
  SocialPostGeoBuilder get geo => _$this._geo ??= SocialPostGeoBuilder();
  set geo(SocialPostGeoBuilder? geo) => _$this._geo = geo;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  SocialPostPayloadCollectionEnum? _collection;
  SocialPostPayloadCollectionEnum? get collection => _$this._collection;
  set collection(SocialPostPayloadCollectionEnum? collection) =>
      _$this._collection = collection;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  String? _cueId;
  String? get cueId => _$this._cueId;
  set cueId(String? cueId) => _$this._cueId = cueId;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  SocialPostPayloadBuilder() {
    SocialPostPayload._defaults(this);
  }

  SocialPostPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _postId = $v.postId;
      _url = $v.url;
      _author = $v.author.toBuilder();
      _authorKey = $v.authorKey;
      _text = $v.text;
      _language = $v.language;
      _createdAt = $v.createdAt;
      _observedAt = $v.observedAt;
      _replyTo = $v.replyTo?.toBuilder();
      _quoteOf = $v.quoteOf?.toBuilder();
      _repostOf = $v.repostOf?.toBuilder();
      _links = $v.links?.toBuilder();
      _hashtags = $v.hashtags?.toBuilder();
      _mentions = $v.mentions?.toBuilder();
      _media = $v.media?.toBuilder();
      _engagement = $v.engagement?.toBuilder();
      _geo = $v.geo?.toBuilder();
      _channel = $v.channel;
      _collection = $v.collection;
      _topicIds = $v.topicIds?.toBuilder();
      _cueId = $v.cueId;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPostPayload other) {
    _$v = other as _$SocialPostPayload;
  }

  @override
  void update(void Function(SocialPostPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPostPayload build() => _build();

  _$SocialPostPayload _build() {
    _$SocialPostPayload _$result;
    try {
      _$result =
          _$v ??
          _$SocialPostPayload._(
            platform: BuiltValueNullFieldError.checkNotNull(
              platform,
              r'SocialPostPayload',
              'platform',
            ),
            postId: BuiltValueNullFieldError.checkNotNull(
              postId,
              r'SocialPostPayload',
              'postId',
            ),
            url: url,
            author: author.build(),
            authorKey: BuiltValueNullFieldError.checkNotNull(
              authorKey,
              r'SocialPostPayload',
              'authorKey',
            ),
            text: text,
            language: language,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'SocialPostPayload',
              'createdAt',
            ),
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'SocialPostPayload',
              'observedAt',
            ),
            replyTo: _replyTo?.build(),
            quoteOf: _quoteOf?.build(),
            repostOf: _repostOf?.build(),
            links: _links?.build(),
            hashtags: _hashtags?.build(),
            mentions: _mentions?.build(),
            media: _media?.build(),
            engagement: _engagement?.build(),
            geo: _geo?.build(),
            channel: channel,
            collection: BuiltValueNullFieldError.checkNotNull(
              collection,
              r'SocialPostPayload',
              'collection',
            ),
            topicIds: _topicIds?.build(),
            cueId: cueId,
            deleted: BuiltValueNullFieldError.checkNotNull(
              deleted,
              r'SocialPostPayload',
              'deleted',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();

        _$failedField = 'replyTo';
        _replyTo?.build();
        _$failedField = 'quoteOf';
        _quoteOf?.build();
        _$failedField = 'repostOf';
        _repostOf?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'hashtags';
        _hashtags?.build();
        _$failedField = 'mentions';
        _mentions?.build();
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'engagement';
        _engagement?.build();
        _$failedField = 'geo';
        _geo?.build();

        _$failedField = 'topicIds';
        _topicIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialPostPayload',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
