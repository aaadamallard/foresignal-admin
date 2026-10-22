// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ensemble_refit_result_platt_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnsembleRefitResultPlattInner extends EnsembleRefitResultPlattInner {
  @override
  final String forecasterId;
  @override
  final String category;
  @override
  final num a;
  @override
  final num b;
  @override
  final int n;

  factory _$EnsembleRefitResultPlattInner([
    void Function(EnsembleRefitResultPlattInnerBuilder)? updates,
  ]) => (EnsembleRefitResultPlattInnerBuilder()..update(updates))._build();

  _$EnsembleRefitResultPlattInner._({
    required this.forecasterId,
    required this.category,
    required this.a,
    required this.b,
    required this.n,
  }) : super._();
  @override
  EnsembleRefitResultPlattInner rebuild(
    void Function(EnsembleRefitResultPlattInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EnsembleRefitResultPlattInnerBuilder toBuilder() =>
      EnsembleRefitResultPlattInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnsembleRefitResultPlattInner &&
        forecasterId == other.forecasterId &&
        category == other.category &&
        a == other.a &&
        b == other.b &&
        n == other.n;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, b.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnsembleRefitResultPlattInner')
          ..add('forecasterId', forecasterId)
          ..add('category', category)
          ..add('a', a)
          ..add('b', b)
          ..add('n', n))
        .toString();
  }
}

class EnsembleRefitResultPlattInnerBuilder
    implements
        Builder<
          EnsembleRefitResultPlattInner,
          EnsembleRefitResultPlattInnerBuilder
        > {
  _$EnsembleRefitResultPlattInner? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  num? _a;
  num? get a => _$this._a;
  set a(num? a) => _$this._a = a;

  num? _b;
  num? get b => _$this._b;
  set b(num? b) => _$this._b = b;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  EnsembleRefitResultPlattInnerBuilder() {
    EnsembleRefitResultPlattInner._defaults(this);
  }

  EnsembleRefitResultPlattInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _category = $v.category;
      _a = $v.a;
      _b = $v.b;
      _n = $v.n;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnsembleRefitResultPlattInner other) {
    _$v = other as _$EnsembleRefitResultPlattInner;
  }

  @override
  void update(void Function(EnsembleRefitResultPlattInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnsembleRefitResultPlattInner build() => _build();

  _$EnsembleRefitResultPlattInner _build() {
    final _$result =
        _$v ??
        _$EnsembleRefitResultPlattInner._(
          forecasterId: BuiltValueNullFieldError.checkNotNull(
            forecasterId,
            r'EnsembleRefitResultPlattInner',
            'forecasterId',
          ),
          category: BuiltValueNullFieldError.checkNotNull(
            category,
            r'EnsembleRefitResultPlattInner',
            'category',
          ),
          a: BuiltValueNullFieldError.checkNotNull(
            a,
            r'EnsembleRefitResultPlattInner',
            'a',
          ),
          b: BuiltValueNullFieldError.checkNotNull(
            b,
            r'EnsembleRefitResultPlattInner',
            'b',
          ),
          n: BuiltValueNullFieldError.checkNotNull(
            n,
            r'EnsembleRefitResultPlattInner',
            'n',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
