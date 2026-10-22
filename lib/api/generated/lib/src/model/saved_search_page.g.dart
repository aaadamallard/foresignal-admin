// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchPage extends SavedSearchPage {
  @override
  final BuiltList<SavedSearch> items;
  @override
  final String? nextCursor;

  factory _$SavedSearchPage([void Function(SavedSearchPageBuilder)? updates]) =>
      (SavedSearchPageBuilder()..update(updates))._build();

  _$SavedSearchPage._({required this.items, this.nextCursor}) : super._();
  @override
  SavedSearchPage rebuild(void Function(SavedSearchPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchPageBuilder toBuilder() => SavedSearchPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchPage &&
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
    return (newBuiltValueToStringHelper(r'SavedSearchPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SavedSearchPageBuilder
    implements Builder<SavedSearchPage, SavedSearchPageBuilder> {
  _$SavedSearchPage? _$v;

  ListBuilder<SavedSearch>? _items;
  ListBuilder<SavedSearch> get items =>
      _$this._items ??= ListBuilder<SavedSearch>();
  set items(ListBuilder<SavedSearch>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SavedSearchPageBuilder() {
    SavedSearchPage._defaults(this);
  }

  SavedSearchPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchPage other) {
    _$v = other as _$SavedSearchPage;
  }

  @override
  void update(void Function(SavedSearchPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchPage build() => _build();

  _$SavedSearchPage _build() {
    _$SavedSearchPage _$result;
    try {
      _$result =
          _$v ??
          _$SavedSearchPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SavedSearchPage',
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
