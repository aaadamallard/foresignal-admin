// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_numeric_calibration_pit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastNumericCalibrationPit extends ForecastNumericCalibrationPit {
  @override
  final int? n;
  @override
  final BuiltList<ForecastNumericCalibrationPitBinsInner>? bins;

  factory _$ForecastNumericCalibrationPit(
          [void Function(ForecastNumericCalibrationPitBuilder)? updates]) =>
      (ForecastNumericCalibrationPitBuilder()..update(updates))._build();

  _$ForecastNumericCalibrationPit._({this.n, this.bins}) : super._();
  @override
  ForecastNumericCalibrationPit rebuild(
          void Function(ForecastNumericCalibrationPitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastNumericCalibrationPitBuilder toBuilder() =>
      ForecastNumericCalibrationPitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastNumericCalibrationPit &&
        n == other.n &&
        bins == other.bins;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, bins.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastNumericCalibrationPit')
          ..add('n', n)
          ..add('bins', bins))
        .toString();
  }
}

class ForecastNumericCalibrationPitBuilder
    implements
        Builder<ForecastNumericCalibrationPit,
            ForecastNumericCalibrationPitBuilder> {
  _$ForecastNumericCalibrationPit? _$v;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  ListBuilder<ForecastNumericCalibrationPitBinsInner>? _bins;
  ListBuilder<ForecastNumericCalibrationPitBinsInner> get bins =>
      _$this._bins ??= ListBuilder<ForecastNumericCalibrationPitBinsInner>();
  set bins(ListBuilder<ForecastNumericCalibrationPitBinsInner>? bins) =>
      _$this._bins = bins;

  ForecastNumericCalibrationPitBuilder() {
    ForecastNumericCalibrationPit._defaults(this);
  }

  ForecastNumericCalibrationPitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _n = $v.n;
      _bins = $v.bins?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastNumericCalibrationPit other) {
    _$v = other as _$ForecastNumericCalibrationPit;
  }

  @override
  void update(void Function(ForecastNumericCalibrationPitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastNumericCalibrationPit build() => _build();

  _$ForecastNumericCalibrationPit _build() {
    _$ForecastNumericCalibrationPit _$result;
    try {
      _$result = _$v ??
          _$ForecastNumericCalibrationPit._(
            n: n,
            bins: _bins?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bins';
        _bins?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastNumericCalibrationPit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
