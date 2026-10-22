// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagPage extends TagPage {
  @override
  final BuiltList<Tag> items;
  @override
  final String? nextCursor;

  factory _$TagPage([void Function(TagPageBuilder)? updates]) =>
      (TagPageBuilder()..update(updates))._build();

  _$TagPage._({required this.items, this.nextCursor}) : super._();
  @override
  TagPage rebuild(void Function(TagPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagPageBuilder toBuilder() => TagPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagPage &&
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
    return (newBuiltValueToStringHelper(r'TagPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class TagPageBuilder implements Builder<TagPage, TagPageBuilder> {
  _$TagPage? _$v;

  ListBuilder<Tag>? _items;
  ListBuilder<Tag> get items => _$this._items ??= ListBuilder<Tag>();
  set items(ListBuilder<Tag>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TagPageBuilder() {
    TagPage._defaults(this);
  }

  TagPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagPage other) {
    _$v = other as _$TagPage;
  }

  @override
  void update(void Function(TagPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagPage build() => _build();

  _$TagPage _build() {
    _$TagPage _$result;
    try {
      _$result =
          _$v ?? _$TagPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TagPage',
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
