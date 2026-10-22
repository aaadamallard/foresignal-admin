// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_collection_extent_spatial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCollectionExtentSpatial extends OgcCollectionExtentSpatial {
  @override
  final BuiltList<BuiltList<num>>? bbox;
  @override
  final String? crs;

  factory _$OgcCollectionExtentSpatial(
          [void Function(OgcCollectionExtentSpatialBuilder)? updates]) =>
      (OgcCollectionExtentSpatialBuilder()..update(updates))._build();

  _$OgcCollectionExtentSpatial._({this.bbox, this.crs}) : super._();
  @override
  OgcCollectionExtentSpatial rebuild(
          void Function(OgcCollectionExtentSpatialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCollectionExtentSpatialBuilder toBuilder() =>
      OgcCollectionExtentSpatialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCollectionExtentSpatial &&
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
    return (newBuiltValueToStringHelper(r'OgcCollectionExtentSpatial')
          ..add('bbox', bbox)
          ..add('crs', crs))
        .toString();
  }
}

class OgcCollectionExtentSpatialBuilder
    implements
        Builder<OgcCollectionExtentSpatial, OgcCollectionExtentSpatialBuilder> {
  _$OgcCollectionExtentSpatial? _$v;

  ListBuilder<BuiltList<num>>? _bbox;
  ListBuilder<BuiltList<num>> get bbox =>
      _$this._bbox ??= ListBuilder<BuiltList<num>>();
  set bbox(ListBuilder<BuiltList<num>>? bbox) => _$this._bbox = bbox;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  OgcCollectionExtentSpatialBuilder() {
    OgcCollectionExtentSpatial._defaults(this);
  }

  OgcCollectionExtentSpatialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bbox = $v.bbox?.toBuilder();
      _crs = $v.crs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCollectionExtentSpatial other) {
    _$v = other as _$OgcCollectionExtentSpatial;
  }

  @override
  void update(void Function(OgcCollectionExtentSpatialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCollectionExtentSpatial build() => _build();

  _$OgcCollectionExtentSpatial _build() {
    _$OgcCollectionExtentSpatial _$result;
    try {
      _$result = _$v ??
          _$OgcCollectionExtentSpatial._(
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
            r'OgcCollectionExtentSpatial', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
