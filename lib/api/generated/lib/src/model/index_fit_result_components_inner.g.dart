// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_fit_result_components_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexFitResultComponentsInner extends IndexFitResultComponentsInner {
  @override
  final String key;
  @override
  final num coefficient;
  @override
  final num? standardError;
  @override
  final num? pValue;
  @override
  final bool? significant;
  @override
  final num? currentWeight;
  @override
  final num proposedWeight;

  factory _$IndexFitResultComponentsInner(
          [void Function(IndexFitResultComponentsInnerBuilder)? updates]) =>
      (IndexFitResultComponentsInnerBuilder()..update(updates))._build();

  _$IndexFitResultComponentsInner._(
      {required this.key,
      required this.coefficient,
      this.standardError,
      this.pValue,
      this.significant,
      this.currentWeight,
      required this.proposedWeight})
      : super._();
  @override
  IndexFitResultComponentsInner rebuild(
          void Function(IndexFitResultComponentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexFitResultComponentsInnerBuilder toBuilder() =>
      IndexFitResultComponentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexFitResultComponentsInner &&
        key == other.key &&
        coefficient == other.coefficient &&
        standardError == other.standardError &&
        pValue == other.pValue &&
        significant == other.significant &&
        currentWeight == other.currentWeight &&
        proposedWeight == other.proposedWeight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, coefficient.hashCode);
    _$hash = $jc(_$hash, standardError.hashCode);
    _$hash = $jc(_$hash, pValue.hashCode);
    _$hash = $jc(_$hash, significant.hashCode);
    _$hash = $jc(_$hash, currentWeight.hashCode);
    _$hash = $jc(_$hash, proposedWeight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexFitResultComponentsInner')
          ..add('key', key)
          ..add('coefficient', coefficient)
          ..add('standardError', standardError)
          ..add('pValue', pValue)
          ..add('significant', significant)
          ..add('currentWeight', currentWeight)
          ..add('proposedWeight', proposedWeight))
        .toString();
  }
}

class IndexFitResultComponentsInnerBuilder
    implements
        Builder<IndexFitResultComponentsInner,
            IndexFitResultComponentsInnerBuilder> {
  _$IndexFitResultComponentsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  num? _coefficient;
  num? get coefficient => _$this._coefficient;
  set coefficient(num? coefficient) => _$this._coefficient = coefficient;

  num? _standardError;
  num? get standardError => _$this._standardError;
  set standardError(num? standardError) =>
      _$this._standardError = standardError;

  num? _pValue;
  num? get pValue => _$this._pValue;
  set pValue(num? pValue) => _$this._pValue = pValue;

  bool? _significant;
  bool? get significant => _$this._significant;
  set significant(bool? significant) => _$this._significant = significant;

  num? _currentWeight;
  num? get currentWeight => _$this._currentWeight;
  set currentWeight(num? currentWeight) =>
      _$this._currentWeight = currentWeight;

  num? _proposedWeight;
  num? get proposedWeight => _$this._proposedWeight;
  set proposedWeight(num? proposedWeight) =>
      _$this._proposedWeight = proposedWeight;

  IndexFitResultComponentsInnerBuilder() {
    IndexFitResultComponentsInner._defaults(this);
  }

  IndexFitResultComponentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _coefficient = $v.coefficient;
      _standardError = $v.standardError;
      _pValue = $v.pValue;
      _significant = $v.significant;
      _currentWeight = $v.currentWeight;
      _proposedWeight = $v.proposedWeight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexFitResultComponentsInner other) {
    _$v = other as _$IndexFitResultComponentsInner;
  }

  @override
  void update(void Function(IndexFitResultComponentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexFitResultComponentsInner build() => _build();

  _$IndexFitResultComponentsInner _build() {
    final _$result = _$v ??
        _$IndexFitResultComponentsInner._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'IndexFitResultComponentsInner', 'key'),
          coefficient: BuiltValueNullFieldError.checkNotNull(
              coefficient, r'IndexFitResultComponentsInner', 'coefficient'),
          standardError: standardError,
          pValue: pValue,
          significant: significant,
          currentWeight: currentWeight,
          proposedWeight: BuiltValueNullFieldError.checkNotNull(proposedWeight,
              r'IndexFitResultComponentsInner', 'proposedWeight'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
