// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_result_lag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTestResultLag extends PrecursorTestResultLag {
  @override
  final String? min;
  @override
  final String? p25;
  @override
  final String? median;
  @override
  final String? p75;
  @override
  final String? max;
  @override
  final String? mean;

  factory _$PrecursorTestResultLag([
    void Function(PrecursorTestResultLagBuilder)? updates,
  ]) => (PrecursorTestResultLagBuilder()..update(updates))._build();

  _$PrecursorTestResultLag._({
    this.min,
    this.p25,
    this.median,
    this.p75,
    this.max,
    this.mean,
  }) : super._();
  @override
  PrecursorTestResultLag rebuild(
    void Function(PrecursorTestResultLagBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorTestResultLagBuilder toBuilder() =>
      PrecursorTestResultLagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestResultLag &&
        min == other.min &&
        p25 == other.p25 &&
        median == other.median &&
        p75 == other.p75 &&
        max == other.max &&
        mean == other.mean;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, p25.hashCode);
    _$hash = $jc(_$hash, median.hashCode);
    _$hash = $jc(_$hash, p75.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestResultLag')
          ..add('min', min)
          ..add('p25', p25)
          ..add('median', median)
          ..add('p75', p75)
          ..add('max', max)
          ..add('mean', mean))
        .toString();
  }
}

class PrecursorTestResultLagBuilder
    implements Builder<PrecursorTestResultLag, PrecursorTestResultLagBuilder> {
  _$PrecursorTestResultLag? _$v;

  String? _min;
  String? get min => _$this._min;
  set min(String? min) => _$this._min = min;

  String? _p25;
  String? get p25 => _$this._p25;
  set p25(String? p25) => _$this._p25 = p25;

  String? _median;
  String? get median => _$this._median;
  set median(String? median) => _$this._median = median;

  String? _p75;
  String? get p75 => _$this._p75;
  set p75(String? p75) => _$this._p75 = p75;

  String? _max;
  String? get max => _$this._max;
  set max(String? max) => _$this._max = max;

  String? _mean;
  String? get mean => _$this._mean;
  set mean(String? mean) => _$this._mean = mean;

  PrecursorTestResultLagBuilder() {
    PrecursorTestResultLag._defaults(this);
  }

  PrecursorTestResultLagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _p25 = $v.p25;
      _median = $v.median;
      _p75 = $v.p75;
      _max = $v.max;
      _mean = $v.mean;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestResultLag other) {
    _$v = other as _$PrecursorTestResultLag;
  }

  @override
  void update(void Function(PrecursorTestResultLagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestResultLag build() => _build();

  _$PrecursorTestResultLag _build() {
    final _$result =
        _$v ??
        _$PrecursorTestResultLag._(
          min: min,
          p25: p25,
          median: median,
          p75: p75,
          max: max,
          mean: mean,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
