// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_numeric_calibration_quantile_reliability_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastNumericCalibrationQuantileReliabilityInner
    extends ForecastNumericCalibrationQuantileReliabilityInner {
  @override
  final num? level;
  @override
  final String? quantile;
  @override
  final num? nominal;
  @override
  final num? empirical;
  @override
  final int? n;

  factory _$ForecastNumericCalibrationQuantileReliabilityInner(
          [void Function(
                  ForecastNumericCalibrationQuantileReliabilityInnerBuilder)?
              updates]) =>
      (ForecastNumericCalibrationQuantileReliabilityInnerBuilder()
            ..update(updates))
          ._build();

  _$ForecastNumericCalibrationQuantileReliabilityInner._(
      {this.level, this.quantile, this.nominal, this.empirical, this.n})
      : super._();
  @override
  ForecastNumericCalibrationQuantileReliabilityInner rebuild(
          void Function(
                  ForecastNumericCalibrationQuantileReliabilityInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastNumericCalibrationQuantileReliabilityInnerBuilder toBuilder() =>
      ForecastNumericCalibrationQuantileReliabilityInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastNumericCalibrationQuantileReliabilityInner &&
        level == other.level &&
        quantile == other.quantile &&
        nominal == other.nominal &&
        empirical == other.empirical &&
        n == other.n;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, quantile.hashCode);
    _$hash = $jc(_$hash, nominal.hashCode);
    _$hash = $jc(_$hash, empirical.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ForecastNumericCalibrationQuantileReliabilityInner')
          ..add('level', level)
          ..add('quantile', quantile)
          ..add('nominal', nominal)
          ..add('empirical', empirical)
          ..add('n', n))
        .toString();
  }
}

class ForecastNumericCalibrationQuantileReliabilityInnerBuilder
    implements
        Builder<ForecastNumericCalibrationQuantileReliabilityInner,
            ForecastNumericCalibrationQuantileReliabilityInnerBuilder> {
  _$ForecastNumericCalibrationQuantileReliabilityInner? _$v;

  num? _level;
  num? get level => _$this._level;
  set level(num? level) => _$this._level = level;

  String? _quantile;
  String? get quantile => _$this._quantile;
  set quantile(String? quantile) => _$this._quantile = quantile;

  num? _nominal;
  num? get nominal => _$this._nominal;
  set nominal(num? nominal) => _$this._nominal = nominal;

  num? _empirical;
  num? get empirical => _$this._empirical;
  set empirical(num? empirical) => _$this._empirical = empirical;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  ForecastNumericCalibrationQuantileReliabilityInnerBuilder() {
    ForecastNumericCalibrationQuantileReliabilityInner._defaults(this);
  }

  ForecastNumericCalibrationQuantileReliabilityInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _level = $v.level;
      _quantile = $v.quantile;
      _nominal = $v.nominal;
      _empirical = $v.empirical;
      _n = $v.n;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastNumericCalibrationQuantileReliabilityInner other) {
    _$v = other as _$ForecastNumericCalibrationQuantileReliabilityInner;
  }

  @override
  void update(
      void Function(ForecastNumericCalibrationQuantileReliabilityInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastNumericCalibrationQuantileReliabilityInner build() => _build();

  _$ForecastNumericCalibrationQuantileReliabilityInner _build() {
    final _$result = _$v ??
        _$ForecastNumericCalibrationQuantileReliabilityInner._(
          level: level,
          quantile: quantile,
          nominal: nominal,
          empirical: empirical,
          n: n,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
