// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_revision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportRevisionStatusEnum _$reportRevisionStatusEnum_published =
    const ReportRevisionStatusEnum._('published');
const ReportRevisionStatusEnum _$reportRevisionStatusEnum_retracted =
    const ReportRevisionStatusEnum._('retracted');
const ReportRevisionStatusEnum
_$reportRevisionStatusEnum_unknownDefaultOpenApi =
    const ReportRevisionStatusEnum._('unknownDefaultOpenApi');

ReportRevisionStatusEnum _$reportRevisionStatusEnumValueOf(String name) {
  switch (name) {
    case 'published':
      return _$reportRevisionStatusEnum_published;
    case 'retracted':
      return _$reportRevisionStatusEnum_retracted;
    case 'unknownDefaultOpenApi':
      return _$reportRevisionStatusEnum_unknownDefaultOpenApi;
    default:
      return _$reportRevisionStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportRevisionStatusEnum> _$reportRevisionStatusEnumValues =
    BuiltSet<ReportRevisionStatusEnum>(const <ReportRevisionStatusEnum>[
      _$reportRevisionStatusEnum_published,
      _$reportRevisionStatusEnum_retracted,
      _$reportRevisionStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ReportRevisionStatusEnum> _$reportRevisionStatusEnumSerializer =
    _$ReportRevisionStatusEnumSerializer();

class _$ReportRevisionStatusEnumSerializer
    implements PrimitiveSerializer<ReportRevisionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'published': 'published',
    'retracted': 'retracted',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'published': 'published',
    'retracted': 'retracted',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportRevisionStatusEnum];
  @override
  final String wireName = 'ReportRevisionStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReportRevisionStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportRevisionStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportRevisionStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReportRevision extends ReportRevision {
  @override
  final String reportId;
  @override
  final int revision;
  @override
  final String title;
  @override
  final String tlp;
  @override
  final ReportRevisionStatusEnum status;
  @override
  final DateTime publishedAt;
  @override
  final PrincipalSummary? publishedBy;
  @override
  final DateTime? retractedAt;
  @override
  final String? retractionReason;
  @override
  final String? manifestId;
  @override
  final BuiltList<String>? pinnedRefs;
  @override
  final String? bundleSha256;
  @override
  final ReportRevisionRenditions? renditions;

  factory _$ReportRevision([void Function(ReportRevisionBuilder)? updates]) =>
      (ReportRevisionBuilder()..update(updates))._build();

  _$ReportRevision._({
    required this.reportId,
    required this.revision,
    required this.title,
    required this.tlp,
    required this.status,
    required this.publishedAt,
    this.publishedBy,
    this.retractedAt,
    this.retractionReason,
    this.manifestId,
    this.pinnedRefs,
    this.bundleSha256,
    this.renditions,
  }) : super._();
  @override
  ReportRevision rebuild(void Function(ReportRevisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportRevisionBuilder toBuilder() => ReportRevisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportRevision &&
        reportId == other.reportId &&
        revision == other.revision &&
        title == other.title &&
        tlp == other.tlp &&
        status == other.status &&
        publishedAt == other.publishedAt &&
        publishedBy == other.publishedBy &&
        retractedAt == other.retractedAt &&
        retractionReason == other.retractionReason &&
        manifestId == other.manifestId &&
        pinnedRefs == other.pinnedRefs &&
        bundleSha256 == other.bundleSha256 &&
        renditions == other.renditions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportId.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, publishedBy.hashCode);
    _$hash = $jc(_$hash, retractedAt.hashCode);
    _$hash = $jc(_$hash, retractionReason.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, pinnedRefs.hashCode);
    _$hash = $jc(_$hash, bundleSha256.hashCode);
    _$hash = $jc(_$hash, renditions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportRevision')
          ..add('reportId', reportId)
          ..add('revision', revision)
          ..add('title', title)
          ..add('tlp', tlp)
          ..add('status', status)
          ..add('publishedAt', publishedAt)
          ..add('publishedBy', publishedBy)
          ..add('retractedAt', retractedAt)
          ..add('retractionReason', retractionReason)
          ..add('manifestId', manifestId)
          ..add('pinnedRefs', pinnedRefs)
          ..add('bundleSha256', bundleSha256)
          ..add('renditions', renditions))
        .toString();
  }
}

class ReportRevisionBuilder
    implements Builder<ReportRevision, ReportRevisionBuilder> {
  _$ReportRevision? _$v;

  String? _reportId;
  String? get reportId => _$this._reportId;
  set reportId(String? reportId) => _$this._reportId = reportId;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ReportRevisionStatusEnum? _status;
  ReportRevisionStatusEnum? get status => _$this._status;
  set status(ReportRevisionStatusEnum? status) => _$this._status = status;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  PrincipalSummaryBuilder? _publishedBy;
  PrincipalSummaryBuilder get publishedBy =>
      _$this._publishedBy ??= PrincipalSummaryBuilder();
  set publishedBy(PrincipalSummaryBuilder? publishedBy) =>
      _$this._publishedBy = publishedBy;

  DateTime? _retractedAt;
  DateTime? get retractedAt => _$this._retractedAt;
  set retractedAt(DateTime? retractedAt) => _$this._retractedAt = retractedAt;

  String? _retractionReason;
  String? get retractionReason => _$this._retractionReason;
  set retractionReason(String? retractionReason) =>
      _$this._retractionReason = retractionReason;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<String>? _pinnedRefs;
  ListBuilder<String> get pinnedRefs =>
      _$this._pinnedRefs ??= ListBuilder<String>();
  set pinnedRefs(ListBuilder<String>? pinnedRefs) =>
      _$this._pinnedRefs = pinnedRefs;

  String? _bundleSha256;
  String? get bundleSha256 => _$this._bundleSha256;
  set bundleSha256(String? bundleSha256) => _$this._bundleSha256 = bundleSha256;

  ReportRevisionRenditionsBuilder? _renditions;
  ReportRevisionRenditionsBuilder get renditions =>
      _$this._renditions ??= ReportRevisionRenditionsBuilder();
  set renditions(ReportRevisionRenditionsBuilder? renditions) =>
      _$this._renditions = renditions;

  ReportRevisionBuilder() {
    ReportRevision._defaults(this);
  }

  ReportRevisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportId = $v.reportId;
      _revision = $v.revision;
      _title = $v.title;
      _tlp = $v.tlp;
      _status = $v.status;
      _publishedAt = $v.publishedAt;
      _publishedBy = $v.publishedBy?.toBuilder();
      _retractedAt = $v.retractedAt;
      _retractionReason = $v.retractionReason;
      _manifestId = $v.manifestId;
      _pinnedRefs = $v.pinnedRefs?.toBuilder();
      _bundleSha256 = $v.bundleSha256;
      _renditions = $v.renditions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportRevision other) {
    _$v = other as _$ReportRevision;
  }

  @override
  void update(void Function(ReportRevisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportRevision build() => _build();

  _$ReportRevision _build() {
    _$ReportRevision _$result;
    try {
      _$result =
          _$v ??
          _$ReportRevision._(
            reportId: BuiltValueNullFieldError.checkNotNull(
              reportId,
              r'ReportRevision',
              'reportId',
            ),
            revision: BuiltValueNullFieldError.checkNotNull(
              revision,
              r'ReportRevision',
              'revision',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'ReportRevision',
              'title',
            ),
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'ReportRevision',
              'tlp',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ReportRevision',
              'status',
            ),
            publishedAt: BuiltValueNullFieldError.checkNotNull(
              publishedAt,
              r'ReportRevision',
              'publishedAt',
            ),
            publishedBy: _publishedBy?.build(),
            retractedAt: retractedAt,
            retractionReason: retractionReason,
            manifestId: manifestId,
            pinnedRefs: _pinnedRefs?.build(),
            bundleSha256: bundleSha256,
            renditions: _renditions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publishedBy';
        _publishedBy?.build();

        _$failedField = 'pinnedRefs';
        _pinnedRefs?.build();

        _$failedField = 'renditions';
        _renditions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportRevision',
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
