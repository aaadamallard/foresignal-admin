// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_gap_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionGapPage extends CollectionGapPage {
  @override
  final BuiltList<CollectionGap> items;
  @override
  final String? nextCursor;

  factory _$CollectionGapPage([
    void Function(CollectionGapPageBuilder)? updates,
  ]) => (CollectionGapPageBuilder()..update(updates))._build();

  _$CollectionGapPage._({required this.items, this.nextCursor}) : super._();
  @override
  CollectionGapPage rebuild(void Function(CollectionGapPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionGapPageBuilder toBuilder() =>
      CollectionGapPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionGapPage &&
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
    return (newBuiltValueToStringHelper(r'CollectionGapPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class CollectionGapPageBuilder
    implements Builder<CollectionGapPage, CollectionGapPageBuilder> {
  _$CollectionGapPage? _$v;

  ListBuilder<CollectionGap>? _items;
  ListBuilder<CollectionGap> get items =>
      _$this._items ??= ListBuilder<CollectionGap>();
  set items(ListBuilder<CollectionGap>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  CollectionGapPageBuilder() {
    CollectionGapPage._defaults(this);
  }

  CollectionGapPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionGapPage other) {
    _$v = other as _$CollectionGapPage;
  }

  @override
  void update(void Function(CollectionGapPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionGapPage build() => _build();

  _$CollectionGapPage _build() {
    _$CollectionGapPage _$result;
    try {
      _$result =
          _$v ??
          _$CollectionGapPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CollectionGapPage',
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
