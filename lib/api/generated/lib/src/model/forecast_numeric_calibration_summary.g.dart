// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_numeric_calibration_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastNumericCalibrationSummary
    extends ForecastNumericCalibrationSummary {
  @override
  final num? meanAbsoluteCoverageError;
  @override
  final num? maxCoverageDeviation;

  factory _$ForecastNumericCalibrationSummary(
          [void Function(ForecastNumericCalibrationSummaryBuilder)? updates]) =>
      (ForecastNumericCalibrationSummaryBuilder()..update(updates))._build();

  _$ForecastNumericCalibrationSummary._(
      {this.meanAbsoluteCoverageError, this.maxCoverageDeviation})
      : super._();
  @override
  ForecastNumericCalibrationSummary rebuild(
          void Function(ForecastNumericCalibrationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastNumericCalibrationSummaryBuilder toBuilder() =>
      ForecastNumericCalibrationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastNumericCalibrationSummary &&
        meanAbsoluteCoverageError == other.meanAbsoluteCoverageError &&
        maxCoverageDeviation == other.maxCoverageDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meanAbsoluteCoverageError.hashCode);
    _$hash = $jc(_$hash, maxCoverageDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastNumericCalibrationSummary')
          ..add('meanAbsoluteCoverageError', meanAbsoluteCoverageError)
          ..add('maxCoverageDeviation', maxCoverageDeviation))
        .toString();
  }
}

class ForecastNumericCalibrationSummaryBuilder
    implements
        Builder<ForecastNumericCalibrationSummary,
            ForecastNumericCalibrationSummaryBuilder> {
  _$ForecastNumericCalibrationSummary? _$v;

  num? _meanAbsoluteCoverageError;
  num? get meanAbsoluteCoverageError => _$this._meanAbsoluteCoverageError;
  set meanAbsoluteCoverageError(num? meanAbsoluteCoverageError) =>
      _$this._meanAbsoluteCoverageError = meanAbsoluteCoverageError;

  num? _maxCoverageDeviation;
  num? get maxCoverageDeviation => _$this._maxCoverageDeviation;
  set maxCoverageDeviation(num? maxCoverageDeviation) =>
      _$this._maxCoverageDeviation = maxCoverageDeviation;

  ForecastNumericCalibrationSummaryBuilder() {
    ForecastNumericCalibrationSummary._defaults(this);
  }

  ForecastNumericCalibrationSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meanAbsoluteCoverageError = $v.meanAbsoluteCoverageError;
      _maxCoverageDeviation = $v.maxCoverageDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastNumericCalibrationSummary other) {
    _$v = other as _$ForecastNumericCalibrationSummary;
  }

  @override
  void update(
      void Function(ForecastNumericCalibrationSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastNumericCalibrationSummary build() => _build();

  _$ForecastNumericCalibrationSummary _build() {
    final _$result = _$v ??
        _$ForecastNumericCalibrationSummary._(
          meanAbsoluteCoverageError: meanAbsoluteCoverageError,
          maxCoverageDeviation: maxCoverageDeviation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
