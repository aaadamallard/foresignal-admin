// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_matrix_set_tile_matrices_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcTileMatrixSetTileMatricesInner
    extends OgcTileMatrixSetTileMatricesInner {
  @override
  final String id;
  @override
  final num scaleDenominator;
  @override
  final num? cellSize;
  @override
  final BuiltList<num> pointOfOrigin;
  @override
  final int tileWidth;
  @override
  final int tileHeight;
  @override
  final int matrixWidth;
  @override
  final int matrixHeight;
  @override
  final String? cornerOfOrigin;

  factory _$OgcTileMatrixSetTileMatricesInner([
    void Function(OgcTileMatrixSetTileMatricesInnerBuilder)? updates,
  ]) => (OgcTileMatrixSetTileMatricesInnerBuilder()..update(updates))._build();

  _$OgcTileMatrixSetTileMatricesInner._({
    required this.id,
    required this.scaleDenominator,
    this.cellSize,
    required this.pointOfOrigin,
    required this.tileWidth,
    required this.tileHeight,
    required this.matrixWidth,
    required this.matrixHeight,
    this.cornerOfOrigin,
  }) : super._();
  @override
  OgcTileMatrixSetTileMatricesInner rebuild(
    void Function(OgcTileMatrixSetTileMatricesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcTileMatrixSetTileMatricesInnerBuilder toBuilder() =>
      OgcTileMatrixSetTileMatricesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileMatrixSetTileMatricesInner &&
        id == other.id &&
        scaleDenominator == other.scaleDenominator &&
        cellSize == other.cellSize &&
        pointOfOrigin == other.pointOfOrigin &&
        tileWidth == other.tileWidth &&
        tileHeight == other.tileHeight &&
        matrixWidth == other.matrixWidth &&
        matrixHeight == other.matrixHeight &&
        cornerOfOrigin == other.cornerOfOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, scaleDenominator.hashCode);
    _$hash = $jc(_$hash, cellSize.hashCode);
    _$hash = $jc(_$hash, pointOfOrigin.hashCode);
    _$hash = $jc(_$hash, tileWidth.hashCode);
    _$hash = $jc(_$hash, tileHeight.hashCode);
    _$hash = $jc(_$hash, matrixWidth.hashCode);
    _$hash = $jc(_$hash, matrixHeight.hashCode);
    _$hash = $jc(_$hash, cornerOfOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcTileMatrixSetTileMatricesInner')
          ..add('id', id)
          ..add('scaleDenominator', scaleDenominator)
          ..add('cellSize', cellSize)
          ..add('pointOfOrigin', pointOfOrigin)
          ..add('tileWidth', tileWidth)
          ..add('tileHeight', tileHeight)
          ..add('matrixWidth', matrixWidth)
          ..add('matrixHeight', matrixHeight)
          ..add('cornerOfOrigin', cornerOfOrigin))
        .toString();
  }
}

class OgcTileMatrixSetTileMatricesInnerBuilder
    implements
        Builder<
          OgcTileMatrixSetTileMatricesInner,
          OgcTileMatrixSetTileMatricesInnerBuilder
        > {
  _$OgcTileMatrixSetTileMatricesInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  num? _scaleDenominator;
  num? get scaleDenominator => _$this._scaleDenominator;
  set scaleDenominator(num? scaleDenominator) =>
      _$this._scaleDenominator = scaleDenominator;

  num? _cellSize;
  num? get cellSize => _$this._cellSize;
  set cellSize(num? cellSize) => _$this._cellSize = cellSize;

  ListBuilder<num>? _pointOfOrigin;
  ListBuilder<num> get pointOfOrigin =>
      _$this._pointOfOrigin ??= ListBuilder<num>();
  set pointOfOrigin(ListBuilder<num>? pointOfOrigin) =>
      _$this._pointOfOrigin = pointOfOrigin;

  int? _tileWidth;
  int? get tileWidth => _$this._tileWidth;
  set tileWidth(int? tileWidth) => _$this._tileWidth = tileWidth;

  int? _tileHeight;
  int? get tileHeight => _$this._tileHeight;
  set tileHeight(int? tileHeight) => _$this._tileHeight = tileHeight;

  int? _matrixWidth;
  int? get matrixWidth => _$this._matrixWidth;
  set matrixWidth(int? matrixWidth) => _$this._matrixWidth = matrixWidth;

  int? _matrixHeight;
  int? get matrixHeight => _$this._matrixHeight;
  set matrixHeight(int? matrixHeight) => _$this._matrixHeight = matrixHeight;

  String? _cornerOfOrigin;
  String? get cornerOfOrigin => _$this._cornerOfOrigin;
  set cornerOfOrigin(String? cornerOfOrigin) =>
      _$this._cornerOfOrigin = cornerOfOrigin;

  OgcTileMatrixSetTileMatricesInnerBuilder() {
    OgcTileMatrixSetTileMatricesInner._defaults(this);
  }

  OgcTileMatrixSetTileMatricesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _scaleDenominator = $v.scaleDenominator;
      _cellSize = $v.cellSize;
      _pointOfOrigin = $v.pointOfOrigin.toBuilder();
      _tileWidth = $v.tileWidth;
      _tileHeight = $v.tileHeight;
      _matrixWidth = $v.matrixWidth;
      _matrixHeight = $v.matrixHeight;
      _cornerOfOrigin = $v.cornerOfOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileMatrixSetTileMatricesInner other) {
    _$v = other as _$OgcTileMatrixSetTileMatricesInner;
  }

  @override
  void update(
    void Function(OgcTileMatrixSetTileMatricesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileMatrixSetTileMatricesInner build() => _build();

  _$OgcTileMatrixSetTileMatricesInner _build() {
    _$OgcTileMatrixSetTileMatricesInner _$result;
    try {
      _$result =
          _$v ??
          _$OgcTileMatrixSetTileMatricesInner._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'OgcTileMatrixSetTileMatricesInner',
              'id',
            ),
            scaleDenominator: BuiltValueNullFieldError.checkNotNull(
              scaleDenominator,
              r'OgcTileMatrixSetTileMatricesInner',
              'scaleDenominator',
            ),
            cellSize: cellSize,
            pointOfOrigin: pointOfOrigin.build(),
            tileWidth: BuiltValueNullFieldError.checkNotNull(
              tileWidth,
              r'OgcTileMatrixSetTileMatricesInner',
              'tileWidth',
            ),
            tileHeight: BuiltValueNullFieldError.checkNotNull(
              tileHeight,
              r'OgcTileMatrixSetTileMatricesInner',
              'tileHeight',
            ),
            matrixWidth: BuiltValueNullFieldError.checkNotNull(
              matrixWidth,
              r'OgcTileMatrixSetTileMatricesInner',
              'matrixWidth',
            ),
            matrixHeight: BuiltValueNullFieldError.checkNotNull(
              matrixHeight,
              r'OgcTileMatrixSetTileMatricesInner',
              'matrixHeight',
            ),
            cornerOfOrigin: cornerOfOrigin,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pointOfOrigin';
        pointOfOrigin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcTileMatrixSetTileMatricesInner',
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
