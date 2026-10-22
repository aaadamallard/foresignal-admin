// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_overlap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultOverlap extends RuleBacktestResultOverlap {
  @override
  final int? both;
  @override
  final int? onlyBacktest;
  @override
  final int? onlyActual;

  factory _$RuleBacktestResultOverlap(
          [void Function(RuleBacktestResultOverlapBuilder)? updates]) =>
      (RuleBacktestResultOverlapBuilder()..update(updates))._build();

  _$RuleBacktestResultOverlap._({this.both, this.onlyBacktest, this.onlyActual})
      : super._();
  @override
  RuleBacktestResultOverlap rebuild(
          void Function(RuleBacktestResultOverlapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultOverlapBuilder toBuilder() =>
      RuleBacktestResultOverlapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultOverlap &&
        both == other.both &&
        onlyBacktest == other.onlyBacktest &&
        onlyActual == other.onlyActual;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, both.hashCode);
    _$hash = $jc(_$hash, onlyBacktest.hashCode);
    _$hash = $jc(_$hash, onlyActual.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultOverlap')
          ..add('both', both)
          ..add('onlyBacktest', onlyBacktest)
          ..add('onlyActual', onlyActual))
        .toString();
  }
}

class RuleBacktestResultOverlapBuilder
    implements
        Builder<RuleBacktestResultOverlap, RuleBacktestResultOverlapBuilder> {
  _$RuleBacktestResultOverlap? _$v;

  int? _both;
  int? get both => _$this._both;
  set both(int? both) => _$this._both = both;

  int? _onlyBacktest;
  int? get onlyBacktest => _$this._onlyBacktest;
  set onlyBacktest(int? onlyBacktest) => _$this._onlyBacktest = onlyBacktest;

  int? _onlyActual;
  int? get onlyActual => _$this._onlyActual;
  set onlyActual(int? onlyActual) => _$this._onlyActual = onlyActual;

  RuleBacktestResultOverlapBuilder() {
    RuleBacktestResultOverlap._defaults(this);
  }

  RuleBacktestResultOverlapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _both = $v.both;
      _onlyBacktest = $v.onlyBacktest;
      _onlyActual = $v.onlyActual;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultOverlap other) {
    _$v = other as _$RuleBacktestResultOverlap;
  }

  @override
  void update(void Function(RuleBacktestResultOverlapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultOverlap build() => _build();

  _$RuleBacktestResultOverlap _build() {
    final _$result = _$v ??
        _$RuleBacktestResultOverlap._(
          both: both,
          onlyBacktest: onlyBacktest,
          onlyActual: onlyActual,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
