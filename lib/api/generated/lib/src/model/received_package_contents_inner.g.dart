// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'received_package_contents_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceivedPackageContentsInner extends ReceivedPackageContentsInner {
  @override
  final String path;
  @override
  final String sha256;
  @override
  final int? size;
  @override
  final String? mediaId;

  factory _$ReceivedPackageContentsInner(
          [void Function(ReceivedPackageContentsInnerBuilder)? updates]) =>
      (ReceivedPackageContentsInnerBuilder()..update(updates))._build();

  _$ReceivedPackageContentsInner._(
      {required this.path, required this.sha256, this.size, this.mediaId})
      : super._();
  @override
  ReceivedPackageContentsInner rebuild(
          void Function(ReceivedPackageContentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceivedPackageContentsInnerBuilder toBuilder() =>
      ReceivedPackageContentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceivedPackageContentsInner &&
        path == other.path &&
        sha256 == other.sha256 &&
        size == other.size &&
        mediaId == other.mediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceivedPackageContentsInner')
          ..add('path', path)
          ..add('sha256', sha256)
          ..add('size', size)
          ..add('mediaId', mediaId))
        .toString();
  }
}

class ReceivedPackageContentsInnerBuilder
    implements
        Builder<ReceivedPackageContentsInner,
            ReceivedPackageContentsInnerBuilder> {
  _$ReceivedPackageContentsInner? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  ReceivedPackageContentsInnerBuilder() {
    ReceivedPackageContentsInner._defaults(this);
  }

  ReceivedPackageContentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _sha256 = $v.sha256;
      _size = $v.size;
      _mediaId = $v.mediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceivedPackageContentsInner other) {
    _$v = other as _$ReceivedPackageContentsInner;
  }

  @override
  void update(void Function(ReceivedPackageContentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceivedPackageContentsInner build() => _build();

  _$ReceivedPackageContentsInner _build() {
    final _$result = _$v ??
        _$ReceivedPackageContentsInner._(
          path: BuiltValueNullFieldError.checkNotNull(
              path, r'ReceivedPackageContentsInner', 'path'),
          sha256: BuiltValueNullFieldError.checkNotNull(
              sha256, r'ReceivedPackageContentsInner', 'sha256'),
          size: size,
          mediaId: mediaId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
