// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchlistPage extends WatchlistPage {
  @override
  final BuiltList<Watchlist> items;
  @override
  final String? nextCursor;

  factory _$WatchlistPage([void Function(WatchlistPageBuilder)? updates]) =>
      (WatchlistPageBuilder()..update(updates))._build();

  _$WatchlistPage._({required this.items, this.nextCursor}) : super._();
  @override
  WatchlistPage rebuild(void Function(WatchlistPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistPageBuilder toBuilder() => WatchlistPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistPage &&
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
    return (newBuiltValueToStringHelper(r'WatchlistPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class WatchlistPageBuilder
    implements Builder<WatchlistPage, WatchlistPageBuilder> {
  _$WatchlistPage? _$v;

  ListBuilder<Watchlist>? _items;
  ListBuilder<Watchlist> get items =>
      _$this._items ??= ListBuilder<Watchlist>();
  set items(ListBuilder<Watchlist>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  WatchlistPageBuilder() {
    WatchlistPage._defaults(this);
  }

  WatchlistPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistPage other) {
    _$v = other as _$WatchlistPage;
  }

  @override
  void update(void Function(WatchlistPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistPage build() => _build();

  _$WatchlistPage _build() {
    _$WatchlistPage _$result;
    try {
      _$result =
          _$v ??
          _$WatchlistPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchlistPage',
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
