// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_catalog_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitCatalogPage extends TransitCatalogPage {
  @override
  final BuiltList<TransitCatalogEntry> items;
  @override
  final String? nextCursor;

  factory _$TransitCatalogPage([
    void Function(TransitCatalogPageBuilder)? updates,
  ]) => (TransitCatalogPageBuilder()..update(updates))._build();

  _$TransitCatalogPage._({required this.items, this.nextCursor}) : super._();
  @override
  TransitCatalogPage rebuild(
    void Function(TransitCatalogPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TransitCatalogPageBuilder toBuilder() =>
      TransitCatalogPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitCatalogPage &&
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
    return (newBuiltValueToStringHelper(r'TransitCatalogPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class TransitCatalogPageBuilder
    implements Builder<TransitCatalogPage, TransitCatalogPageBuilder> {
  _$TransitCatalogPage? _$v;

  ListBuilder<TransitCatalogEntry>? _items;
  ListBuilder<TransitCatalogEntry> get items =>
      _$this._items ??= ListBuilder<TransitCatalogEntry>();
  set items(ListBuilder<TransitCatalogEntry>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TransitCatalogPageBuilder() {
    TransitCatalogPage._defaults(this);
  }

  TransitCatalogPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitCatalogPage other) {
    _$v = other as _$TransitCatalogPage;
  }

  @override
  void update(void Function(TransitCatalogPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitCatalogPage build() => _build();

  _$TransitCatalogPage _build() {
    _$TransitCatalogPage _$result;
    try {
      _$result =
          _$v ??
          _$TransitCatalogPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TransitCatalogPage',
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
