// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purge_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurgeReport extends PurgeReport {
  @override
  final int tombstoneSeq;
  @override
  final int versionsDeleted;
  @override
  final int? alertsRedacted;
  @override
  final int? alertsDeleted;
  @override
  final int? embeddingsDeleted;
  @override
  final int? notificationsRedacted;
  @override
  final PurgeReportCitingDocuments? citingDocuments;

  factory _$PurgeReport([void Function(PurgeReportBuilder)? updates]) =>
      (PurgeReportBuilder()..update(updates))._build();

  _$PurgeReport._({
    required this.tombstoneSeq,
    required this.versionsDeleted,
    this.alertsRedacted,
    this.alertsDeleted,
    this.embeddingsDeleted,
    this.notificationsRedacted,
    this.citingDocuments,
  }) : super._();
  @override
  PurgeReport rebuild(void Function(PurgeReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurgeReportBuilder toBuilder() => PurgeReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurgeReport &&
        tombstoneSeq == other.tombstoneSeq &&
        versionsDeleted == other.versionsDeleted &&
        alertsRedacted == other.alertsRedacted &&
        alertsDeleted == other.alertsDeleted &&
        embeddingsDeleted == other.embeddingsDeleted &&
        notificationsRedacted == other.notificationsRedacted &&
        citingDocuments == other.citingDocuments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tombstoneSeq.hashCode);
    _$hash = $jc(_$hash, versionsDeleted.hashCode);
    _$hash = $jc(_$hash, alertsRedacted.hashCode);
    _$hash = $jc(_$hash, alertsDeleted.hashCode);
    _$hash = $jc(_$hash, embeddingsDeleted.hashCode);
    _$hash = $jc(_$hash, notificationsRedacted.hashCode);
    _$hash = $jc(_$hash, citingDocuments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PurgeReport')
          ..add('tombstoneSeq', tombstoneSeq)
          ..add('versionsDeleted', versionsDeleted)
          ..add('alertsRedacted', alertsRedacted)
          ..add('alertsDeleted', alertsDeleted)
          ..add('embeddingsDeleted', embeddingsDeleted)
          ..add('notificationsRedacted', notificationsRedacted)
          ..add('citingDocuments', citingDocuments))
        .toString();
  }
}

class PurgeReportBuilder implements Builder<PurgeReport, PurgeReportBuilder> {
  _$PurgeReport? _$v;

  int? _tombstoneSeq;
  int? get tombstoneSeq => _$this._tombstoneSeq;
  set tombstoneSeq(int? tombstoneSeq) => _$this._tombstoneSeq = tombstoneSeq;

  int? _versionsDeleted;
  int? get versionsDeleted => _$this._versionsDeleted;
  set versionsDeleted(int? versionsDeleted) =>
      _$this._versionsDeleted = versionsDeleted;

  int? _alertsRedacted;
  int? get alertsRedacted => _$this._alertsRedacted;
  set alertsRedacted(int? alertsRedacted) =>
      _$this._alertsRedacted = alertsRedacted;

  int? _alertsDeleted;
  int? get alertsDeleted => _$this._alertsDeleted;
  set alertsDeleted(int? alertsDeleted) =>
      _$this._alertsDeleted = alertsDeleted;

  int? _embeddingsDeleted;
  int? get embeddingsDeleted => _$this._embeddingsDeleted;
  set embeddingsDeleted(int? embeddingsDeleted) =>
      _$this._embeddingsDeleted = embeddingsDeleted;

  int? _notificationsRedacted;
  int? get notificationsRedacted => _$this._notificationsRedacted;
  set notificationsRedacted(int? notificationsRedacted) =>
      _$this._notificationsRedacted = notificationsRedacted;

  PurgeReportCitingDocumentsBuilder? _citingDocuments;
  PurgeReportCitingDocumentsBuilder get citingDocuments =>
      _$this._citingDocuments ??= PurgeReportCitingDocumentsBuilder();
  set citingDocuments(PurgeReportCitingDocumentsBuilder? citingDocuments) =>
      _$this._citingDocuments = citingDocuments;

  PurgeReportBuilder() {
    PurgeReport._defaults(this);
  }

  PurgeReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tombstoneSeq = $v.tombstoneSeq;
      _versionsDeleted = $v.versionsDeleted;
      _alertsRedacted = $v.alertsRedacted;
      _alertsDeleted = $v.alertsDeleted;
      _embeddingsDeleted = $v.embeddingsDeleted;
      _notificationsRedacted = $v.notificationsRedacted;
      _citingDocuments = $v.citingDocuments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurgeReport other) {
    _$v = other as _$PurgeReport;
  }

  @override
  void update(void Function(PurgeReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurgeReport build() => _build();

  _$PurgeReport _build() {
    _$PurgeReport _$result;
    try {
      _$result =
          _$v ??
          _$PurgeReport._(
            tombstoneSeq: BuiltValueNullFieldError.checkNotNull(
              tombstoneSeq,
              r'PurgeReport',
              'tombstoneSeq',
            ),
            versionsDeleted: BuiltValueNullFieldError.checkNotNull(
              versionsDeleted,
              r'PurgeReport',
              'versionsDeleted',
            ),
            alertsRedacted: alertsRedacted,
            alertsDeleted: alertsDeleted,
            embeddingsDeleted: embeddingsDeleted,
            notificationsRedacted: notificationsRedacted,
            citingDocuments: _citingDocuments?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citingDocuments';
        _citingDocuments?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PurgeReport',
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
