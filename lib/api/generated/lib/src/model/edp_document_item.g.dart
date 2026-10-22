// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_document_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpDocumentItemTypeEnum _$edpDocumentItemTypeEnum_document =
    const EdpDocumentItemTypeEnum._('document');

EdpDocumentItemTypeEnum _$edpDocumentItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'document':
      return _$edpDocumentItemTypeEnum_document;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpDocumentItemTypeEnum> _$edpDocumentItemTypeEnumValues =
    BuiltSet<EdpDocumentItemTypeEnum>(const <EdpDocumentItemTypeEnum>[
  _$edpDocumentItemTypeEnum_document,
]);

const EdpDocumentItemDocumentTypeEnum
    _$edpDocumentItemDocumentTypeEnum_socialPost =
    const EdpDocumentItemDocumentTypeEnum._('socialPost');
const EdpDocumentItemDocumentTypeEnum
    _$edpDocumentItemDocumentTypeEnum_article =
    const EdpDocumentItemDocumentTypeEnum._('article');
const EdpDocumentItemDocumentTypeEnum _$edpDocumentItemDocumentTypeEnum_report =
    const EdpDocumentItemDocumentTypeEnum._('report');
const EdpDocumentItemDocumentTypeEnum
    _$edpDocumentItemDocumentTypeEnum_transcript =
    const EdpDocumentItemDocumentTypeEnum._('transcript');
const EdpDocumentItemDocumentTypeEnum _$edpDocumentItemDocumentTypeEnum_note =
    const EdpDocumentItemDocumentTypeEnum._('note');

EdpDocumentItemDocumentTypeEnum _$edpDocumentItemDocumentTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'socialPost':
      return _$edpDocumentItemDocumentTypeEnum_socialPost;
    case 'article':
      return _$edpDocumentItemDocumentTypeEnum_article;
    case 'report':
      return _$edpDocumentItemDocumentTypeEnum_report;
    case 'transcript':
      return _$edpDocumentItemDocumentTypeEnum_transcript;
    case 'note':
      return _$edpDocumentItemDocumentTypeEnum_note;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpDocumentItemDocumentTypeEnum>
    _$edpDocumentItemDocumentTypeEnumValues = BuiltSet<
        EdpDocumentItemDocumentTypeEnum>(const <EdpDocumentItemDocumentTypeEnum>[
  _$edpDocumentItemDocumentTypeEnum_socialPost,
  _$edpDocumentItemDocumentTypeEnum_article,
  _$edpDocumentItemDocumentTypeEnum_report,
  _$edpDocumentItemDocumentTypeEnum_transcript,
  _$edpDocumentItemDocumentTypeEnum_note,
]);

Serializer<EdpDocumentItemTypeEnum> _$edpDocumentItemTypeEnumSerializer =
    _$EdpDocumentItemTypeEnumSerializer();
Serializer<EdpDocumentItemDocumentTypeEnum>
    _$edpDocumentItemDocumentTypeEnumSerializer =
    _$EdpDocumentItemDocumentTypeEnumSerializer();

class _$EdpDocumentItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpDocumentItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'document': 'document',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'document': 'document',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpDocumentItemTypeEnum];
  @override
  final String wireName = 'EdpDocumentItemTypeEnum';

  @override
  Object serialize(Serializers serializers, EdpDocumentItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpDocumentItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpDocumentItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpDocumentItemDocumentTypeEnumSerializer
    implements PrimitiveSerializer<EdpDocumentItemDocumentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'socialPost': 'social-post',
    'article': 'article',
    'report': 'report',
    'transcript': 'transcript',
    'note': 'note',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'social-post': 'socialPost',
    'article': 'article',
    'report': 'report',
    'transcript': 'transcript',
    'note': 'note',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpDocumentItemDocumentTypeEnum];
  @override
  final String wireName = 'EdpDocumentItemDocumentTypeEnum';

  @override
  Object serialize(
          Serializers serializers, EdpDocumentItemDocumentTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpDocumentItemDocumentTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpDocumentItemDocumentTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpDocumentItem extends EdpDocumentItem {
  @override
  final String stream;
  @override
  final EdpDocumentItemTypeEnum type;
  @override
  final String id;
  @override
  final DateTime? observedAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final EdpDocumentItemDocumentTypeEnum documentType;
  @override
  final String text;
  @override
  final String? title;
  @override
  final String? url;
  @override
  final EdpDocumentItemAuthor? author;
  @override
  final String? language;
  @override
  final DateTime? publishedAt;
  @override
  final BuiltList<String>? about;
  @override
  final BuiltList<EdpDocumentItemMediaInner>? media;
  @override
  final EdpGeometry? geometry;
  @override
  final BuiltMap<String, num?>? engagement;
  @override
  final EdpOrigin? origin;

  factory _$EdpDocumentItem([void Function(EdpDocumentItemBuilder)? updates]) =>
      (EdpDocumentItemBuilder()..update(updates))._build();

  _$EdpDocumentItem._(
      {required this.stream,
      required this.type,
      required this.id,
      this.observedAt,
      this.properties,
      required this.documentType,
      required this.text,
      this.title,
      this.url,
      this.author,
      this.language,
      this.publishedAt,
      this.about,
      this.media,
      this.geometry,
      this.engagement,
      this.origin})
      : super._();
  @override
  EdpDocumentItem rebuild(void Function(EdpDocumentItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpDocumentItemBuilder toBuilder() => EdpDocumentItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpDocumentItem &&
        stream == other.stream &&
        type == other.type &&
        id == other.id &&
        observedAt == other.observedAt &&
        properties == other.properties &&
        documentType == other.documentType &&
        text == other.text &&
        title == other.title &&
        url == other.url &&
        author == other.author &&
        language == other.language &&
        publishedAt == other.publishedAt &&
        about == other.about &&
        media == other.media &&
        geometry == other.geometry &&
        engagement == other.engagement &&
        origin == other.origin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, documentType.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, engagement.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpDocumentItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('id', id)
          ..add('observedAt', observedAt)
          ..add('properties', properties)
          ..add('documentType', documentType)
          ..add('text', text)
          ..add('title', title)
          ..add('url', url)
          ..add('author', author)
          ..add('language', language)
          ..add('publishedAt', publishedAt)
          ..add('about', about)
          ..add('media', media)
          ..add('geometry', geometry)
          ..add('engagement', engagement)
          ..add('origin', origin))
        .toString();
  }
}

class EdpDocumentItemBuilder
    implements Builder<EdpDocumentItem, EdpDocumentItemBuilder> {
  _$EdpDocumentItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpDocumentItemTypeEnum? _type;
  EdpDocumentItemTypeEnum? get type => _$this._type;
  set type(EdpDocumentItemTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  EdpDocumentItemDocumentTypeEnum? _documentType;
  EdpDocumentItemDocumentTypeEnum? get documentType => _$this._documentType;
  set documentType(EdpDocumentItemDocumentTypeEnum? documentType) =>
      _$this._documentType = documentType;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  EdpDocumentItemAuthorBuilder? _author;
  EdpDocumentItemAuthorBuilder get author =>
      _$this._author ??= EdpDocumentItemAuthorBuilder();
  set author(EdpDocumentItemAuthorBuilder? author) => _$this._author = author;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<String>? _about;
  ListBuilder<String> get about => _$this._about ??= ListBuilder<String>();
  set about(ListBuilder<String>? about) => _$this._about = about;

  ListBuilder<EdpDocumentItemMediaInner>? _media;
  ListBuilder<EdpDocumentItemMediaInner> get media =>
      _$this._media ??= ListBuilder<EdpDocumentItemMediaInner>();
  set media(ListBuilder<EdpDocumentItemMediaInner>? media) =>
      _$this._media = media;

  EdpGeometryBuilder? _geometry;
  EdpGeometryBuilder get geometry => _$this._geometry ??= EdpGeometryBuilder();
  set geometry(EdpGeometryBuilder? geometry) => _$this._geometry = geometry;

  MapBuilder<String, num?>? _engagement;
  MapBuilder<String, num?> get engagement =>
      _$this._engagement ??= MapBuilder<String, num?>();
  set engagement(MapBuilder<String, num?>? engagement) =>
      _$this._engagement = engagement;

  EdpOriginBuilder? _origin;
  EdpOriginBuilder get origin => _$this._origin ??= EdpOriginBuilder();
  set origin(EdpOriginBuilder? origin) => _$this._origin = origin;

  EdpDocumentItemBuilder() {
    EdpDocumentItem._defaults(this);
  }

  EdpDocumentItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _id = $v.id;
      _observedAt = $v.observedAt;
      _properties = $v.properties?.toBuilder();
      _documentType = $v.documentType;
      _text = $v.text;
      _title = $v.title;
      _url = $v.url;
      _author = $v.author?.toBuilder();
      _language = $v.language;
      _publishedAt = $v.publishedAt;
      _about = $v.about?.toBuilder();
      _media = $v.media?.toBuilder();
      _geometry = $v.geometry?.toBuilder();
      _engagement = $v.engagement?.toBuilder();
      _origin = $v.origin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpDocumentItem other) {
    _$v = other as _$EdpDocumentItem;
  }

  @override
  void update(void Function(EdpDocumentItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpDocumentItem build() => _build();

  _$EdpDocumentItem _build() {
    _$EdpDocumentItem _$result;
    try {
      _$result = _$v ??
          _$EdpDocumentItem._(
            stream: BuiltValueNullFieldError.checkNotNull(
                stream, r'EdpDocumentItem', 'stream'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'EdpDocumentItem', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EdpDocumentItem', 'id'),
            observedAt: observedAt,
            properties: _properties?.build(),
            documentType: BuiltValueNullFieldError.checkNotNull(
                documentType, r'EdpDocumentItem', 'documentType'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'EdpDocumentItem', 'text'),
            title: title,
            url: url,
            author: _author?.build(),
            language: language,
            publishedAt: publishedAt,
            about: _about?.build(),
            media: _media?.build(),
            geometry: _geometry?.build(),
            engagement: _engagement?.build(),
            origin: _origin?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();

        _$failedField = 'author';
        _author?.build();

        _$failedField = 'about';
        _about?.build();
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'engagement';
        _engagement?.build();
        _$failedField = 'origin';
        _origin?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpDocumentItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
