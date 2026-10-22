// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_partition_files_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchivePartitionFilesInner extends ArchivePartitionFilesInner {
  @override
  final String name;
  @override
  final int fromSeq;
  @override
  final int toSeq;
  @override
  final int rows;
  @override
  final int bytes;
  @override
  final String sha256;
  @override
  final bool? local;
  @override
  final DateTime? uploadedAt;
  @override
  final String? s3Key;

  factory _$ArchivePartitionFilesInner([
    void Function(ArchivePartitionFilesInnerBuilder)? updates,
  ]) => (ArchivePartitionFilesInnerBuilder()..update(updates))._build();

  _$ArchivePartitionFilesInner._({
    required this.name,
    required this.fromSeq,
    required this.toSeq,
    required this.rows,
    required this.bytes,
    required this.sha256,
    this.local,
    this.uploadedAt,
    this.s3Key,
  }) : super._();
  @override
  ArchivePartitionFilesInner rebuild(
    void Function(ArchivePartitionFilesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ArchivePartitionFilesInnerBuilder toBuilder() =>
      ArchivePartitionFilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchivePartitionFilesInner &&
        name == other.name &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        rows == other.rows &&
        bytes == other.bytes &&
        sha256 == other.sha256 &&
        local == other.local &&
        uploadedAt == other.uploadedAt &&
        s3Key == other.s3Key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, local.hashCode);
    _$hash = $jc(_$hash, uploadedAt.hashCode);
    _$hash = $jc(_$hash, s3Key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchivePartitionFilesInner')
          ..add('name', name)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('rows', rows)
          ..add('bytes', bytes)
          ..add('sha256', sha256)
          ..add('local', local)
          ..add('uploadedAt', uploadedAt)
          ..add('s3Key', s3Key))
        .toString();
  }
}

class ArchivePartitionFilesInnerBuilder
    implements
        Builder<ArchivePartitionFilesInner, ArchivePartitionFilesInnerBuilder> {
  _$ArchivePartitionFilesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  bool? _local;
  bool? get local => _$this._local;
  set local(bool? local) => _$this._local = local;

  DateTime? _uploadedAt;
  DateTime? get uploadedAt => _$this._uploadedAt;
  set uploadedAt(DateTime? uploadedAt) => _$this._uploadedAt = uploadedAt;

  String? _s3Key;
  String? get s3Key => _$this._s3Key;
  set s3Key(String? s3Key) => _$this._s3Key = s3Key;

  ArchivePartitionFilesInnerBuilder() {
    ArchivePartitionFilesInner._defaults(this);
  }

  ArchivePartitionFilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _rows = $v.rows;
      _bytes = $v.bytes;
      _sha256 = $v.sha256;
      _local = $v.local;
      _uploadedAt = $v.uploadedAt;
      _s3Key = $v.s3Key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchivePartitionFilesInner other) {
    _$v = other as _$ArchivePartitionFilesInner;
  }

  @override
  void update(void Function(ArchivePartitionFilesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchivePartitionFilesInner build() => _build();

  _$ArchivePartitionFilesInner _build() {
    final _$result =
        _$v ??
        _$ArchivePartitionFilesInner._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ArchivePartitionFilesInner',
            'name',
          ),
          fromSeq: BuiltValueNullFieldError.checkNotNull(
            fromSeq,
            r'ArchivePartitionFilesInner',
            'fromSeq',
          ),
          toSeq: BuiltValueNullFieldError.checkNotNull(
            toSeq,
            r'ArchivePartitionFilesInner',
            'toSeq',
          ),
          rows: BuiltValueNullFieldError.checkNotNull(
            rows,
            r'ArchivePartitionFilesInner',
            'rows',
          ),
          bytes: BuiltValueNullFieldError.checkNotNull(
            bytes,
            r'ArchivePartitionFilesInner',
            'bytes',
          ),
          sha256: BuiltValueNullFieldError.checkNotNull(
            sha256,
            r'ArchivePartitionFilesInner',
            'sha256',
          ),
          local: local,
          uploadedAt: uploadedAt,
          s3Key: s3Key,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
