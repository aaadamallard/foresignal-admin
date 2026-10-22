// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExerciseStats extends ExerciseStats {
  @override
  final int versionsScanned;
  @override
  final BuiltMap<String, int>? alertsByRule;
  @override
  final BuiltMap<String, int>? notificationsByChannel;
  @override
  final int? suppressedByCooldown;
  @override
  final int? suppressedByRateCap;
  @override
  final BuiltList<ExerciseStatsSkippedRulesInner>? skippedRules;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final int? alertsRaised;
  @override
  final String? error;

  factory _$ExerciseStats([void Function(ExerciseStatsBuilder)? updates]) =>
      (ExerciseStatsBuilder()..update(updates))._build();

  _$ExerciseStats._({
    required this.versionsScanned,
    this.alertsByRule,
    this.notificationsByChannel,
    this.suppressedByCooldown,
    this.suppressedByRateCap,
    this.skippedRules,
    this.caveats,
    this.alertsRaised,
    this.error,
  }) : super._();
  @override
  ExerciseStats rebuild(void Function(ExerciseStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseStatsBuilder toBuilder() => ExerciseStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseStats &&
        versionsScanned == other.versionsScanned &&
        alertsByRule == other.alertsByRule &&
        notificationsByChannel == other.notificationsByChannel &&
        suppressedByCooldown == other.suppressedByCooldown &&
        suppressedByRateCap == other.suppressedByRateCap &&
        skippedRules == other.skippedRules &&
        caveats == other.caveats &&
        alertsRaised == other.alertsRaised &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionsScanned.hashCode);
    _$hash = $jc(_$hash, alertsByRule.hashCode);
    _$hash = $jc(_$hash, notificationsByChannel.hashCode);
    _$hash = $jc(_$hash, suppressedByCooldown.hashCode);
    _$hash = $jc(_$hash, suppressedByRateCap.hashCode);
    _$hash = $jc(_$hash, skippedRules.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, alertsRaised.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseStats')
          ..add('versionsScanned', versionsScanned)
          ..add('alertsByRule', alertsByRule)
          ..add('notificationsByChannel', notificationsByChannel)
          ..add('suppressedByCooldown', suppressedByCooldown)
          ..add('suppressedByRateCap', suppressedByRateCap)
          ..add('skippedRules', skippedRules)
          ..add('caveats', caveats)
          ..add('alertsRaised', alertsRaised)
          ..add('error', error))
        .toString();
  }
}

class ExerciseStatsBuilder
    implements Builder<ExerciseStats, ExerciseStatsBuilder> {
  _$ExerciseStats? _$v;

  int? _versionsScanned;
  int? get versionsScanned => _$this._versionsScanned;
  set versionsScanned(int? versionsScanned) =>
      _$this._versionsScanned = versionsScanned;

  MapBuilder<String, int>? _alertsByRule;
  MapBuilder<String, int> get alertsByRule =>
      _$this._alertsByRule ??= MapBuilder<String, int>();
  set alertsByRule(MapBuilder<String, int>? alertsByRule) =>
      _$this._alertsByRule = alertsByRule;

  MapBuilder<String, int>? _notificationsByChannel;
  MapBuilder<String, int> get notificationsByChannel =>
      _$this._notificationsByChannel ??= MapBuilder<String, int>();
  set notificationsByChannel(MapBuilder<String, int>? notificationsByChannel) =>
      _$this._notificationsByChannel = notificationsByChannel;

  int? _suppressedByCooldown;
  int? get suppressedByCooldown => _$this._suppressedByCooldown;
  set suppressedByCooldown(int? suppressedByCooldown) =>
      _$this._suppressedByCooldown = suppressedByCooldown;

  int? _suppressedByRateCap;
  int? get suppressedByRateCap => _$this._suppressedByRateCap;
  set suppressedByRateCap(int? suppressedByRateCap) =>
      _$this._suppressedByRateCap = suppressedByRateCap;

  ListBuilder<ExerciseStatsSkippedRulesInner>? _skippedRules;
  ListBuilder<ExerciseStatsSkippedRulesInner> get skippedRules =>
      _$this._skippedRules ??= ListBuilder<ExerciseStatsSkippedRulesInner>();
  set skippedRules(ListBuilder<ExerciseStatsSkippedRulesInner>? skippedRules) =>
      _$this._skippedRules = skippedRules;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  int? _alertsRaised;
  int? get alertsRaised => _$this._alertsRaised;
  set alertsRaised(int? alertsRaised) => _$this._alertsRaised = alertsRaised;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ExerciseStatsBuilder() {
    ExerciseStats._defaults(this);
  }

  ExerciseStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionsScanned = $v.versionsScanned;
      _alertsByRule = $v.alertsByRule?.toBuilder();
      _notificationsByChannel = $v.notificationsByChannel?.toBuilder();
      _suppressedByCooldown = $v.suppressedByCooldown;
      _suppressedByRateCap = $v.suppressedByRateCap;
      _skippedRules = $v.skippedRules?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _alertsRaised = $v.alertsRaised;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseStats other) {
    _$v = other as _$ExerciseStats;
  }

  @override
  void update(void Function(ExerciseStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseStats build() => _build();

  _$ExerciseStats _build() {
    _$ExerciseStats _$result;
    try {
      _$result =
          _$v ??
          _$ExerciseStats._(
            versionsScanned: BuiltValueNullFieldError.checkNotNull(
              versionsScanned,
              r'ExerciseStats',
              'versionsScanned',
            ),
            alertsByRule: _alertsByRule?.build(),
            notificationsByChannel: _notificationsByChannel?.build(),
            suppressedByCooldown: suppressedByCooldown,
            suppressedByRateCap: suppressedByRateCap,
            skippedRules: _skippedRules?.build(),
            caveats: _caveats?.build(),
            alertsRaised: alertsRaised,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alertsByRule';
        _alertsByRule?.build();
        _$failedField = 'notificationsByChannel';
        _notificationsByChannel?.build();

        _$failedField = 'skippedRules';
        _skippedRules?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExerciseStats',
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
