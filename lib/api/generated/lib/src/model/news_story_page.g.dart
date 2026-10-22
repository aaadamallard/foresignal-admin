// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_story_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsStoryPage extends NewsStoryPage {
  @override
  final BuiltList<NewsStory> items;
  @override
  final String? nextCursor;

  factory _$NewsStoryPage([void Function(NewsStoryPageBuilder)? updates]) =>
      (NewsStoryPageBuilder()..update(updates))._build();

  _$NewsStoryPage._({required this.items, this.nextCursor}) : super._();
  @override
  NewsStoryPage rebuild(void Function(NewsStoryPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsStoryPageBuilder toBuilder() => NewsStoryPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsStoryPage &&
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
    return (newBuiltValueToStringHelper(r'NewsStoryPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class NewsStoryPageBuilder
    implements Builder<NewsStoryPage, NewsStoryPageBuilder> {
  _$NewsStoryPage? _$v;

  ListBuilder<NewsStory>? _items;
  ListBuilder<NewsStory> get items =>
      _$this._items ??= ListBuilder<NewsStory>();
  set items(ListBuilder<NewsStory>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  NewsStoryPageBuilder() {
    NewsStoryPage._defaults(this);
  }

  NewsStoryPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsStoryPage other) {
    _$v = other as _$NewsStoryPage;
  }

  @override
  void update(void Function(NewsStoryPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsStoryPage build() => _build();

  _$NewsStoryPage _build() {
    _$NewsStoryPage _$result;
    try {
      _$result = _$v ??
          _$NewsStoryPage._(
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
            r'NewsStoryPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
