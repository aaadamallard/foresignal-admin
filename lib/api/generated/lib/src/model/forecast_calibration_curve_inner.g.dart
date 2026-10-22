// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_calibration_curve_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastCalibrationCurveInner extends ForecastCalibrationCurveInner {
  @override
  final num forecast;
  @override
  final num calibrated;

  factory _$ForecastCalibrationCurveInner([
    void Function(ForecastCalibrationCurveInnerBuilder)? updates,
  ]) => (ForecastCalibrationCurveInnerBuilder()..update(updates))._build();

  _$ForecastCalibrationCurveInner._({
    required this.forecast,
    required this.calibrated,
  }) : super._();
  @override
  ForecastCalibrationCurveInner rebuild(
    void Function(ForecastCalibrationCurveInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastCalibrationCurveInnerBuilder toBuilder() =>
      ForecastCalibrationCurveInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastCalibrationCurveInner &&
        forecast == other.forecast &&
        calibrated == other.calibrated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jc(_$hash, calibrated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastCalibrationCurveInner')
          ..add('forecast', forecast)
          ..add('calibrated', calibrated))
        .toString();
  }
}

class ForecastCalibrationCurveInnerBuilder
    implements
        Builder<
          ForecastCalibrationCurveInner,
          ForecastCalibrationCurveInnerBuilder
        > {
  _$ForecastCalibrationCurveInner? _$v;

  num? _forecast;
  num? get forecast => _$this._forecast;
  set forecast(num? forecast) => _$this._forecast = forecast;

  num? _calibrated;
  num? get calibrated => _$this._calibrated;
  set calibrated(num? calibrated) => _$this._calibrated = calibrated;

  ForecastCalibrationCurveInnerBuilder() {
    ForecastCalibrationCurveInner._defaults(this);
  }

  ForecastCalibrationCurveInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecast = $v.forecast;
      _calibrated = $v.calibrated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastCalibrationCurveInner other) {
    _$v = other as _$ForecastCalibrationCurveInner;
  }

  @override
  void update(void Function(ForecastCalibrationCurveInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastCalibrationCurveInner build() => _build();

  _$ForecastCalibrationCurveInner _build() {
    final _$result =
        _$v ??
        _$ForecastCalibrationCurveInner._(
          forecast: BuiltValueNullFieldError.checkNotNull(
            forecast,
            r'ForecastCalibrationCurveInner',
            'forecast',
          ),
          calibrated: BuiltValueNullFieldError.checkNotNull(
            calibrated,
            r'ForecastCalibrationCurveInner',
            'calibrated',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
