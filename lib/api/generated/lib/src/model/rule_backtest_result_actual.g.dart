// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_actual.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultActual extends RuleBacktestResultActual {
  @override
  final int? alerts;
  @override
  final bool? comparable;

  factory _$RuleBacktestResultActual(
          [void Function(RuleBacktestResultActualBuilder)? updates]) =>
      (RuleBacktestResultActualBuilder()..update(updates))._build();

  _$RuleBacktestResultActual._({this.alerts, this.comparable}) : super._();
  @override
  RuleBacktestResultActual rebuild(
          void Function(RuleBacktestResultActualBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultActualBuilder toBuilder() =>
      RuleBacktestResultActualBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultActual &&
        alerts == other.alerts &&
        comparable == other.comparable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, comparable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultActual')
          ..add('alerts', alerts)
          ..add('comparable', comparable))
        .toString();
  }
}

class RuleBacktestResultActualBuilder
    implements
        Builder<RuleBacktestResultActual, RuleBacktestResultActualBuilder> {
  _$RuleBacktestResultActual? _$v;

  int? _alerts;
  int? get alerts => _$this._alerts;
  set alerts(int? alerts) => _$this._alerts = alerts;

  bool? _comparable;
  bool? get comparable => _$this._comparable;
  set comparable(bool? comparable) => _$this._comparable = comparable;

  RuleBacktestResultActualBuilder() {
    RuleBacktestResultActual._defaults(this);
  }

  RuleBacktestResultActualBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alerts = $v.alerts;
      _comparable = $v.comparable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultActual other) {
    _$v = other as _$RuleBacktestResultActual;
  }

  @override
  void update(void Function(RuleBacktestResultActualBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultActual build() => _build();

  _$RuleBacktestResultActual _build() {
    final _$result = _$v ??
        _$RuleBacktestResultActual._(
          alerts: alerts,
          comparable: comparable,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
