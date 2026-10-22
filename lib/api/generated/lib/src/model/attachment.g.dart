// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Attachment extends Attachment {
  @override
  final String filename;
  @override
  final String contentType;
  @override
  final int bytes;
  @override
  final String? mediaId;
  @override
  final String? url;

  factory _$Attachment([void Function(AttachmentBuilder)? updates]) =>
      (AttachmentBuilder()..update(updates))._build();

  _$Attachment._({
    required this.filename,
    required this.contentType,
    required this.bytes,
    this.mediaId,
    this.url,
  }) : super._();
  @override
  Attachment rebuild(void Function(AttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentBuilder toBuilder() => AttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attachment &&
        filename == other.filename &&
        contentType == other.contentType &&
        bytes == other.bytes &&
        mediaId == other.mediaId &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Attachment')
          ..add('filename', filename)
          ..add('contentType', contentType)
          ..add('bytes', bytes)
          ..add('mediaId', mediaId)
          ..add('url', url))
        .toString();
  }
}

class AttachmentBuilder implements Builder<Attachment, AttachmentBuilder> {
  _$Attachment? _$v;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  AttachmentBuilder() {
    Attachment._defaults(this);
  }

  AttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filename = $v.filename;
      _contentType = $v.contentType;
      _bytes = $v.bytes;
      _mediaId = $v.mediaId;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attachment other) {
    _$v = other as _$Attachment;
  }

  @override
  void update(void Function(AttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Attachment build() => _build();

  _$Attachment _build() {
    final _$result =
        _$v ??
        _$Attachment._(
          filename: BuiltValueNullFieldError.checkNotNull(
            filename,
            r'Attachment',
            'filename',
          ),
          contentType: BuiltValueNullFieldError.checkNotNull(
            contentType,
            r'Attachment',
            'contentType',
          ),
          bytes: BuiltValueNullFieldError.checkNotNull(
            bytes,
            r'Attachment',
            'bytes',
          ),
          mediaId: mediaId,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
