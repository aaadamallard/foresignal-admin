// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collab_attachment_image_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollabAttachmentImageMeta extends CollabAttachmentImageMeta {
  @override
  final int width;
  @override
  final int height;
  @override
  final bool exifStripped;

  factory _$CollabAttachmentImageMeta(
          [void Function(CollabAttachmentImageMetaBuilder)? updates]) =>
      (CollabAttachmentImageMetaBuilder()..update(updates))._build();

  _$CollabAttachmentImageMeta._(
      {required this.width, required this.height, required this.exifStripped})
      : super._();
  @override
  CollabAttachmentImageMeta rebuild(
          void Function(CollabAttachmentImageMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollabAttachmentImageMetaBuilder toBuilder() =>
      CollabAttachmentImageMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollabAttachmentImageMeta &&
        width == other.width &&
        height == other.height &&
        exifStripped == other.exifStripped;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, exifStripped.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollabAttachmentImageMeta')
          ..add('width', width)
          ..add('height', height)
          ..add('exifStripped', exifStripped))
        .toString();
  }
}

class CollabAttachmentImageMetaBuilder
    implements
        Builder<CollabAttachmentImageMeta, CollabAttachmentImageMetaBuilder> {
  _$CollabAttachmentImageMeta? _$v;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  bool? _exifStripped;
  bool? get exifStripped => _$this._exifStripped;
  set exifStripped(bool? exifStripped) => _$this._exifStripped = exifStripped;

  CollabAttachmentImageMetaBuilder() {
    CollabAttachmentImageMeta._defaults(this);
  }

  CollabAttachmentImageMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _width = $v.width;
      _height = $v.height;
      _exifStripped = $v.exifStripped;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollabAttachmentImageMeta other) {
    _$v = other as _$CollabAttachmentImageMeta;
  }

  @override
  void update(void Function(CollabAttachmentImageMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollabAttachmentImageMeta build() => _build();

  _$CollabAttachmentImageMeta _build() {
    final _$result = _$v ??
        _$CollabAttachmentImageMeta._(
          width: BuiltValueNullFieldError.checkNotNull(
              width, r'CollabAttachmentImageMeta', 'width'),
          height: BuiltValueNullFieldError.checkNotNull(
              height, r'CollabAttachmentImageMeta', 'height'),
          exifStripped: BuiltValueNullFieldError.checkNotNull(
              exifStripped, r'CollabAttachmentImageMeta', 'exifStripped'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
