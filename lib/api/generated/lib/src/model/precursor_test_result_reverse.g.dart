// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_result_reverse.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTestResultReverse extends PrecursorTestResultReverse {
  @override
  final int? hits;
  @override
  final num? hitRate;
  @override
  final num? lift;
  @override
  final num? pValue;

  factory _$PrecursorTestResultReverse(
          [void Function(PrecursorTestResultReverseBuilder)? updates]) =>
      (PrecursorTestResultReverseBuilder()..update(updates))._build();

  _$PrecursorTestResultReverse._(
      {this.hits, this.hitRate, this.lift, this.pValue})
      : super._();
  @override
  PrecursorTestResultReverse rebuild(
          void Function(PrecursorTestResultReverseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorTestResultReverseBuilder toBuilder() =>
      PrecursorTestResultReverseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestResultReverse &&
        hits == other.hits &&
        hitRate == other.hitRate &&
        lift == other.lift &&
        pValue == other.pValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hits.hashCode);
    _$hash = $jc(_$hash, hitRate.hashCode);
    _$hash = $jc(_$hash, lift.hashCode);
    _$hash = $jc(_$hash, pValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestResultReverse')
          ..add('hits', hits)
          ..add('hitRate', hitRate)
          ..add('lift', lift)
          ..add('pValue', pValue))
        .toString();
  }
}

class PrecursorTestResultReverseBuilder
    implements
        Builder<PrecursorTestResultReverse, PrecursorTestResultReverseBuilder> {
  _$PrecursorTestResultReverse? _$v;

  int? _hits;
  int? get hits => _$this._hits;
  set hits(int? hits) => _$this._hits = hits;

  num? _hitRate;
  num? get hitRate => _$this._hitRate;
  set hitRate(num? hitRate) => _$this._hitRate = hitRate;

  num? _lift;
  num? get lift => _$this._lift;
  set lift(num? lift) => _$this._lift = lift;

  num? _pValue;
  num? get pValue => _$this._pValue;
  set pValue(num? pValue) => _$this._pValue = pValue;

  PrecursorTestResultReverseBuilder() {
    PrecursorTestResultReverse._defaults(this);
  }

  PrecursorTestResultReverseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hits = $v.hits;
      _hitRate = $v.hitRate;
      _lift = $v.lift;
      _pValue = $v.pValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestResultReverse other) {
    _$v = other as _$PrecursorTestResultReverse;
  }

  @override
  void update(void Function(PrecursorTestResultReverseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestResultReverse build() => _build();

  _$PrecursorTestResultReverse _build() {
    final _$result = _$v ??
        _$PrecursorTestResultReverse._(
          hits: hits,
          hitRate: hitRate,
          lift: lift,
          pValue: pValue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
