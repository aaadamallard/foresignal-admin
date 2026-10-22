// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportFile extends ExportFile {
  @override
  final String name;
  @override
  final String url;
  @override
  final int bytes;
  @override
  final String sha256;
  @override
  final String? mediaType;
  @override
  final DateTime expiresAt;

  factory _$ExportFile([void Function(ExportFileBuilder)? updates]) =>
      (ExportFileBuilder()..update(updates))._build();

  _$ExportFile._({
    required this.name,
    required this.url,
    required this.bytes,
    required this.sha256,
    this.mediaType,
    required this.expiresAt,
  }) : super._();
  @override
  ExportFile rebuild(void Function(ExportFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportFileBuilder toBuilder() => ExportFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportFile &&
        name == other.name &&
        url == other.url &&
        bytes == other.bytes &&
        sha256 == other.sha256 &&
        mediaType == other.mediaType &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportFile')
          ..add('name', name)
          ..add('url', url)
          ..add('bytes', bytes)
          ..add('sha256', sha256)
          ..add('mediaType', mediaType)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ExportFileBuilder implements Builder<ExportFile, ExportFileBuilder> {
  _$ExportFile? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _mediaType;
  String? get mediaType => _$this._mediaType;
  set mediaType(String? mediaType) => _$this._mediaType = mediaType;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ExportFileBuilder() {
    ExportFile._defaults(this);
  }

  ExportFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _bytes = $v.bytes;
      _sha256 = $v.sha256;
      _mediaType = $v.mediaType;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportFile other) {
    _$v = other as _$ExportFile;
  }

  @override
  void update(void Function(ExportFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportFile build() => _build();

  _$ExportFile _build() {
    final _$result =
        _$v ??
        _$ExportFile._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ExportFile',
            'name',
          ),
          url: BuiltValueNullFieldError.checkNotNull(url, r'ExportFile', 'url'),
          bytes: BuiltValueNullFieldError.checkNotNull(
            bytes,
            r'ExportFile',
            'bytes',
          ),
          sha256: BuiltValueNullFieldError.checkNotNull(
            sha256,
            r'ExportFile',
            'sha256',
          ),
          mediaType: mediaType,
          expiresAt: BuiltValueNullFieldError.checkNotNull(
            expiresAt,
            r'ExportFile',
            'expiresAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
