// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_item_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchlistItemPage extends WatchlistItemPage {
  @override
  final BuiltList<WatchlistItem> items;
  @override
  final String? nextCursor;

  factory _$WatchlistItemPage([
    void Function(WatchlistItemPageBuilder)? updates,
  ]) => (WatchlistItemPageBuilder()..update(updates))._build();

  _$WatchlistItemPage._({required this.items, this.nextCursor}) : super._();
  @override
  WatchlistItemPage rebuild(void Function(WatchlistItemPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistItemPageBuilder toBuilder() =>
      WatchlistItemPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistItemPage &&
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
    return (newBuiltValueToStringHelper(r'WatchlistItemPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class WatchlistItemPageBuilder
    implements Builder<WatchlistItemPage, WatchlistItemPageBuilder> {
  _$WatchlistItemPage? _$v;

  ListBuilder<WatchlistItem>? _items;
  ListBuilder<WatchlistItem> get items =>
      _$this._items ??= ListBuilder<WatchlistItem>();
  set items(ListBuilder<WatchlistItem>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  WatchlistItemPageBuilder() {
    WatchlistItemPage._defaults(this);
  }

  WatchlistItemPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistItemPage other) {
    _$v = other as _$WatchlistItemPage;
  }

  @override
  void update(void Function(WatchlistItemPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistItemPage build() => _build();

  _$WatchlistItemPage _build() {
    _$WatchlistItemPage _$result;
    try {
      _$result =
          _$v ??
          _$WatchlistItemPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchlistItemPage',
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
