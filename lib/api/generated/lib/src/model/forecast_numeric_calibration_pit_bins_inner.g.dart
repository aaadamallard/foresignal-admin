// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_numeric_calibration_pit_bins_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastNumericCalibrationPitBinsInner
    extends ForecastNumericCalibrationPitBinsInner {
  @override
  final num? lower;
  @override
  final num? upper;
  @override
  final int? count;
  @override
  final num? frequency;
  @override
  final num? expected;

  factory _$ForecastNumericCalibrationPitBinsInner(
          [void Function(ForecastNumericCalibrationPitBinsInnerBuilder)?
              updates]) =>
      (ForecastNumericCalibrationPitBinsInnerBuilder()..update(updates))
          ._build();

  _$ForecastNumericCalibrationPitBinsInner._(
      {this.lower, this.upper, this.count, this.frequency, this.expected})
      : super._();
  @override
  ForecastNumericCalibrationPitBinsInner rebuild(
          void Function(ForecastNumericCalibrationPitBinsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastNumericCalibrationPitBinsInnerBuilder toBuilder() =>
      ForecastNumericCalibrationPitBinsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastNumericCalibrationPitBinsInner &&
        lower == other.lower &&
        upper == other.upper &&
        count == other.count &&
        frequency == other.frequency &&
        expected == other.expected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lower.hashCode);
    _$hash = $jc(_$hash, upper.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ForecastNumericCalibrationPitBinsInner')
          ..add('lower', lower)
          ..add('upper', upper)
          ..add('count', count)
          ..add('frequency', frequency)
          ..add('expected', expected))
        .toString();
  }
}

class ForecastNumericCalibrationPitBinsInnerBuilder
    implements
        Builder<ForecastNumericCalibrationPitBinsInner,
            ForecastNumericCalibrationPitBinsInnerBuilder> {
  _$ForecastNumericCalibrationPitBinsInner? _$v;

  num? _lower;
  num? get lower => _$this._lower;
  set lower(num? lower) => _$this._lower = lower;

  num? _upper;
  num? get upper => _$this._upper;
  set upper(num? upper) => _$this._upper = upper;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  num? _frequency;
  num? get frequency => _$this._frequency;
  set frequency(num? frequency) => _$this._frequency = frequency;

  num? _expected;
  num? get expected => _$this._expected;
  set expected(num? expected) => _$this._expected = expected;

  ForecastNumericCalibrationPitBinsInnerBuilder() {
    ForecastNumericCalibrationPitBinsInner._defaults(this);
  }

  ForecastNumericCalibrationPitBinsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lower = $v.lower;
      _upper = $v.upper;
      _count = $v.count;
      _frequency = $v.frequency;
      _expected = $v.expected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastNumericCalibrationPitBinsInner other) {
    _$v = other as _$ForecastNumericCalibrationPitBinsInner;
  }

  @override
  void update(
      void Function(ForecastNumericCalibrationPitBinsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastNumericCalibrationPitBinsInner build() => _build();

  _$ForecastNumericCalibrationPitBinsInner _build() {
    final _$result = _$v ??
        _$ForecastNumericCalibrationPitBinsInner._(
          lower: lower,
          upper: upper,
          count: count,
          frequency: frequency,
          expected: expected,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
