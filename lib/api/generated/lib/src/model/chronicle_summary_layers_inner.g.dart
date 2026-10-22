// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_summary_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSummaryLayersInner extends ChronicleSummaryLayersInner {
  @override
  final String layerId;
  @override
  final String name;
  @override
  final int rows;
  @override
  final BuiltList<ChronicleSummaryLayersInnerSeriesInner>? series;

  factory _$ChronicleSummaryLayersInner(
          [void Function(ChronicleSummaryLayersInnerBuilder)? updates]) =>
      (ChronicleSummaryLayersInnerBuilder()..update(updates))._build();

  _$ChronicleSummaryLayersInner._(
      {required this.layerId,
      required this.name,
      required this.rows,
      this.series})
      : super._();
  @override
  ChronicleSummaryLayersInner rebuild(
          void Function(ChronicleSummaryLayersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSummaryLayersInnerBuilder toBuilder() =>
      ChronicleSummaryLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSummaryLayersInner &&
        layerId == other.layerId &&
        name == other.name &&
        rows == other.rows &&
        series == other.series;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, layerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSummaryLayersInner')
          ..add('layerId', layerId)
          ..add('name', name)
          ..add('rows', rows)
          ..add('series', series))
        .toString();
  }
}

class ChronicleSummaryLayersInnerBuilder
    implements
        Builder<ChronicleSummaryLayersInner,
            ChronicleSummaryLayersInnerBuilder> {
  _$ChronicleSummaryLayersInner? _$v;

  String? _layerId;
  String? get layerId => _$this._layerId;
  set layerId(String? layerId) => _$this._layerId = layerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  ListBuilder<ChronicleSummaryLayersInnerSeriesInner>? _series;
  ListBuilder<ChronicleSummaryLayersInnerSeriesInner> get series =>
      _$this._series ??= ListBuilder<ChronicleSummaryLayersInnerSeriesInner>();
  set series(ListBuilder<ChronicleSummaryLayersInnerSeriesInner>? series) =>
      _$this._series = series;

  ChronicleSummaryLayersInnerBuilder() {
    ChronicleSummaryLayersInner._defaults(this);
  }

  ChronicleSummaryLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _layerId = $v.layerId;
      _name = $v.name;
      _rows = $v.rows;
      _series = $v.series?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSummaryLayersInner other) {
    _$v = other as _$ChronicleSummaryLayersInner;
  }

  @override
  void update(void Function(ChronicleSummaryLayersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSummaryLayersInner build() => _build();

  _$ChronicleSummaryLayersInner _build() {
    _$ChronicleSummaryLayersInner _$result;
    try {
      _$result = _$v ??
          _$ChronicleSummaryLayersInner._(
            layerId: BuiltValueNullFieldError.checkNotNull(
                layerId, r'ChronicleSummaryLayersInner', 'layerId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChronicleSummaryLayersInner', 'name'),
            rows: BuiltValueNullFieldError.checkNotNull(
                rows, r'ChronicleSummaryLayersInner', 'rows'),
            series: _series?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        _series?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleSummaryLayersInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
