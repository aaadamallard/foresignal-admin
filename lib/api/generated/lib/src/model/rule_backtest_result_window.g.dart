// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultWindow extends RuleBacktestResultWindow {
  @override
  final int? steps;
  @override
  final int? unknownSteps;

  factory _$RuleBacktestResultWindow([
    void Function(RuleBacktestResultWindowBuilder)? updates,
  ]) => (RuleBacktestResultWindowBuilder()..update(updates))._build();

  _$RuleBacktestResultWindow._({this.steps, this.unknownSteps}) : super._();
  @override
  RuleBacktestResultWindow rebuild(
    void Function(RuleBacktestResultWindowBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultWindowBuilder toBuilder() =>
      RuleBacktestResultWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultWindow &&
        steps == other.steps &&
        unknownSteps == other.unknownSteps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, unknownSteps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultWindow')
          ..add('steps', steps)
          ..add('unknownSteps', unknownSteps))
        .toString();
  }
}

class RuleBacktestResultWindowBuilder
    implements
        Builder<RuleBacktestResultWindow, RuleBacktestResultWindowBuilder> {
  _$RuleBacktestResultWindow? _$v;

  int? _steps;
  int? get steps => _$this._steps;
  set steps(int? steps) => _$this._steps = steps;

  int? _unknownSteps;
  int? get unknownSteps => _$this._unknownSteps;
  set unknownSteps(int? unknownSteps) => _$this._unknownSteps = unknownSteps;

  RuleBacktestResultWindowBuilder() {
    RuleBacktestResultWindow._defaults(this);
  }

  RuleBacktestResultWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _steps = $v.steps;
      _unknownSteps = $v.unknownSteps;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultWindow other) {
    _$v = other as _$RuleBacktestResultWindow;
  }

  @override
  void update(void Function(RuleBacktestResultWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultWindow build() => _build();

  _$RuleBacktestResultWindow _build() {
    final _$result =
        _$v ??
        _$RuleBacktestResultWindow._(steps: steps, unknownSteps: unknownSteps);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
