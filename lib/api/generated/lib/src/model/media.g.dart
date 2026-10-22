// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaRoleEnum _$mediaRoleEnum_image = const MediaRoleEnum._('image');
const MediaRoleEnum _$mediaRoleEnum_thumbnail =
    const MediaRoleEnum._('thumbnail');
const MediaRoleEnum _$mediaRoleEnum_projected =
    const MediaRoleEnum._('projected');
const MediaRoleEnum _$mediaRoleEnum_map = const MediaRoleEnum._('map');
const MediaRoleEnum _$mediaRoleEnum_document =
    const MediaRoleEnum._('document');
const MediaRoleEnum _$mediaRoleEnum_audio = const MediaRoleEnum._('audio');

MediaRoleEnum _$mediaRoleEnumValueOf(String name) {
  switch (name) {
    case 'image':
      return _$mediaRoleEnum_image;
    case 'thumbnail':
      return _$mediaRoleEnum_thumbnail;
    case 'projected':
      return _$mediaRoleEnum_projected;
    case 'map':
      return _$mediaRoleEnum_map;
    case 'document':
      return _$mediaRoleEnum_document;
    case 'audio':
      return _$mediaRoleEnum_audio;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaRoleEnum> _$mediaRoleEnumValues =
    BuiltSet<MediaRoleEnum>(const <MediaRoleEnum>[
  _$mediaRoleEnum_image,
  _$mediaRoleEnum_thumbnail,
  _$mediaRoleEnum_projected,
  _$mediaRoleEnum_map,
  _$mediaRoleEnum_document,
  _$mediaRoleEnum_audio,
]);

Serializer<MediaRoleEnum> _$mediaRoleEnumSerializer =
    _$MediaRoleEnumSerializer();

class _$MediaRoleEnumSerializer implements PrimitiveSerializer<MediaRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'image': 'image',
    'thumbnail': 'thumbnail',
    'projected': 'projected',
    'map': 'map',
    'document': 'document',
    'audio': 'audio',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'image': 'image',
    'thumbnail': 'thumbnail',
    'projected': 'projected',
    'map': 'map',
    'document': 'document',
    'audio': 'audio',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaRoleEnum];
  @override
  final String wireName = 'MediaRoleEnum';

  @override
  Object serialize(Serializers serializers, MediaRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaRoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Media extends Media {
  @override
  final String id;
  @override
  final String sha256;
  @override
  final String contentType;
  @override
  final int width;
  @override
  final int height;
  @override
  final int bytes;
  @override
  final MediaRoleEnum role;
  @override
  final String? sourceId;
  @override
  final String? recordSourceId;
  @override
  final String? recordExternalId;
  @override
  final String? recordRef;
  @override
  final String? licence;
  @override
  final DateTime createdAt;
  @override
  final DateTime? expiresAt;
  @override
  final String? variantOf;
  @override
  final int? variantWidth;
  @override
  final MediaLinks? links;

  factory _$Media([void Function(MediaBuilder)? updates]) =>
      (MediaBuilder()..update(updates))._build();

  _$Media._(
      {required this.id,
      required this.sha256,
      required this.contentType,
      required this.width,
      required this.height,
      required this.bytes,
      required this.role,
      this.sourceId,
      this.recordSourceId,
      this.recordExternalId,
      this.recordRef,
      this.licence,
      required this.createdAt,
      this.expiresAt,
      this.variantOf,
      this.variantWidth,
      this.links})
      : super._();
  @override
  Media rebuild(void Function(MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaBuilder toBuilder() => MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
        id == other.id &&
        sha256 == other.sha256 &&
        contentType == other.contentType &&
        width == other.width &&
        height == other.height &&
        bytes == other.bytes &&
        role == other.role &&
        sourceId == other.sourceId &&
        recordSourceId == other.recordSourceId &&
        recordExternalId == other.recordExternalId &&
        recordRef == other.recordRef &&
        licence == other.licence &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        variantOf == other.variantOf &&
        variantWidth == other.variantWidth &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, recordSourceId.hashCode);
    _$hash = $jc(_$hash, recordExternalId.hashCode);
    _$hash = $jc(_$hash, recordRef.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, variantOf.hashCode);
    _$hash = $jc(_$hash, variantWidth.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Media')
          ..add('id', id)
          ..add('sha256', sha256)
          ..add('contentType', contentType)
          ..add('width', width)
          ..add('height', height)
          ..add('bytes', bytes)
          ..add('role', role)
          ..add('sourceId', sourceId)
          ..add('recordSourceId', recordSourceId)
          ..add('recordExternalId', recordExternalId)
          ..add('recordRef', recordRef)
          ..add('licence', licence)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('variantOf', variantOf)
          ..add('variantWidth', variantWidth)
          ..add('links', links))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  MediaRoleEnum? _role;
  MediaRoleEnum? get role => _$this._role;
  set role(MediaRoleEnum? role) => _$this._role = role;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _recordSourceId;
  String? get recordSourceId => _$this._recordSourceId;
  set recordSourceId(String? recordSourceId) =>
      _$this._recordSourceId = recordSourceId;

  String? _recordExternalId;
  String? get recordExternalId => _$this._recordExternalId;
  set recordExternalId(String? recordExternalId) =>
      _$this._recordExternalId = recordExternalId;

  String? _recordRef;
  String? get recordRef => _$this._recordRef;
  set recordRef(String? recordRef) => _$this._recordRef = recordRef;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _variantOf;
  String? get variantOf => _$this._variantOf;
  set variantOf(String? variantOf) => _$this._variantOf = variantOf;

  int? _variantWidth;
  int? get variantWidth => _$this._variantWidth;
  set variantWidth(int? variantWidth) => _$this._variantWidth = variantWidth;

  MediaLinksBuilder? _links;
  MediaLinksBuilder get links => _$this._links ??= MediaLinksBuilder();
  set links(MediaLinksBuilder? links) => _$this._links = links;

  MediaBuilder() {
    Media._defaults(this);
  }

  MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sha256 = $v.sha256;
      _contentType = $v.contentType;
      _width = $v.width;
      _height = $v.height;
      _bytes = $v.bytes;
      _role = $v.role;
      _sourceId = $v.sourceId;
      _recordSourceId = $v.recordSourceId;
      _recordExternalId = $v.recordExternalId;
      _recordRef = $v.recordRef;
      _licence = $v.licence;
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _variantOf = $v.variantOf;
      _variantWidth = $v.variantWidth;
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Media other) {
    _$v = other as _$Media;
  }

  @override
  void update(void Function(MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Media build() => _build();

  _$Media _build() {
    _$Media _$result;
    try {
      _$result = _$v ??
          _$Media._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Media', 'id'),
            sha256: BuiltValueNullFieldError.checkNotNull(
                sha256, r'Media', 'sha256'),
            contentType: BuiltValueNullFieldError.checkNotNull(
                contentType, r'Media', 'contentType'),
            width:
                BuiltValueNullFieldError.checkNotNull(width, r'Media', 'width'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'Media', 'height'),
            bytes:
                BuiltValueNullFieldError.checkNotNull(bytes, r'Media', 'bytes'),
            role: BuiltValueNullFieldError.checkNotNull(role, r'Media', 'role'),
            sourceId: sourceId,
            recordSourceId: recordSourceId,
            recordExternalId: recordExternalId,
            recordRef: recordRef,
            licence: licence,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Media', 'createdAt'),
            expiresAt: expiresAt,
            variantOf: variantOf,
            variantWidth: variantWidth,
            links: _links?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
