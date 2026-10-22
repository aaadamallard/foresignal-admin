// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_quality_daily.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleQualityDaily extends RuleQualityDaily {
  @override
  final String ruleId;
  @override
  final Date day;
  @override
  final int fired;
  @override
  final RuleQualityDailyFeedback? feedback;
  @override
  final RuleQualityDailySignals? signals;
  @override
  final num? medianAckSeconds;
  @override
  final int? flaps;
  @override
  final int? suppressedByCooldown;
  @override
  final int? suppressedByRateCap;

  factory _$RuleQualityDaily([
    void Function(RuleQualityDailyBuilder)? updates,
  ]) => (RuleQualityDailyBuilder()..update(updates))._build();

  _$RuleQualityDaily._({
    required this.ruleId,
    required this.day,
    required this.fired,
    this.feedback,
    this.signals,
    this.medianAckSeconds,
    this.flaps,
    this.suppressedByCooldown,
    this.suppressedByRateCap,
  }) : super._();
  @override
  RuleQualityDaily rebuild(void Function(RuleQualityDailyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleQualityDailyBuilder toBuilder() =>
      RuleQualityDailyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleQualityDaily &&
        ruleId == other.ruleId &&
        day == other.day &&
        fired == other.fired &&
        feedback == other.feedback &&
        signals == other.signals &&
        medianAckSeconds == other.medianAckSeconds &&
        flaps == other.flaps &&
        suppressedByCooldown == other.suppressedByCooldown &&
        suppressedByRateCap == other.suppressedByRateCap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, fired.hashCode);
    _$hash = $jc(_$hash, feedback.hashCode);
    _$hash = $jc(_$hash, signals.hashCode);
    _$hash = $jc(_$hash, medianAckSeconds.hashCode);
    _$hash = $jc(_$hash, flaps.hashCode);
    _$hash = $jc(_$hash, suppressedByCooldown.hashCode);
    _$hash = $jc(_$hash, suppressedByRateCap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleQualityDaily')
          ..add('ruleId', ruleId)
          ..add('day', day)
          ..add('fired', fired)
          ..add('feedback', feedback)
          ..add('signals', signals)
          ..add('medianAckSeconds', medianAckSeconds)
          ..add('flaps', flaps)
          ..add('suppressedByCooldown', suppressedByCooldown)
          ..add('suppressedByRateCap', suppressedByRateCap))
        .toString();
  }
}

class RuleQualityDailyBuilder
    implements Builder<RuleQualityDaily, RuleQualityDailyBuilder> {
  _$RuleQualityDaily? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  Date? _day;
  Date? get day => _$this._day;
  set day(Date? day) => _$this._day = day;

  int? _fired;
  int? get fired => _$this._fired;
  set fired(int? fired) => _$this._fired = fired;

  RuleQualityDailyFeedbackBuilder? _feedback;
  RuleQualityDailyFeedbackBuilder get feedback =>
      _$this._feedback ??= RuleQualityDailyFeedbackBuilder();
  set feedback(RuleQualityDailyFeedbackBuilder? feedback) =>
      _$this._feedback = feedback;

  RuleQualityDailySignalsBuilder? _signals;
  RuleQualityDailySignalsBuilder get signals =>
      _$this._signals ??= RuleQualityDailySignalsBuilder();
  set signals(RuleQualityDailySignalsBuilder? signals) =>
      _$this._signals = signals;

  num? _medianAckSeconds;
  num? get medianAckSeconds => _$this._medianAckSeconds;
  set medianAckSeconds(num? medianAckSeconds) =>
      _$this._medianAckSeconds = medianAckSeconds;

  int? _flaps;
  int? get flaps => _$this._flaps;
  set flaps(int? flaps) => _$this._flaps = flaps;

  int? _suppressedByCooldown;
  int? get suppressedByCooldown => _$this._suppressedByCooldown;
  set suppressedByCooldown(int? suppressedByCooldown) =>
      _$this._suppressedByCooldown = suppressedByCooldown;

  int? _suppressedByRateCap;
  int? get suppressedByRateCap => _$this._suppressedByRateCap;
  set suppressedByRateCap(int? suppressedByRateCap) =>
      _$this._suppressedByRateCap = suppressedByRateCap;

  RuleQualityDailyBuilder() {
    RuleQualityDaily._defaults(this);
  }

  RuleQualityDailyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _day = $v.day;
      _fired = $v.fired;
      _feedback = $v.feedback?.toBuilder();
      _signals = $v.signals?.toBuilder();
      _medianAckSeconds = $v.medianAckSeconds;
      _flaps = $v.flaps;
      _suppressedByCooldown = $v.suppressedByCooldown;
      _suppressedByRateCap = $v.suppressedByRateCap;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleQualityDaily other) {
    _$v = other as _$RuleQualityDaily;
  }

  @override
  void update(void Function(RuleQualityDailyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleQualityDaily build() => _build();

  _$RuleQualityDaily _build() {
    _$RuleQualityDaily _$result;
    try {
      _$result =
          _$v ??
          _$RuleQualityDaily._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'RuleQualityDaily',
              'ruleId',
            ),
            day: BuiltValueNullFieldError.checkNotNull(
              day,
              r'RuleQualityDaily',
              'day',
            ),
            fired: BuiltValueNullFieldError.checkNotNull(
              fired,
              r'RuleQualityDaily',
              'fired',
            ),
            feedback: _feedback?.build(),
            signals: _signals?.build(),
            medianAckSeconds: medianAckSeconds,
            flaps: flaps,
            suppressedByCooldown: suppressedByCooldown,
            suppressedByRateCap: suppressedByRateCap,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feedback';
        _feedback?.build();
        _$failedField = 'signals';
        _signals?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleQualityDaily',
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
