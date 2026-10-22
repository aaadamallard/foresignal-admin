// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_evaluation_skipped.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastEvaluationSkipped extends ForecastEvaluationSkipped {
  @override
  final int leakageRisk;
  @override
  final int? other;

  factory _$ForecastEvaluationSkipped(
          [void Function(ForecastEvaluationSkippedBuilder)? updates]) =>
      (ForecastEvaluationSkippedBuilder()..update(updates))._build();

  _$ForecastEvaluationSkipped._({required this.leakageRisk, this.other})
      : super._();
  @override
  ForecastEvaluationSkipped rebuild(
          void Function(ForecastEvaluationSkippedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastEvaluationSkippedBuilder toBuilder() =>
      ForecastEvaluationSkippedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastEvaluationSkipped &&
        leakageRisk == other.leakageRisk &&
        this.other == other.other;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, leakageRisk.hashCode);
    _$hash = $jc(_$hash, other.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastEvaluationSkipped')
          ..add('leakageRisk', leakageRisk)
          ..add('other', other))
        .toString();
  }
}

class ForecastEvaluationSkippedBuilder
    implements
        Builder<ForecastEvaluationSkipped, ForecastEvaluationSkippedBuilder> {
  _$ForecastEvaluationSkipped? _$v;

  int? _leakageRisk;
  int? get leakageRisk => _$this._leakageRisk;
  set leakageRisk(int? leakageRisk) => _$this._leakageRisk = leakageRisk;

  int? _other;
  int? get other => _$this._other;
  set other(int? other) => _$this._other = other;

  ForecastEvaluationSkippedBuilder() {
    ForecastEvaluationSkipped._defaults(this);
  }

  ForecastEvaluationSkippedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _leakageRisk = $v.leakageRisk;
      _other = $v.other;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastEvaluationSkipped other) {
    _$v = other as _$ForecastEvaluationSkipped;
  }

  @override
  void update(void Function(ForecastEvaluationSkippedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastEvaluationSkipped build() => _build();

  _$ForecastEvaluationSkipped _build() {
    final _$result = _$v ??
        _$ForecastEvaluationSkipped._(
          leakageRisk: BuiltValueNullFieldError.checkNotNull(
              leakageRisk, r'ForecastEvaluationSkipped', 'leakageRisk'),
          other: other,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
