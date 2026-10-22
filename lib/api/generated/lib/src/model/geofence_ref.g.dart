// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofence_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeofenceRef extends GeofenceRef {
  @override
  final BuiltList<String>? country;
  @override
  final BuiltList<String>? admin1;
  @override
  final BuiltList<String>? county;

  factory _$GeofenceRef([void Function(GeofenceRefBuilder)? updates]) =>
      (GeofenceRefBuilder()..update(updates))._build();

  _$GeofenceRef._({this.country, this.admin1, this.county}) : super._();
  @override
  GeofenceRef rebuild(void Function(GeofenceRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeofenceRefBuilder toBuilder() => GeofenceRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeofenceRef &&
        country == other.country &&
        admin1 == other.admin1 &&
        county == other.county;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, county.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeofenceRef')
          ..add('country', country)
          ..add('admin1', admin1)
          ..add('county', county))
        .toString();
  }
}

class GeofenceRefBuilder implements Builder<GeofenceRef, GeofenceRefBuilder> {
  _$GeofenceRef? _$v;

  ListBuilder<String>? _country;
  ListBuilder<String> get country => _$this._country ??= ListBuilder<String>();
  set country(ListBuilder<String>? country) => _$this._country = country;

  ListBuilder<String>? _admin1;
  ListBuilder<String> get admin1 => _$this._admin1 ??= ListBuilder<String>();
  set admin1(ListBuilder<String>? admin1) => _$this._admin1 = admin1;

  ListBuilder<String>? _county;
  ListBuilder<String> get county => _$this._county ??= ListBuilder<String>();
  set county(ListBuilder<String>? county) => _$this._county = county;

  GeofenceRefBuilder() {
    GeofenceRef._defaults(this);
  }

  GeofenceRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country?.toBuilder();
      _admin1 = $v.admin1?.toBuilder();
      _county = $v.county?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeofenceRef other) {
    _$v = other as _$GeofenceRef;
  }

  @override
  void update(void Function(GeofenceRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeofenceRef build() => _build();

  _$GeofenceRef _build() {
    _$GeofenceRef _$result;
    try {
      _$result = _$v ??
          _$GeofenceRef._(
            country: _country?.build(),
            admin1: _admin1?.build(),
            county: _county?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'country';
        _country?.build();
        _$failedField = 'admin1';
        _admin1?.build();
        _$failedField = 'county';
        _county?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GeofenceRef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
