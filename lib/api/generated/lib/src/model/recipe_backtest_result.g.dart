// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_backtest_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeBacktestResult extends RecipeBacktestResult {
  @override
  final String recipeId;
  @override
  final int? recipeVersion;
  @override
  final BuiltList<RecipeBacktestResultEventsInner> events;
  @override
  final BuiltMap<String, int>? countsByType;
  @override
  final RecipeBacktestResultOverlap? overlap;

  factory _$RecipeBacktestResult(
          [void Function(RecipeBacktestResultBuilder)? updates]) =>
      (RecipeBacktestResultBuilder()..update(updates))._build();

  _$RecipeBacktestResult._(
      {required this.recipeId,
      this.recipeVersion,
      required this.events,
      this.countsByType,
      this.overlap})
      : super._();
  @override
  RecipeBacktestResult rebuild(
          void Function(RecipeBacktestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeBacktestResultBuilder toBuilder() =>
      RecipeBacktestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeBacktestResult &&
        recipeId == other.recipeId &&
        recipeVersion == other.recipeVersion &&
        events == other.events &&
        countsByType == other.countsByType &&
        overlap == other.overlap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recipeId.hashCode);
    _$hash = $jc(_$hash, recipeVersion.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, countsByType.hashCode);
    _$hash = $jc(_$hash, overlap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeBacktestResult')
          ..add('recipeId', recipeId)
          ..add('recipeVersion', recipeVersion)
          ..add('events', events)
          ..add('countsByType', countsByType)
          ..add('overlap', overlap))
        .toString();
  }
}

class RecipeBacktestResultBuilder
    implements Builder<RecipeBacktestResult, RecipeBacktestResultBuilder> {
  _$RecipeBacktestResult? _$v;

  String? _recipeId;
  String? get recipeId => _$this._recipeId;
  set recipeId(String? recipeId) => _$this._recipeId = recipeId;

  int? _recipeVersion;
  int? get recipeVersion => _$this._recipeVersion;
  set recipeVersion(int? recipeVersion) =>
      _$this._recipeVersion = recipeVersion;

  ListBuilder<RecipeBacktestResultEventsInner>? _events;
  ListBuilder<RecipeBacktestResultEventsInner> get events =>
      _$this._events ??= ListBuilder<RecipeBacktestResultEventsInner>();
  set events(ListBuilder<RecipeBacktestResultEventsInner>? events) =>
      _$this._events = events;

  MapBuilder<String, int>? _countsByType;
  MapBuilder<String, int> get countsByType =>
      _$this._countsByType ??= MapBuilder<String, int>();
  set countsByType(MapBuilder<String, int>? countsByType) =>
      _$this._countsByType = countsByType;

  RecipeBacktestResultOverlapBuilder? _overlap;
  RecipeBacktestResultOverlapBuilder get overlap =>
      _$this._overlap ??= RecipeBacktestResultOverlapBuilder();
  set overlap(RecipeBacktestResultOverlapBuilder? overlap) =>
      _$this._overlap = overlap;

  RecipeBacktestResultBuilder() {
    RecipeBacktestResult._defaults(this);
  }

  RecipeBacktestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recipeId = $v.recipeId;
      _recipeVersion = $v.recipeVersion;
      _events = $v.events.toBuilder();
      _countsByType = $v.countsByType?.toBuilder();
      _overlap = $v.overlap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeBacktestResult other) {
    _$v = other as _$RecipeBacktestResult;
  }

  @override
  void update(void Function(RecipeBacktestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeBacktestResult build() => _build();

  _$RecipeBacktestResult _build() {
    _$RecipeBacktestResult _$result;
    try {
      _$result = _$v ??
          _$RecipeBacktestResult._(
            recipeId: BuiltValueNullFieldError.checkNotNull(
                recipeId, r'RecipeBacktestResult', 'recipeId'),
            recipeVersion: recipeVersion,
            events: events.build(),
            countsByType: _countsByType?.build(),
            overlap: _overlap?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
        _$failedField = 'countsByType';
        _countsByType?.build();
        _$failedField = 'overlap';
        _overlap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecipeBacktestResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
