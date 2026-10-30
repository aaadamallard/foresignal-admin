// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edition_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditionSummary extends EditionSummary {
  @override
  final String briefingId;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final String? outputLanguage;
  @override
  final String schedule;
  @override
  final String timezone;
  @override
  final DateTime? nextRunAt;
  @override
  final DateTime? lastRunAt;
  @override
  final String? lastRunStatus;
  @override
  final String? latestRunId;
  @override
  final String? siteUrl;

  factory _$EditionSummary([void Function(EditionSummaryBuilder)? updates]) =>
      (EditionSummaryBuilder()..update(updates))._build();

  _$EditionSummary._({
    required this.briefingId,
    required this.name,
    required this.enabled,
    this.outputLanguage,
    required this.schedule,
    required this.timezone,
    this.nextRunAt,
    this.lastRunAt,
    this.lastRunStatus,
    this.latestRunId,
    this.siteUrl,
  }) : super._();
  @override
  EditionSummary rebuild(void Function(EditionSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditionSummaryBuilder toBuilder() => EditionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditionSummary &&
        briefingId == other.briefingId &&
        name == other.name &&
        enabled == other.enabled &&
        outputLanguage == other.outputLanguage &&
        schedule == other.schedule &&
        timezone == other.timezone &&
        nextRunAt == other.nextRunAt &&
        lastRunAt == other.lastRunAt &&
        lastRunStatus == other.lastRunStatus &&
        latestRunId == other.latestRunId &&
        siteUrl == other.siteUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, briefingId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, outputLanguage.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, nextRunAt.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, lastRunStatus.hashCode);
    _$hash = $jc(_$hash, latestRunId.hashCode);
    _$hash = $jc(_$hash, siteUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditionSummary')
          ..add('briefingId', briefingId)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('outputLanguage', outputLanguage)
          ..add('schedule', schedule)
          ..add('timezone', timezone)
          ..add('nextRunAt', nextRunAt)
          ..add('lastRunAt', lastRunAt)
          ..add('lastRunStatus', lastRunStatus)
          ..add('latestRunId', latestRunId)
          ..add('siteUrl', siteUrl))
        .toString();
  }
}

class EditionSummaryBuilder
    implements Builder<EditionSummary, EditionSummaryBuilder> {
  _$EditionSummary? _$v;

  String? _briefingId;
  String? get briefingId => _$this._briefingId;
  set briefingId(String? briefingId) => _$this._briefingId = briefingId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _outputLanguage;
  String? get outputLanguage => _$this._outputLanguage;
  set outputLanguage(String? outputLanguage) =>
      _$this._outputLanguage = outputLanguage;

  String? _schedule;
  String? get schedule => _$this._schedule;
  set schedule(String? schedule) => _$this._schedule = schedule;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  DateTime? _nextRunAt;
  DateTime? get nextRunAt => _$this._nextRunAt;
  set nextRunAt(DateTime? nextRunAt) => _$this._nextRunAt = nextRunAt;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  String? _lastRunStatus;
  String? get lastRunStatus => _$this._lastRunStatus;
  set lastRunStatus(String? lastRunStatus) =>
      _$this._lastRunStatus = lastRunStatus;

  String? _latestRunId;
  String? get latestRunId => _$this._latestRunId;
  set latestRunId(String? latestRunId) => _$this._latestRunId = latestRunId;

  String? _siteUrl;
  String? get siteUrl => _$this._siteUrl;
  set siteUrl(String? siteUrl) => _$this._siteUrl = siteUrl;

  EditionSummaryBuilder() {
    EditionSummary._defaults(this);
  }

  EditionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _briefingId = $v.briefingId;
      _name = $v.name;
      _enabled = $v.enabled;
      _outputLanguage = $v.outputLanguage;
      _schedule = $v.schedule;
      _timezone = $v.timezone;
      _nextRunAt = $v.nextRunAt;
      _lastRunAt = $v.lastRunAt;
      _lastRunStatus = $v.lastRunStatus;
      _latestRunId = $v.latestRunId;
      _siteUrl = $v.siteUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditionSummary other) {
    _$v = other as _$EditionSummary;
  }

  @override
  void update(void Function(EditionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditionSummary build() => _build();

  _$EditionSummary _build() {
    final _$result =
        _$v ??
        _$EditionSummary._(
          briefingId: BuiltValueNullFieldError.checkNotNull(
            briefingId,
            r'EditionSummary',
            'briefingId',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'EditionSummary',
            'name',
          ),
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'EditionSummary',
            'enabled',
          ),
          outputLanguage: outputLanguage,
          schedule: BuiltValueNullFieldError.checkNotNull(
            schedule,
            r'EditionSummary',
            'schedule',
          ),
          timezone: BuiltValueNullFieldError.checkNotNull(
            timezone,
            r'EditionSummary',
            'timezone',
          ),
          nextRunAt: nextRunAt,
          lastRunAt: lastRunAt,
          lastRunStatus: lastRunStatus,
          latestRunId: latestRunId,
          siteUrl: siteUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
