// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationOriginEnum _$situationOriginEnum_auto =
    const SituationOriginEnum._('auto');
const SituationOriginEnum _$situationOriginEnum_operator_ =
    const SituationOriginEnum._('operator_');
const SituationOriginEnum _$situationOriginEnum_agent =
    const SituationOriginEnum._('agent');
const SituationOriginEnum _$situationOriginEnum_analyst =
    const SituationOriginEnum._('analyst');

SituationOriginEnum _$situationOriginEnumValueOf(String name) {
  switch (name) {
    case 'auto':
      return _$situationOriginEnum_auto;
    case 'operator_':
      return _$situationOriginEnum_operator_;
    case 'agent':
      return _$situationOriginEnum_agent;
    case 'analyst':
      return _$situationOriginEnum_analyst;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationOriginEnum> _$situationOriginEnumValues =
    BuiltSet<SituationOriginEnum>(const <SituationOriginEnum>[
      _$situationOriginEnum_auto,
      _$situationOriginEnum_operator_,
      _$situationOriginEnum_agent,
      _$situationOriginEnum_analyst,
    ]);

Serializer<SituationOriginEnum> _$situationOriginEnumSerializer =
    _$SituationOriginEnumSerializer();

class _$SituationOriginEnumSerializer
    implements PrimitiveSerializer<SituationOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'operator_': 'operator',
    'agent': 'agent',
    'analyst': 'analyst',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'operator': 'operator_',
    'agent': 'agent',
    'analyst': 'analyst',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationOriginEnum];
  @override
  final String wireName = 'SituationOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Situation extends Situation {
  @override
  final String id;
  @override
  final String title;
  @override
  final SituationTheme theme;
  @override
  final SituationStatus status;
  @override
  final Severity severity;
  @override
  final bool? severityOverridden;
  @override
  final BuiltList<String> regionCodes;
  @override
  final BuiltList<num>? bbox;
  @override
  final Geometry? centroid;
  @override
  final DateTime startedAt;
  @override
  final DateTime lastActivityAt;
  @override
  final DateTime? closedAt;
  @override
  final int memberCount;
  @override
  final BuiltList<String> signalFamilies;
  @override
  final num? corroborationShare;
  @override
  final String summary;
  @override
  final SituationOriginEnum origin;
  @override
  final String? mergedInto;
  @override
  final bool private;
  @override
  final int version;
  @override
  final DateTime? updatedAt;
  @override
  final Severity? severityOverride;
  @override
  final Geometry? geometry;
  @override
  final BuiltList<String>? topicIds;
  @override
  final BuiltList<String>? entityIds;
  @override
  final BuiltList<String>? investigationIds;
  @override
  final String? linkerVersion;
  @override
  final DateTime createdAt;
  @override
  final SituationEvidence evidence;
  @override
  final SituationInference inference;
  @override
  final SituationSpeculation speculation;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final CoverageStats? coverage;
  @override
  final SituationSocialSection? social;

  factory _$Situation([void Function(SituationBuilder)? updates]) =>
      (SituationBuilder()..update(updates))._build();

  _$Situation._({
    required this.id,
    required this.title,
    required this.theme,
    required this.status,
    required this.severity,
    this.severityOverridden,
    required this.regionCodes,
    this.bbox,
    this.centroid,
    required this.startedAt,
    required this.lastActivityAt,
    this.closedAt,
    required this.memberCount,
    required this.signalFamilies,
    this.corroborationShare,
    required this.summary,
    required this.origin,
    this.mergedInto,
    required this.private,
    required this.version,
    this.updatedAt,
    this.severityOverride,
    this.geometry,
    this.topicIds,
    this.entityIds,
    this.investigationIds,
    this.linkerVersion,
    required this.createdAt,
    required this.evidence,
    required this.inference,
    required this.speculation,
    this.caveats,
    this.coverage,
    this.social,
  }) : super._();
  @override
  Situation rebuild(void Function(SituationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationBuilder toBuilder() => SituationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Situation &&
        id == other.id &&
        title == other.title &&
        theme == other.theme &&
        status == other.status &&
        severity == other.severity &&
        severityOverridden == other.severityOverridden &&
        regionCodes == other.regionCodes &&
        bbox == other.bbox &&
        centroid == other.centroid &&
        startedAt == other.startedAt &&
        lastActivityAt == other.lastActivityAt &&
        closedAt == other.closedAt &&
        memberCount == other.memberCount &&
        signalFamilies == other.signalFamilies &&
        corroborationShare == other.corroborationShare &&
        summary == other.summary &&
        origin == other.origin &&
        mergedInto == other.mergedInto &&
        private == other.private &&
        version == other.version &&
        updatedAt == other.updatedAt &&
        severityOverride == other.severityOverride &&
        geometry == other.geometry &&
        topicIds == other.topicIds &&
        entityIds == other.entityIds &&
        investigationIds == other.investigationIds &&
        linkerVersion == other.linkerVersion &&
        createdAt == other.createdAt &&
        evidence == other.evidence &&
        inference == other.inference &&
        speculation == other.speculation &&
        caveats == other.caveats &&
        coverage == other.coverage &&
        social == other.social;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, severityOverridden.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, centroid.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, lastActivityAt.hashCode);
    _$hash = $jc(_$hash, closedAt.hashCode);
    _$hash = $jc(_$hash, memberCount.hashCode);
    _$hash = $jc(_$hash, signalFamilies.hashCode);
    _$hash = $jc(_$hash, corroborationShare.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, severityOverride.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, entityIds.hashCode);
    _$hash = $jc(_$hash, investigationIds.hashCode);
    _$hash = $jc(_$hash, linkerVersion.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, inference.hashCode);
    _$hash = $jc(_$hash, speculation.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, social.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Situation')
          ..add('id', id)
          ..add('title', title)
          ..add('theme', theme)
          ..add('status', status)
          ..add('severity', severity)
          ..add('severityOverridden', severityOverridden)
          ..add('regionCodes', regionCodes)
          ..add('bbox', bbox)
          ..add('centroid', centroid)
          ..add('startedAt', startedAt)
          ..add('lastActivityAt', lastActivityAt)
          ..add('closedAt', closedAt)
          ..add('memberCount', memberCount)
          ..add('signalFamilies', signalFamilies)
          ..add('corroborationShare', corroborationShare)
          ..add('summary', summary)
          ..add('origin', origin)
          ..add('mergedInto', mergedInto)
          ..add('private', private)
          ..add('version', version)
          ..add('updatedAt', updatedAt)
          ..add('severityOverride', severityOverride)
          ..add('geometry', geometry)
          ..add('topicIds', topicIds)
          ..add('entityIds', entityIds)
          ..add('investigationIds', investigationIds)
          ..add('linkerVersion', linkerVersion)
          ..add('createdAt', createdAt)
          ..add('evidence', evidence)
          ..add('inference', inference)
          ..add('speculation', speculation)
          ..add('caveats', caveats)
          ..add('coverage', coverage)
          ..add('social', social))
        .toString();
  }
}

class SituationBuilder implements Builder<Situation, SituationBuilder> {
  _$Situation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SituationTheme? _theme;
  SituationTheme? get theme => _$this._theme;
  set theme(SituationTheme? theme) => _$this._theme = theme;

  SituationStatus? _status;
  SituationStatus? get status => _$this._status;
  set status(SituationStatus? status) => _$this._status = status;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  bool? _severityOverridden;
  bool? get severityOverridden => _$this._severityOverridden;
  set severityOverridden(bool? severityOverridden) =>
      _$this._severityOverridden = severityOverridden;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  GeometryBuilder? _centroid;
  GeometryBuilder get centroid => _$this._centroid ??= GeometryBuilder();
  set centroid(GeometryBuilder? centroid) => _$this._centroid = centroid;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _lastActivityAt;
  DateTime? get lastActivityAt => _$this._lastActivityAt;
  set lastActivityAt(DateTime? lastActivityAt) =>
      _$this._lastActivityAt = lastActivityAt;

  DateTime? _closedAt;
  DateTime? get closedAt => _$this._closedAt;
  set closedAt(DateTime? closedAt) => _$this._closedAt = closedAt;

  int? _memberCount;
  int? get memberCount => _$this._memberCount;
  set memberCount(int? memberCount) => _$this._memberCount = memberCount;

  ListBuilder<String>? _signalFamilies;
  ListBuilder<String> get signalFamilies =>
      _$this._signalFamilies ??= ListBuilder<String>();
  set signalFamilies(ListBuilder<String>? signalFamilies) =>
      _$this._signalFamilies = signalFamilies;

  num? _corroborationShare;
  num? get corroborationShare => _$this._corroborationShare;
  set corroborationShare(num? corroborationShare) =>
      _$this._corroborationShare = corroborationShare;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  SituationOriginEnum? _origin;
  SituationOriginEnum? get origin => _$this._origin;
  set origin(SituationOriginEnum? origin) => _$this._origin = origin;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  Severity? _severityOverride;
  Severity? get severityOverride => _$this._severityOverride;
  set severityOverride(Severity? severityOverride) =>
      _$this._severityOverride = severityOverride;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  ListBuilder<String>? _entityIds;
  ListBuilder<String> get entityIds =>
      _$this._entityIds ??= ListBuilder<String>();
  set entityIds(ListBuilder<String>? entityIds) =>
      _$this._entityIds = entityIds;

  ListBuilder<String>? _investigationIds;
  ListBuilder<String> get investigationIds =>
      _$this._investigationIds ??= ListBuilder<String>();
  set investigationIds(ListBuilder<String>? investigationIds) =>
      _$this._investigationIds = investigationIds;

  String? _linkerVersion;
  String? get linkerVersion => _$this._linkerVersion;
  set linkerVersion(String? linkerVersion) =>
      _$this._linkerVersion = linkerVersion;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  SituationEvidenceBuilder? _evidence;
  SituationEvidenceBuilder get evidence =>
      _$this._evidence ??= SituationEvidenceBuilder();
  set evidence(SituationEvidenceBuilder? evidence) =>
      _$this._evidence = evidence;

  SituationInferenceBuilder? _inference;
  SituationInferenceBuilder get inference =>
      _$this._inference ??= SituationInferenceBuilder();
  set inference(SituationInferenceBuilder? inference) =>
      _$this._inference = inference;

  SituationSpeculationBuilder? _speculation;
  SituationSpeculationBuilder get speculation =>
      _$this._speculation ??= SituationSpeculationBuilder();
  set speculation(SituationSpeculationBuilder? speculation) =>
      _$this._speculation = speculation;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  CoverageStatsBuilder? _coverage;
  CoverageStatsBuilder get coverage =>
      _$this._coverage ??= CoverageStatsBuilder();
  set coverage(CoverageStatsBuilder? coverage) => _$this._coverage = coverage;

  SituationSocialSectionBuilder? _social;
  SituationSocialSectionBuilder get social =>
      _$this._social ??= SituationSocialSectionBuilder();
  set social(SituationSocialSectionBuilder? social) => _$this._social = social;

  SituationBuilder() {
    Situation._defaults(this);
  }

  SituationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _theme = $v.theme;
      _status = $v.status;
      _severity = $v.severity;
      _severityOverridden = $v.severityOverridden;
      _regionCodes = $v.regionCodes.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _centroid = $v.centroid?.toBuilder();
      _startedAt = $v.startedAt;
      _lastActivityAt = $v.lastActivityAt;
      _closedAt = $v.closedAt;
      _memberCount = $v.memberCount;
      _signalFamilies = $v.signalFamilies.toBuilder();
      _corroborationShare = $v.corroborationShare;
      _summary = $v.summary;
      _origin = $v.origin;
      _mergedInto = $v.mergedInto;
      _private = $v.private;
      _version = $v.version;
      _updatedAt = $v.updatedAt;
      _severityOverride = $v.severityOverride;
      _geometry = $v.geometry?.toBuilder();
      _topicIds = $v.topicIds?.toBuilder();
      _entityIds = $v.entityIds?.toBuilder();
      _investigationIds = $v.investigationIds?.toBuilder();
      _linkerVersion = $v.linkerVersion;
      _createdAt = $v.createdAt;
      _evidence = $v.evidence.toBuilder();
      _inference = $v.inference.toBuilder();
      _speculation = $v.speculation.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _coverage = $v.coverage?.toBuilder();
      _social = $v.social?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Situation other) {
    _$v = other as _$Situation;
  }

  @override
  void update(void Function(SituationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Situation build() => _build();

  _$Situation _build() {
    _$Situation _$result;
    try {
      _$result =
          _$v ??
          _$Situation._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Situation', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Situation',
              'title',
            ),
            theme: BuiltValueNullFieldError.checkNotNull(
              theme,
              r'Situation',
              'theme',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Situation',
              'status',
            ),
            severity: BuiltValueNullFieldError.checkNotNull(
              severity,
              r'Situation',
              'severity',
            ),
            severityOverridden: severityOverridden,
            regionCodes: regionCodes.build(),
            bbox: _bbox?.build(),
            centroid: _centroid?.build(),
            startedAt: BuiltValueNullFieldError.checkNotNull(
              startedAt,
              r'Situation',
              'startedAt',
            ),
            lastActivityAt: BuiltValueNullFieldError.checkNotNull(
              lastActivityAt,
              r'Situation',
              'lastActivityAt',
            ),
            closedAt: closedAt,
            memberCount: BuiltValueNullFieldError.checkNotNull(
              memberCount,
              r'Situation',
              'memberCount',
            ),
            signalFamilies: signalFamilies.build(),
            corroborationShare: corroborationShare,
            summary: BuiltValueNullFieldError.checkNotNull(
              summary,
              r'Situation',
              'summary',
            ),
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'Situation',
              'origin',
            ),
            mergedInto: mergedInto,
            private: BuiltValueNullFieldError.checkNotNull(
              private,
              r'Situation',
              'private',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'Situation',
              'version',
            ),
            updatedAt: updatedAt,
            severityOverride: severityOverride,
            geometry: _geometry?.build(),
            topicIds: _topicIds?.build(),
            entityIds: _entityIds?.build(),
            investigationIds: _investigationIds?.build(),
            linkerVersion: linkerVersion,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Situation',
              'createdAt',
            ),
            evidence: evidence.build(),
            inference: inference.build(),
            speculation: speculation.build(),
            caveats: _caveats?.build(),
            coverage: _coverage?.build(),
            social: _social?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        regionCodes.build();
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'centroid';
        _centroid?.build();

        _$failedField = 'signalFamilies';
        signalFamilies.build();

        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'topicIds';
        _topicIds?.build();
        _$failedField = 'entityIds';
        _entityIds?.build();
        _$failedField = 'investigationIds';
        _investigationIds?.build();

        _$failedField = 'evidence';
        evidence.build();
        _$failedField = 'inference';
        inference.build();
        _$failedField = 'speculation';
        speculation.build();
        _$failedField = 'caveats';
        _caveats?.build();
        _$failedField = 'coverage';
        _coverage?.build();
        _$failedField = 'social';
        _social?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Situation',
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
