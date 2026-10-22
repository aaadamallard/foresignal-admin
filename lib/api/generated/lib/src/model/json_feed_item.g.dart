// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_feed_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonFeedItem extends JsonFeedItem {
  @override
  final String id;
  @override
  final String? url;
  @override
  final String title;
  @override
  final String? contentHtml;
  @override
  final String? contentText;
  @override
  final DateTime? datePublished;
  @override
  final DateTime? dateModified;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<JsonFeedItemAuthorsInner>? authors;
  @override
  final JsonFeedItemForesignal? foresignal;

  factory _$JsonFeedItem([void Function(JsonFeedItemBuilder)? updates]) =>
      (JsonFeedItemBuilder()..update(updates))._build();

  _$JsonFeedItem._({
    required this.id,
    this.url,
    required this.title,
    this.contentHtml,
    this.contentText,
    this.datePublished,
    this.dateModified,
    this.tags,
    this.authors,
    this.foresignal,
  }) : super._();
  @override
  JsonFeedItem rebuild(void Function(JsonFeedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonFeedItemBuilder toBuilder() => JsonFeedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonFeedItem &&
        id == other.id &&
        url == other.url &&
        title == other.title &&
        contentHtml == other.contentHtml &&
        contentText == other.contentText &&
        datePublished == other.datePublished &&
        dateModified == other.dateModified &&
        tags == other.tags &&
        authors == other.authors &&
        foresignal == other.foresignal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, contentHtml.hashCode);
    _$hash = $jc(_$hash, contentText.hashCode);
    _$hash = $jc(_$hash, datePublished.hashCode);
    _$hash = $jc(_$hash, dateModified.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, foresignal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JsonFeedItem')
          ..add('id', id)
          ..add('url', url)
          ..add('title', title)
          ..add('contentHtml', contentHtml)
          ..add('contentText', contentText)
          ..add('datePublished', datePublished)
          ..add('dateModified', dateModified)
          ..add('tags', tags)
          ..add('authors', authors)
          ..add('foresignal', foresignal))
        .toString();
  }
}

class JsonFeedItemBuilder
    implements Builder<JsonFeedItem, JsonFeedItemBuilder> {
  _$JsonFeedItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _contentHtml;
  String? get contentHtml => _$this._contentHtml;
  set contentHtml(String? contentHtml) => _$this._contentHtml = contentHtml;

  String? _contentText;
  String? get contentText => _$this._contentText;
  set contentText(String? contentText) => _$this._contentText = contentText;

  DateTime? _datePublished;
  DateTime? get datePublished => _$this._datePublished;
  set datePublished(DateTime? datePublished) =>
      _$this._datePublished = datePublished;

  DateTime? _dateModified;
  DateTime? get dateModified => _$this._dateModified;
  set dateModified(DateTime? dateModified) =>
      _$this._dateModified = dateModified;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<JsonFeedItemAuthorsInner>? _authors;
  ListBuilder<JsonFeedItemAuthorsInner> get authors =>
      _$this._authors ??= ListBuilder<JsonFeedItemAuthorsInner>();
  set authors(ListBuilder<JsonFeedItemAuthorsInner>? authors) =>
      _$this._authors = authors;

  JsonFeedItemForesignalBuilder? _foresignal;
  JsonFeedItemForesignalBuilder get foresignal =>
      _$this._foresignal ??= JsonFeedItemForesignalBuilder();
  set foresignal(JsonFeedItemForesignalBuilder? foresignal) =>
      _$this._foresignal = foresignal;

  JsonFeedItemBuilder() {
    JsonFeedItem._defaults(this);
  }

  JsonFeedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _title = $v.title;
      _contentHtml = $v.contentHtml;
      _contentText = $v.contentText;
      _datePublished = $v.datePublished;
      _dateModified = $v.dateModified;
      _tags = $v.tags?.toBuilder();
      _authors = $v.authors?.toBuilder();
      _foresignal = $v.foresignal?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonFeedItem other) {
    _$v = other as _$JsonFeedItem;
  }

  @override
  void update(void Function(JsonFeedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonFeedItem build() => _build();

  _$JsonFeedItem _build() {
    _$JsonFeedItem _$result;
    try {
      _$result =
          _$v ??
          _$JsonFeedItem._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'JsonFeedItem',
              'id',
            ),
            url: url,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'JsonFeedItem',
              'title',
            ),
            contentHtml: contentHtml,
            contentText: contentText,
            datePublished: datePublished,
            dateModified: dateModified,
            tags: _tags?.build(),
            authors: _authors?.build(),
            foresignal: _foresignal?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'foresignal';
        _foresignal?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'JsonFeedItem',
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
