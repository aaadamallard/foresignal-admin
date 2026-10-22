// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_backtest_result_overlap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeBacktestResultOverlap extends RecipeBacktestResultOverlap {
  @override
  final int? matched;
  @override
  final int? onlyBacktest;
  @override
  final int? onlyActual;

  factory _$RecipeBacktestResultOverlap([
    void Function(RecipeBacktestResultOverlapBuilder)? updates,
  ]) => (RecipeBacktestResultOverlapBuilder()..update(updates))._build();

  _$RecipeBacktestResultOverlap._({
    this.matched,
    this.onlyBacktest,
    this.onlyActual,
  }) : super._();
  @override
  RecipeBacktestResultOverlap rebuild(
    void Function(RecipeBacktestResultOverlapBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecipeBacktestResultOverlapBuilder toBuilder() =>
      RecipeBacktestResultOverlapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeBacktestResultOverlap &&
        matched == other.matched &&
        onlyBacktest == other.onlyBacktest &&
        onlyActual == other.onlyActual;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, matched.hashCode);
    _$hash = $jc(_$hash, onlyBacktest.hashCode);
    _$hash = $jc(_$hash, onlyActual.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeBacktestResultOverlap')
          ..add('matched', matched)
          ..add('onlyBacktest', onlyBacktest)
          ..add('onlyActual', onlyActual))
        .toString();
  }
}

class RecipeBacktestResultOverlapBuilder
    implements
        Builder<
          RecipeBacktestResultOverlap,
          RecipeBacktestResultOverlapBuilder
        > {
  _$RecipeBacktestResultOverlap? _$v;

  int? _matched;
  int? get matched => _$this._matched;
  set matched(int? matched) => _$this._matched = matched;

  int? _onlyBacktest;
  int? get onlyBacktest => _$this._onlyBacktest;
  set onlyBacktest(int? onlyBacktest) => _$this._onlyBacktest = onlyBacktest;

  int? _onlyActual;
  int? get onlyActual => _$this._onlyActual;
  set onlyActual(int? onlyActual) => _$this._onlyActual = onlyActual;

  RecipeBacktestResultOverlapBuilder() {
    RecipeBacktestResultOverlap._defaults(this);
  }

  RecipeBacktestResultOverlapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matched = $v.matched;
      _onlyBacktest = $v.onlyBacktest;
      _onlyActual = $v.onlyActual;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeBacktestResultOverlap other) {
    _$v = other as _$RecipeBacktestResultOverlap;
  }

  @override
  void update(void Function(RecipeBacktestResultOverlapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeBacktestResultOverlap build() => _build();

  _$RecipeBacktestResultOverlap _build() {
    final _$result =
        _$v ??
        _$RecipeBacktestResultOverlap._(
          matched: matched,
          onlyBacktest: onlyBacktest,
          onlyActual: onlyActual,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
