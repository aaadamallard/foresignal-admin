// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_anomaly.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultAnomaly extends RuleBacktestResultAnomaly {
  @override
  final String? warmupConsumed;
  @override
  final BuiltMap<String, int>? byClassification;
  @override
  final int? coverageDrops;

  factory _$RuleBacktestResultAnomaly([
    void Function(RuleBacktestResultAnomalyBuilder)? updates,
  ]) => (RuleBacktestResultAnomalyBuilder()..update(updates))._build();

  _$RuleBacktestResultAnomaly._({
    this.warmupConsumed,
    this.byClassification,
    this.coverageDrops,
  }) : super._();
  @override
  RuleBacktestResultAnomaly rebuild(
    void Function(RuleBacktestResultAnomalyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultAnomalyBuilder toBuilder() =>
      RuleBacktestResultAnomalyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultAnomaly &&
        warmupConsumed == other.warmupConsumed &&
        byClassification == other.byClassification &&
        coverageDrops == other.coverageDrops;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, warmupConsumed.hashCode);
    _$hash = $jc(_$hash, byClassification.hashCode);
    _$hash = $jc(_$hash, coverageDrops.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultAnomaly')
          ..add('warmupConsumed', warmupConsumed)
          ..add('byClassification', byClassification)
          ..add('coverageDrops', coverageDrops))
        .toString();
  }
}

class RuleBacktestResultAnomalyBuilder
    implements
        Builder<RuleBacktestResultAnomaly, RuleBacktestResultAnomalyBuilder> {
  _$RuleBacktestResultAnomaly? _$v;

  String? _warmupConsumed;
  String? get warmupConsumed => _$this._warmupConsumed;
  set warmupConsumed(String? warmupConsumed) =>
      _$this._warmupConsumed = warmupConsumed;

  MapBuilder<String, int>? _byClassification;
  MapBuilder<String, int> get byClassification =>
      _$this._byClassification ??= MapBuilder<String, int>();
  set byClassification(MapBuilder<String, int>? byClassification) =>
      _$this._byClassification = byClassification;

  int? _coverageDrops;
  int? get coverageDrops => _$this._coverageDrops;
  set coverageDrops(int? coverageDrops) =>
      _$this._coverageDrops = coverageDrops;

  RuleBacktestResultAnomalyBuilder() {
    RuleBacktestResultAnomaly._defaults(this);
  }

  RuleBacktestResultAnomalyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _warmupConsumed = $v.warmupConsumed;
      _byClassification = $v.byClassification?.toBuilder();
      _coverageDrops = $v.coverageDrops;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultAnomaly other) {
    _$v = other as _$RuleBacktestResultAnomaly;
  }

  @override
  void update(void Function(RuleBacktestResultAnomalyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultAnomaly build() => _build();

  _$RuleBacktestResultAnomaly _build() {
    _$RuleBacktestResultAnomaly _$result;
    try {
      _$result =
          _$v ??
          _$RuleBacktestResultAnomaly._(
            warmupConsumed: warmupConsumed,
            byClassification: _byClassification?.build(),
            coverageDrops: coverageDrops,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byClassification';
        _byClassification?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleBacktestResultAnomaly',
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
