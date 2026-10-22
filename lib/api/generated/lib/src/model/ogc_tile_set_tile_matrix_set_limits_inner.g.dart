// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_set_tile_matrix_set_limits_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcTileSetTileMatrixSetLimitsInner
    extends OgcTileSetTileMatrixSetLimitsInner {
  @override
  final String? tileMatrix;
  @override
  final int? minTileRow;
  @override
  final int? maxTileRow;
  @override
  final int? minTileCol;
  @override
  final int? maxTileCol;

  factory _$OgcTileSetTileMatrixSetLimitsInner(
          [void Function(OgcTileSetTileMatrixSetLimitsInnerBuilder)?
              updates]) =>
      (OgcTileSetTileMatrixSetLimitsInnerBuilder()..update(updates))._build();

  _$OgcTileSetTileMatrixSetLimitsInner._(
      {this.tileMatrix,
      this.minTileRow,
      this.maxTileRow,
      this.minTileCol,
      this.maxTileCol})
      : super._();
  @override
  OgcTileSetTileMatrixSetLimitsInner rebuild(
          void Function(OgcTileSetTileMatrixSetLimitsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcTileSetTileMatrixSetLimitsInnerBuilder toBuilder() =>
      OgcTileSetTileMatrixSetLimitsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileSetTileMatrixSetLimitsInner &&
        tileMatrix == other.tileMatrix &&
        minTileRow == other.minTileRow &&
        maxTileRow == other.maxTileRow &&
        minTileCol == other.minTileCol &&
        maxTileCol == other.maxTileCol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tileMatrix.hashCode);
    _$hash = $jc(_$hash, minTileRow.hashCode);
    _$hash = $jc(_$hash, maxTileRow.hashCode);
    _$hash = $jc(_$hash, minTileCol.hashCode);
    _$hash = $jc(_$hash, maxTileCol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcTileSetTileMatrixSetLimitsInner')
          ..add('tileMatrix', tileMatrix)
          ..add('minTileRow', minTileRow)
          ..add('maxTileRow', maxTileRow)
          ..add('minTileCol', minTileCol)
          ..add('maxTileCol', maxTileCol))
        .toString();
  }
}

class OgcTileSetTileMatrixSetLimitsInnerBuilder
    implements
        Builder<OgcTileSetTileMatrixSetLimitsInner,
            OgcTileSetTileMatrixSetLimitsInnerBuilder> {
  _$OgcTileSetTileMatrixSetLimitsInner? _$v;

  String? _tileMatrix;
  String? get tileMatrix => _$this._tileMatrix;
  set tileMatrix(String? tileMatrix) => _$this._tileMatrix = tileMatrix;

  int? _minTileRow;
  int? get minTileRow => _$this._minTileRow;
  set minTileRow(int? minTileRow) => _$this._minTileRow = minTileRow;

  int? _maxTileRow;
  int? get maxTileRow => _$this._maxTileRow;
  set maxTileRow(int? maxTileRow) => _$this._maxTileRow = maxTileRow;

  int? _minTileCol;
  int? get minTileCol => _$this._minTileCol;
  set minTileCol(int? minTileCol) => _$this._minTileCol = minTileCol;

  int? _maxTileCol;
  int? get maxTileCol => _$this._maxTileCol;
  set maxTileCol(int? maxTileCol) => _$this._maxTileCol = maxTileCol;

  OgcTileSetTileMatrixSetLimitsInnerBuilder() {
    OgcTileSetTileMatrixSetLimitsInner._defaults(this);
  }

  OgcTileSetTileMatrixSetLimitsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tileMatrix = $v.tileMatrix;
      _minTileRow = $v.minTileRow;
      _maxTileRow = $v.maxTileRow;
      _minTileCol = $v.minTileCol;
      _maxTileCol = $v.maxTileCol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileSetTileMatrixSetLimitsInner other) {
    _$v = other as _$OgcTileSetTileMatrixSetLimitsInner;
  }

  @override
  void update(
      void Function(OgcTileSetTileMatrixSetLimitsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileSetTileMatrixSetLimitsInner build() => _build();

  _$OgcTileSetTileMatrixSetLimitsInner _build() {
    final _$result = _$v ??
        _$OgcTileSetTileMatrixSetLimitsInner._(
          tileMatrix: tileMatrix,
          minTileRow: minTileRow,
          maxTileRow: maxTileRow,
          minTileCol: minTileCol,
          maxTileCol: maxTileCol,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
