// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_story.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NewsStoryBlindspotEnum _$newsStoryBlindspotEnum_left =
    const NewsStoryBlindspotEnum._('left');
const NewsStoryBlindspotEnum _$newsStoryBlindspotEnum_right =
    const NewsStoryBlindspotEnum._('right');
const NewsStoryBlindspotEnum _$newsStoryBlindspotEnum_unknownDefaultOpenApi =
    const NewsStoryBlindspotEnum._('unknownDefaultOpenApi');

NewsStoryBlindspotEnum _$newsStoryBlindspotEnumValueOf(String name) {
  switch (name) {
    case 'left':
      return _$newsStoryBlindspotEnum_left;
    case 'right':
      return _$newsStoryBlindspotEnum_right;
    case 'unknownDefaultOpenApi':
      return _$newsStoryBlindspotEnum_unknownDefaultOpenApi;
    default:
      return _$newsStoryBlindspotEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NewsStoryBlindspotEnum> _$newsStoryBlindspotEnumValues =
    BuiltSet<NewsStoryBlindspotEnum>(const <NewsStoryBlindspotEnum>[
      _$newsStoryBlindspotEnum_left,
      _$newsStoryBlindspotEnum_right,
      _$newsStoryBlindspotEnum_unknownDefaultOpenApi,
    ]);

Serializer<NewsStoryBlindspotEnum> _$newsStoryBlindspotEnumSerializer =
    _$NewsStoryBlindspotEnumSerializer();

class _$NewsStoryBlindspotEnumSerializer
    implements PrimitiveSerializer<NewsStoryBlindspotEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'left': 'left',
    'right': 'right',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'left': 'left',
    'right': 'right',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NewsStoryBlindspotEnum];
  @override
  final String wireName = 'NewsStoryBlindspotEnum';

  @override
  Object serialize(
    Serializers serializers,
    NewsStoryBlindspotEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NewsStoryBlindspotEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NewsStoryBlindspotEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NewsStory extends NewsStory {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String canonicalEventId;
  @override
  final String title;
  @override
  final DateTime firstSeenAt;
  @override
  final DateTime lastSeenAt;
  @override
  final int articleCount;
  @override
  final int? outletCount;
  @override
  final int evidenceGroupCount;
  @override
  final BuiltList<String>? topicIds;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final CoverageStats coverage;
  @override
  final NewsStoryBlindspotEnum? blindspot;
  @override
  final bool corroborated;
  @override
  final BuiltList<String>? situationIds;
  @override
  final BuiltList<NewsStoryOutletsInner>? outlets;
  @override
  final BuiltList<ObjectEnvelope>? situations;
  @override
  final BuiltList<ObjectEnvelope>? canonicalEvents;
  @override
  final String? targetLanguage;
  @override
  final String? translatedTitle;
  @override
  final String? translatedExcerpt;
  @override
  final NewsArticleTranslationProvenance? translationProvenance;

  factory _$NewsStory([void Function(NewsStoryBuilder)? updates]) =>
      (NewsStoryBuilder()..update(updates))._build();

  _$NewsStory._({
    required this.id,
    required this.ref,
    required this.canonicalEventId,
    required this.title,
    required this.firstSeenAt,
    required this.lastSeenAt,
    required this.articleCount,
    this.outletCount,
    required this.evidenceGroupCount,
    this.topicIds,
    this.regionCodes,
    required this.coverage,
    this.blindspot,
    required this.corroborated,
    this.situationIds,
    this.outlets,
    this.situations,
    this.canonicalEvents,
    this.targetLanguage,
    this.translatedTitle,
    this.translatedExcerpt,
    this.translationProvenance,
  }) : super._();
  @override
  NewsStory rebuild(void Function(NewsStoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsStoryBuilder toBuilder() => NewsStoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsStory &&
        id == other.id &&
        ref == other.ref &&
        canonicalEventId == other.canonicalEventId &&
        title == other.title &&
        firstSeenAt == other.firstSeenAt &&
        lastSeenAt == other.lastSeenAt &&
        articleCount == other.articleCount &&
        outletCount == other.outletCount &&
        evidenceGroupCount == other.evidenceGroupCount &&
        topicIds == other.topicIds &&
        regionCodes == other.regionCodes &&
        coverage == other.coverage &&
        blindspot == other.blindspot &&
        corroborated == other.corroborated &&
        situationIds == other.situationIds &&
        outlets == other.outlets &&
        situations == other.situations &&
        canonicalEvents == other.canonicalEvents &&
        targetLanguage == other.targetLanguage &&
        translatedTitle == other.translatedTitle &&
        translatedExcerpt == other.translatedExcerpt &&
        translationProvenance == other.translationProvenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, canonicalEventId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, firstSeenAt.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jc(_$hash, articleCount.hashCode);
    _$hash = $jc(_$hash, outletCount.hashCode);
    _$hash = $jc(_$hash, evidenceGroupCount.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, blindspot.hashCode);
    _$hash = $jc(_$hash, corroborated.hashCode);
    _$hash = $jc(_$hash, situationIds.hashCode);
    _$hash = $jc(_$hash, outlets.hashCode);
    _$hash = $jc(_$hash, situations.hashCode);
    _$hash = $jc(_$hash, canonicalEvents.hashCode);
    _$hash = $jc(_$hash, targetLanguage.hashCode);
    _$hash = $jc(_$hash, translatedTitle.hashCode);
    _$hash = $jc(_$hash, translatedExcerpt.hashCode);
    _$hash = $jc(_$hash, translationProvenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsStory')
          ..add('id', id)
          ..add('ref', ref)
          ..add('canonicalEventId', canonicalEventId)
          ..add('title', title)
          ..add('firstSeenAt', firstSeenAt)
          ..add('lastSeenAt', lastSeenAt)
          ..add('articleCount', articleCount)
          ..add('outletCount', outletCount)
          ..add('evidenceGroupCount', evidenceGroupCount)
          ..add('topicIds', topicIds)
          ..add('regionCodes', regionCodes)
          ..add('coverage', coverage)
          ..add('blindspot', blindspot)
          ..add('corroborated', corroborated)
          ..add('situationIds', situationIds)
          ..add('outlets', outlets)
          ..add('situations', situations)
          ..add('canonicalEvents', canonicalEvents)
          ..add('targetLanguage', targetLanguage)
          ..add('translatedTitle', translatedTitle)
          ..add('translatedExcerpt', translatedExcerpt)
          ..add('translationProvenance', translationProvenance))
        .toString();
  }
}

class NewsStoryBuilder implements Builder<NewsStory, NewsStoryBuilder> {
  _$NewsStory? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _canonicalEventId;
  String? get canonicalEventId => _$this._canonicalEventId;
  set canonicalEventId(String? canonicalEventId) =>
      _$this._canonicalEventId = canonicalEventId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _firstSeenAt;
  DateTime? get firstSeenAt => _$this._firstSeenAt;
  set firstSeenAt(DateTime? firstSeenAt) => _$this._firstSeenAt = firstSeenAt;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  int? _articleCount;
  int? get articleCount => _$this._articleCount;
  set articleCount(int? articleCount) => _$this._articleCount = articleCount;

  int? _outletCount;
  int? get outletCount => _$this._outletCount;
  set outletCount(int? outletCount) => _$this._outletCount = outletCount;

  int? _evidenceGroupCount;
  int? get evidenceGroupCount => _$this._evidenceGroupCount;
  set evidenceGroupCount(int? evidenceGroupCount) =>
      _$this._evidenceGroupCount = evidenceGroupCount;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  CoverageStatsBuilder? _coverage;
  CoverageStatsBuilder get coverage =>
      _$this._coverage ??= CoverageStatsBuilder();
  set coverage(CoverageStatsBuilder? coverage) => _$this._coverage = coverage;

  NewsStoryBlindspotEnum? _blindspot;
  NewsStoryBlindspotEnum? get blindspot => _$this._blindspot;
  set blindspot(NewsStoryBlindspotEnum? blindspot) =>
      _$this._blindspot = blindspot;

  bool? _corroborated;
  bool? get corroborated => _$this._corroborated;
  set corroborated(bool? corroborated) => _$this._corroborated = corroborated;

  ListBuilder<String>? _situationIds;
  ListBuilder<String> get situationIds =>
      _$this._situationIds ??= ListBuilder<String>();
  set situationIds(ListBuilder<String>? situationIds) =>
      _$this._situationIds = situationIds;

  ListBuilder<NewsStoryOutletsInner>? _outlets;
  ListBuilder<NewsStoryOutletsInner> get outlets =>
      _$this._outlets ??= ListBuilder<NewsStoryOutletsInner>();
  set outlets(ListBuilder<NewsStoryOutletsInner>? outlets) =>
      _$this._outlets = outlets;

  ListBuilder<ObjectEnvelope>? _situations;
  ListBuilder<ObjectEnvelope> get situations =>
      _$this._situations ??= ListBuilder<ObjectEnvelope>();
  set situations(ListBuilder<ObjectEnvelope>? situations) =>
      _$this._situations = situations;

  ListBuilder<ObjectEnvelope>? _canonicalEvents;
  ListBuilder<ObjectEnvelope> get canonicalEvents =>
      _$this._canonicalEvents ??= ListBuilder<ObjectEnvelope>();
  set canonicalEvents(ListBuilder<ObjectEnvelope>? canonicalEvents) =>
      _$this._canonicalEvents = canonicalEvents;

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

  NewsStoryBuilder() {
    NewsStory._defaults(this);
  }

  NewsStoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _canonicalEventId = $v.canonicalEventId;
      _title = $v.title;
      _firstSeenAt = $v.firstSeenAt;
      _lastSeenAt = $v.lastSeenAt;
      _articleCount = $v.articleCount;
      _outletCount = $v.outletCount;
      _evidenceGroupCount = $v.evidenceGroupCount;
      _topicIds = $v.topicIds?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _coverage = $v.coverage.toBuilder();
      _blindspot = $v.blindspot;
      _corroborated = $v.corroborated;
      _situationIds = $v.situationIds?.toBuilder();
      _outlets = $v.outlets?.toBuilder();
      _situations = $v.situations?.toBuilder();
      _canonicalEvents = $v.canonicalEvents?.toBuilder();
      _targetLanguage = $v.targetLanguage;
      _translatedTitle = $v.translatedTitle;
      _translatedExcerpt = $v.translatedExcerpt;
      _translationProvenance = $v.translationProvenance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsStory other) {
    _$v = other as _$NewsStory;
  }

  @override
  void update(void Function(NewsStoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsStory build() => _build();

  _$NewsStory _build() {
    _$NewsStory _$result;
    try {
      _$result =
          _$v ??
          _$NewsStory._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'NewsStory', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'NewsStory',
              'ref',
            ),
            canonicalEventId: BuiltValueNullFieldError.checkNotNull(
              canonicalEventId,
              r'NewsStory',
              'canonicalEventId',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'NewsStory',
              'title',
            ),
            firstSeenAt: BuiltValueNullFieldError.checkNotNull(
              firstSeenAt,
              r'NewsStory',
              'firstSeenAt',
            ),
            lastSeenAt: BuiltValueNullFieldError.checkNotNull(
              lastSeenAt,
              r'NewsStory',
              'lastSeenAt',
            ),
            articleCount: BuiltValueNullFieldError.checkNotNull(
              articleCount,
              r'NewsStory',
              'articleCount',
            ),
            outletCount: outletCount,
            evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupCount,
              r'NewsStory',
              'evidenceGroupCount',
            ),
            topicIds: _topicIds?.build(),
            regionCodes: _regionCodes?.build(),
            coverage: coverage.build(),
            blindspot: blindspot,
            corroborated: BuiltValueNullFieldError.checkNotNull(
              corroborated,
              r'NewsStory',
              'corroborated',
            ),
            situationIds: _situationIds?.build(),
            outlets: _outlets?.build(),
            situations: _situations?.build(),
            canonicalEvents: _canonicalEvents?.build(),
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
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'coverage';
        coverage.build();

        _$failedField = 'situationIds';
        _situationIds?.build();
        _$failedField = 'outlets';
        _outlets?.build();
        _$failedField = 'situations';
        _situations?.build();
        _$failedField = 'canonicalEvents';
        _canonicalEvents?.build();

        _$failedField = 'translationProvenance';
        _translationProvenance?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NewsStory',
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
