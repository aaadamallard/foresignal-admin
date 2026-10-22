// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_quality_daily_signals.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleQualityDailySignals extends RuleQualityDailySignals {
  @override
  final int? ACK_FAST;
  @override
  final int? SNOOZED;
  @override
  final int? FLAP;
  @override
  final int? UNOPENED;

  factory _$RuleQualityDailySignals(
          [void Function(RuleQualityDailySignalsBuilder)? updates]) =>
      (RuleQualityDailySignalsBuilder()..update(updates))._build();

  _$RuleQualityDailySignals._(
      {this.ACK_FAST, this.SNOOZED, this.FLAP, this.UNOPENED})
      : super._();
  @override
  RuleQualityDailySignals rebuild(
          void Function(RuleQualityDailySignalsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleQualityDailySignalsBuilder toBuilder() =>
      RuleQualityDailySignalsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleQualityDailySignals &&
        ACK_FAST == other.ACK_FAST &&
        SNOOZED == other.SNOOZED &&
        FLAP == other.FLAP &&
        UNOPENED == other.UNOPENED;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ACK_FAST.hashCode);
    _$hash = $jc(_$hash, SNOOZED.hashCode);
    _$hash = $jc(_$hash, FLAP.hashCode);
    _$hash = $jc(_$hash, UNOPENED.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleQualityDailySignals')
          ..add('ACK_FAST', ACK_FAST)
          ..add('SNOOZED', SNOOZED)
          ..add('FLAP', FLAP)
          ..add('UNOPENED', UNOPENED))
        .toString();
  }
}

class RuleQualityDailySignalsBuilder
    implements
        Builder<RuleQualityDailySignals, RuleQualityDailySignalsBuilder> {
  _$RuleQualityDailySignals? _$v;

  int? _ACK_FAST;
  int? get ACK_FAST => _$this._ACK_FAST;
  set ACK_FAST(int? ACK_FAST) => _$this._ACK_FAST = ACK_FAST;

  int? _SNOOZED;
  int? get SNOOZED => _$this._SNOOZED;
  set SNOOZED(int? SNOOZED) => _$this._SNOOZED = SNOOZED;

  int? _FLAP;
  int? get FLAP => _$this._FLAP;
  set FLAP(int? FLAP) => _$this._FLAP = FLAP;

  int? _UNOPENED;
  int? get UNOPENED => _$this._UNOPENED;
  set UNOPENED(int? UNOPENED) => _$this._UNOPENED = UNOPENED;

  RuleQualityDailySignalsBuilder() {
    RuleQualityDailySignals._defaults(this);
  }

  RuleQualityDailySignalsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ACK_FAST = $v.ACK_FAST;
      _SNOOZED = $v.SNOOZED;
      _FLAP = $v.FLAP;
      _UNOPENED = $v.UNOPENED;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleQualityDailySignals other) {
    _$v = other as _$RuleQualityDailySignals;
  }

  @override
  void update(void Function(RuleQualityDailySignalsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleQualityDailySignals build() => _build();

  _$RuleQualityDailySignals _build() {
    final _$result = _$v ??
        _$RuleQualityDailySignals._(
          ACK_FAST: ACK_FAST,
          SNOOZED: SNOOZED,
          FLAP: FLAP,
          UNOPENED: UNOPENED,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
