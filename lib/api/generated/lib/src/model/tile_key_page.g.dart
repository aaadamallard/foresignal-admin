// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_key_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TileKeyPage extends TileKeyPage {
  @override
  final BuiltList<TileKey> items;
  @override
  final String? nextCursor;

  factory _$TileKeyPage([void Function(TileKeyPageBuilder)? updates]) =>
      (TileKeyPageBuilder()..update(updates))._build();

  _$TileKeyPage._({required this.items, this.nextCursor}) : super._();
  @override
  TileKeyPage rebuild(void Function(TileKeyPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileKeyPageBuilder toBuilder() => TileKeyPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileKeyPage &&
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
    return (newBuiltValueToStringHelper(r'TileKeyPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class TileKeyPageBuilder implements Builder<TileKeyPage, TileKeyPageBuilder> {
  _$TileKeyPage? _$v;

  ListBuilder<TileKey>? _items;
  ListBuilder<TileKey> get items => _$this._items ??= ListBuilder<TileKey>();
  set items(ListBuilder<TileKey>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TileKeyPageBuilder() {
    TileKeyPage._defaults(this);
  }

  TileKeyPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileKeyPage other) {
    _$v = other as _$TileKeyPage;
  }

  @override
  void update(void Function(TileKeyPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileKeyPage build() => _build();

  _$TileKeyPage _build() {
    _$TileKeyPage _$result;
    try {
      _$result = _$v ??
          _$TileKeyPage._(
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
            r'TileKeyPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
