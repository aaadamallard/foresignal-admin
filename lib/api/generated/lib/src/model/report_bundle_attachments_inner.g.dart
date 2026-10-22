// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_bundle_attachments_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportBundleAttachmentsInner extends ReportBundleAttachmentsInner {
  @override
  final String sha256;
  @override
  final String? filename;
  @override
  final String? contentType;
  @override
  final int? size;
  @override
  final String? attachmentId;

  factory _$ReportBundleAttachmentsInner(
          [void Function(ReportBundleAttachmentsInnerBuilder)? updates]) =>
      (ReportBundleAttachmentsInnerBuilder()..update(updates))._build();

  _$ReportBundleAttachmentsInner._(
      {required this.sha256,
      this.filename,
      this.contentType,
      this.size,
      this.attachmentId})
      : super._();
  @override
  ReportBundleAttachmentsInner rebuild(
          void Function(ReportBundleAttachmentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBundleAttachmentsInnerBuilder toBuilder() =>
      ReportBundleAttachmentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportBundleAttachmentsInner &&
        sha256 == other.sha256 &&
        filename == other.filename &&
        contentType == other.contentType &&
        size == other.size &&
        attachmentId == other.attachmentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportBundleAttachmentsInner')
          ..add('sha256', sha256)
          ..add('filename', filename)
          ..add('contentType', contentType)
          ..add('size', size)
          ..add('attachmentId', attachmentId))
        .toString();
  }
}

class ReportBundleAttachmentsInnerBuilder
    implements
        Builder<ReportBundleAttachmentsInner,
            ReportBundleAttachmentsInnerBuilder> {
  _$ReportBundleAttachmentsInner? _$v;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _attachmentId;
  String? get attachmentId => _$this._attachmentId;
  set attachmentId(String? attachmentId) => _$this._attachmentId = attachmentId;

  ReportBundleAttachmentsInnerBuilder() {
    ReportBundleAttachmentsInner._defaults(this);
  }

  ReportBundleAttachmentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sha256 = $v.sha256;
      _filename = $v.filename;
      _contentType = $v.contentType;
      _size = $v.size;
      _attachmentId = $v.attachmentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportBundleAttachmentsInner other) {
    _$v = other as _$ReportBundleAttachmentsInner;
  }

  @override
  void update(void Function(ReportBundleAttachmentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportBundleAttachmentsInner build() => _build();

  _$ReportBundleAttachmentsInner _build() {
    final _$result = _$v ??
        _$ReportBundleAttachmentsInner._(
          sha256: BuiltValueNullFieldError.checkNotNull(
              sha256, r'ReportBundleAttachmentsInner', 'sha256'),
          filename: filename,
          contentType: contentType,
          size: size,
          attachmentId: attachmentId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
