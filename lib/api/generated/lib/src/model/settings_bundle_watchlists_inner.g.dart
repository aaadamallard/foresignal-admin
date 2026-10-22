// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_bundle_watchlists_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsBundleWatchlistsInner extends SettingsBundleWatchlistsInner {
  @override
  final Watchlist? watchlist;
  @override
  final BuiltList<WatchlistItem>? items;

  factory _$SettingsBundleWatchlistsInner([
    void Function(SettingsBundleWatchlistsInnerBuilder)? updates,
  ]) => (SettingsBundleWatchlistsInnerBuilder()..update(updates))._build();

  _$SettingsBundleWatchlistsInner._({this.watchlist, this.items}) : super._();
  @override
  SettingsBundleWatchlistsInner rebuild(
    void Function(SettingsBundleWatchlistsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SettingsBundleWatchlistsInnerBuilder toBuilder() =>
      SettingsBundleWatchlistsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsBundleWatchlistsInner &&
        watchlist == other.watchlist &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, watchlist.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsBundleWatchlistsInner')
          ..add('watchlist', watchlist)
          ..add('items', items))
        .toString();
  }
}

class SettingsBundleWatchlistsInnerBuilder
    implements
        Builder<
          SettingsBundleWatchlistsInner,
          SettingsBundleWatchlistsInnerBuilder
        > {
  _$SettingsBundleWatchlistsInner? _$v;

  WatchlistBuilder? _watchlist;
  WatchlistBuilder get watchlist => _$this._watchlist ??= WatchlistBuilder();
  set watchlist(WatchlistBuilder? watchlist) => _$this._watchlist = watchlist;

  ListBuilder<WatchlistItem>? _items;
  ListBuilder<WatchlistItem> get items =>
      _$this._items ??= ListBuilder<WatchlistItem>();
  set items(ListBuilder<WatchlistItem>? items) => _$this._items = items;

  SettingsBundleWatchlistsInnerBuilder() {
    SettingsBundleWatchlistsInner._defaults(this);
  }

  SettingsBundleWatchlistsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _watchlist = $v.watchlist?.toBuilder();
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsBundleWatchlistsInner other) {
    _$v = other as _$SettingsBundleWatchlistsInner;
  }

  @override
  void update(void Function(SettingsBundleWatchlistsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsBundleWatchlistsInner build() => _build();

  _$SettingsBundleWatchlistsInner _build() {
    _$SettingsBundleWatchlistsInner _$result;
    try {
      _$result =
          _$v ??
          _$SettingsBundleWatchlistsInner._(
            watchlist: _watchlist?.build(),
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'watchlist';
        _watchlist?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SettingsBundleWatchlistsInner',
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
