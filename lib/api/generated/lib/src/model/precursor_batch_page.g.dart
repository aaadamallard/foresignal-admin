// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_batch_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorBatchPage extends PrecursorBatchPage {
  @override
  final BuiltList<PrecursorBatch> items;
  @override
  final String? nextCursor;

  factory _$PrecursorBatchPage(
          [void Function(PrecursorBatchPageBuilder)? updates]) =>
      (PrecursorBatchPageBuilder()..update(updates))._build();

  _$PrecursorBatchPage._({required this.items, this.nextCursor}) : super._();
  @override
  PrecursorBatchPage rebuild(
          void Function(PrecursorBatchPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorBatchPageBuilder toBuilder() =>
      PrecursorBatchPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorBatchPage &&
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
    return (newBuiltValueToStringHelper(r'PrecursorBatchPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PrecursorBatchPageBuilder
    implements Builder<PrecursorBatchPage, PrecursorBatchPageBuilder> {
  _$PrecursorBatchPage? _$v;

  ListBuilder<PrecursorBatch>? _items;
  ListBuilder<PrecursorBatch> get items =>
      _$this._items ??= ListBuilder<PrecursorBatch>();
  set items(ListBuilder<PrecursorBatch>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PrecursorBatchPageBuilder() {
    PrecursorBatchPage._defaults(this);
  }

  PrecursorBatchPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorBatchPage other) {
    _$v = other as _$PrecursorBatchPage;
  }

  @override
  void update(void Function(PrecursorBatchPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorBatchPage build() => _build();

  _$PrecursorBatchPage _build() {
    _$PrecursorBatchPage _$result;
    try {
      _$result = _$v ??
          _$PrecursorBatchPage._(
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
            r'PrecursorBatchPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
