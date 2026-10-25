// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NarrativeStatusEnum _$narrativeStatusEnum_unassessed =
    const NarrativeStatusEnum._('unassessed');
const NarrativeStatusEnum _$narrativeStatusEnum_pending =
    const NarrativeStatusEnum._('pending');
const NarrativeStatusEnum _$narrativeStatusEnum_corroborated =
    const NarrativeStatusEnum._('corroborated');
const NarrativeStatusEnum _$narrativeStatusEnum_unobserved =
    const NarrativeStatusEnum._('unobserved');
const NarrativeStatusEnum _$narrativeStatusEnum_contradicted =
    const NarrativeStatusEnum._('contradicted');
const NarrativeStatusEnum _$narrativeStatusEnum_mixed =
    const NarrativeStatusEnum._('mixed');
const NarrativeStatusEnum _$narrativeStatusEnum_insufficientCoverage =
    const NarrativeStatusEnum._('insufficientCoverage');
const NarrativeStatusEnum _$narrativeStatusEnum_unknownDefaultOpenApi =
    const NarrativeStatusEnum._('unknownDefaultOpenApi');

NarrativeStatusEnum _$narrativeStatusEnumValueOf(String name) {
  switch (name) {
    case 'unassessed':
      return _$narrativeStatusEnum_unassessed;
    case 'pending':
      return _$narrativeStatusEnum_pending;
    case 'corroborated':
      return _$narrativeStatusEnum_corroborated;
    case 'unobserved':
      return _$narrativeStatusEnum_unobserved;
    case 'contradicted':
      return _$narrativeStatusEnum_contradicted;
    case 'mixed':
      return _$narrativeStatusEnum_mixed;
    case 'insufficientCoverage':
      return _$narrativeStatusEnum_insufficientCoverage;
    case 'unknownDefaultOpenApi':
      return _$narrativeStatusEnum_unknownDefaultOpenApi;
    default:
      return _$narrativeStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NarrativeStatusEnum> _$narrativeStatusEnumValues =
    BuiltSet<NarrativeStatusEnum>(const <NarrativeStatusEnum>[
      _$narrativeStatusEnum_unassessed,
      _$narrativeStatusEnum_pending,
      _$narrativeStatusEnum_corroborated,
      _$narrativeStatusEnum_unobserved,
      _$narrativeStatusEnum_contradicted,
      _$narrativeStatusEnum_mixed,
      _$narrativeStatusEnum_insufficientCoverage,
      _$narrativeStatusEnum_unknownDefaultOpenApi,
    ]);

const NarrativeStateEnum _$narrativeStateEnum_emerging =
    const NarrativeStateEnum._('emerging');
const NarrativeStateEnum _$narrativeStateEnum_active =
    const NarrativeStateEnum._('active');
const NarrativeStateEnum _$narrativeStateEnum_fading =
    const NarrativeStateEnum._('fading');
const NarrativeStateEnum _$narrativeStateEnum_dormant =
    const NarrativeStateEnum._('dormant');
const NarrativeStateEnum _$narrativeStateEnum_unknownDefaultOpenApi =
    const NarrativeStateEnum._('unknownDefaultOpenApi');

NarrativeStateEnum _$narrativeStateEnumValueOf(String name) {
  switch (name) {
    case 'emerging':
      return _$narrativeStateEnum_emerging;
    case 'active':
      return _$narrativeStateEnum_active;
    case 'fading':
      return _$narrativeStateEnum_fading;
    case 'dormant':
      return _$narrativeStateEnum_dormant;
    case 'unknownDefaultOpenApi':
      return _$narrativeStateEnum_unknownDefaultOpenApi;
    default:
      return _$narrativeStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NarrativeStateEnum> _$narrativeStateEnumValues =
    BuiltSet<NarrativeStateEnum>(const <NarrativeStateEnum>[
      _$narrativeStateEnum_emerging,
      _$narrativeStateEnum_active,
      _$narrativeStateEnum_fading,
      _$narrativeStateEnum_dormant,
      _$narrativeStateEnum_unknownDefaultOpenApi,
    ]);

Serializer<NarrativeStatusEnum> _$narrativeStatusEnumSerializer =
    _$NarrativeStatusEnumSerializer();
Serializer<NarrativeStateEnum> _$narrativeStateEnumSerializer =
    _$NarrativeStateEnumSerializer();

class _$NarrativeStatusEnumSerializer
    implements PrimitiveSerializer<NarrativeStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'mixed': 'mixed',
    'insufficientCoverage': 'insufficient-coverage',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'mixed': 'mixed',
    'insufficient-coverage': 'insufficientCoverage',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativeStatusEnum];
  @override
  final String wireName = 'NarrativeStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeStateEnumSerializer
    implements PrimitiveSerializer<NarrativeStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emerging': 'emerging',
    'active': 'active',
    'fading': 'fading',
    'dormant': 'dormant',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emerging': 'emerging',
    'active': 'active',
    'fading': 'fading',
    'dormant': 'dormant',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativeStateEnum];
  @override
  final String wireName = 'NarrativeStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Narrative extends Narrative {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String title;
  @override
  final String canonicalEventId;
  @override
  final BuiltList<String>? topics;
  @override
  final BuiltList<String>? placeRefs;
  @override
  final BuiltList<String>? entityRefs;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? languages;
  @override
  final BuiltList<NarrativePlatformStats> platforms;
  @override
  final DateTime firstObservedAt;
  @override
  final DateTime lastActivityAt;
  @override
  final int postCount;
  @override
  final int uniqueAuthors;
  @override
  final int evidenceGroupCount;
  @override
  final num originConcentration;
  @override
  final num? velocity;
  @override
  final BuiltList<String>? mediaFingerprints;
  @override
  final BuiltList<String>? newsStoryIds;
  @override
  final BuiltList<String>? situationIds;
  @override
  final NarrativeStatusEnum status;
  @override
  final NarrativeStateEnum state;
  @override
  final bool? coordinationIndicatorsPresent;
  @override
  final String? mergedInto;
  @override
  final String tlp;
  @override
  final ObjectEnvelope envelope;
  @override
  final BuiltList<Claim> claims;
  @override
  final BuiltList<MediaFingerprint> media;
  @override
  final CoordinationIndicators? coordination;
  @override
  final BuiltList<ObjectEnvelope>? newsStories;
  @override
  final BuiltList<ObjectEnvelope>? situations;
  @override
  final BuiltList<String>? comparisonIds;
  @override
  final BuiltList<NarrativeLogEntry> history;
  @override
  final DetectorRef clusterer;
  @override
  final String manifestId;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$Narrative([void Function(NarrativeBuilder)? updates]) =>
      (NarrativeBuilder()..update(updates))._build();

  _$Narrative._({
    required this.id,
    required this.ref,
    required this.title,
    required this.canonicalEventId,
    this.topics,
    this.placeRefs,
    this.entityRefs,
    this.regionCodes,
    this.languages,
    required this.platforms,
    required this.firstObservedAt,
    required this.lastActivityAt,
    required this.postCount,
    required this.uniqueAuthors,
    required this.evidenceGroupCount,
    required this.originConcentration,
    this.velocity,
    this.mediaFingerprints,
    this.newsStoryIds,
    this.situationIds,
    required this.status,
    required this.state,
    this.coordinationIndicatorsPresent,
    this.mergedInto,
    required this.tlp,
    required this.envelope,
    required this.claims,
    required this.media,
    this.coordination,
    this.newsStories,
    this.situations,
    this.comparisonIds,
    required this.history,
    required this.clusterer,
    required this.manifestId,
    this.caveats,
  }) : super._();
  @override
  Narrative rebuild(void Function(NarrativeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeBuilder toBuilder() => NarrativeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Narrative &&
        id == other.id &&
        ref == other.ref &&
        title == other.title &&
        canonicalEventId == other.canonicalEventId &&
        topics == other.topics &&
        placeRefs == other.placeRefs &&
        entityRefs == other.entityRefs &&
        regionCodes == other.regionCodes &&
        languages == other.languages &&
        platforms == other.platforms &&
        firstObservedAt == other.firstObservedAt &&
        lastActivityAt == other.lastActivityAt &&
        postCount == other.postCount &&
        uniqueAuthors == other.uniqueAuthors &&
        evidenceGroupCount == other.evidenceGroupCount &&
        originConcentration == other.originConcentration &&
        velocity == other.velocity &&
        mediaFingerprints == other.mediaFingerprints &&
        newsStoryIds == other.newsStoryIds &&
        situationIds == other.situationIds &&
        status == other.status &&
        state == other.state &&
        coordinationIndicatorsPresent == other.coordinationIndicatorsPresent &&
        mergedInto == other.mergedInto &&
        tlp == other.tlp &&
        envelope == other.envelope &&
        claims == other.claims &&
        media == other.media &&
        coordination == other.coordination &&
        newsStories == other.newsStories &&
        situations == other.situations &&
        comparisonIds == other.comparisonIds &&
        history == other.history &&
        clusterer == other.clusterer &&
        manifestId == other.manifestId &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, canonicalEventId.hashCode);
    _$hash = $jc(_$hash, topics.hashCode);
    _$hash = $jc(_$hash, placeRefs.hashCode);
    _$hash = $jc(_$hash, entityRefs.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, firstObservedAt.hashCode);
    _$hash = $jc(_$hash, lastActivityAt.hashCode);
    _$hash = $jc(_$hash, postCount.hashCode);
    _$hash = $jc(_$hash, uniqueAuthors.hashCode);
    _$hash = $jc(_$hash, evidenceGroupCount.hashCode);
    _$hash = $jc(_$hash, originConcentration.hashCode);
    _$hash = $jc(_$hash, velocity.hashCode);
    _$hash = $jc(_$hash, mediaFingerprints.hashCode);
    _$hash = $jc(_$hash, newsStoryIds.hashCode);
    _$hash = $jc(_$hash, situationIds.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, coordinationIndicatorsPresent.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, claims.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, coordination.hashCode);
    _$hash = $jc(_$hash, newsStories.hashCode);
    _$hash = $jc(_$hash, situations.hashCode);
    _$hash = $jc(_$hash, comparisonIds.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, clusterer.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Narrative')
          ..add('id', id)
          ..add('ref', ref)
          ..add('title', title)
          ..add('canonicalEventId', canonicalEventId)
          ..add('topics', topics)
          ..add('placeRefs', placeRefs)
          ..add('entityRefs', entityRefs)
          ..add('regionCodes', regionCodes)
          ..add('languages', languages)
          ..add('platforms', platforms)
          ..add('firstObservedAt', firstObservedAt)
          ..add('lastActivityAt', lastActivityAt)
          ..add('postCount', postCount)
          ..add('uniqueAuthors', uniqueAuthors)
          ..add('evidenceGroupCount', evidenceGroupCount)
          ..add('originConcentration', originConcentration)
          ..add('velocity', velocity)
          ..add('mediaFingerprints', mediaFingerprints)
          ..add('newsStoryIds', newsStoryIds)
          ..add('situationIds', situationIds)
          ..add('status', status)
          ..add('state', state)
          ..add('coordinationIndicatorsPresent', coordinationIndicatorsPresent)
          ..add('mergedInto', mergedInto)
          ..add('tlp', tlp)
          ..add('envelope', envelope)
          ..add('claims', claims)
          ..add('media', media)
          ..add('coordination', coordination)
          ..add('newsStories', newsStories)
          ..add('situations', situations)
          ..add('comparisonIds', comparisonIds)
          ..add('history', history)
          ..add('clusterer', clusterer)
          ..add('manifestId', manifestId)
          ..add('caveats', caveats))
        .toString();
  }
}

class NarrativeBuilder implements Builder<Narrative, NarrativeBuilder> {
  _$Narrative? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _canonicalEventId;
  String? get canonicalEventId => _$this._canonicalEventId;
  set canonicalEventId(String? canonicalEventId) =>
      _$this._canonicalEventId = canonicalEventId;

  ListBuilder<String>? _topics;
  ListBuilder<String> get topics => _$this._topics ??= ListBuilder<String>();
  set topics(ListBuilder<String>? topics) => _$this._topics = topics;

  ListBuilder<String>? _placeRefs;
  ListBuilder<String> get placeRefs =>
      _$this._placeRefs ??= ListBuilder<String>();
  set placeRefs(ListBuilder<String>? placeRefs) =>
      _$this._placeRefs = placeRefs;

  ListBuilder<String>? _entityRefs;
  ListBuilder<String> get entityRefs =>
      _$this._entityRefs ??= ListBuilder<String>();
  set entityRefs(ListBuilder<String>? entityRefs) =>
      _$this._entityRefs = entityRefs;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  ListBuilder<NarrativePlatformStats>? _platforms;
  ListBuilder<NarrativePlatformStats> get platforms =>
      _$this._platforms ??= ListBuilder<NarrativePlatformStats>();
  set platforms(ListBuilder<NarrativePlatformStats>? platforms) =>
      _$this._platforms = platforms;

  DateTime? _firstObservedAt;
  DateTime? get firstObservedAt => _$this._firstObservedAt;
  set firstObservedAt(DateTime? firstObservedAt) =>
      _$this._firstObservedAt = firstObservedAt;

  DateTime? _lastActivityAt;
  DateTime? get lastActivityAt => _$this._lastActivityAt;
  set lastActivityAt(DateTime? lastActivityAt) =>
      _$this._lastActivityAt = lastActivityAt;

  int? _postCount;
  int? get postCount => _$this._postCount;
  set postCount(int? postCount) => _$this._postCount = postCount;

  int? _uniqueAuthors;
  int? get uniqueAuthors => _$this._uniqueAuthors;
  set uniqueAuthors(int? uniqueAuthors) =>
      _$this._uniqueAuthors = uniqueAuthors;

  int? _evidenceGroupCount;
  int? get evidenceGroupCount => _$this._evidenceGroupCount;
  set evidenceGroupCount(int? evidenceGroupCount) =>
      _$this._evidenceGroupCount = evidenceGroupCount;

  num? _originConcentration;
  num? get originConcentration => _$this._originConcentration;
  set originConcentration(num? originConcentration) =>
      _$this._originConcentration = originConcentration;

  num? _velocity;
  num? get velocity => _$this._velocity;
  set velocity(num? velocity) => _$this._velocity = velocity;

  ListBuilder<String>? _mediaFingerprints;
  ListBuilder<String> get mediaFingerprints =>
      _$this._mediaFingerprints ??= ListBuilder<String>();
  set mediaFingerprints(ListBuilder<String>? mediaFingerprints) =>
      _$this._mediaFingerprints = mediaFingerprints;

  ListBuilder<String>? _newsStoryIds;
  ListBuilder<String> get newsStoryIds =>
      _$this._newsStoryIds ??= ListBuilder<String>();
  set newsStoryIds(ListBuilder<String>? newsStoryIds) =>
      _$this._newsStoryIds = newsStoryIds;

  ListBuilder<String>? _situationIds;
  ListBuilder<String> get situationIds =>
      _$this._situationIds ??= ListBuilder<String>();
  set situationIds(ListBuilder<String>? situationIds) =>
      _$this._situationIds = situationIds;

  NarrativeStatusEnum? _status;
  NarrativeStatusEnum? get status => _$this._status;
  set status(NarrativeStatusEnum? status) => _$this._status = status;

  NarrativeStateEnum? _state;
  NarrativeStateEnum? get state => _$this._state;
  set state(NarrativeStateEnum? state) => _$this._state = state;

  bool? _coordinationIndicatorsPresent;
  bool? get coordinationIndicatorsPresent =>
      _$this._coordinationIndicatorsPresent;
  set coordinationIndicatorsPresent(bool? coordinationIndicatorsPresent) =>
      _$this._coordinationIndicatorsPresent = coordinationIndicatorsPresent;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  ListBuilder<Claim>? _claims;
  ListBuilder<Claim> get claims => _$this._claims ??= ListBuilder<Claim>();
  set claims(ListBuilder<Claim>? claims) => _$this._claims = claims;

  ListBuilder<MediaFingerprint>? _media;
  ListBuilder<MediaFingerprint> get media =>
      _$this._media ??= ListBuilder<MediaFingerprint>();
  set media(ListBuilder<MediaFingerprint>? media) => _$this._media = media;

  CoordinationIndicatorsBuilder? _coordination;
  CoordinationIndicatorsBuilder get coordination =>
      _$this._coordination ??= CoordinationIndicatorsBuilder();
  set coordination(CoordinationIndicatorsBuilder? coordination) =>
      _$this._coordination = coordination;

  ListBuilder<ObjectEnvelope>? _newsStories;
  ListBuilder<ObjectEnvelope> get newsStories =>
      _$this._newsStories ??= ListBuilder<ObjectEnvelope>();
  set newsStories(ListBuilder<ObjectEnvelope>? newsStories) =>
      _$this._newsStories = newsStories;

  ListBuilder<ObjectEnvelope>? _situations;
  ListBuilder<ObjectEnvelope> get situations =>
      _$this._situations ??= ListBuilder<ObjectEnvelope>();
  set situations(ListBuilder<ObjectEnvelope>? situations) =>
      _$this._situations = situations;

  ListBuilder<String>? _comparisonIds;
  ListBuilder<String> get comparisonIds =>
      _$this._comparisonIds ??= ListBuilder<String>();
  set comparisonIds(ListBuilder<String>? comparisonIds) =>
      _$this._comparisonIds = comparisonIds;

  ListBuilder<NarrativeLogEntry>? _history;
  ListBuilder<NarrativeLogEntry> get history =>
      _$this._history ??= ListBuilder<NarrativeLogEntry>();
  set history(ListBuilder<NarrativeLogEntry>? history) =>
      _$this._history = history;

  DetectorRefBuilder? _clusterer;
  DetectorRefBuilder get clusterer =>
      _$this._clusterer ??= DetectorRefBuilder();
  set clusterer(DetectorRefBuilder? clusterer) => _$this._clusterer = clusterer;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  NarrativeBuilder() {
    Narrative._defaults(this);
  }

  NarrativeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _title = $v.title;
      _canonicalEventId = $v.canonicalEventId;
      _topics = $v.topics?.toBuilder();
      _placeRefs = $v.placeRefs?.toBuilder();
      _entityRefs = $v.entityRefs?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _platforms = $v.platforms.toBuilder();
      _firstObservedAt = $v.firstObservedAt;
      _lastActivityAt = $v.lastActivityAt;
      _postCount = $v.postCount;
      _uniqueAuthors = $v.uniqueAuthors;
      _evidenceGroupCount = $v.evidenceGroupCount;
      _originConcentration = $v.originConcentration;
      _velocity = $v.velocity;
      _mediaFingerprints = $v.mediaFingerprints?.toBuilder();
      _newsStoryIds = $v.newsStoryIds?.toBuilder();
      _situationIds = $v.situationIds?.toBuilder();
      _status = $v.status;
      _state = $v.state;
      _coordinationIndicatorsPresent = $v.coordinationIndicatorsPresent;
      _mergedInto = $v.mergedInto;
      _tlp = $v.tlp;
      _envelope = $v.envelope.toBuilder();
      _claims = $v.claims.toBuilder();
      _media = $v.media.toBuilder();
      _coordination = $v.coordination?.toBuilder();
      _newsStories = $v.newsStories?.toBuilder();
      _situations = $v.situations?.toBuilder();
      _comparisonIds = $v.comparisonIds?.toBuilder();
      _history = $v.history.toBuilder();
      _clusterer = $v.clusterer.toBuilder();
      _manifestId = $v.manifestId;
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Narrative other) {
    _$v = other as _$Narrative;
  }

  @override
  void update(void Function(NarrativeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Narrative build() => _build();

  _$Narrative _build() {
    _$Narrative _$result;
    try {
      _$result =
          _$v ??
          _$Narrative._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Narrative', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'Narrative',
              'ref',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Narrative',
              'title',
            ),
            canonicalEventId: BuiltValueNullFieldError.checkNotNull(
              canonicalEventId,
              r'Narrative',
              'canonicalEventId',
            ),
            topics: _topics?.build(),
            placeRefs: _placeRefs?.build(),
            entityRefs: _entityRefs?.build(),
            regionCodes: _regionCodes?.build(),
            languages: _languages?.build(),
            platforms: platforms.build(),
            firstObservedAt: BuiltValueNullFieldError.checkNotNull(
              firstObservedAt,
              r'Narrative',
              'firstObservedAt',
            ),
            lastActivityAt: BuiltValueNullFieldError.checkNotNull(
              lastActivityAt,
              r'Narrative',
              'lastActivityAt',
            ),
            postCount: BuiltValueNullFieldError.checkNotNull(
              postCount,
              r'Narrative',
              'postCount',
            ),
            uniqueAuthors: BuiltValueNullFieldError.checkNotNull(
              uniqueAuthors,
              r'Narrative',
              'uniqueAuthors',
            ),
            evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupCount,
              r'Narrative',
              'evidenceGroupCount',
            ),
            originConcentration: BuiltValueNullFieldError.checkNotNull(
              originConcentration,
              r'Narrative',
              'originConcentration',
            ),
            velocity: velocity,
            mediaFingerprints: _mediaFingerprints?.build(),
            newsStoryIds: _newsStoryIds?.build(),
            situationIds: _situationIds?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Narrative',
              'status',
            ),
            state: BuiltValueNullFieldError.checkNotNull(
              state,
              r'Narrative',
              'state',
            ),
            coordinationIndicatorsPresent: coordinationIndicatorsPresent,
            mergedInto: mergedInto,
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'Narrative',
              'tlp',
            ),
            envelope: envelope.build(),
            claims: claims.build(),
            media: media.build(),
            coordination: _coordination?.build(),
            newsStories: _newsStories?.build(),
            situations: _situations?.build(),
            comparisonIds: _comparisonIds?.build(),
            history: history.build(),
            clusterer: clusterer.build(),
            manifestId: BuiltValueNullFieldError.checkNotNull(
              manifestId,
              r'Narrative',
              'manifestId',
            ),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topics';
        _topics?.build();
        _$failedField = 'placeRefs';
        _placeRefs?.build();
        _$failedField = 'entityRefs';
        _entityRefs?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'platforms';
        platforms.build();

        _$failedField = 'mediaFingerprints';
        _mediaFingerprints?.build();
        _$failedField = 'newsStoryIds';
        _newsStoryIds?.build();
        _$failedField = 'situationIds';
        _situationIds?.build();

        _$failedField = 'envelope';
        envelope.build();
        _$failedField = 'claims';
        claims.build();
        _$failedField = 'media';
        media.build();
        _$failedField = 'coordination';
        _coordination?.build();
        _$failedField = 'newsStories';
        _newsStories?.build();
        _$failedField = 'situations';
        _situations?.build();
        _$failedField = 'comparisonIds';
        _comparisonIds?.build();
        _$failedField = 'history';
        history.build();
        _$failedField = 'clusterer';
        clusterer.build();

        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Narrative',
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
