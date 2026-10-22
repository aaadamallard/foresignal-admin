// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_calibration_curve_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelCalibrationCurveInner extends IntelCalibrationCurveInner {
  @override
  final num? forecast;
  @override
  final num? calibrated;

  factory _$IntelCalibrationCurveInner([
    void Function(IntelCalibrationCurveInnerBuilder)? updates,
  ]) => (IntelCalibrationCurveInnerBuilder()..update(updates))._build();

  _$IntelCalibrationCurveInner._({this.forecast, this.calibrated}) : super._();
  @override
  IntelCalibrationCurveInner rebuild(
    void Function(IntelCalibrationCurveInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelCalibrationCurveInnerBuilder toBuilder() =>
      IntelCalibrationCurveInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCalibrationCurveInner &&
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
    return (newBuiltValueToStringHelper(r'IntelCalibrationCurveInner')
          ..add('forecast', forecast)
          ..add('calibrated', calibrated))
        .toString();
  }
}

class IntelCalibrationCurveInnerBuilder
    implements
        Builder<IntelCalibrationCurveInner, IntelCalibrationCurveInnerBuilder> {
  _$IntelCalibrationCurveInner? _$v;

  num? _forecast;
  num? get forecast => _$this._forecast;
  set forecast(num? forecast) => _$this._forecast = forecast;

  num? _calibrated;
  num? get calibrated => _$this._calibrated;
  set calibrated(num? calibrated) => _$this._calibrated = calibrated;

  IntelCalibrationCurveInnerBuilder() {
    IntelCalibrationCurveInner._defaults(this);
  }

  IntelCalibrationCurveInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecast = $v.forecast;
      _calibrated = $v.calibrated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelCalibrationCurveInner other) {
    _$v = other as _$IntelCalibrationCurveInner;
  }

  @override
  void update(void Function(IntelCalibrationCurveInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelCalibrationCurveInner build() => _build();

  _$IntelCalibrationCurveInner _build() {
    final _$result =
        _$v ??
        _$IntelCalibrationCurveInner._(
          forecast: forecast,
          calibrated: calibrated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
