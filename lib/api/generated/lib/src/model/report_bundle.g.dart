// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportBundle extends ReportBundle {
  @override
  final Report report;
  @override
  final int revision;
  @override
  final String tlp;
  @override
  final BuiltList<ObjectEnvelope> envelopes;
  @override
  final BuiltMap<String, JsonObject?>? snapshots;
  @override
  final BuiltList<ReportBundleAttachmentsInner>? attachments;
  @override
  final String? manifestId;
  @override
  final BuiltList<String>? missing;

  factory _$ReportBundle([void Function(ReportBundleBuilder)? updates]) =>
      (ReportBundleBuilder()..update(updates))._build();

  _$ReportBundle._(
      {required this.report,
      required this.revision,
      required this.tlp,
      required this.envelopes,
      this.snapshots,
      this.attachments,
      this.manifestId,
      this.missing})
      : super._();
  @override
  ReportBundle rebuild(void Function(ReportBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBundleBuilder toBuilder() => ReportBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportBundle &&
        report == other.report &&
        revision == other.revision &&
        tlp == other.tlp &&
        envelopes == other.envelopes &&
        snapshots == other.snapshots &&
        attachments == other.attachments &&
        manifestId == other.manifestId &&
        missing == other.missing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, report.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, envelopes.hashCode);
    _$hash = $jc(_$hash, snapshots.hashCode);
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, missing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportBundle')
          ..add('report', report)
          ..add('revision', revision)
          ..add('tlp', tlp)
          ..add('envelopes', envelopes)
          ..add('snapshots', snapshots)
          ..add('attachments', attachments)
          ..add('manifestId', manifestId)
          ..add('missing', missing))
        .toString();
  }
}

class ReportBundleBuilder
    implements Builder<ReportBundle, ReportBundleBuilder> {
  _$ReportBundle? _$v;

  ReportBuilder? _report;
  ReportBuilder get report => _$this._report ??= ReportBuilder();
  set report(ReportBuilder? report) => _$this._report = report;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ListBuilder<ObjectEnvelope>? _envelopes;
  ListBuilder<ObjectEnvelope> get envelopes =>
      _$this._envelopes ??= ListBuilder<ObjectEnvelope>();
  set envelopes(ListBuilder<ObjectEnvelope>? envelopes) =>
      _$this._envelopes = envelopes;

  MapBuilder<String, JsonObject?>? _snapshots;
  MapBuilder<String, JsonObject?> get snapshots =>
      _$this._snapshots ??= MapBuilder<String, JsonObject?>();
  set snapshots(MapBuilder<String, JsonObject?>? snapshots) =>
      _$this._snapshots = snapshots;

  ListBuilder<ReportBundleAttachmentsInner>? _attachments;
  ListBuilder<ReportBundleAttachmentsInner> get attachments =>
      _$this._attachments ??= ListBuilder<ReportBundleAttachmentsInner>();
  set attachments(ListBuilder<ReportBundleAttachmentsInner>? attachments) =>
      _$this._attachments = attachments;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<String>? _missing;
  ListBuilder<String> get missing => _$this._missing ??= ListBuilder<String>();
  set missing(ListBuilder<String>? missing) => _$this._missing = missing;

  ReportBundleBuilder() {
    ReportBundle._defaults(this);
  }

  ReportBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _report = $v.report.toBuilder();
      _revision = $v.revision;
      _tlp = $v.tlp;
      _envelopes = $v.envelopes.toBuilder();
      _snapshots = $v.snapshots?.toBuilder();
      _attachments = $v.attachments?.toBuilder();
      _manifestId = $v.manifestId;
      _missing = $v.missing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportBundle other) {
    _$v = other as _$ReportBundle;
  }

  @override
  void update(void Function(ReportBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportBundle build() => _build();

  _$ReportBundle _build() {
    _$ReportBundle _$result;
    try {
      _$result = _$v ??
          _$ReportBundle._(
            report: report.build(),
            revision: BuiltValueNullFieldError.checkNotNull(
                revision, r'ReportBundle', 'revision'),
            tlp: BuiltValueNullFieldError.checkNotNull(
                tlp, r'ReportBundle', 'tlp'),
            envelopes: envelopes.build(),
            snapshots: _snapshots?.build(),
            attachments: _attachments?.build(),
            manifestId: manifestId,
            missing: _missing?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'report';
        report.build();

        _$failedField = 'envelopes';
        envelopes.build();
        _$failedField = 'snapshots';
        _snapshots?.build();
        _$failedField = 'attachments';
        _attachments?.build();

        _$failedField = 'missing';
        _missing?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReportBundle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
