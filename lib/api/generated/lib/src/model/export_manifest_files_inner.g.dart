// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_manifest_files_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportManifestFilesInner extends ExportManifestFilesInner {
  @override
  final String name;
  @override
  final String? mediaType;
  @override
  final int bytes;
  @override
  final String sha256;
  @override
  final int? rows;

  factory _$ExportManifestFilesInner([
    void Function(ExportManifestFilesInnerBuilder)? updates,
  ]) => (ExportManifestFilesInnerBuilder()..update(updates))._build();

  _$ExportManifestFilesInner._({
    required this.name,
    this.mediaType,
    required this.bytes,
    required this.sha256,
    this.rows,
  }) : super._();
  @override
  ExportManifestFilesInner rebuild(
    void Function(ExportManifestFilesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExportManifestFilesInnerBuilder toBuilder() =>
      ExportManifestFilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportManifestFilesInner &&
        name == other.name &&
        mediaType == other.mediaType &&
        bytes == other.bytes &&
        sha256 == other.sha256 &&
        rows == other.rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportManifestFilesInner')
          ..add('name', name)
          ..add('mediaType', mediaType)
          ..add('bytes', bytes)
          ..add('sha256', sha256)
          ..add('rows', rows))
        .toString();
  }
}

class ExportManifestFilesInnerBuilder
    implements
        Builder<ExportManifestFilesInner, ExportManifestFilesInnerBuilder> {
  _$ExportManifestFilesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mediaType;
  String? get mediaType => _$this._mediaType;
  set mediaType(String? mediaType) => _$this._mediaType = mediaType;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  ExportManifestFilesInnerBuilder() {
    ExportManifestFilesInner._defaults(this);
  }

  ExportManifestFilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mediaType = $v.mediaType;
      _bytes = $v.bytes;
      _sha256 = $v.sha256;
      _rows = $v.rows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportManifestFilesInner other) {
    _$v = other as _$ExportManifestFilesInner;
  }

  @override
  void update(void Function(ExportManifestFilesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportManifestFilesInner build() => _build();

  _$ExportManifestFilesInner _build() {
    final _$result =
        _$v ??
        _$ExportManifestFilesInner._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ExportManifestFilesInner',
            'name',
          ),
          mediaType: mediaType,
          bytes: BuiltValueNullFieldError.checkNotNull(
            bytes,
            r'ExportManifestFilesInner',
            'bytes',
          ),
          sha256: BuiltValueNullFieldError.checkNotNull(
            sha256,
            r'ExportManifestFilesInner',
            'sha256',
          ),
          rows: rows,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
