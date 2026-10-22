// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_post_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPostPage extends SocialPostPage {
  @override
  final BuiltList<SocialPost> items;
  @override
  final String? nextCursor;

  factory _$SocialPostPage([void Function(SocialPostPageBuilder)? updates]) =>
      (SocialPostPageBuilder()..update(updates))._build();

  _$SocialPostPage._({required this.items, this.nextCursor}) : super._();
  @override
  SocialPostPage rebuild(void Function(SocialPostPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPostPageBuilder toBuilder() => SocialPostPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPostPage &&
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
    return (newBuiltValueToStringHelper(r'SocialPostPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SocialPostPageBuilder
    implements Builder<SocialPostPage, SocialPostPageBuilder> {
  _$SocialPostPage? _$v;

  ListBuilder<SocialPost>? _items;
  ListBuilder<SocialPost> get items =>
      _$this._items ??= ListBuilder<SocialPost>();
  set items(ListBuilder<SocialPost>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SocialPostPageBuilder() {
    SocialPostPage._defaults(this);
  }

  SocialPostPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPostPage other) {
    _$v = other as _$SocialPostPage;
  }

  @override
  void update(void Function(SocialPostPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPostPage build() => _build();

  _$SocialPostPage _build() {
    _$SocialPostPage _$result;
    try {
      _$result = _$v ??
          _$SocialPostPage._(
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
            r'SocialPostPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
