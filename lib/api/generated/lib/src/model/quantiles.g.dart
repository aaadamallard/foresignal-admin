// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantiles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Quantiles extends Quantiles {
  @override
  final num p05;
  @override
  final num? p10;
  @override
  final num p25;
  @override
  final num p50;
  @override
  final num p75;
  @override
  final num? p90;
  @override
  final num p95;

  factory _$Quantiles([void Function(QuantilesBuilder)? updates]) =>
      (QuantilesBuilder()..update(updates))._build();

  _$Quantiles._(
      {required this.p05,
      this.p10,
      required this.p25,
      required this.p50,
      required this.p75,
      this.p90,
      required this.p95})
      : super._();
  @override
  Quantiles rebuild(void Function(QuantilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuantilesBuilder toBuilder() => QuantilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quantiles &&
        p05 == other.p05 &&
        p10 == other.p10 &&
        p25 == other.p25 &&
        p50 == other.p50 &&
        p75 == other.p75 &&
        p90 == other.p90 &&
        p95 == other.p95;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p05.hashCode);
    _$hash = $jc(_$hash, p10.hashCode);
    _$hash = $jc(_$hash, p25.hashCode);
    _$hash = $jc(_$hash, p50.hashCode);
    _$hash = $jc(_$hash, p75.hashCode);
    _$hash = $jc(_$hash, p90.hashCode);
    _$hash = $jc(_$hash, p95.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Quantiles')
          ..add('p05', p05)
          ..add('p10', p10)
          ..add('p25', p25)
          ..add('p50', p50)
          ..add('p75', p75)
          ..add('p90', p90)
          ..add('p95', p95))
        .toString();
  }
}

class QuantilesBuilder implements Builder<Quantiles, QuantilesBuilder> {
  _$Quantiles? _$v;

  num? _p05;
  num? get p05 => _$this._p05;
  set p05(num? p05) => _$this._p05 = p05;

  num? _p10;
  num? get p10 => _$this._p10;
  set p10(num? p10) => _$this._p10 = p10;

  num? _p25;
  num? get p25 => _$this._p25;
  set p25(num? p25) => _$this._p25 = p25;

  num? _p50;
  num? get p50 => _$this._p50;
  set p50(num? p50) => _$this._p50 = p50;

  num? _p75;
  num? get p75 => _$this._p75;
  set p75(num? p75) => _$this._p75 = p75;

  num? _p90;
  num? get p90 => _$this._p90;
  set p90(num? p90) => _$this._p90 = p90;

  num? _p95;
  num? get p95 => _$this._p95;
  set p95(num? p95) => _$this._p95 = p95;

  QuantilesBuilder() {
    Quantiles._defaults(this);
  }

  QuantilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p05 = $v.p05;
      _p10 = $v.p10;
      _p25 = $v.p25;
      _p50 = $v.p50;
      _p75 = $v.p75;
      _p90 = $v.p90;
      _p95 = $v.p95;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quantiles other) {
    _$v = other as _$Quantiles;
  }

  @override
  void update(void Function(QuantilesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Quantiles build() => _build();

  _$Quantiles _build() {
    final _$result = _$v ??
        _$Quantiles._(
          p05: BuiltValueNullFieldError.checkNotNull(p05, r'Quantiles', 'p05'),
          p10: p10,
          p25: BuiltValueNullFieldError.checkNotNull(p25, r'Quantiles', 'p25'),
          p50: BuiltValueNullFieldError.checkNotNull(p50, r'Quantiles', 'p50'),
          p75: BuiltValueNullFieldError.checkNotNull(p75, r'Quantiles', 'p75'),
          p90: p90,
          p95: BuiltValueNullFieldError.checkNotNull(p95, r'Quantiles', 'p95'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
