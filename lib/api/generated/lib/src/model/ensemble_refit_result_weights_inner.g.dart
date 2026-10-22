// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ensemble_refit_result_weights_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnsembleRefitResultWeightsInner
    extends EnsembleRefitResultWeightsInner {
  @override
  final String forecasterId;
  @override
  final String category;
  @override
  final num weight;
  @override
  final int? n;

  factory _$EnsembleRefitResultWeightsInner([
    void Function(EnsembleRefitResultWeightsInnerBuilder)? updates,
  ]) => (EnsembleRefitResultWeightsInnerBuilder()..update(updates))._build();

  _$EnsembleRefitResultWeightsInner._({
    required this.forecasterId,
    required this.category,
    required this.weight,
    this.n,
  }) : super._();
  @override
  EnsembleRefitResultWeightsInner rebuild(
    void Function(EnsembleRefitResultWeightsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EnsembleRefitResultWeightsInnerBuilder toBuilder() =>
      EnsembleRefitResultWeightsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnsembleRefitResultWeightsInner &&
        forecasterId == other.forecasterId &&
        category == other.category &&
        weight == other.weight &&
        n == other.n;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnsembleRefitResultWeightsInner')
          ..add('forecasterId', forecasterId)
          ..add('category', category)
          ..add('weight', weight)
          ..add('n', n))
        .toString();
  }
}

class EnsembleRefitResultWeightsInnerBuilder
    implements
        Builder<
          EnsembleRefitResultWeightsInner,
          EnsembleRefitResultWeightsInnerBuilder
        > {
  _$EnsembleRefitResultWeightsInner? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  EnsembleRefitResultWeightsInnerBuilder() {
    EnsembleRefitResultWeightsInner._defaults(this);
  }

  EnsembleRefitResultWeightsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _category = $v.category;
      _weight = $v.weight;
      _n = $v.n;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnsembleRefitResultWeightsInner other) {
    _$v = other as _$EnsembleRefitResultWeightsInner;
  }

  @override
  void update(void Function(EnsembleRefitResultWeightsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnsembleRefitResultWeightsInner build() => _build();

  _$EnsembleRefitResultWeightsInner _build() {
    final _$result =
        _$v ??
        _$EnsembleRefitResultWeightsInner._(
          forecasterId: BuiltValueNullFieldError.checkNotNull(
            forecasterId,
            r'EnsembleRefitResultWeightsInner',
            'forecasterId',
          ),
          category: BuiltValueNullFieldError.checkNotNull(
            category,
            r'EnsembleRefitResultWeightsInner',
            'category',
          ),
          weight: BuiltValueNullFieldError.checkNotNull(
            weight,
            r'EnsembleRefitResultWeightsInner',
            'weight',
          ),
          n: n,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
