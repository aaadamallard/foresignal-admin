// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StylePage extends StylePage {
  @override
  final BuiltList<Style> items;
  @override
  final String? nextCursor;

  factory _$StylePage([void Function(StylePageBuilder)? updates]) =>
      (StylePageBuilder()..update(updates))._build();

  _$StylePage._({required this.items, this.nextCursor}) : super._();
  @override
  StylePage rebuild(void Function(StylePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StylePageBuilder toBuilder() => StylePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StylePage &&
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
    return (newBuiltValueToStringHelper(r'StylePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class StylePageBuilder implements Builder<StylePage, StylePageBuilder> {
  _$StylePage? _$v;

  ListBuilder<Style>? _items;
  ListBuilder<Style> get items => _$this._items ??= ListBuilder<Style>();
  set items(ListBuilder<Style>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  StylePageBuilder() {
    StylePage._defaults(this);
  }

  StylePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StylePage other) {
    _$v = other as _$StylePage;
  }

  @override
  void update(void Function(StylePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StylePage build() => _build();

  _$StylePage _build() {
    _$StylePage _$result;
    try {
      _$result = _$v ??
          _$StylePage._(
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
            r'StylePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
