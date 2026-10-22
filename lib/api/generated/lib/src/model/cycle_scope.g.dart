// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CycleScope extends CycleScope {
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? themes;
  @override
  final BuiltList<String>? situationIds;
  @override
  final JsonObject? hypothesisSetIds;
  @override
  final BuiltList<String>? sourceIds;
  @override
  final BuiltList<String>? categories;

  factory _$CycleScope([void Function(CycleScopeBuilder)? updates]) =>
      (CycleScopeBuilder()..update(updates))._build();

  _$CycleScope._({
    this.regionCodes,
    this.themes,
    this.situationIds,
    this.hypothesisSetIds,
    this.sourceIds,
    this.categories,
  }) : super._();
  @override
  CycleScope rebuild(void Function(CycleScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CycleScopeBuilder toBuilder() => CycleScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CycleScope &&
        regionCodes == other.regionCodes &&
        themes == other.themes &&
        situationIds == other.situationIds &&
        hypothesisSetIds == other.hypothesisSetIds &&
        sourceIds == other.sourceIds &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, situationIds.hashCode);
    _$hash = $jc(_$hash, hypothesisSetIds.hashCode);
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CycleScope')
          ..add('regionCodes', regionCodes)
          ..add('themes', themes)
          ..add('situationIds', situationIds)
          ..add('hypothesisSetIds', hypothesisSetIds)
          ..add('sourceIds', sourceIds)
          ..add('categories', categories))
        .toString();
  }
}

class CycleScopeBuilder implements Builder<CycleScope, CycleScopeBuilder> {
  _$CycleScope? _$v;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _themes;
  ListBuilder<String> get themes => _$this._themes ??= ListBuilder<String>();
  set themes(ListBuilder<String>? themes) => _$this._themes = themes;

  ListBuilder<String>? _situationIds;
  ListBuilder<String> get situationIds =>
      _$this._situationIds ??= ListBuilder<String>();
  set situationIds(ListBuilder<String>? situationIds) =>
      _$this._situationIds = situationIds;

  JsonObject? _hypothesisSetIds;
  JsonObject? get hypothesisSetIds => _$this._hypothesisSetIds;
  set hypothesisSetIds(JsonObject? hypothesisSetIds) =>
      _$this._hypothesisSetIds = hypothesisSetIds;

  ListBuilder<String>? _sourceIds;
  ListBuilder<String> get sourceIds =>
      _$this._sourceIds ??= ListBuilder<String>();
  set sourceIds(ListBuilder<String>? sourceIds) =>
      _$this._sourceIds = sourceIds;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  CycleScopeBuilder() {
    CycleScope._defaults(this);
  }

  CycleScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionCodes = $v.regionCodes?.toBuilder();
      _themes = $v.themes?.toBuilder();
      _situationIds = $v.situationIds?.toBuilder();
      _hypothesisSetIds = $v.hypothesisSetIds;
      _sourceIds = $v.sourceIds?.toBuilder();
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CycleScope other) {
    _$v = other as _$CycleScope;
  }

  @override
  void update(void Function(CycleScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CycleScope build() => _build();

  _$CycleScope _build() {
    _$CycleScope _$result;
    try {
      _$result =
          _$v ??
          _$CycleScope._(
            regionCodes: _regionCodes?.build(),
            themes: _themes?.build(),
            situationIds: _situationIds?.build(),
            hypothesisSetIds: hypothesisSetIds,
            sourceIds: _sourceIds?.build(),
            categories: _categories?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'themes';
        _themes?.build();
        _$failedField = 'situationIds';
        _situationIds?.build();

        _$failedField = 'sourceIds';
        _sourceIds?.build();
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CycleScope',
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
