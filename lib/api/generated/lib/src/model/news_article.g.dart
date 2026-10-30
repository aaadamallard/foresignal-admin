// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsArticle extends NewsArticle {
  @override
  final String ref;
  @override
  final String externalId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String domain;
  @override
  final String? outletId;
  @override
  final String? outletName;
  @override
  final String? language;
  @override
  final String? sourceCountry;
  @override
  final DateTime seenAt;
  @override
  final DateTime? publishedAt;
  @override
  final BuiltList<String>? topicIds;
  @override
  final String? summary;
  @override
  final String? imageUrl;
  @override
  final String? storyId;
  @override
  final String? evidenceGroupId;
  @override
  final bool? syndicated;
  @override
  final String sourceId;
  @override
  final String? targetLanguage;
  @override
  final String? translatedTitle;
  @override
  final String? translatedExcerpt;
  @override
  final NewsArticleTranslationProvenance? translationProvenance;

  factory _$NewsArticle([void Function(NewsArticleBuilder)? updates]) =>
      (NewsArticleBuilder()..update(updates))._build();

  _$NewsArticle._({
    required this.ref,
    required this.externalId,
    required this.title,
    required this.url,
    required this.domain,
    this.outletId,
    this.outletName,
    this.language,
    this.sourceCountry,
    required this.seenAt,
    this.publishedAt,
    this.topicIds,
    this.summary,
    this.imageUrl,
    this.storyId,
    this.evidenceGroupId,
    this.syndicated,
    required this.sourceId,
    this.targetLanguage,
    this.translatedTitle,
    this.translatedExcerpt,
    this.translationProvenance,
  }) : super._();
  @override
  NewsArticle rebuild(void Function(NewsArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsArticleBuilder toBuilder() => NewsArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsArticle &&
        ref == other.ref &&
        externalId == other.externalId &&
        title == other.title &&
        url == other.url &&
        domain == other.domain &&
        outletId == other.outletId &&
        outletName == other.outletName &&
        language == other.language &&
        sourceCountry == other.sourceCountry &&
        seenAt == other.seenAt &&
        publishedAt == other.publishedAt &&
        topicIds == other.topicIds &&
        summary == other.summary &&
        imageUrl == other.imageUrl &&
        storyId == other.storyId &&
        evidenceGroupId == other.evidenceGroupId &&
        syndicated == other.syndicated &&
        sourceId == other.sourceId &&
        targetLanguage == other.targetLanguage &&
        translatedTitle == other.translatedTitle &&
        translatedExcerpt == other.translatedExcerpt &&
        translationProvenance == other.translationProvenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, outletId.hashCode);
    _$hash = $jc(_$hash, outletName.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, sourceCountry.hashCode);
    _$hash = $jc(_$hash, seenAt.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, storyId.hashCode);
    _$hash = $jc(_$hash, evidenceGroupId.hashCode);
    _$hash = $jc(_$hash, syndicated.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, targetLanguage.hashCode);
    _$hash = $jc(_$hash, translatedTitle.hashCode);
    _$hash = $jc(_$hash, translatedExcerpt.hashCode);
    _$hash = $jc(_$hash, translationProvenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsArticle')
          ..add('ref', ref)
          ..add('externalId', externalId)
          ..add('title', title)
          ..add('url', url)
          ..add('domain', domain)
          ..add('outletId', outletId)
          ..add('outletName', outletName)
          ..add('language', language)
          ..add('sourceCountry', sourceCountry)
          ..add('seenAt', seenAt)
          ..add('publishedAt', publishedAt)
          ..add('topicIds', topicIds)
          ..add('summary', summary)
          ..add('imageUrl', imageUrl)
          ..add('storyId', storyId)
          ..add('evidenceGroupId', evidenceGroupId)
          ..add('syndicated', syndicated)
          ..add('sourceId', sourceId)
          ..add('targetLanguage', targetLanguage)
          ..add('translatedTitle', translatedTitle)
          ..add('translatedExcerpt', translatedExcerpt)
          ..add('translationProvenance', translationProvenance))
        .toString();
  }
}

class NewsArticleBuilder implements Builder<NewsArticle, NewsArticleBuilder> {
  _$NewsArticle? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _outletId;
  String? get outletId => _$this._outletId;
  set outletId(String? outletId) => _$this._outletId = outletId;

  String? _outletName;
  String? get outletName => _$this._outletName;
  set outletName(String? outletName) => _$this._outletName = outletName;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _sourceCountry;
  String? get sourceCountry => _$this._sourceCountry;
  set sourceCountry(String? sourceCountry) =>
      _$this._sourceCountry = sourceCountry;

  DateTime? _seenAt;
  DateTime? get seenAt => _$this._seenAt;
  set seenAt(DateTime? seenAt) => _$this._seenAt = seenAt;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _storyId;
  String? get storyId => _$this._storyId;
  set storyId(String? storyId) => _$this._storyId = storyId;

  String? _evidenceGroupId;
  String? get evidenceGroupId => _$this._evidenceGroupId;
  set evidenceGroupId(String? evidenceGroupId) =>
      _$this._evidenceGroupId = evidenceGroupId;

  bool? _syndicated;
  bool? get syndicated => _$this._syndicated;
  set syndicated(bool? syndicated) => _$this._syndicated = syndicated;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _targetLanguage;
  String? get targetLanguage => _$this._targetLanguage;
  set targetLanguage(String? targetLanguage) =>
      _$this._targetLanguage = targetLanguage;

  String? _translatedTitle;
  String? get translatedTitle => _$this._translatedTitle;
  set translatedTitle(String? translatedTitle) =>
      _$this._translatedTitle = translatedTitle;

  String? _translatedExcerpt;
  String? get translatedExcerpt => _$this._translatedExcerpt;
  set translatedExcerpt(String? translatedExcerpt) =>
      _$this._translatedExcerpt = translatedExcerpt;

  NewsArticleTranslationProvenanceBuilder? _translationProvenance;
  NewsArticleTranslationProvenanceBuilder get translationProvenance =>
      _$this._translationProvenance ??=
          NewsArticleTranslationProvenanceBuilder();
  set translationProvenance(
    NewsArticleTranslationProvenanceBuilder? translationProvenance,
  ) => _$this._translationProvenance = translationProvenance;

  NewsArticleBuilder() {
    NewsArticle._defaults(this);
  }

  NewsArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _externalId = $v.externalId;
      _title = $v.title;
      _url = $v.url;
      _domain = $v.domain;
      _outletId = $v.outletId;
      _outletName = $v.outletName;
      _language = $v.language;
      _sourceCountry = $v.sourceCountry;
      _seenAt = $v.seenAt;
      _publishedAt = $v.publishedAt;
      _topicIds = $v.topicIds?.toBuilder();
      _summary = $v.summary;
      _imageUrl = $v.imageUrl;
      _storyId = $v.storyId;
      _evidenceGroupId = $v.evidenceGroupId;
      _syndicated = $v.syndicated;
      _sourceId = $v.sourceId;
      _targetLanguage = $v.targetLanguage;
      _translatedTitle = $v.translatedTitle;
      _translatedExcerpt = $v.translatedExcerpt;
      _translationProvenance = $v.translationProvenance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsArticle other) {
    _$v = other as _$NewsArticle;
  }

  @override
  void update(void Function(NewsArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsArticle build() => _build();

  _$NewsArticle _build() {
    _$NewsArticle _$result;
    try {
      _$result =
          _$v ??
          _$NewsArticle._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'NewsArticle',
              'ref',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'NewsArticle',
              'externalId',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'NewsArticle',
              'title',
            ),
            url: BuiltValueNullFieldError.checkNotNull(
              url,
              r'NewsArticle',
              'url',
            ),
            domain: BuiltValueNullFieldError.checkNotNull(
              domain,
              r'NewsArticle',
              'domain',
            ),
            outletId: outletId,
            outletName: outletName,
            language: language,
            sourceCountry: sourceCountry,
            seenAt: BuiltValueNullFieldError.checkNotNull(
              seenAt,
              r'NewsArticle',
              'seenAt',
            ),
            publishedAt: publishedAt,
            topicIds: _topicIds?.build(),
            summary: summary,
            imageUrl: imageUrl,
            storyId: storyId,
            evidenceGroupId: evidenceGroupId,
            syndicated: syndicated,
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'NewsArticle',
              'sourceId',
            ),
            targetLanguage: targetLanguage,
            translatedTitle: translatedTitle,
            translatedExcerpt: translatedExcerpt,
            translationProvenance: _translationProvenance?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topicIds';
        _topicIds?.build();

        _$failedField = 'translationProvenance';
        _translationProvenance?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NewsArticle',
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
