// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition_contradictions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeDefinitionContradictionsInner
    extends CorrelationRecipeDefinitionContradictionsInner {
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<String>? healthOf;
  @override
  final num? withinKm;
  @override
  final String? window;
  @override
  final String alternative;

  factory _$CorrelationRecipeDefinitionContradictionsInner([
    void Function(CorrelationRecipeDefinitionContradictionsInnerBuilder)?
    updates,
  ]) =>
      (CorrelationRecipeDefinitionContradictionsInnerBuilder()..update(updates))
          ._build();

  _$CorrelationRecipeDefinitionContradictionsInner._({
    this.kinds,
    this.healthOf,
    this.withinKm,
    this.window,
    required this.alternative,
  }) : super._();
  @override
  CorrelationRecipeDefinitionContradictionsInner rebuild(
    void Function(CorrelationRecipeDefinitionContradictionsInnerBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionContradictionsInnerBuilder toBuilder() =>
      CorrelationRecipeDefinitionContradictionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinitionContradictionsInner &&
        kinds == other.kinds &&
        healthOf == other.healthOf &&
        withinKm == other.withinKm &&
        window == other.window &&
        alternative == other.alternative;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, healthOf.hashCode);
    _$hash = $jc(_$hash, withinKm.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, alternative.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CorrelationRecipeDefinitionContradictionsInner',
          )
          ..add('kinds', kinds)
          ..add('healthOf', healthOf)
          ..add('withinKm', withinKm)
          ..add('window', window)
          ..add('alternative', alternative))
        .toString();
  }
}

class CorrelationRecipeDefinitionContradictionsInnerBuilder
    implements
        Builder<
          CorrelationRecipeDefinitionContradictionsInner,
          CorrelationRecipeDefinitionContradictionsInnerBuilder
        > {
  _$CorrelationRecipeDefinitionContradictionsInner? _$v;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<String>? _healthOf;
  ListBuilder<String> get healthOf =>
      _$this._healthOf ??= ListBuilder<String>();
  set healthOf(ListBuilder<String>? healthOf) => _$this._healthOf = healthOf;

  num? _withinKm;
  num? get withinKm => _$this._withinKm;
  set withinKm(num? withinKm) => _$this._withinKm = withinKm;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  String? _alternative;
  String? get alternative => _$this._alternative;
  set alternative(String? alternative) => _$this._alternative = alternative;

  CorrelationRecipeDefinitionContradictionsInnerBuilder() {
    CorrelationRecipeDefinitionContradictionsInner._defaults(this);
  }

  CorrelationRecipeDefinitionContradictionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinds = $v.kinds?.toBuilder();
      _healthOf = $v.healthOf?.toBuilder();
      _withinKm = $v.withinKm;
      _window = $v.window;
      _alternative = $v.alternative;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinitionContradictionsInner other) {
    _$v = other as _$CorrelationRecipeDefinitionContradictionsInner;
  }

  @override
  void update(
    void Function(CorrelationRecipeDefinitionContradictionsInnerBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinitionContradictionsInner build() => _build();

  _$CorrelationRecipeDefinitionContradictionsInner _build() {
    _$CorrelationRecipeDefinitionContradictionsInner _$result;
    try {
      _$result =
          _$v ??
          _$CorrelationRecipeDefinitionContradictionsInner._(
            kinds: _kinds?.build(),
            healthOf: _healthOf?.build(),
            withinKm: withinKm,
            window: window,
            alternative: BuiltValueNullFieldError.checkNotNull(
              alternative,
              r'CorrelationRecipeDefinitionContradictionsInner',
              'alternative',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'healthOf';
        _healthOf?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorrelationRecipeDefinitionContradictionsInner',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
