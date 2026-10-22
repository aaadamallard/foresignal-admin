// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_quality_signals.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleQualitySignals extends RuleQualitySignals {
  @override
  final int? ACK_FAST;
  @override
  final int? SNOOZED;
  @override
  final int? FLAP;
  @override
  final int? UNOPENED;

  factory _$RuleQualitySignals(
          [void Function(RuleQualitySignalsBuilder)? updates]) =>
      (RuleQualitySignalsBuilder()..update(updates))._build();

  _$RuleQualitySignals._(
      {this.ACK_FAST, this.SNOOZED, this.FLAP, this.UNOPENED})
      : super._();
  @override
  RuleQualitySignals rebuild(
          void Function(RuleQualitySignalsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleQualitySignalsBuilder toBuilder() =>
      RuleQualitySignalsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleQualitySignals &&
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
    return (newBuiltValueToStringHelper(r'RuleQualitySignals')
          ..add('ACK_FAST', ACK_FAST)
          ..add('SNOOZED', SNOOZED)
          ..add('FLAP', FLAP)
          ..add('UNOPENED', UNOPENED))
        .toString();
  }
}

class RuleQualitySignalsBuilder
    implements Builder<RuleQualitySignals, RuleQualitySignalsBuilder> {
  _$RuleQualitySignals? _$v;

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

  RuleQualitySignalsBuilder() {
    RuleQualitySignals._defaults(this);
  }

  RuleQualitySignalsBuilder get _$this {
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
  void replace(RuleQualitySignals other) {
    _$v = other as _$RuleQualitySignals;
  }

  @override
  void update(void Function(RuleQualitySignalsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleQualitySignals build() => _build();

  _$RuleQualitySignals _build() {
    final _$result = _$v ??
        _$RuleQualitySignals._(
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
