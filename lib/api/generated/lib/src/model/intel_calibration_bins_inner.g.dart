// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_calibration_bins_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelCalibrationBinsInner extends IntelCalibrationBinsInner {
  @override
  final num? lower;
  @override
  final num? upper;
  @override
  final int? n;
  @override
  final num? meanForecast;
  @override
  final num? observedFrequency;

  factory _$IntelCalibrationBinsInner([
    void Function(IntelCalibrationBinsInnerBuilder)? updates,
  ]) => (IntelCalibrationBinsInnerBuilder()..update(updates))._build();

  _$IntelCalibrationBinsInner._({
    this.lower,
    this.upper,
    this.n,
    this.meanForecast,
    this.observedFrequency,
  }) : super._();
  @override
  IntelCalibrationBinsInner rebuild(
    void Function(IntelCalibrationBinsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelCalibrationBinsInnerBuilder toBuilder() =>
      IntelCalibrationBinsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCalibrationBinsInner &&
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
    return (newBuiltValueToStringHelper(r'IntelCalibrationBinsInner')
          ..add('lower', lower)
          ..add('upper', upper)
          ..add('n', n)
          ..add('meanForecast', meanForecast)
          ..add('observedFrequency', observedFrequency))
        .toString();
  }
}

class IntelCalibrationBinsInnerBuilder
    implements
        Builder<IntelCalibrationBinsInner, IntelCalibrationBinsInnerBuilder> {
  _$IntelCalibrationBinsInner? _$v;

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

  IntelCalibrationBinsInnerBuilder() {
    IntelCalibrationBinsInner._defaults(this);
  }

  IntelCalibrationBinsInnerBuilder get _$this {
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
  void replace(IntelCalibrationBinsInner other) {
    _$v = other as _$IntelCalibrationBinsInner;
  }

  @override
  void update(void Function(IntelCalibrationBinsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelCalibrationBinsInner build() => _build();

  _$IntelCalibrationBinsInner _build() {
    final _$result =
        _$v ??
        _$IntelCalibrationBinsInner._(
          lower: lower,
          upper: upper,
          n: n,
          meanForecast: meanForecast,
          observedFrequency: observedFrequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
