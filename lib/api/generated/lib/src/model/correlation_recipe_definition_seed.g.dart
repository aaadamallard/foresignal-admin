// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition_seed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeDefinitionSeed
    extends CorrelationRecipeDefinitionSeed {
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<Condition>? conditions;

  factory _$CorrelationRecipeDefinitionSeed([
    void Function(CorrelationRecipeDefinitionSeedBuilder)? updates,
  ]) => (CorrelationRecipeDefinitionSeedBuilder()..update(updates))._build();

  _$CorrelationRecipeDefinitionSeed._({
    this.kinds,
    this.sources,
    this.conditions,
  }) : super._();
  @override
  CorrelationRecipeDefinitionSeed rebuild(
    void Function(CorrelationRecipeDefinitionSeedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionSeedBuilder toBuilder() =>
      CorrelationRecipeDefinitionSeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinitionSeed &&
        kinds == other.kinds &&
        sources == other.sources &&
        conditions == other.conditions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrelationRecipeDefinitionSeed')
          ..add('kinds', kinds)
          ..add('sources', sources)
          ..add('conditions', conditions))
        .toString();
  }
}

class CorrelationRecipeDefinitionSeedBuilder
    implements
        Builder<
          CorrelationRecipeDefinitionSeed,
          CorrelationRecipeDefinitionSeedBuilder
        > {
  _$CorrelationRecipeDefinitionSeed? _$v;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<Condition>? _conditions;
  ListBuilder<Condition> get conditions =>
      _$this._conditions ??= ListBuilder<Condition>();
  set conditions(ListBuilder<Condition>? conditions) =>
      _$this._conditions = conditions;

  CorrelationRecipeDefinitionSeedBuilder() {
    CorrelationRecipeDefinitionSeed._defaults(this);
  }

  CorrelationRecipeDefinitionSeedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinds = $v.kinds?.toBuilder();
      _sources = $v.sources?.toBuilder();
      _conditions = $v.conditions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinitionSeed other) {
    _$v = other as _$CorrelationRecipeDefinitionSeed;
  }

  @override
  void update(void Function(CorrelationRecipeDefinitionSeedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinitionSeed build() => _build();

  _$CorrelationRecipeDefinitionSeed _build() {
    _$CorrelationRecipeDefinitionSeed _$result;
    try {
      _$result =
          _$v ??
          _$CorrelationRecipeDefinitionSeed._(
            kinds: _kinds?.build(),
            sources: _sources?.build(),
            conditions: _conditions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'conditions';
        _conditions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorrelationRecipeDefinitionSeed',
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
