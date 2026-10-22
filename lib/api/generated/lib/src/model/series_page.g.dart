// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesPage extends SeriesPage {
  @override
  final BuiltList<SeriesCatalogEntry> items;
  @override
  final String? nextCursor;

  factory _$SeriesPage([void Function(SeriesPageBuilder)? updates]) =>
      (SeriesPageBuilder()..update(updates))._build();

  _$SeriesPage._({required this.items, this.nextCursor}) : super._();
  @override
  SeriesPage rebuild(void Function(SeriesPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesPageBuilder toBuilder() => SeriesPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesPage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SeriesPageBuilder implements Builder<SeriesPage, SeriesPageBuilder> {
  _$SeriesPage? _$v;

  ListBuilder<SeriesCatalogEntry>? _items;
  ListBuilder<SeriesCatalogEntry> get items =>
      _$this._items ??= ListBuilder<SeriesCatalogEntry>();
  set items(ListBuilder<SeriesCatalogEntry>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SeriesPageBuilder() {
    SeriesPage._defaults(this);
  }

  SeriesPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesPage other) {
    _$v = other as _$SeriesPage;
  }

  @override
  void update(void Function(SeriesPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesPage build() => _build();

  _$SeriesPage _build() {
    _$SeriesPage _$result;
    try {
      _$result = _$v ??
          _$SeriesPage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
