// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_spec.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PackSpec extends PackSpec {
  @override
  final String name;
  @override
  final BuiltList<num>? bbox;
  @override
  final String? placeId;
  @override
  final int minZoom;
  @override
  final int maxZoom;
  @override
  final PackSpecVector? vector;
  @override
  final PackSpecRaster? raster;
  @override
  final bool? includePrivate;
  @override
  final bool? personalUse;

  factory _$PackSpec([void Function(PackSpecBuilder)? updates]) =>
      (PackSpecBuilder()..update(updates))._build();

  _$PackSpec._(
      {required this.name,
      this.bbox,
      this.placeId,
      required this.minZoom,
      required this.maxZoom,
      this.vector,
      this.raster,
      this.includePrivate,
      this.personalUse})
      : super._();
  @override
  PackSpec rebuild(void Function(PackSpecBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackSpecBuilder toBuilder() => PackSpecBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackSpec &&
        name == other.name &&
        bbox == other.bbox &&
        placeId == other.placeId &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom &&
        vector == other.vector &&
        raster == other.raster &&
        includePrivate == other.includePrivate &&
        personalUse == other.personalUse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, minZoom.hashCode);
    _$hash = $jc(_$hash, maxZoom.hashCode);
    _$hash = $jc(_$hash, vector.hashCode);
    _$hash = $jc(_$hash, raster.hashCode);
    _$hash = $jc(_$hash, includePrivate.hashCode);
    _$hash = $jc(_$hash, personalUse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackSpec')
          ..add('name', name)
          ..add('bbox', bbox)
          ..add('placeId', placeId)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('vector', vector)
          ..add('raster', raster)
          ..add('includePrivate', includePrivate)
          ..add('personalUse', personalUse))
        .toString();
  }
}

class PackSpecBuilder implements Builder<PackSpec, PackSpecBuilder> {
  _$PackSpec? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  int? _minZoom;
  int? get minZoom => _$this._minZoom;
  set minZoom(int? minZoom) => _$this._minZoom = minZoom;

  int? _maxZoom;
  int? get maxZoom => _$this._maxZoom;
  set maxZoom(int? maxZoom) => _$this._maxZoom = maxZoom;

  PackSpecVectorBuilder? _vector;
  PackSpecVectorBuilder get vector =>
      _$this._vector ??= PackSpecVectorBuilder();
  set vector(PackSpecVectorBuilder? vector) => _$this._vector = vector;

  PackSpecRasterBuilder? _raster;
  PackSpecRasterBuilder get raster =>
      _$this._raster ??= PackSpecRasterBuilder();
  set raster(PackSpecRasterBuilder? raster) => _$this._raster = raster;

  bool? _includePrivate;
  bool? get includePrivate => _$this._includePrivate;
  set includePrivate(bool? includePrivate) =>
      _$this._includePrivate = includePrivate;

  bool? _personalUse;
  bool? get personalUse => _$this._personalUse;
  set personalUse(bool? personalUse) => _$this._personalUse = personalUse;

  PackSpecBuilder() {
    PackSpec._defaults(this);
  }

  PackSpecBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _bbox = $v.bbox?.toBuilder();
      _placeId = $v.placeId;
      _minZoom = $v.minZoom;
      _maxZoom = $v.maxZoom;
      _vector = $v.vector?.toBuilder();
      _raster = $v.raster?.toBuilder();
      _includePrivate = $v.includePrivate;
      _personalUse = $v.personalUse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackSpec other) {
    _$v = other as _$PackSpec;
  }

  @override
  void update(void Function(PackSpecBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackSpec build() => _build();

  _$PackSpec _build() {
    _$PackSpec _$result;
    try {
      _$result = _$v ??
          _$PackSpec._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PackSpec', 'name'),
            bbox: _bbox?.build(),
            placeId: placeId,
            minZoom: BuiltValueNullFieldError.checkNotNull(
                minZoom, r'PackSpec', 'minZoom'),
            maxZoom: BuiltValueNullFieldError.checkNotNull(
                maxZoom, r'PackSpec', 'maxZoom'),
            vector: _vector?.build(),
            raster: _raster?.build(),
            includePrivate: includePrivate,
            personalUse: personalUse,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();

        _$failedField = 'vector';
        _vector?.build();
        _$failedField = 'raster';
        _raster?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PackSpec', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
