// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationSummaryOriginEnum _$situationSummaryOriginEnum_auto =
    const SituationSummaryOriginEnum._('auto');
const SituationSummaryOriginEnum _$situationSummaryOriginEnum_operator_ =
    const SituationSummaryOriginEnum._('operator_');
const SituationSummaryOriginEnum _$situationSummaryOriginEnum_agent =
    const SituationSummaryOriginEnum._('agent');
const SituationSummaryOriginEnum _$situationSummaryOriginEnum_analyst =
    const SituationSummaryOriginEnum._('analyst');

SituationSummaryOriginEnum _$situationSummaryOriginEnumValueOf(String name) {
  switch (name) {
    case 'auto':
      return _$situationSummaryOriginEnum_auto;
    case 'operator_':
      return _$situationSummaryOriginEnum_operator_;
    case 'agent':
      return _$situationSummaryOriginEnum_agent;
    case 'analyst':
      return _$situationSummaryOriginEnum_analyst;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationSummaryOriginEnum> _$situationSummaryOriginEnumValues =
    BuiltSet<SituationSummaryOriginEnum>(const <SituationSummaryOriginEnum>[
  _$situationSummaryOriginEnum_auto,
  _$situationSummaryOriginEnum_operator_,
  _$situationSummaryOriginEnum_agent,
  _$situationSummaryOriginEnum_analyst,
]);

Serializer<SituationSummaryOriginEnum> _$situationSummaryOriginEnumSerializer =
    _$SituationSummaryOriginEnumSerializer();

class _$SituationSummaryOriginEnumSerializer
    implements PrimitiveSerializer<SituationSummaryOriginEnum> {
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
  final Iterable<Type> types = const <Type>[SituationSummaryOriginEnum];
  @override
  final String wireName = 'SituationSummaryOriginEnum';

  @override
  Object serialize(Serializers serializers, SituationSummaryOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationSummaryOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationSummaryOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationSummary extends SituationSummary {
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
  final SituationSummaryOriginEnum origin;
  @override
  final String? mergedInto;
  @override
  final bool private;
  @override
  final int version;
  @override
  final DateTime? updatedAt;

  factory _$SituationSummary(
          [void Function(SituationSummaryBuilder)? updates]) =>
      (SituationSummaryBuilder()..update(updates))._build();

  _$SituationSummary._(
      {required this.id,
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
      this.updatedAt})
      : super._();
  @override
  SituationSummary rebuild(void Function(SituationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationSummaryBuilder toBuilder() =>
      SituationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationSummary &&
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
        updatedAt == other.updatedAt;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationSummary')
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
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SituationSummaryBuilder
    implements Builder<SituationSummary, SituationSummaryBuilder> {
  _$SituationSummary? _$v;

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

  SituationSummaryOriginEnum? _origin;
  SituationSummaryOriginEnum? get origin => _$this._origin;
  set origin(SituationSummaryOriginEnum? origin) => _$this._origin = origin;

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

  SituationSummaryBuilder() {
    SituationSummary._defaults(this);
  }

  SituationSummaryBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationSummary other) {
    _$v = other as _$SituationSummary;
  }

  @override
  void update(void Function(SituationSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationSummary build() => _build();

  _$SituationSummary _build() {
    _$SituationSummary _$result;
    try {
      _$result = _$v ??
          _$SituationSummary._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SituationSummary', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SituationSummary', 'title'),
            theme: BuiltValueNullFieldError.checkNotNull(
                theme, r'SituationSummary', 'theme'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SituationSummary', 'status'),
            severity: BuiltValueNullFieldError.checkNotNull(
                severity, r'SituationSummary', 'severity'),
            severityOverridden: severityOverridden,
            regionCodes: regionCodes.build(),
            bbox: _bbox?.build(),
            centroid: _centroid?.build(),
            startedAt: BuiltValueNullFieldError.checkNotNull(
                startedAt, r'SituationSummary', 'startedAt'),
            lastActivityAt: BuiltValueNullFieldError.checkNotNull(
                lastActivityAt, r'SituationSummary', 'lastActivityAt'),
            closedAt: closedAt,
            memberCount: BuiltValueNullFieldError.checkNotNull(
                memberCount, r'SituationSummary', 'memberCount'),
            signalFamilies: signalFamilies.build(),
            corroborationShare: corroborationShare,
            summary: BuiltValueNullFieldError.checkNotNull(
                summary, r'SituationSummary', 'summary'),
            origin: BuiltValueNullFieldError.checkNotNull(
                origin, r'SituationSummary', 'origin'),
            mergedInto: mergedInto,
            private: BuiltValueNullFieldError.checkNotNull(
                private, r'SituationSummary', 'private'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'SituationSummary', 'version'),
            updatedAt: updatedAt,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
