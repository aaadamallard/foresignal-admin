// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchQuery extends SavedSearchQuery {
  @override
  final BuiltList<String>? types;
  @override
  final String? text;
  @override
  final BuiltMap<String, JsonObject?>? filters;
  @override
  final SavedSearchQueryArea? area;
  @override
  final SavedSearchQueryTimeWindow? timeWindow;
  @override
  final BuiltList<String>? tags;

  factory _$SavedSearchQuery(
          [void Function(SavedSearchQueryBuilder)? updates]) =>
      (SavedSearchQueryBuilder()..update(updates))._build();

  _$SavedSearchQuery._(
      {this.types,
      this.text,
      this.filters,
      this.area,
      this.timeWindow,
      this.tags})
      : super._();
  @override
  SavedSearchQuery rebuild(void Function(SavedSearchQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchQueryBuilder toBuilder() =>
      SavedSearchQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchQuery &&
        types == other.types &&
        text == other.text &&
        filters == other.filters &&
        area == other.area &&
        timeWindow == other.timeWindow &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchQuery')
          ..add('types', types)
          ..add('text', text)
          ..add('filters', filters)
          ..add('area', area)
          ..add('timeWindow', timeWindow)
          ..add('tags', tags))
        .toString();
  }
}

class SavedSearchQueryBuilder
    implements Builder<SavedSearchQuery, SavedSearchQueryBuilder> {
  _$SavedSearchQuery? _$v;

  ListBuilder<String>? _types;
  ListBuilder<String> get types => _$this._types ??= ListBuilder<String>();
  set types(ListBuilder<String>? types) => _$this._types = types;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  MapBuilder<String, JsonObject?>? _filters;
  MapBuilder<String, JsonObject?> get filters =>
      _$this._filters ??= MapBuilder<String, JsonObject?>();
  set filters(MapBuilder<String, JsonObject?>? filters) =>
      _$this._filters = filters;

  SavedSearchQueryAreaBuilder? _area;
  SavedSearchQueryAreaBuilder get area =>
      _$this._area ??= SavedSearchQueryAreaBuilder();
  set area(SavedSearchQueryAreaBuilder? area) => _$this._area = area;

  SavedSearchQueryTimeWindowBuilder? _timeWindow;
  SavedSearchQueryTimeWindowBuilder get timeWindow =>
      _$this._timeWindow ??= SavedSearchQueryTimeWindowBuilder();
  set timeWindow(SavedSearchQueryTimeWindowBuilder? timeWindow) =>
      _$this._timeWindow = timeWindow;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  SavedSearchQueryBuilder() {
    SavedSearchQuery._defaults(this);
  }

  SavedSearchQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _types = $v.types?.toBuilder();
      _text = $v.text;
      _filters = $v.filters?.toBuilder();
      _area = $v.area?.toBuilder();
      _timeWindow = $v.timeWindow?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchQuery other) {
    _$v = other as _$SavedSearchQuery;
  }

  @override
  void update(void Function(SavedSearchQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchQuery build() => _build();

  _$SavedSearchQuery _build() {
    _$SavedSearchQuery _$result;
    try {
      _$result = _$v ??
          _$SavedSearchQuery._(
            types: _types?.build(),
            text: text,
            filters: _filters?.build(),
            area: _area?.build(),
            timeWindow: _timeWindow?.build(),
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();

        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'timeWindow';
        _timeWindow?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SavedSearchQuery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
