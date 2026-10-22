// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_story_outlets_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsStoryOutletsInner extends NewsStoryOutletsInner {
  @override
  final MediaOutlet outlet;
  @override
  final BuiltList<NewsArticle> articles;
  @override
  final String? evidenceGroupId;

  factory _$NewsStoryOutletsInner(
          [void Function(NewsStoryOutletsInnerBuilder)? updates]) =>
      (NewsStoryOutletsInnerBuilder()..update(updates))._build();

  _$NewsStoryOutletsInner._(
      {required this.outlet, required this.articles, this.evidenceGroupId})
      : super._();
  @override
  NewsStoryOutletsInner rebuild(
          void Function(NewsStoryOutletsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsStoryOutletsInnerBuilder toBuilder() =>
      NewsStoryOutletsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsStoryOutletsInner &&
        outlet == other.outlet &&
        articles == other.articles &&
        evidenceGroupId == other.evidenceGroupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outlet.hashCode);
    _$hash = $jc(_$hash, articles.hashCode);
    _$hash = $jc(_$hash, evidenceGroupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsStoryOutletsInner')
          ..add('outlet', outlet)
          ..add('articles', articles)
          ..add('evidenceGroupId', evidenceGroupId))
        .toString();
  }
}

class NewsStoryOutletsInnerBuilder
    implements Builder<NewsStoryOutletsInner, NewsStoryOutletsInnerBuilder> {
  _$NewsStoryOutletsInner? _$v;

  MediaOutletBuilder? _outlet;
  MediaOutletBuilder get outlet => _$this._outlet ??= MediaOutletBuilder();
  set outlet(MediaOutletBuilder? outlet) => _$this._outlet = outlet;

  ListBuilder<NewsArticle>? _articles;
  ListBuilder<NewsArticle> get articles =>
      _$this._articles ??= ListBuilder<NewsArticle>();
  set articles(ListBuilder<NewsArticle>? articles) =>
      _$this._articles = articles;

  String? _evidenceGroupId;
  String? get evidenceGroupId => _$this._evidenceGroupId;
  set evidenceGroupId(String? evidenceGroupId) =>
      _$this._evidenceGroupId = evidenceGroupId;

  NewsStoryOutletsInnerBuilder() {
    NewsStoryOutletsInner._defaults(this);
  }

  NewsStoryOutletsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outlet = $v.outlet.toBuilder();
      _articles = $v.articles.toBuilder();
      _evidenceGroupId = $v.evidenceGroupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsStoryOutletsInner other) {
    _$v = other as _$NewsStoryOutletsInner;
  }

  @override
  void update(void Function(NewsStoryOutletsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsStoryOutletsInner build() => _build();

  _$NewsStoryOutletsInner _build() {
    _$NewsStoryOutletsInner _$result;
    try {
      _$result = _$v ??
          _$NewsStoryOutletsInner._(
            outlet: outlet.build(),
            articles: articles.build(),
            evidenceGroupId: evidenceGroupId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'outlet';
        outlet.build();
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NewsStoryOutletsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
