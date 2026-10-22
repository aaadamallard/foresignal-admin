// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_summary_storage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSummaryStorage extends ChronicleSummaryStorage {
  @override
  final int bytesUsed;
  @override
  final int sizeCapBytes;
  @override
  final int? rows;

  factory _$ChronicleSummaryStorage([
    void Function(ChronicleSummaryStorageBuilder)? updates,
  ]) => (ChronicleSummaryStorageBuilder()..update(updates))._build();

  _$ChronicleSummaryStorage._({
    required this.bytesUsed,
    required this.sizeCapBytes,
    this.rows,
  }) : super._();
  @override
  ChronicleSummaryStorage rebuild(
    void Function(ChronicleSummaryStorageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSummaryStorageBuilder toBuilder() =>
      ChronicleSummaryStorageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSummaryStorage &&
        bytesUsed == other.bytesUsed &&
        sizeCapBytes == other.sizeCapBytes &&
        rows == other.rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bytesUsed.hashCode);
    _$hash = $jc(_$hash, sizeCapBytes.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSummaryStorage')
          ..add('bytesUsed', bytesUsed)
          ..add('sizeCapBytes', sizeCapBytes)
          ..add('rows', rows))
        .toString();
  }
}

class ChronicleSummaryStorageBuilder
    implements
        Builder<ChronicleSummaryStorage, ChronicleSummaryStorageBuilder> {
  _$ChronicleSummaryStorage? _$v;

  int? _bytesUsed;
  int? get bytesUsed => _$this._bytesUsed;
  set bytesUsed(int? bytesUsed) => _$this._bytesUsed = bytesUsed;

  int? _sizeCapBytes;
  int? get sizeCapBytes => _$this._sizeCapBytes;
  set sizeCapBytes(int? sizeCapBytes) => _$this._sizeCapBytes = sizeCapBytes;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  ChronicleSummaryStorageBuilder() {
    ChronicleSummaryStorage._defaults(this);
  }

  ChronicleSummaryStorageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bytesUsed = $v.bytesUsed;
      _sizeCapBytes = $v.sizeCapBytes;
      _rows = $v.rows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSummaryStorage other) {
    _$v = other as _$ChronicleSummaryStorage;
  }

  @override
  void update(void Function(ChronicleSummaryStorageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSummaryStorage build() => _build();

  _$ChronicleSummaryStorage _build() {
    final _$result =
        _$v ??
        _$ChronicleSummaryStorage._(
          bytesUsed: BuiltValueNullFieldError.checkNotNull(
            bytesUsed,
            r'ChronicleSummaryStorage',
            'bytesUsed',
          ),
          sizeCapBytes: BuiltValueNullFieldError.checkNotNull(
            sizeCapBytes,
            r'ChronicleSummaryStorage',
            'sizeCapBytes',
          ),
          rows: rows,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
