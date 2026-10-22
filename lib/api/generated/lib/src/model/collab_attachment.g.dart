// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collab_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollabAttachment extends CollabAttachment {
  @override
  final String id;
  @override
  final String mediaId;
  @override
  final String filename;
  @override
  final String contentType;
  @override
  final int size;
  @override
  final String sha256;
  @override
  final String? text;
  @override
  final bool? textTruncated;
  @override
  final CollabAttachmentImageMeta? imageMeta;
  @override
  final PrincipalSummary uploadedBy;
  @override
  final PrincipalSummary? owner;
  @override
  final Visibility? visibility;
  @override
  final String tlp;
  @override
  final DateTime createdAt;
  @override
  final CollabAttachmentLinks? links;

  factory _$CollabAttachment([
    void Function(CollabAttachmentBuilder)? updates,
  ]) => (CollabAttachmentBuilder()..update(updates))._build();

  _$CollabAttachment._({
    required this.id,
    required this.mediaId,
    required this.filename,
    required this.contentType,
    required this.size,
    required this.sha256,
    this.text,
    this.textTruncated,
    this.imageMeta,
    required this.uploadedBy,
    this.owner,
    this.visibility,
    required this.tlp,
    required this.createdAt,
    this.links,
  }) : super._();
  @override
  CollabAttachment rebuild(void Function(CollabAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollabAttachmentBuilder toBuilder() =>
      CollabAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollabAttachment &&
        id == other.id &&
        mediaId == other.mediaId &&
        filename == other.filename &&
        contentType == other.contentType &&
        size == other.size &&
        sha256 == other.sha256 &&
        text == other.text &&
        textTruncated == other.textTruncated &&
        imageMeta == other.imageMeta &&
        uploadedBy == other.uploadedBy &&
        owner == other.owner &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        createdAt == other.createdAt &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, textTruncated.hashCode);
    _$hash = $jc(_$hash, imageMeta.hashCode);
    _$hash = $jc(_$hash, uploadedBy.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollabAttachment')
          ..add('id', id)
          ..add('mediaId', mediaId)
          ..add('filename', filename)
          ..add('contentType', contentType)
          ..add('size', size)
          ..add('sha256', sha256)
          ..add('text', text)
          ..add('textTruncated', textTruncated)
          ..add('imageMeta', imageMeta)
          ..add('uploadedBy', uploadedBy)
          ..add('owner', owner)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('createdAt', createdAt)
          ..add('links', links))
        .toString();
  }
}

class CollabAttachmentBuilder
    implements Builder<CollabAttachment, CollabAttachmentBuilder> {
  _$CollabAttachment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _textTruncated;
  bool? get textTruncated => _$this._textTruncated;
  set textTruncated(bool? textTruncated) =>
      _$this._textTruncated = textTruncated;

  CollabAttachmentImageMetaBuilder? _imageMeta;
  CollabAttachmentImageMetaBuilder get imageMeta =>
      _$this._imageMeta ??= CollabAttachmentImageMetaBuilder();
  set imageMeta(CollabAttachmentImageMetaBuilder? imageMeta) =>
      _$this._imageMeta = imageMeta;

  PrincipalSummaryBuilder? _uploadedBy;
  PrincipalSummaryBuilder get uploadedBy =>
      _$this._uploadedBy ??= PrincipalSummaryBuilder();
  set uploadedBy(PrincipalSummaryBuilder? uploadedBy) =>
      _$this._uploadedBy = uploadedBy;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  CollabAttachmentLinksBuilder? _links;
  CollabAttachmentLinksBuilder get links =>
      _$this._links ??= CollabAttachmentLinksBuilder();
  set links(CollabAttachmentLinksBuilder? links) => _$this._links = links;

  CollabAttachmentBuilder() {
    CollabAttachment._defaults(this);
  }

  CollabAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _mediaId = $v.mediaId;
      _filename = $v.filename;
      _contentType = $v.contentType;
      _size = $v.size;
      _sha256 = $v.sha256;
      _text = $v.text;
      _textTruncated = $v.textTruncated;
      _imageMeta = $v.imageMeta?.toBuilder();
      _uploadedBy = $v.uploadedBy.toBuilder();
      _owner = $v.owner?.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _createdAt = $v.createdAt;
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollabAttachment other) {
    _$v = other as _$CollabAttachment;
  }

  @override
  void update(void Function(CollabAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollabAttachment build() => _build();

  _$CollabAttachment _build() {
    _$CollabAttachment _$result;
    try {
      _$result =
          _$v ??
          _$CollabAttachment._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'CollabAttachment',
              'id',
            ),
            mediaId: BuiltValueNullFieldError.checkNotNull(
              mediaId,
              r'CollabAttachment',
              'mediaId',
            ),
            filename: BuiltValueNullFieldError.checkNotNull(
              filename,
              r'CollabAttachment',
              'filename',
            ),
            contentType: BuiltValueNullFieldError.checkNotNull(
              contentType,
              r'CollabAttachment',
              'contentType',
            ),
            size: BuiltValueNullFieldError.checkNotNull(
              size,
              r'CollabAttachment',
              'size',
            ),
            sha256: BuiltValueNullFieldError.checkNotNull(
              sha256,
              r'CollabAttachment',
              'sha256',
            ),
            text: text,
            textTruncated: textTruncated,
            imageMeta: _imageMeta?.build(),
            uploadedBy: uploadedBy.build(),
            owner: _owner?.build(),
            visibility: visibility,
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'CollabAttachment',
              'tlp',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'CollabAttachment',
              'createdAt',
            ),
            links: _links?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageMeta';
        _imageMeta?.build();
        _$failedField = 'uploadedBy';
        uploadedBy.build();
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CollabAttachment',
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
