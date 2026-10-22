// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_raster_bundle_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoteRasterBundleMeta extends RemoteRasterBundleMeta {
  @override
  final String passFolder;
  @override
  final BuiltList<String> files;
  @override
  final String? product;

  factory _$RemoteRasterBundleMeta([
    void Function(RemoteRasterBundleMetaBuilder)? updates,
  ]) => (RemoteRasterBundleMetaBuilder()..update(updates))._build();

  _$RemoteRasterBundleMeta._({
    required this.passFolder,
    required this.files,
    this.product,
  }) : super._();
  @override
  RemoteRasterBundleMeta rebuild(
    void Function(RemoteRasterBundleMetaBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RemoteRasterBundleMetaBuilder toBuilder() =>
      RemoteRasterBundleMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoteRasterBundleMeta &&
        passFolder == other.passFolder &&
        files == other.files &&
        product == other.product;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passFolder.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoteRasterBundleMeta')
          ..add('passFolder', passFolder)
          ..add('files', files)
          ..add('product', product))
        .toString();
  }
}

class RemoteRasterBundleMetaBuilder
    implements Builder<RemoteRasterBundleMeta, RemoteRasterBundleMetaBuilder> {
  _$RemoteRasterBundleMeta? _$v;

  String? _passFolder;
  String? get passFolder => _$this._passFolder;
  set passFolder(String? passFolder) => _$this._passFolder = passFolder;

  ListBuilder<String>? _files;
  ListBuilder<String> get files => _$this._files ??= ListBuilder<String>();
  set files(ListBuilder<String>? files) => _$this._files = files;

  String? _product;
  String? get product => _$this._product;
  set product(String? product) => _$this._product = product;

  RemoteRasterBundleMetaBuilder() {
    RemoteRasterBundleMeta._defaults(this);
  }

  RemoteRasterBundleMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passFolder = $v.passFolder;
      _files = $v.files.toBuilder();
      _product = $v.product;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoteRasterBundleMeta other) {
    _$v = other as _$RemoteRasterBundleMeta;
  }

  @override
  void update(void Function(RemoteRasterBundleMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoteRasterBundleMeta build() => _build();

  _$RemoteRasterBundleMeta _build() {
    _$RemoteRasterBundleMeta _$result;
    try {
      _$result =
          _$v ??
          _$RemoteRasterBundleMeta._(
            passFolder: BuiltValueNullFieldError.checkNotNull(
              passFolder,
              r'RemoteRasterBundleMeta',
              'passFolder',
            ),
            files: files.build(),
            product: product,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RemoteRasterBundleMeta',
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
