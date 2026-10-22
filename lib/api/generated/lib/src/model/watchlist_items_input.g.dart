// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_items_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchlistItemsInput extends WatchlistItemsInput {
  @override
  final BuiltList<WatchlistItemInput> items;

  factory _$WatchlistItemsInput(
          [void Function(WatchlistItemsInputBuilder)? updates]) =>
      (WatchlistItemsInputBuilder()..update(updates))._build();

  _$WatchlistItemsInput._({required this.items}) : super._();
  @override
  WatchlistItemsInput rebuild(
          void Function(WatchlistItemsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistItemsInputBuilder toBuilder() =>
      WatchlistItemsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistItemsInput && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistItemsInput')
          ..add('items', items))
        .toString();
  }
}

class WatchlistItemsInputBuilder
    implements Builder<WatchlistItemsInput, WatchlistItemsInputBuilder> {
  _$WatchlistItemsInput? _$v;

  ListBuilder<WatchlistItemInput>? _items;
  ListBuilder<WatchlistItemInput> get items =>
      _$this._items ??= ListBuilder<WatchlistItemInput>();
  set items(ListBuilder<WatchlistItemInput>? items) => _$this._items = items;

  WatchlistItemsInputBuilder() {
    WatchlistItemsInput._defaults(this);
  }

  WatchlistItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistItemsInput other) {
    _$v = other as _$WatchlistItemsInput;
  }

  @override
  void update(void Function(WatchlistItemsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistItemsInput build() => _build();

  _$WatchlistItemsInput _build() {
    _$WatchlistItemsInput _$result;
    try {
      _$result = _$v ??
          _$WatchlistItemsInput._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WatchlistItemsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
