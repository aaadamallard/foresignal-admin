// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlacePage extends PlacePage {
  @override
  final BuiltList<Place> items;
  @override
  final String? nextCursor;

  factory _$PlacePage([void Function(PlacePageBuilder)? updates]) =>
      (PlacePageBuilder()..update(updates))._build();

  _$PlacePage._({required this.items, this.nextCursor}) : super._();
  @override
  PlacePage rebuild(void Function(PlacePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacePageBuilder toBuilder() => PlacePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacePage &&
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
    return (newBuiltValueToStringHelper(r'PlacePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PlacePageBuilder implements Builder<PlacePage, PlacePageBuilder> {
  _$PlacePage? _$v;

  ListBuilder<Place>? _items;
  ListBuilder<Place> get items => _$this._items ??= ListBuilder<Place>();
  set items(ListBuilder<Place>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PlacePageBuilder() {
    PlacePage._defaults(this);
  }

  PlacePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacePage other) {
    _$v = other as _$PlacePage;
  }

  @override
  void update(void Function(PlacePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacePage build() => _build();

  _$PlacePage _build() {
    _$PlacePage _$result;
    try {
      _$result =
          _$v ?? _$PlacePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlacePage',
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
