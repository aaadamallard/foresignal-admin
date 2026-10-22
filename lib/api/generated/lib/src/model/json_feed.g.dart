// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_feed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonFeed extends JsonFeed {
  @override
  final String version;
  @override
  final String title;
  @override
  final String? homePageUrl;
  @override
  final String? feedUrl;
  @override
  final String? description;
  @override
  final String? language;
  @override
  final BuiltList<JsonFeedAuthorsInner>? authors;
  @override
  final BuiltList<JsonFeedItem> items;

  factory _$JsonFeed([void Function(JsonFeedBuilder)? updates]) =>
      (JsonFeedBuilder()..update(updates))._build();

  _$JsonFeed._({
    required this.version,
    required this.title,
    this.homePageUrl,
    this.feedUrl,
    this.description,
    this.language,
    this.authors,
    required this.items,
  }) : super._();
  @override
  JsonFeed rebuild(void Function(JsonFeedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonFeedBuilder toBuilder() => JsonFeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonFeed &&
        version == other.version &&
        title == other.title &&
        homePageUrl == other.homePageUrl &&
        feedUrl == other.feedUrl &&
        description == other.description &&
        language == other.language &&
        authors == other.authors &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, homePageUrl.hashCode);
    _$hash = $jc(_$hash, feedUrl.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JsonFeed')
          ..add('version', version)
          ..add('title', title)
          ..add('homePageUrl', homePageUrl)
          ..add('feedUrl', feedUrl)
          ..add('description', description)
          ..add('language', language)
          ..add('authors', authors)
          ..add('items', items))
        .toString();
  }
}

class JsonFeedBuilder implements Builder<JsonFeed, JsonFeedBuilder> {
  _$JsonFeed? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _homePageUrl;
  String? get homePageUrl => _$this._homePageUrl;
  set homePageUrl(String? homePageUrl) => _$this._homePageUrl = homePageUrl;

  String? _feedUrl;
  String? get feedUrl => _$this._feedUrl;
  set feedUrl(String? feedUrl) => _$this._feedUrl = feedUrl;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<JsonFeedAuthorsInner>? _authors;
  ListBuilder<JsonFeedAuthorsInner> get authors =>
      _$this._authors ??= ListBuilder<JsonFeedAuthorsInner>();
  set authors(ListBuilder<JsonFeedAuthorsInner>? authors) =>
      _$this._authors = authors;

  ListBuilder<JsonFeedItem>? _items;
  ListBuilder<JsonFeedItem> get items =>
      _$this._items ??= ListBuilder<JsonFeedItem>();
  set items(ListBuilder<JsonFeedItem>? items) => _$this._items = items;

  JsonFeedBuilder() {
    JsonFeed._defaults(this);
  }

  JsonFeedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _title = $v.title;
      _homePageUrl = $v.homePageUrl;
      _feedUrl = $v.feedUrl;
      _description = $v.description;
      _language = $v.language;
      _authors = $v.authors?.toBuilder();
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonFeed other) {
    _$v = other as _$JsonFeed;
  }

  @override
  void update(void Function(JsonFeedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonFeed build() => _build();

  _$JsonFeed _build() {
    _$JsonFeed _$result;
    try {
      _$result =
          _$v ??
          _$JsonFeed._(
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'JsonFeed',
              'version',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'JsonFeed',
              'title',
            ),
            homePageUrl: homePageUrl,
            feedUrl: feedUrl,
            description: description,
            language: language,
            authors: _authors?.build(),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'JsonFeed',
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
