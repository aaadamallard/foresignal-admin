// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_files_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupFilesInner extends BackupFilesInner {
  @override
  final String name;
  @override
  final String location;
  @override
  final int bytes;
  @override
  final String sha256;

  factory _$BackupFilesInner([
    void Function(BackupFilesInnerBuilder)? updates,
  ]) => (BackupFilesInnerBuilder()..update(updates))._build();

  _$BackupFilesInner._({
    required this.name,
    required this.location,
    required this.bytes,
    required this.sha256,
  }) : super._();
  @override
  BackupFilesInner rebuild(void Function(BackupFilesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupFilesInnerBuilder toBuilder() =>
      BackupFilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupFilesInner &&
        name == other.name &&
        location == other.location &&
        bytes == other.bytes &&
        sha256 == other.sha256;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupFilesInner')
          ..add('name', name)
          ..add('location', location)
          ..add('bytes', bytes)
          ..add('sha256', sha256))
        .toString();
  }
}

class BackupFilesInnerBuilder
    implements Builder<BackupFilesInner, BackupFilesInnerBuilder> {
  _$BackupFilesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  BackupFilesInnerBuilder() {
    BackupFilesInner._defaults(this);
  }

  BackupFilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _bytes = $v.bytes;
      _sha256 = $v.sha256;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupFilesInner other) {
    _$v = other as _$BackupFilesInner;
  }

  @override
  void update(void Function(BackupFilesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupFilesInner build() => _build();

  _$BackupFilesInner _build() {
    final _$result =
        _$v ??
        _$BackupFilesInner._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'BackupFilesInner',
            'name',
          ),
          location: BuiltValueNullFieldError.checkNotNull(
            location,
            r'BackupFilesInner',
            'location',
          ),
          bytes: BuiltValueNullFieldError.checkNotNull(
            bytes,
            r'BackupFilesInner',
            'bytes',
          ),
          sha256: BuiltValueNullFieldError.checkNotNull(
            sha256,
            r'BackupFilesInner',
            'sha256',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
