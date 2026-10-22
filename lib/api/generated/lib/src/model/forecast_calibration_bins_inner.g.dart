// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_calibration_bins_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastCalibrationBinsInner extends ForecastCalibrationBinsInner {
  @override
  final num lower;
  @override
  final num upper;
  @override
  final int n;
  @override
  final num? meanForecast;
  @override
  final num? observedFrequency;

  factory _$ForecastCalibrationBinsInner(
          [void Function(ForecastCalibrationBinsInnerBuilder)? updates]) =>
      (ForecastCalibrationBinsInnerBuilder()..update(updates))._build();

  _$ForecastCalibrationBinsInner._(
      {required this.lower,
      required this.upper,
      required this.n,
      this.meanForecast,
      this.observedFrequency})
      : super._();
  @override
  ForecastCalibrationBinsInner rebuild(
          void Function(ForecastCalibrationBinsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastCalibrationBinsInnerBuilder toBuilder() =>
      ForecastCalibrationBinsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastCalibrationBinsInner &&
        lower == other.lower &&
        upper == other.upper &&
        n == other.n &&
        meanForecast == other.meanForecast &&
        observedFrequency == other.observedFrequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lower.hashCode);
    _$hash = $jc(_$hash, upper.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, meanForecast.hashCode);
    _$hash = $jc(_$hash, observedFrequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastCalibrationBinsInner')
          ..add('lower', lower)
          ..add('upper', upper)
          ..add('n', n)
          ..add('meanForecast', meanForecast)
          ..add('observedFrequency', observedFrequency))
        .toString();
  }
}

class ForecastCalibrationBinsInnerBuilder
    implements
        Builder<ForecastCalibrationBinsInner,
            ForecastCalibrationBinsInnerBuilder> {
  _$ForecastCalibrationBinsInner? _$v;

  num? _lower;
  num? get lower => _$this._lower;
  set lower(num? lower) => _$this._lower = lower;

  num? _upper;
  num? get upper => _$this._upper;
  set upper(num? upper) => _$this._upper = upper;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  num? _meanForecast;
  num? get meanForecast => _$this._meanForecast;
  set meanForecast(num? meanForecast) => _$this._meanForecast = meanForecast;

  num? _observedFrequency;
  num? get observedFrequency => _$this._observedFrequency;
  set observedFrequency(num? observedFrequency) =>
      _$this._observedFrequency = observedFrequency;

  ForecastCalibrationBinsInnerBuilder() {
    ForecastCalibrationBinsInner._defaults(this);
  }

  ForecastCalibrationBinsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lower = $v.lower;
      _upper = $v.upper;
      _n = $v.n;
      _meanForecast = $v.meanForecast;
      _observedFrequency = $v.observedFrequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastCalibrationBinsInner other) {
    _$v = other as _$ForecastCalibrationBinsInner;
  }

  @override
  void update(void Function(ForecastCalibrationBinsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastCalibrationBinsInner build() => _build();

  _$ForecastCalibrationBinsInner _build() {
    final _$result = _$v ??
        _$ForecastCalibrationBinsInner._(
          lower: BuiltValueNullFieldError.checkNotNull(
              lower, r'ForecastCalibrationBinsInner', 'lower'),
          upper: BuiltValueNullFieldError.checkNotNull(
              upper, r'ForecastCalibrationBinsInner', 'upper'),
          n: BuiltValueNullFieldError.checkNotNull(
              n, r'ForecastCalibrationBinsInner', 'n'),
          meanForecast: meanForecast,
          observedFrequency: observedFrequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
