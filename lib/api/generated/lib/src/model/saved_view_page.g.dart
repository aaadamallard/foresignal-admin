// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_view_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedViewPage extends SavedViewPage {
  @override
  final BuiltList<SavedView> items;
  @override
  final String? nextCursor;

  factory _$SavedViewPage([void Function(SavedViewPageBuilder)? updates]) =>
      (SavedViewPageBuilder()..update(updates))._build();

  _$SavedViewPage._({required this.items, this.nextCursor}) : super._();
  @override
  SavedViewPage rebuild(void Function(SavedViewPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedViewPageBuilder toBuilder() => SavedViewPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedViewPage &&
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
    return (newBuiltValueToStringHelper(r'SavedViewPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SavedViewPageBuilder
    implements Builder<SavedViewPage, SavedViewPageBuilder> {
  _$SavedViewPage? _$v;

  ListBuilder<SavedView>? _items;
  ListBuilder<SavedView> get items =>
      _$this._items ??= ListBuilder<SavedView>();
  set items(ListBuilder<SavedView>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SavedViewPageBuilder() {
    SavedViewPage._defaults(this);
  }

  SavedViewPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedViewPage other) {
    _$v = other as _$SavedViewPage;
  }

  @override
  void update(void Function(SavedViewPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedViewPage build() => _build();

  _$SavedViewPage _build() {
    _$SavedViewPage _$result;
    try {
      _$result =
          _$v ??
          _$SavedViewPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SavedViewPage',
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
