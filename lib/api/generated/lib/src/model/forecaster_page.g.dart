// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecaster_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecasterPage extends ForecasterPage {
  @override
  final BuiltList<Forecaster> items;
  @override
  final String? nextCursor;

  factory _$ForecasterPage([void Function(ForecasterPageBuilder)? updates]) =>
      (ForecasterPageBuilder()..update(updates))._build();

  _$ForecasterPage._({required this.items, this.nextCursor}) : super._();
  @override
  ForecasterPage rebuild(void Function(ForecasterPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecasterPageBuilder toBuilder() => ForecasterPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecasterPage &&
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
    return (newBuiltValueToStringHelper(r'ForecasterPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ForecasterPageBuilder
    implements Builder<ForecasterPage, ForecasterPageBuilder> {
  _$ForecasterPage? _$v;

  ListBuilder<Forecaster>? _items;
  ListBuilder<Forecaster> get items =>
      _$this._items ??= ListBuilder<Forecaster>();
  set items(ListBuilder<Forecaster>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ForecasterPageBuilder() {
    ForecasterPage._defaults(this);
  }

  ForecasterPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecasterPage other) {
    _$v = other as _$ForecasterPage;
  }

  @override
  void update(void Function(ForecasterPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecasterPage build() => _build();

  _$ForecasterPage _build() {
    _$ForecasterPage _$result;
    try {
      _$result =
          _$v ??
          _$ForecasterPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecasterPage',
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
