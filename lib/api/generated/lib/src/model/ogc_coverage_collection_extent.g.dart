// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_extent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionExtent extends OgcCoverageCollectionExtent {
  @override
  final OgcCoverageCollectionExtentSpatial? spatial;
  @override
  final OgcCoverageCollectionExtentTemporal? temporal;

  factory _$OgcCoverageCollectionExtent([
    void Function(OgcCoverageCollectionExtentBuilder)? updates,
  ]) => (OgcCoverageCollectionExtentBuilder()..update(updates))._build();

  _$OgcCoverageCollectionExtent._({this.spatial, this.temporal}) : super._();
  @override
  OgcCoverageCollectionExtent rebuild(
    void Function(OgcCoverageCollectionExtentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionExtentBuilder toBuilder() =>
      OgcCoverageCollectionExtentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionExtent &&
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
    return (newBuiltValueToStringHelper(r'OgcCoverageCollectionExtent')
          ..add('spatial', spatial)
          ..add('temporal', temporal))
        .toString();
  }
}

class OgcCoverageCollectionExtentBuilder
    implements
        Builder<
          OgcCoverageCollectionExtent,
          OgcCoverageCollectionExtentBuilder
        > {
  _$OgcCoverageCollectionExtent? _$v;

  OgcCoverageCollectionExtentSpatialBuilder? _spatial;
  OgcCoverageCollectionExtentSpatialBuilder get spatial =>
      _$this._spatial ??= OgcCoverageCollectionExtentSpatialBuilder();
  set spatial(OgcCoverageCollectionExtentSpatialBuilder? spatial) =>
      _$this._spatial = spatial;

  OgcCoverageCollectionExtentTemporalBuilder? _temporal;
  OgcCoverageCollectionExtentTemporalBuilder get temporal =>
      _$this._temporal ??= OgcCoverageCollectionExtentTemporalBuilder();
  set temporal(OgcCoverageCollectionExtentTemporalBuilder? temporal) =>
      _$this._temporal = temporal;

  OgcCoverageCollectionExtentBuilder() {
    OgcCoverageCollectionExtent._defaults(this);
  }

  OgcCoverageCollectionExtentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spatial = $v.spatial?.toBuilder();
      _temporal = $v.temporal?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionExtent other) {
    _$v = other as _$OgcCoverageCollectionExtent;
  }

  @override
  void update(void Function(OgcCoverageCollectionExtentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionExtent build() => _build();

  _$OgcCoverageCollectionExtent _build() {
    _$OgcCoverageCollectionExtent _$result;
    try {
      _$result =
          _$v ??
          _$OgcCoverageCollectionExtent._(
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
          r'OgcCoverageCollectionExtent',
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
