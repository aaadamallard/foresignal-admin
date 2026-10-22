// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldPage extends HoldPage {
  @override
  final BuiltList<Hold> items;
  @override
  final String? nextCursor;

  factory _$HoldPage([void Function(HoldPageBuilder)? updates]) =>
      (HoldPageBuilder()..update(updates))._build();

  _$HoldPage._({required this.items, this.nextCursor}) : super._();
  @override
  HoldPage rebuild(void Function(HoldPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldPageBuilder toBuilder() => HoldPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldPage &&
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
    return (newBuiltValueToStringHelper(r'HoldPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class HoldPageBuilder implements Builder<HoldPage, HoldPageBuilder> {
  _$HoldPage? _$v;

  ListBuilder<Hold>? _items;
  ListBuilder<Hold> get items => _$this._items ??= ListBuilder<Hold>();
  set items(ListBuilder<Hold>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  HoldPageBuilder() {
    HoldPage._defaults(this);
  }

  HoldPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldPage other) {
    _$v = other as _$HoldPage;
  }

  @override
  void update(void Function(HoldPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldPage build() => _build();

  _$HoldPage _build() {
    _$HoldPage _$result;
    try {
      _$result =
          _$v ?? _$HoldPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HoldPage',
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
