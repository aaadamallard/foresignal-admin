// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_run_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionRunResult extends RetentionRunResult {
  @override
  final DateTime? startedAt;
  @override
  final int? durationMs;
  @override
  final int versionsDeleted;
  @override
  final int headsDeleted;
  @override
  final int? alertsDeleted;
  @override
  final int? usageRowsDeleted;
  @override
  final int? partitionsDropped;
  @override
  final int? headsPurged;
  @override
  final int? fetchLogDeleted;
  @override
  final int? seqClockDeleted;
  @override
  final int? notificationsDeleted;
  @override
  final BuiltList<String>? skippedSources;
  @override
  final RetentionRunResultConsumerClamp? consumerClamp;
  @override
  final BuiltMap<String, RetentionRunResultPerSourceValue>? perSource;

  factory _$RetentionRunResult([
    void Function(RetentionRunResultBuilder)? updates,
  ]) => (RetentionRunResultBuilder()..update(updates))._build();

  _$RetentionRunResult._({
    this.startedAt,
    this.durationMs,
    required this.versionsDeleted,
    required this.headsDeleted,
    this.alertsDeleted,
    this.usageRowsDeleted,
    this.partitionsDropped,
    this.headsPurged,
    this.fetchLogDeleted,
    this.seqClockDeleted,
    this.notificationsDeleted,
    this.skippedSources,
    this.consumerClamp,
    this.perSource,
  }) : super._();
  @override
  RetentionRunResult rebuild(
    void Function(RetentionRunResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RetentionRunResultBuilder toBuilder() =>
      RetentionRunResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionRunResult &&
        startedAt == other.startedAt &&
        durationMs == other.durationMs &&
        versionsDeleted == other.versionsDeleted &&
        headsDeleted == other.headsDeleted &&
        alertsDeleted == other.alertsDeleted &&
        usageRowsDeleted == other.usageRowsDeleted &&
        partitionsDropped == other.partitionsDropped &&
        headsPurged == other.headsPurged &&
        fetchLogDeleted == other.fetchLogDeleted &&
        seqClockDeleted == other.seqClockDeleted &&
        notificationsDeleted == other.notificationsDeleted &&
        skippedSources == other.skippedSources &&
        consumerClamp == other.consumerClamp &&
        perSource == other.perSource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, versionsDeleted.hashCode);
    _$hash = $jc(_$hash, headsDeleted.hashCode);
    _$hash = $jc(_$hash, alertsDeleted.hashCode);
    _$hash = $jc(_$hash, usageRowsDeleted.hashCode);
    _$hash = $jc(_$hash, partitionsDropped.hashCode);
    _$hash = $jc(_$hash, headsPurged.hashCode);
    _$hash = $jc(_$hash, fetchLogDeleted.hashCode);
    _$hash = $jc(_$hash, seqClockDeleted.hashCode);
    _$hash = $jc(_$hash, notificationsDeleted.hashCode);
    _$hash = $jc(_$hash, skippedSources.hashCode);
    _$hash = $jc(_$hash, consumerClamp.hashCode);
    _$hash = $jc(_$hash, perSource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionRunResult')
          ..add('startedAt', startedAt)
          ..add('durationMs', durationMs)
          ..add('versionsDeleted', versionsDeleted)
          ..add('headsDeleted', headsDeleted)
          ..add('alertsDeleted', alertsDeleted)
          ..add('usageRowsDeleted', usageRowsDeleted)
          ..add('partitionsDropped', partitionsDropped)
          ..add('headsPurged', headsPurged)
          ..add('fetchLogDeleted', fetchLogDeleted)
          ..add('seqClockDeleted', seqClockDeleted)
          ..add('notificationsDeleted', notificationsDeleted)
          ..add('skippedSources', skippedSources)
          ..add('consumerClamp', consumerClamp)
          ..add('perSource', perSource))
        .toString();
  }
}

class RetentionRunResultBuilder
    implements Builder<RetentionRunResult, RetentionRunResultBuilder> {
  _$RetentionRunResult? _$v;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  int? _versionsDeleted;
  int? get versionsDeleted => _$this._versionsDeleted;
  set versionsDeleted(int? versionsDeleted) =>
      _$this._versionsDeleted = versionsDeleted;

  int? _headsDeleted;
  int? get headsDeleted => _$this._headsDeleted;
  set headsDeleted(int? headsDeleted) => _$this._headsDeleted = headsDeleted;

  int? _alertsDeleted;
  int? get alertsDeleted => _$this._alertsDeleted;
  set alertsDeleted(int? alertsDeleted) =>
      _$this._alertsDeleted = alertsDeleted;

  int? _usageRowsDeleted;
  int? get usageRowsDeleted => _$this._usageRowsDeleted;
  set usageRowsDeleted(int? usageRowsDeleted) =>
      _$this._usageRowsDeleted = usageRowsDeleted;

  int? _partitionsDropped;
  int? get partitionsDropped => _$this._partitionsDropped;
  set partitionsDropped(int? partitionsDropped) =>
      _$this._partitionsDropped = partitionsDropped;

  int? _headsPurged;
  int? get headsPurged => _$this._headsPurged;
  set headsPurged(int? headsPurged) => _$this._headsPurged = headsPurged;

  int? _fetchLogDeleted;
  int? get fetchLogDeleted => _$this._fetchLogDeleted;
  set fetchLogDeleted(int? fetchLogDeleted) =>
      _$this._fetchLogDeleted = fetchLogDeleted;

  int? _seqClockDeleted;
  int? get seqClockDeleted => _$this._seqClockDeleted;
  set seqClockDeleted(int? seqClockDeleted) =>
      _$this._seqClockDeleted = seqClockDeleted;

  int? _notificationsDeleted;
  int? get notificationsDeleted => _$this._notificationsDeleted;
  set notificationsDeleted(int? notificationsDeleted) =>
      _$this._notificationsDeleted = notificationsDeleted;

  ListBuilder<String>? _skippedSources;
  ListBuilder<String> get skippedSources =>
      _$this._skippedSources ??= ListBuilder<String>();
  set skippedSources(ListBuilder<String>? skippedSources) =>
      _$this._skippedSources = skippedSources;

  RetentionRunResultConsumerClampBuilder? _consumerClamp;
  RetentionRunResultConsumerClampBuilder get consumerClamp =>
      _$this._consumerClamp ??= RetentionRunResultConsumerClampBuilder();
  set consumerClamp(RetentionRunResultConsumerClampBuilder? consumerClamp) =>
      _$this._consumerClamp = consumerClamp;

  MapBuilder<String, RetentionRunResultPerSourceValue>? _perSource;
  MapBuilder<String, RetentionRunResultPerSourceValue> get perSource =>
      _$this._perSource ??=
          MapBuilder<String, RetentionRunResultPerSourceValue>();
  set perSource(
    MapBuilder<String, RetentionRunResultPerSourceValue>? perSource,
  ) => _$this._perSource = perSource;

  RetentionRunResultBuilder() {
    RetentionRunResult._defaults(this);
  }

  RetentionRunResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startedAt = $v.startedAt;
      _durationMs = $v.durationMs;
      _versionsDeleted = $v.versionsDeleted;
      _headsDeleted = $v.headsDeleted;
      _alertsDeleted = $v.alertsDeleted;
      _usageRowsDeleted = $v.usageRowsDeleted;
      _partitionsDropped = $v.partitionsDropped;
      _headsPurged = $v.headsPurged;
      _fetchLogDeleted = $v.fetchLogDeleted;
      _seqClockDeleted = $v.seqClockDeleted;
      _notificationsDeleted = $v.notificationsDeleted;
      _skippedSources = $v.skippedSources?.toBuilder();
      _consumerClamp = $v.consumerClamp?.toBuilder();
      _perSource = $v.perSource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionRunResult other) {
    _$v = other as _$RetentionRunResult;
  }

  @override
  void update(void Function(RetentionRunResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionRunResult build() => _build();

  _$RetentionRunResult _build() {
    _$RetentionRunResult _$result;
    try {
      _$result =
          _$v ??
          _$RetentionRunResult._(
            startedAt: startedAt,
            durationMs: durationMs,
            versionsDeleted: BuiltValueNullFieldError.checkNotNull(
              versionsDeleted,
              r'RetentionRunResult',
              'versionsDeleted',
            ),
            headsDeleted: BuiltValueNullFieldError.checkNotNull(
              headsDeleted,
              r'RetentionRunResult',
              'headsDeleted',
            ),
            alertsDeleted: alertsDeleted,
            usageRowsDeleted: usageRowsDeleted,
            partitionsDropped: partitionsDropped,
            headsPurged: headsPurged,
            fetchLogDeleted: fetchLogDeleted,
            seqClockDeleted: seqClockDeleted,
            notificationsDeleted: notificationsDeleted,
            skippedSources: _skippedSources?.build(),
            consumerClamp: _consumerClamp?.build(),
            perSource: _perSource?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skippedSources';
        _skippedSources?.build();
        _$failedField = 'consumerClamp';
        _consumerClamp?.build();
        _$failedField = 'perSource';
        _perSource?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RetentionRunResult',
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
