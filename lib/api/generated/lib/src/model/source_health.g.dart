// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_health.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceHealth extends SourceHealth {
  @override
  final String sourceId;
  @override
  final HealthStatus status;
  @override
  final String? statusReason;
  @override
  final DateTime? lastAttemptAt;
  @override
  final DateTime? lastSuccessAt;
  @override
  final DateTime? lastErrorAt;
  @override
  final String? lastError;
  @override
  final int? lastHttpStatus;
  @override
  final int consecutiveFailures;
  @override
  final int? lastRecordsSeen;
  @override
  final int? lastRecordsChanged;
  @override
  final num? errorRateLastHour;
  @override
  final DateTime? backoffUntil;
  @override
  final Budget? budget;
  @override
  final int? budgetUsedToday;
  @override
  final int? budgetRemainingToday;
  @override
  final int? refusedLastHour;
  @override
  final int? requestsLastHour;
  @override
  final int? bytesLastHour;
  @override
  final Coverage? coverage;
  @override
  final SourceStorage? storage;
  @override
  final DateTime? lastDataAt;
  @override
  final num? budgetHoursRemaining;
  @override
  final DateTime? newestFrameAt;
  @override
  final int? frameAgeSeconds;
  @override
  final BuiltMap<String, JsonObject?>? details;
  @override
  final DoctorReportSummary? lastDoctorReport;
  @override
  final num? spentUsdThisMonth;

  factory _$SourceHealth([void Function(SourceHealthBuilder)? updates]) =>
      (SourceHealthBuilder()..update(updates))._build();

  _$SourceHealth._(
      {required this.sourceId,
      required this.status,
      this.statusReason,
      this.lastAttemptAt,
      this.lastSuccessAt,
      this.lastErrorAt,
      this.lastError,
      this.lastHttpStatus,
      required this.consecutiveFailures,
      this.lastRecordsSeen,
      this.lastRecordsChanged,
      this.errorRateLastHour,
      this.backoffUntil,
      this.budget,
      this.budgetUsedToday,
      this.budgetRemainingToday,
      this.refusedLastHour,
      this.requestsLastHour,
      this.bytesLastHour,
      this.coverage,
      this.storage,
      this.lastDataAt,
      this.budgetHoursRemaining,
      this.newestFrameAt,
      this.frameAgeSeconds,
      this.details,
      this.lastDoctorReport,
      this.spentUsdThisMonth})
      : super._();
  @override
  SourceHealth rebuild(void Function(SourceHealthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceHealthBuilder toBuilder() => SourceHealthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceHealth &&
        sourceId == other.sourceId &&
        status == other.status &&
        statusReason == other.statusReason &&
        lastAttemptAt == other.lastAttemptAt &&
        lastSuccessAt == other.lastSuccessAt &&
        lastErrorAt == other.lastErrorAt &&
        lastError == other.lastError &&
        lastHttpStatus == other.lastHttpStatus &&
        consecutiveFailures == other.consecutiveFailures &&
        lastRecordsSeen == other.lastRecordsSeen &&
        lastRecordsChanged == other.lastRecordsChanged &&
        errorRateLastHour == other.errorRateLastHour &&
        backoffUntil == other.backoffUntil &&
        budget == other.budget &&
        budgetUsedToday == other.budgetUsedToday &&
        budgetRemainingToday == other.budgetRemainingToday &&
        refusedLastHour == other.refusedLastHour &&
        requestsLastHour == other.requestsLastHour &&
        bytesLastHour == other.bytesLastHour &&
        coverage == other.coverage &&
        storage == other.storage &&
        lastDataAt == other.lastDataAt &&
        budgetHoursRemaining == other.budgetHoursRemaining &&
        newestFrameAt == other.newestFrameAt &&
        frameAgeSeconds == other.frameAgeSeconds &&
        details == other.details &&
        lastDoctorReport == other.lastDoctorReport &&
        spentUsdThisMonth == other.spentUsdThisMonth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, lastAttemptAt.hashCode);
    _$hash = $jc(_$hash, lastSuccessAt.hashCode);
    _$hash = $jc(_$hash, lastErrorAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, lastHttpStatus.hashCode);
    _$hash = $jc(_$hash, consecutiveFailures.hashCode);
    _$hash = $jc(_$hash, lastRecordsSeen.hashCode);
    _$hash = $jc(_$hash, lastRecordsChanged.hashCode);
    _$hash = $jc(_$hash, errorRateLastHour.hashCode);
    _$hash = $jc(_$hash, backoffUntil.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, budgetUsedToday.hashCode);
    _$hash = $jc(_$hash, budgetRemainingToday.hashCode);
    _$hash = $jc(_$hash, refusedLastHour.hashCode);
    _$hash = $jc(_$hash, requestsLastHour.hashCode);
    _$hash = $jc(_$hash, bytesLastHour.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, storage.hashCode);
    _$hash = $jc(_$hash, lastDataAt.hashCode);
    _$hash = $jc(_$hash, budgetHoursRemaining.hashCode);
    _$hash = $jc(_$hash, newestFrameAt.hashCode);
    _$hash = $jc(_$hash, frameAgeSeconds.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, lastDoctorReport.hashCode);
    _$hash = $jc(_$hash, spentUsdThisMonth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceHealth')
          ..add('sourceId', sourceId)
          ..add('status', status)
          ..add('statusReason', statusReason)
          ..add('lastAttemptAt', lastAttemptAt)
          ..add('lastSuccessAt', lastSuccessAt)
          ..add('lastErrorAt', lastErrorAt)
          ..add('lastError', lastError)
          ..add('lastHttpStatus', lastHttpStatus)
          ..add('consecutiveFailures', consecutiveFailures)
          ..add('lastRecordsSeen', lastRecordsSeen)
          ..add('lastRecordsChanged', lastRecordsChanged)
          ..add('errorRateLastHour', errorRateLastHour)
          ..add('backoffUntil', backoffUntil)
          ..add('budget', budget)
          ..add('budgetUsedToday', budgetUsedToday)
          ..add('budgetRemainingToday', budgetRemainingToday)
          ..add('refusedLastHour', refusedLastHour)
          ..add('requestsLastHour', requestsLastHour)
          ..add('bytesLastHour', bytesLastHour)
          ..add('coverage', coverage)
          ..add('storage', storage)
          ..add('lastDataAt', lastDataAt)
          ..add('budgetHoursRemaining', budgetHoursRemaining)
          ..add('newestFrameAt', newestFrameAt)
          ..add('frameAgeSeconds', frameAgeSeconds)
          ..add('details', details)
          ..add('lastDoctorReport', lastDoctorReport)
          ..add('spentUsdThisMonth', spentUsdThisMonth))
        .toString();
  }
}

class SourceHealthBuilder
    implements Builder<SourceHealth, SourceHealthBuilder> {
  _$SourceHealth? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  HealthStatus? _status;
  HealthStatus? get status => _$this._status;
  set status(HealthStatus? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  DateTime? _lastAttemptAt;
  DateTime? get lastAttemptAt => _$this._lastAttemptAt;
  set lastAttemptAt(DateTime? lastAttemptAt) =>
      _$this._lastAttemptAt = lastAttemptAt;

  DateTime? _lastSuccessAt;
  DateTime? get lastSuccessAt => _$this._lastSuccessAt;
  set lastSuccessAt(DateTime? lastSuccessAt) =>
      _$this._lastSuccessAt = lastSuccessAt;

  DateTime? _lastErrorAt;
  DateTime? get lastErrorAt => _$this._lastErrorAt;
  set lastErrorAt(DateTime? lastErrorAt) => _$this._lastErrorAt = lastErrorAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  int? _lastHttpStatus;
  int? get lastHttpStatus => _$this._lastHttpStatus;
  set lastHttpStatus(int? lastHttpStatus) =>
      _$this._lastHttpStatus = lastHttpStatus;

  int? _consecutiveFailures;
  int? get consecutiveFailures => _$this._consecutiveFailures;
  set consecutiveFailures(int? consecutiveFailures) =>
      _$this._consecutiveFailures = consecutiveFailures;

  int? _lastRecordsSeen;
  int? get lastRecordsSeen => _$this._lastRecordsSeen;
  set lastRecordsSeen(int? lastRecordsSeen) =>
      _$this._lastRecordsSeen = lastRecordsSeen;

  int? _lastRecordsChanged;
  int? get lastRecordsChanged => _$this._lastRecordsChanged;
  set lastRecordsChanged(int? lastRecordsChanged) =>
      _$this._lastRecordsChanged = lastRecordsChanged;

  num? _errorRateLastHour;
  num? get errorRateLastHour => _$this._errorRateLastHour;
  set errorRateLastHour(num? errorRateLastHour) =>
      _$this._errorRateLastHour = errorRateLastHour;

  DateTime? _backoffUntil;
  DateTime? get backoffUntil => _$this._backoffUntil;
  set backoffUntil(DateTime? backoffUntil) =>
      _$this._backoffUntil = backoffUntil;

  BudgetBuilder? _budget;
  BudgetBuilder get budget => _$this._budget ??= BudgetBuilder();
  set budget(BudgetBuilder? budget) => _$this._budget = budget;

  int? _budgetUsedToday;
  int? get budgetUsedToday => _$this._budgetUsedToday;
  set budgetUsedToday(int? budgetUsedToday) =>
      _$this._budgetUsedToday = budgetUsedToday;

  int? _budgetRemainingToday;
  int? get budgetRemainingToday => _$this._budgetRemainingToday;
  set budgetRemainingToday(int? budgetRemainingToday) =>
      _$this._budgetRemainingToday = budgetRemainingToday;

  int? _refusedLastHour;
  int? get refusedLastHour => _$this._refusedLastHour;
  set refusedLastHour(int? refusedLastHour) =>
      _$this._refusedLastHour = refusedLastHour;

  int? _requestsLastHour;
  int? get requestsLastHour => _$this._requestsLastHour;
  set requestsLastHour(int? requestsLastHour) =>
      _$this._requestsLastHour = requestsLastHour;

  int? _bytesLastHour;
  int? get bytesLastHour => _$this._bytesLastHour;
  set bytesLastHour(int? bytesLastHour) =>
      _$this._bytesLastHour = bytesLastHour;

  CoverageBuilder? _coverage;
  CoverageBuilder get coverage => _$this._coverage ??= CoverageBuilder();
  set coverage(CoverageBuilder? coverage) => _$this._coverage = coverage;

  SourceStorageBuilder? _storage;
  SourceStorageBuilder get storage =>
      _$this._storage ??= SourceStorageBuilder();
  set storage(SourceStorageBuilder? storage) => _$this._storage = storage;

  DateTime? _lastDataAt;
  DateTime? get lastDataAt => _$this._lastDataAt;
  set lastDataAt(DateTime? lastDataAt) => _$this._lastDataAt = lastDataAt;

  num? _budgetHoursRemaining;
  num? get budgetHoursRemaining => _$this._budgetHoursRemaining;
  set budgetHoursRemaining(num? budgetHoursRemaining) =>
      _$this._budgetHoursRemaining = budgetHoursRemaining;

  DateTime? _newestFrameAt;
  DateTime? get newestFrameAt => _$this._newestFrameAt;
  set newestFrameAt(DateTime? newestFrameAt) =>
      _$this._newestFrameAt = newestFrameAt;

  int? _frameAgeSeconds;
  int? get frameAgeSeconds => _$this._frameAgeSeconds;
  set frameAgeSeconds(int? frameAgeSeconds) =>
      _$this._frameAgeSeconds = frameAgeSeconds;

  MapBuilder<String, JsonObject?>? _details;
  MapBuilder<String, JsonObject?> get details =>
      _$this._details ??= MapBuilder<String, JsonObject?>();
  set details(MapBuilder<String, JsonObject?>? details) =>
      _$this._details = details;

  DoctorReportSummaryBuilder? _lastDoctorReport;
  DoctorReportSummaryBuilder get lastDoctorReport =>
      _$this._lastDoctorReport ??= DoctorReportSummaryBuilder();
  set lastDoctorReport(DoctorReportSummaryBuilder? lastDoctorReport) =>
      _$this._lastDoctorReport = lastDoctorReport;

  num? _spentUsdThisMonth;
  num? get spentUsdThisMonth => _$this._spentUsdThisMonth;
  set spentUsdThisMonth(num? spentUsdThisMonth) =>
      _$this._spentUsdThisMonth = spentUsdThisMonth;

  SourceHealthBuilder() {
    SourceHealth._defaults(this);
  }

  SourceHealthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _lastAttemptAt = $v.lastAttemptAt;
      _lastSuccessAt = $v.lastSuccessAt;
      _lastErrorAt = $v.lastErrorAt;
      _lastError = $v.lastError;
      _lastHttpStatus = $v.lastHttpStatus;
      _consecutiveFailures = $v.consecutiveFailures;
      _lastRecordsSeen = $v.lastRecordsSeen;
      _lastRecordsChanged = $v.lastRecordsChanged;
      _errorRateLastHour = $v.errorRateLastHour;
      _backoffUntil = $v.backoffUntil;
      _budget = $v.budget?.toBuilder();
      _budgetUsedToday = $v.budgetUsedToday;
      _budgetRemainingToday = $v.budgetRemainingToday;
      _refusedLastHour = $v.refusedLastHour;
      _requestsLastHour = $v.requestsLastHour;
      _bytesLastHour = $v.bytesLastHour;
      _coverage = $v.coverage?.toBuilder();
      _storage = $v.storage?.toBuilder();
      _lastDataAt = $v.lastDataAt;
      _budgetHoursRemaining = $v.budgetHoursRemaining;
      _newestFrameAt = $v.newestFrameAt;
      _frameAgeSeconds = $v.frameAgeSeconds;
      _details = $v.details?.toBuilder();
      _lastDoctorReport = $v.lastDoctorReport?.toBuilder();
      _spentUsdThisMonth = $v.spentUsdThisMonth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceHealth other) {
    _$v = other as _$SourceHealth;
  }

  @override
  void update(void Function(SourceHealthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceHealth build() => _build();

  _$SourceHealth _build() {
    _$SourceHealth _$result;
    try {
      _$result = _$v ??
          _$SourceHealth._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'SourceHealth', 'sourceId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SourceHealth', 'status'),
            statusReason: statusReason,
            lastAttemptAt: lastAttemptAt,
            lastSuccessAt: lastSuccessAt,
            lastErrorAt: lastErrorAt,
            lastError: lastError,
            lastHttpStatus: lastHttpStatus,
            consecutiveFailures: BuiltValueNullFieldError.checkNotNull(
                consecutiveFailures, r'SourceHealth', 'consecutiveFailures'),
            lastRecordsSeen: lastRecordsSeen,
            lastRecordsChanged: lastRecordsChanged,
            errorRateLastHour: errorRateLastHour,
            backoffUntil: backoffUntil,
            budget: _budget?.build(),
            budgetUsedToday: budgetUsedToday,
            budgetRemainingToday: budgetRemainingToday,
            refusedLastHour: refusedLastHour,
            requestsLastHour: requestsLastHour,
            bytesLastHour: bytesLastHour,
            coverage: _coverage?.build(),
            storage: _storage?.build(),
            lastDataAt: lastDataAt,
            budgetHoursRemaining: budgetHoursRemaining,
            newestFrameAt: newestFrameAt,
            frameAgeSeconds: frameAgeSeconds,
            details: _details?.build(),
            lastDoctorReport: _lastDoctorReport?.build(),
            spentUsdThisMonth: spentUsdThisMonth,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'budget';
        _budget?.build();

        _$failedField = 'coverage';
        _coverage?.build();
        _$failedField = 'storage';
        _storage?.build();

        _$failedField = 'details';
        _details?.build();
        _$failedField = 'lastDoctorReport';
        _lastDoctorReport?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SourceHealth', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
