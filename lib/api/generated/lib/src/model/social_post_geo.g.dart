// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_post_geo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPostGeo extends SocialPostGeo {
  @override
  final Geometry? geometry;
  @override
  final String? placeName;
  @override
  final String? placeId;

  factory _$SocialPostGeo([void Function(SocialPostGeoBuilder)? updates]) =>
      (SocialPostGeoBuilder()..update(updates))._build();

  _$SocialPostGeo._({this.geometry, this.placeName, this.placeId}) : super._();
  @override
  SocialPostGeo rebuild(void Function(SocialPostGeoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPostGeoBuilder toBuilder() => SocialPostGeoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPostGeo &&
        geometry == other.geometry &&
        placeName == other.placeName &&
        placeId == other.placeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, placeName.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPostGeo')
          ..add('geometry', geometry)
          ..add('placeName', placeName)
          ..add('placeId', placeId))
        .toString();
  }
}

class SocialPostGeoBuilder
    implements Builder<SocialPostGeo, SocialPostGeoBuilder> {
  _$SocialPostGeo? _$v;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  String? _placeName;
  String? get placeName => _$this._placeName;
  set placeName(String? placeName) => _$this._placeName = placeName;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  SocialPostGeoBuilder() {
    SocialPostGeo._defaults(this);
  }

  SocialPostGeoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geometry = $v.geometry?.toBuilder();
      _placeName = $v.placeName;
      _placeId = $v.placeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPostGeo other) {
    _$v = other as _$SocialPostGeo;
  }

  @override
  void update(void Function(SocialPostGeoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPostGeo build() => _build();

  _$SocialPostGeo _build() {
    _$SocialPostGeo _$result;
    try {
      _$result = _$v ??
          _$SocialPostGeo._(
            geometry: _geometry?.build(),
            placeName: placeName,
            placeId: placeId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialPostGeo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
