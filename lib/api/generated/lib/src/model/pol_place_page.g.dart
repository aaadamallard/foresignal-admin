// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_place_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolPlacePage extends PolPlacePage {
  @override
  final BuiltList<PolPlace> items;
  @override
  final String? nextCursor;

  factory _$PolPlacePage([void Function(PolPlacePageBuilder)? updates]) =>
      (PolPlacePageBuilder()..update(updates))._build();

  _$PolPlacePage._({required this.items, this.nextCursor}) : super._();
  @override
  PolPlacePage rebuild(void Function(PolPlacePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolPlacePageBuilder toBuilder() => PolPlacePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolPlacePage &&
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
    return (newBuiltValueToStringHelper(r'PolPlacePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PolPlacePageBuilder
    implements Builder<PolPlacePage, PolPlacePageBuilder> {
  _$PolPlacePage? _$v;

  ListBuilder<PolPlace>? _items;
  ListBuilder<PolPlace> get items => _$this._items ??= ListBuilder<PolPlace>();
  set items(ListBuilder<PolPlace>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PolPlacePageBuilder() {
    PolPlacePage._defaults(this);
  }

  PolPlacePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolPlacePage other) {
    _$v = other as _$PolPlacePage;
  }

  @override
  void update(void Function(PolPlacePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolPlacePage build() => _build();

  _$PolPlacePage _build() {
    _$PolPlacePage _$result;
    try {
      _$result = _$v ??
          _$PolPlacePage._(
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
            r'PolPlacePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
