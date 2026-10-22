// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTestPage extends PrecursorTestPage {
  @override
  final BuiltList<PrecursorTest> items;
  @override
  final String? nextCursor;

  factory _$PrecursorTestPage([
    void Function(PrecursorTestPageBuilder)? updates,
  ]) => (PrecursorTestPageBuilder()..update(updates))._build();

  _$PrecursorTestPage._({required this.items, this.nextCursor}) : super._();
  @override
  PrecursorTestPage rebuild(void Function(PrecursorTestPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorTestPageBuilder toBuilder() =>
      PrecursorTestPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestPage &&
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
    return (newBuiltValueToStringHelper(r'PrecursorTestPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PrecursorTestPageBuilder
    implements Builder<PrecursorTestPage, PrecursorTestPageBuilder> {
  _$PrecursorTestPage? _$v;

  ListBuilder<PrecursorTest>? _items;
  ListBuilder<PrecursorTest> get items =>
      _$this._items ??= ListBuilder<PrecursorTest>();
  set items(ListBuilder<PrecursorTest>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PrecursorTestPageBuilder() {
    PrecursorTestPage._defaults(this);
  }

  PrecursorTestPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestPage other) {
    _$v = other as _$PrecursorTestPage;
  }

  @override
  void update(void Function(PrecursorTestPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestPage build() => _build();

  _$PrecursorTestPage _build() {
    _$PrecursorTestPage _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorTestPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorTestPage',
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
