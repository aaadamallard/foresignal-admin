// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountryRef extends CountryRef {
  @override
  final String iso2;
  @override
  final String iso3;
  @override
  final String? isoNumeric;
  @override
  final String? fips;
  @override
  final String name;
  @override
  final String? nameLong;
  @override
  final String? continent;
  @override
  final num labelLon;
  @override
  final num labelLat;
  @override
  final BuiltList<String>? aliases;

  factory _$CountryRef([void Function(CountryRefBuilder)? updates]) =>
      (CountryRefBuilder()..update(updates))._build();

  _$CountryRef._(
      {required this.iso2,
      required this.iso3,
      this.isoNumeric,
      this.fips,
      required this.name,
      this.nameLong,
      this.continent,
      required this.labelLon,
      required this.labelLat,
      this.aliases})
      : super._();
  @override
  CountryRef rebuild(void Function(CountryRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryRefBuilder toBuilder() => CountryRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryRef &&
        iso2 == other.iso2 &&
        iso3 == other.iso3 &&
        isoNumeric == other.isoNumeric &&
        fips == other.fips &&
        name == other.name &&
        nameLong == other.nameLong &&
        continent == other.continent &&
        labelLon == other.labelLon &&
        labelLat == other.labelLat &&
        aliases == other.aliases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iso2.hashCode);
    _$hash = $jc(_$hash, iso3.hashCode);
    _$hash = $jc(_$hash, isoNumeric.hashCode);
    _$hash = $jc(_$hash, fips.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, nameLong.hashCode);
    _$hash = $jc(_$hash, continent.hashCode);
    _$hash = $jc(_$hash, labelLon.hashCode);
    _$hash = $jc(_$hash, labelLat.hashCode);
    _$hash = $jc(_$hash, aliases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CountryRef')
          ..add('iso2', iso2)
          ..add('iso3', iso3)
          ..add('isoNumeric', isoNumeric)
          ..add('fips', fips)
          ..add('name', name)
          ..add('nameLong', nameLong)
          ..add('continent', continent)
          ..add('labelLon', labelLon)
          ..add('labelLat', labelLat)
          ..add('aliases', aliases))
        .toString();
  }
}

class CountryRefBuilder implements Builder<CountryRef, CountryRefBuilder> {
  _$CountryRef? _$v;

  String? _iso2;
  String? get iso2 => _$this._iso2;
  set iso2(String? iso2) => _$this._iso2 = iso2;

  String? _iso3;
  String? get iso3 => _$this._iso3;
  set iso3(String? iso3) => _$this._iso3 = iso3;

  String? _isoNumeric;
  String? get isoNumeric => _$this._isoNumeric;
  set isoNumeric(String? isoNumeric) => _$this._isoNumeric = isoNumeric;

  String? _fips;
  String? get fips => _$this._fips;
  set fips(String? fips) => _$this._fips = fips;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nameLong;
  String? get nameLong => _$this._nameLong;
  set nameLong(String? nameLong) => _$this._nameLong = nameLong;

  String? _continent;
  String? get continent => _$this._continent;
  set continent(String? continent) => _$this._continent = continent;

  num? _labelLon;
  num? get labelLon => _$this._labelLon;
  set labelLon(num? labelLon) => _$this._labelLon = labelLon;

  num? _labelLat;
  num? get labelLat => _$this._labelLat;
  set labelLat(num? labelLat) => _$this._labelLat = labelLat;

  ListBuilder<String>? _aliases;
  ListBuilder<String> get aliases => _$this._aliases ??= ListBuilder<String>();
  set aliases(ListBuilder<String>? aliases) => _$this._aliases = aliases;

  CountryRefBuilder() {
    CountryRef._defaults(this);
  }

  CountryRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iso2 = $v.iso2;
      _iso3 = $v.iso3;
      _isoNumeric = $v.isoNumeric;
      _fips = $v.fips;
      _name = $v.name;
      _nameLong = $v.nameLong;
      _continent = $v.continent;
      _labelLon = $v.labelLon;
      _labelLat = $v.labelLat;
      _aliases = $v.aliases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryRef other) {
    _$v = other as _$CountryRef;
  }

  @override
  void update(void Function(CountryRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CountryRef build() => _build();

  _$CountryRef _build() {
    _$CountryRef _$result;
    try {
      _$result = _$v ??
          _$CountryRef._(
            iso2: BuiltValueNullFieldError.checkNotNull(
                iso2, r'CountryRef', 'iso2'),
            iso3: BuiltValueNullFieldError.checkNotNull(
                iso3, r'CountryRef', 'iso3'),
            isoNumeric: isoNumeric,
            fips: fips,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CountryRef', 'name'),
            nameLong: nameLong,
            continent: continent,
            labelLon: BuiltValueNullFieldError.checkNotNull(
                labelLon, r'CountryRef', 'labelLon'),
            labelLat: BuiltValueNullFieldError.checkNotNull(
                labelLat, r'CountryRef', 'labelLat'),
            aliases: _aliases?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aliases';
        _aliases?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CountryRef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
