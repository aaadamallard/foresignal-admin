// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FetchPage extends FetchPage {
  @override
  final BuiltList<FetchLogEntry> items;
  @override
  final int? nextAfter;

  factory _$FetchPage([void Function(FetchPageBuilder)? updates]) =>
      (FetchPageBuilder()..update(updates))._build();

  _$FetchPage._({required this.items, this.nextAfter}) : super._();
  @override
  FetchPage rebuild(void Function(FetchPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchPageBuilder toBuilder() => FetchPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchPage &&
        items == other.items &&
        nextAfter == other.nextAfter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextAfter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FetchPage')
          ..add('items', items)
          ..add('nextAfter', nextAfter))
        .toString();
  }
}

class FetchPageBuilder implements Builder<FetchPage, FetchPageBuilder> {
  _$FetchPage? _$v;

  ListBuilder<FetchLogEntry>? _items;
  ListBuilder<FetchLogEntry> get items =>
      _$this._items ??= ListBuilder<FetchLogEntry>();
  set items(ListBuilder<FetchLogEntry>? items) => _$this._items = items;

  int? _nextAfter;
  int? get nextAfter => _$this._nextAfter;
  set nextAfter(int? nextAfter) => _$this._nextAfter = nextAfter;

  FetchPageBuilder() {
    FetchPage._defaults(this);
  }

  FetchPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextAfter = $v.nextAfter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchPage other) {
    _$v = other as _$FetchPage;
  }

  @override
  void update(void Function(FetchPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FetchPage build() => _build();

  _$FetchPage _build() {
    _$FetchPage _$result;
    try {
      _$result =
          _$v ?? _$FetchPage._(items: items.build(), nextAfter: nextAfter);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FetchPage',
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
