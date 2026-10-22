// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_item_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SharedItemPage extends SharedItemPage {
  @override
  final BuiltList<SharedItem> items;
  @override
  final String? nextCursor;

  factory _$SharedItemPage([void Function(SharedItemPageBuilder)? updates]) =>
      (SharedItemPageBuilder()..update(updates))._build();

  _$SharedItemPage._({required this.items, this.nextCursor}) : super._();
  @override
  SharedItemPage rebuild(void Function(SharedItemPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SharedItemPageBuilder toBuilder() => SharedItemPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharedItemPage &&
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
    return (newBuiltValueToStringHelper(r'SharedItemPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SharedItemPageBuilder
    implements Builder<SharedItemPage, SharedItemPageBuilder> {
  _$SharedItemPage? _$v;

  ListBuilder<SharedItem>? _items;
  ListBuilder<SharedItem> get items =>
      _$this._items ??= ListBuilder<SharedItem>();
  set items(ListBuilder<SharedItem>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SharedItemPageBuilder() {
    SharedItemPage._defaults(this);
  }

  SharedItemPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SharedItemPage other) {
    _$v = other as _$SharedItemPage;
  }

  @override
  void update(void Function(SharedItemPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SharedItemPage build() => _build();

  _$SharedItemPage _build() {
    _$SharedItemPage _$result;
    try {
      _$result = _$v ??
          _$SharedItemPage._(
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
            r'SharedItemPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
