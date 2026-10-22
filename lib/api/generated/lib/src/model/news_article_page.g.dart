// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsArticlePage extends NewsArticlePage {
  @override
  final BuiltList<NewsArticle> items;
  @override
  final String? nextCursor;

  factory _$NewsArticlePage([void Function(NewsArticlePageBuilder)? updates]) =>
      (NewsArticlePageBuilder()..update(updates))._build();

  _$NewsArticlePage._({required this.items, this.nextCursor}) : super._();
  @override
  NewsArticlePage rebuild(void Function(NewsArticlePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsArticlePageBuilder toBuilder() => NewsArticlePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsArticlePage &&
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
    return (newBuiltValueToStringHelper(r'NewsArticlePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class NewsArticlePageBuilder
    implements Builder<NewsArticlePage, NewsArticlePageBuilder> {
  _$NewsArticlePage? _$v;

  ListBuilder<NewsArticle>? _items;
  ListBuilder<NewsArticle> get items =>
      _$this._items ??= ListBuilder<NewsArticle>();
  set items(ListBuilder<NewsArticle>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  NewsArticlePageBuilder() {
    NewsArticlePage._defaults(this);
  }

  NewsArticlePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsArticlePage other) {
    _$v = other as _$NewsArticlePage;
  }

  @override
  void update(void Function(NewsArticlePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsArticlePage build() => _build();

  _$NewsArticlePage _build() {
    _$NewsArticlePage _$result;
    try {
      _$result =
          _$v ??
          _$NewsArticlePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NewsArticlePage',
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
