// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorPage extends PrecursorPage {
  @override
  final BuiltList<Precursor> items;
  @override
  final String? nextCursor;

  factory _$PrecursorPage([void Function(PrecursorPageBuilder)? updates]) =>
      (PrecursorPageBuilder()..update(updates))._build();

  _$PrecursorPage._({required this.items, this.nextCursor}) : super._();
  @override
  PrecursorPage rebuild(void Function(PrecursorPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorPageBuilder toBuilder() => PrecursorPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorPage &&
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
    return (newBuiltValueToStringHelper(r'PrecursorPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PrecursorPageBuilder
    implements Builder<PrecursorPage, PrecursorPageBuilder> {
  _$PrecursorPage? _$v;

  ListBuilder<Precursor>? _items;
  ListBuilder<Precursor> get items =>
      _$this._items ??= ListBuilder<Precursor>();
  set items(ListBuilder<Precursor>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PrecursorPageBuilder() {
    PrecursorPage._defaults(this);
  }

  PrecursorPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorPage other) {
    _$v = other as _$PrecursorPage;
  }

  @override
  void update(void Function(PrecursorPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorPage build() => _build();

  _$PrecursorPage _build() {
    _$PrecursorPage _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorPage',
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
