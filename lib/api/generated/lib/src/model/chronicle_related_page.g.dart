// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_related_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleRelatedPage extends ChronicleRelatedPage {
  @override
  final BuiltList<ChronicleRelatedPageItemsInner> items;
  @override
  final String? nextCursor;

  factory _$ChronicleRelatedPage([
    void Function(ChronicleRelatedPageBuilder)? updates,
  ]) => (ChronicleRelatedPageBuilder()..update(updates))._build();

  _$ChronicleRelatedPage._({required this.items, this.nextCursor}) : super._();
  @override
  ChronicleRelatedPage rebuild(
    void Function(ChronicleRelatedPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleRelatedPageBuilder toBuilder() =>
      ChronicleRelatedPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleRelatedPage &&
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
    return (newBuiltValueToStringHelper(r'ChronicleRelatedPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ChronicleRelatedPageBuilder
    implements Builder<ChronicleRelatedPage, ChronicleRelatedPageBuilder> {
  _$ChronicleRelatedPage? _$v;

  ListBuilder<ChronicleRelatedPageItemsInner>? _items;
  ListBuilder<ChronicleRelatedPageItemsInner> get items =>
      _$this._items ??= ListBuilder<ChronicleRelatedPageItemsInner>();
  set items(ListBuilder<ChronicleRelatedPageItemsInner>? items) =>
      _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ChronicleRelatedPageBuilder() {
    ChronicleRelatedPage._defaults(this);
  }

  ChronicleRelatedPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleRelatedPage other) {
    _$v = other as _$ChronicleRelatedPage;
  }

  @override
  void update(void Function(ChronicleRelatedPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleRelatedPage build() => _build();

  _$ChronicleRelatedPage _build() {
    _$ChronicleRelatedPage _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleRelatedPage._(
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
          r'ChronicleRelatedPage',
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
