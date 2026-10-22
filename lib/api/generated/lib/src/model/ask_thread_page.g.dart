// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_thread_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskThreadPage extends AskThreadPage {
  @override
  final BuiltList<AskThreadPageItemsInner> items;
  @override
  final String? nextCursor;

  factory _$AskThreadPage([void Function(AskThreadPageBuilder)? updates]) =>
      (AskThreadPageBuilder()..update(updates))._build();

  _$AskThreadPage._({required this.items, this.nextCursor}) : super._();
  @override
  AskThreadPage rebuild(void Function(AskThreadPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskThreadPageBuilder toBuilder() => AskThreadPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskThreadPage &&
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
    return (newBuiltValueToStringHelper(r'AskThreadPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AskThreadPageBuilder
    implements Builder<AskThreadPage, AskThreadPageBuilder> {
  _$AskThreadPage? _$v;

  ListBuilder<AskThreadPageItemsInner>? _items;
  ListBuilder<AskThreadPageItemsInner> get items =>
      _$this._items ??= ListBuilder<AskThreadPageItemsInner>();
  set items(ListBuilder<AskThreadPageItemsInner>? items) =>
      _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AskThreadPageBuilder() {
    AskThreadPage._defaults(this);
  }

  AskThreadPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskThreadPage other) {
    _$v = other as _$AskThreadPage;
  }

  @override
  void update(void Function(AskThreadPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskThreadPage build() => _build();

  _$AskThreadPage _build() {
    _$AskThreadPage _$result;
    try {
      _$result =
          _$v ??
          _$AskThreadPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskThreadPage',
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
