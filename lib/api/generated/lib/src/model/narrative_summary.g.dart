// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnum_unassessed =
    const NarrativeSummaryStatusEnum._('unassessed');
const NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnum_pending =
    const NarrativeSummaryStatusEnum._('pending');
const NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnum_corroborated =
    const NarrativeSummaryStatusEnum._('corroborated');
const NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnum_unobserved =
    const NarrativeSummaryStatusEnum._('unobserved');
const NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnum_contradicted =
    const NarrativeSummaryStatusEnum._('contradicted');
const NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnum_mixed =
    const NarrativeSummaryStatusEnum._('mixed');
const NarrativeSummaryStatusEnum
_$narrativeSummaryStatusEnum_insufficientCoverage =
    const NarrativeSummaryStatusEnum._('insufficientCoverage');
const NarrativeSummaryStatusEnum
_$narrativeSummaryStatusEnum_unknownDefaultOpenApi =
    const NarrativeSummaryStatusEnum._('unknownDefaultOpenApi');

NarrativeSummaryStatusEnum _$narrativeSummaryStatusEnumValueOf(String name) {
  switch (name) {
    case 'unassessed':
      return _$narrativeSummaryStatusEnum_unassessed;
    case 'pending':
      return _$narrativeSummaryStatusEnum_pending;
    case 'corroborated':
      return _$narrativeSummaryStatusEnum_corroborated;
    case 'unobserved':
      return _$narrativeSummaryStatusEnum_unobserved;
    case 'contradicted':
      return _$narrativeSummaryStatusEnum_contradicted;
    case 'mixed':
      return _$narrativeSummaryStatusEnum_mixed;
    case 'insufficientCoverage':
      return _$narrativeSummaryStatusEnum_insufficientCoverage;
    case 'unknownDefaultOpenApi':
      return _$narrativeSummaryStatusEnum_unknownDefaultOpenApi;
    default:
      return _$narrativeSummaryStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NarrativeSummaryStatusEnum> _$narrativeSummaryStatusEnumValues =
    BuiltSet<NarrativeSummaryStatusEnum>(const <NarrativeSummaryStatusEnum>[
      _$narrativeSummaryStatusEnum_unassessed,
      _$narrativeSummaryStatusEnum_pending,
      _$narrativeSummaryStatusEnum_corroborated,
      _$narrativeSummaryStatusEnum_unobserved,
      _$narrativeSummaryStatusEnum_contradicted,
      _$narrativeSummaryStatusEnum_mixed,
      _$narrativeSummaryStatusEnum_insufficientCoverage,
      _$narrativeSummaryStatusEnum_unknownDefaultOpenApi,
    ]);

const NarrativeSummaryStateEnum _$narrativeSummaryStateEnum_emerging =
    const NarrativeSummaryStateEnum._('emerging');
const NarrativeSummaryStateEnum _$narrativeSummaryStateEnum_active =
    const NarrativeSummaryStateEnum._('active');
const NarrativeSummaryStateEnum _$narrativeSummaryStateEnum_fading =
    const NarrativeSummaryStateEnum._('fading');
const NarrativeSummaryStateEnum _$narrativeSummaryStateEnum_dormant =
    const NarrativeSummaryStateEnum._('dormant');
const NarrativeSummaryStateEnum
_$narrativeSummaryStateEnum_unknownDefaultOpenApi =
    const NarrativeSummaryStateEnum._('unknownDefaultOpenApi');

NarrativeSummaryStateEnum _$narrativeSummaryStateEnumValueOf(String name) {
  switch (name) {
    case 'emerging':
      return _$narrativeSummaryStateEnum_emerging;
    case 'active':
      return _$narrativeSummaryStateEnum_active;
    case 'fading':
      return _$narrativeSummaryStateEnum_fading;
    case 'dormant':
      return _$narrativeSummaryStateEnum_dormant;
    case 'unknownDefaultOpenApi':
      return _$narrativeSummaryStateEnum_unknownDefaultOpenApi;
    default:
      return _$narrativeSummaryStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NarrativeSummaryStateEnum> _$narrativeSummaryStateEnumValues =
    BuiltSet<NarrativeSummaryStateEnum>(const <NarrativeSummaryStateEnum>[
      _$narrativeSummaryStateEnum_emerging,
      _$narrativeSummaryStateEnum_active,
      _$narrativeSummaryStateEnum_fading,
      _$narrativeSummaryStateEnum_dormant,
      _$narrativeSummaryStateEnum_unknownDefaultOpenApi,
    ]);

Serializer<NarrativeSummaryStatusEnum> _$narrativeSummaryStatusEnumSerializer =
    _$NarrativeSummaryStatusEnumSerializer();
Serializer<NarrativeSummaryStateEnum> _$narrativeSummaryStateEnumSerializer =
    _$NarrativeSummaryStateEnumSerializer();

class _$NarrativeSummaryStatusEnumSerializer
    implements PrimitiveSerializer<NarrativeSummaryStatusEnum> {
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
  final Iterable<Type> types = const <Type>[NarrativeSummaryStatusEnum];
  @override
  final String wireName = 'NarrativeSummaryStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeSummaryStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeSummaryStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeSummaryStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeSummaryStateEnumSerializer
    implements PrimitiveSerializer<NarrativeSummaryStateEnum> {
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
  final Iterable<Type> types = const <Type>[NarrativeSummaryStateEnum];
  @override
  final String wireName = 'NarrativeSummaryStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeSummaryStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeSummaryStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeSummaryStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeSummary extends NarrativeSummary {
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
  final NarrativeSummaryStatusEnum status;
  @override
  final NarrativeSummaryStateEnum state;
  @override
  final bool? coordinationIndicatorsPresent;
  @override
  final String? mergedInto;
  @override
  final String tlp;

  factory _$NarrativeSummary([
    void Function(NarrativeSummaryBuilder)? updates,
  ]) => (NarrativeSummaryBuilder()..update(updates))._build();

  _$NarrativeSummary._({
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
  }) : super._();
  @override
  NarrativeSummary rebuild(void Function(NarrativeSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeSummaryBuilder toBuilder() =>
      NarrativeSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeSummary &&
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
        tlp == other.tlp;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeSummary')
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
          ..add('tlp', tlp))
        .toString();
  }
}

class NarrativeSummaryBuilder
    implements Builder<NarrativeSummary, NarrativeSummaryBuilder> {
  _$NarrativeSummary? _$v;

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

  NarrativeSummaryStatusEnum? _status;
  NarrativeSummaryStatusEnum? get status => _$this._status;
  set status(NarrativeSummaryStatusEnum? status) => _$this._status = status;

  NarrativeSummaryStateEnum? _state;
  NarrativeSummaryStateEnum? get state => _$this._state;
  set state(NarrativeSummaryStateEnum? state) => _$this._state = state;

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

  NarrativeSummaryBuilder() {
    NarrativeSummary._defaults(this);
  }

  NarrativeSummaryBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeSummary other) {
    _$v = other as _$NarrativeSummary;
  }

  @override
  void update(void Function(NarrativeSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeSummary build() => _build();

  _$NarrativeSummary _build() {
    _$NarrativeSummary _$result;
    try {
      _$result =
          _$v ??
          _$NarrativeSummary._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'NarrativeSummary',
              'id',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'NarrativeSummary',
              'ref',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'NarrativeSummary',
              'title',
            ),
            canonicalEventId: BuiltValueNullFieldError.checkNotNull(
              canonicalEventId,
              r'NarrativeSummary',
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
              r'NarrativeSummary',
              'firstObservedAt',
            ),
            lastActivityAt: BuiltValueNullFieldError.checkNotNull(
              lastActivityAt,
              r'NarrativeSummary',
              'lastActivityAt',
            ),
            postCount: BuiltValueNullFieldError.checkNotNull(
              postCount,
              r'NarrativeSummary',
              'postCount',
            ),
            uniqueAuthors: BuiltValueNullFieldError.checkNotNull(
              uniqueAuthors,
              r'NarrativeSummary',
              'uniqueAuthors',
            ),
            evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupCount,
              r'NarrativeSummary',
              'evidenceGroupCount',
            ),
            originConcentration: BuiltValueNullFieldError.checkNotNull(
              originConcentration,
              r'NarrativeSummary',
              'originConcentration',
            ),
            velocity: velocity,
            mediaFingerprints: _mediaFingerprints?.build(),
            newsStoryIds: _newsStoryIds?.build(),
            situationIds: _situationIds?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'NarrativeSummary',
              'status',
            ),
            state: BuiltValueNullFieldError.checkNotNull(
              state,
              r'NarrativeSummary',
              'state',
            ),
            coordinationIndicatorsPresent: coordinationIndicatorsPresent,
            mergedInto: mergedInto,
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'NarrativeSummary',
              'tlp',
            ),
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativeSummary',
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
