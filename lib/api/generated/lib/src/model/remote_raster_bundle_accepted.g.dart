// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_raster_bundle_accepted.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoteRasterBundleAccepted extends RemoteRasterBundleAccepted {
  @override
  final String uploadId;
  @override
  final String passFolder;

  factory _$RemoteRasterBundleAccepted([
    void Function(RemoteRasterBundleAcceptedBuilder)? updates,
  ]) => (RemoteRasterBundleAcceptedBuilder()..update(updates))._build();

  _$RemoteRasterBundleAccepted._({
    required this.uploadId,
    required this.passFolder,
  }) : super._();
  @override
  RemoteRasterBundleAccepted rebuild(
    void Function(RemoteRasterBundleAcceptedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RemoteRasterBundleAcceptedBuilder toBuilder() =>
      RemoteRasterBundleAcceptedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoteRasterBundleAccepted &&
        uploadId == other.uploadId &&
        passFolder == other.passFolder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, passFolder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoteRasterBundleAccepted')
          ..add('uploadId', uploadId)
          ..add('passFolder', passFolder))
        .toString();
  }
}

class RemoteRasterBundleAcceptedBuilder
    implements
        Builder<RemoteRasterBundleAccepted, RemoteRasterBundleAcceptedBuilder> {
  _$RemoteRasterBundleAccepted? _$v;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  String? _passFolder;
  String? get passFolder => _$this._passFolder;
  set passFolder(String? passFolder) => _$this._passFolder = passFolder;

  RemoteRasterBundleAcceptedBuilder() {
    RemoteRasterBundleAccepted._defaults(this);
  }

  RemoteRasterBundleAcceptedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uploadId = $v.uploadId;
      _passFolder = $v.passFolder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoteRasterBundleAccepted other) {
    _$v = other as _$RemoteRasterBundleAccepted;
  }

  @override
  void update(void Function(RemoteRasterBundleAcceptedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoteRasterBundleAccepted build() => _build();

  _$RemoteRasterBundleAccepted _build() {
    final _$result =
        _$v ??
        _$RemoteRasterBundleAccepted._(
          uploadId: BuiltValueNullFieldError.checkNotNull(
            uploadId,
            r'RemoteRasterBundleAccepted',
            'uploadId',
          ),
          passFolder: BuiltValueNullFieldError.checkNotNull(
            passFolder,
            r'RemoteRasterBundleAccepted',
            'passFolder',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
