// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_collection_extent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCollectionExtent extends OgcCollectionExtent {
  @override
  final OgcCollectionExtentSpatial? spatial;
  @override
  final OgcCollectionExtentTemporal? temporal;

  factory _$OgcCollectionExtent(
          [void Function(OgcCollectionExtentBuilder)? updates]) =>
      (OgcCollectionExtentBuilder()..update(updates))._build();

  _$OgcCollectionExtent._({this.spatial, this.temporal}) : super._();
  @override
  OgcCollectionExtent rebuild(
          void Function(OgcCollectionExtentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCollectionExtentBuilder toBuilder() =>
      OgcCollectionExtentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCollectionExtent &&
        spatial == other.spatial &&
        temporal == other.temporal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spatial.hashCode);
    _$hash = $jc(_$hash, temporal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCollectionExtent')
          ..add('spatial', spatial)
          ..add('temporal', temporal))
        .toString();
  }
}

class OgcCollectionExtentBuilder
    implements Builder<OgcCollectionExtent, OgcCollectionExtentBuilder> {
  _$OgcCollectionExtent? _$v;

  OgcCollectionExtentSpatialBuilder? _spatial;
  OgcCollectionExtentSpatialBuilder get spatial =>
      _$this._spatial ??= OgcCollectionExtentSpatialBuilder();
  set spatial(OgcCollectionExtentSpatialBuilder? spatial) =>
      _$this._spatial = spatial;

  OgcCollectionExtentTemporalBuilder? _temporal;
  OgcCollectionExtentTemporalBuilder get temporal =>
      _$this._temporal ??= OgcCollectionExtentTemporalBuilder();
  set temporal(OgcCollectionExtentTemporalBuilder? temporal) =>
      _$this._temporal = temporal;

  OgcCollectionExtentBuilder() {
    OgcCollectionExtent._defaults(this);
  }

  OgcCollectionExtentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spatial = $v.spatial?.toBuilder();
      _temporal = $v.temporal?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCollectionExtent other) {
    _$v = other as _$OgcCollectionExtent;
  }

  @override
  void update(void Function(OgcCollectionExtentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCollectionExtent build() => _build();

  _$OgcCollectionExtent _build() {
    _$OgcCollectionExtent _$result;
    try {
      _$result = _$v ??
          _$OgcCollectionExtent._(
            spatial: _spatial?.build(),
            temporal: _temporal?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spatial';
        _spatial?.build();
        _$failedField = 'temporal';
        _temporal?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcCollectionExtent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
