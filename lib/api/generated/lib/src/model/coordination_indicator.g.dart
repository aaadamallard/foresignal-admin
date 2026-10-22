// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordination_indicator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoordinationIndicator extends CoordinationIndicator {
  @override
  final num? value;
  @override
  final num? nullExpectation;
  @override
  final num? pValue;
  @override
  final num? qValue;
  @override
  final int? n;
  @override
  final bool available;

  factory _$CoordinationIndicator(
          [void Function(CoordinationIndicatorBuilder)? updates]) =>
      (CoordinationIndicatorBuilder()..update(updates))._build();

  _$CoordinationIndicator._(
      {this.value,
      this.nullExpectation,
      this.pValue,
      this.qValue,
      this.n,
      required this.available})
      : super._();
  @override
  CoordinationIndicator rebuild(
          void Function(CoordinationIndicatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordinationIndicatorBuilder toBuilder() =>
      CoordinationIndicatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoordinationIndicator &&
        value == other.value &&
        nullExpectation == other.nullExpectation &&
        pValue == other.pValue &&
        qValue == other.qValue &&
        n == other.n &&
        available == other.available;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, nullExpectation.hashCode);
    _$hash = $jc(_$hash, pValue.hashCode);
    _$hash = $jc(_$hash, qValue.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, available.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoordinationIndicator')
          ..add('value', value)
          ..add('nullExpectation', nullExpectation)
          ..add('pValue', pValue)
          ..add('qValue', qValue)
          ..add('n', n)
          ..add('available', available))
        .toString();
  }
}

class CoordinationIndicatorBuilder
    implements Builder<CoordinationIndicator, CoordinationIndicatorBuilder> {
  _$CoordinationIndicator? _$v;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  num? _nullExpectation;
  num? get nullExpectation => _$this._nullExpectation;
  set nullExpectation(num? nullExpectation) =>
      _$this._nullExpectation = nullExpectation;

  num? _pValue;
  num? get pValue => _$this._pValue;
  set pValue(num? pValue) => _$this._pValue = pValue;

  num? _qValue;
  num? get qValue => _$this._qValue;
  set qValue(num? qValue) => _$this._qValue = qValue;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  CoordinationIndicatorBuilder() {
    CoordinationIndicator._defaults(this);
  }

  CoordinationIndicatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _nullExpectation = $v.nullExpectation;
      _pValue = $v.pValue;
      _qValue = $v.qValue;
      _n = $v.n;
      _available = $v.available;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoordinationIndicator other) {
    _$v = other as _$CoordinationIndicator;
  }

  @override
  void update(void Function(CoordinationIndicatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoordinationIndicator build() => _build();

  _$CoordinationIndicator _build() {
    final _$result = _$v ??
        _$CoordinationIndicator._(
          value: value,
          nullExpectation: nullExpectation,
          pValue: pValue,
          qValue: qValue,
          n: n,
          available: BuiltValueNullFieldError.checkNotNull(
              available, r'CoordinationIndicator', 'available'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
