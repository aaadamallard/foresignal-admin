// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_extent_spatial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionExtentSpatial
    extends OgcCoverageCollectionExtentSpatial {
  @override
  final BuiltList<BuiltList<num>>? bbox;
  @override
  final String? crs;

  factory _$OgcCoverageCollectionExtentSpatial([
    void Function(OgcCoverageCollectionExtentSpatialBuilder)? updates,
  ]) => (OgcCoverageCollectionExtentSpatialBuilder()..update(updates))._build();

  _$OgcCoverageCollectionExtentSpatial._({this.bbox, this.crs}) : super._();
  @override
  OgcCoverageCollectionExtentSpatial rebuild(
    void Function(OgcCoverageCollectionExtentSpatialBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionExtentSpatialBuilder toBuilder() =>
      OgcCoverageCollectionExtentSpatialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionExtentSpatial &&
        bbox == other.bbox &&
        crs == other.crs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCoverageCollectionExtentSpatial')
          ..add('bbox', bbox)
          ..add('crs', crs))
        .toString();
  }
}

class OgcCoverageCollectionExtentSpatialBuilder
    implements
        Builder<
          OgcCoverageCollectionExtentSpatial,
          OgcCoverageCollectionExtentSpatialBuilder
        > {
  _$OgcCoverageCollectionExtentSpatial? _$v;

  ListBuilder<BuiltList<num>>? _bbox;
  ListBuilder<BuiltList<num>> get bbox =>
      _$this._bbox ??= ListBuilder<BuiltList<num>>();
  set bbox(ListBuilder<BuiltList<num>>? bbox) => _$this._bbox = bbox;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  OgcCoverageCollectionExtentSpatialBuilder() {
    OgcCoverageCollectionExtentSpatial._defaults(this);
  }

  OgcCoverageCollectionExtentSpatialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bbox = $v.bbox?.toBuilder();
      _crs = $v.crs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionExtentSpatial other) {
    _$v = other as _$OgcCoverageCollectionExtentSpatial;
  }

  @override
  void update(
    void Function(OgcCoverageCollectionExtentSpatialBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionExtentSpatial build() => _build();

  _$OgcCoverageCollectionExtentSpatial _build() {
    _$OgcCoverageCollectionExtentSpatial _$result;
    try {
      _$result =
          _$v ??
          _$OgcCoverageCollectionExtentSpatial._(
            bbox: _bbox?.build(),
            crs: crs,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcCoverageCollectionExtentSpatial',
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
