// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_tags.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionTags extends RegionTags {
  @override
  final String? iso2;
  @override
  final String? admin1;
  @override
  final String? admin2;
  @override
  final String? sea;
  @override
  final RegionNear? near;
  @override
  final String? countryName;
  @override
  final String? admin1Name;
  @override
  final String? countyName;
  @override
  final String? attribution;

  factory _$RegionTags([void Function(RegionTagsBuilder)? updates]) =>
      (RegionTagsBuilder()..update(updates))._build();

  _$RegionTags._({
    this.iso2,
    this.admin1,
    this.admin2,
    this.sea,
    this.near,
    this.countryName,
    this.admin1Name,
    this.countyName,
    this.attribution,
  }) : super._();
  @override
  RegionTags rebuild(void Function(RegionTagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionTagsBuilder toBuilder() => RegionTagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionTags &&
        iso2 == other.iso2 &&
        admin1 == other.admin1 &&
        admin2 == other.admin2 &&
        sea == other.sea &&
        near == other.near &&
        countryName == other.countryName &&
        admin1Name == other.admin1Name &&
        countyName == other.countyName &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iso2.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, admin2.hashCode);
    _$hash = $jc(_$hash, sea.hashCode);
    _$hash = $jc(_$hash, near.hashCode);
    _$hash = $jc(_$hash, countryName.hashCode);
    _$hash = $jc(_$hash, admin1Name.hashCode);
    _$hash = $jc(_$hash, countyName.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionTags')
          ..add('iso2', iso2)
          ..add('admin1', admin1)
          ..add('admin2', admin2)
          ..add('sea', sea)
          ..add('near', near)
          ..add('countryName', countryName)
          ..add('admin1Name', admin1Name)
          ..add('countyName', countyName)
          ..add('attribution', attribution))
        .toString();
  }
}

class RegionTagsBuilder implements Builder<RegionTags, RegionTagsBuilder> {
  _$RegionTags? _$v;

  String? _iso2;
  String? get iso2 => _$this._iso2;
  set iso2(String? iso2) => _$this._iso2 = iso2;

  String? _admin1;
  String? get admin1 => _$this._admin1;
  set admin1(String? admin1) => _$this._admin1 = admin1;

  String? _admin2;
  String? get admin2 => _$this._admin2;
  set admin2(String? admin2) => _$this._admin2 = admin2;

  String? _sea;
  String? get sea => _$this._sea;
  set sea(String? sea) => _$this._sea = sea;

  RegionNearBuilder? _near;
  RegionNearBuilder get near => _$this._near ??= RegionNearBuilder();
  set near(RegionNearBuilder? near) => _$this._near = near;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  String? _admin1Name;
  String? get admin1Name => _$this._admin1Name;
  set admin1Name(String? admin1Name) => _$this._admin1Name = admin1Name;

  String? _countyName;
  String? get countyName => _$this._countyName;
  set countyName(String? countyName) => _$this._countyName = countyName;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  RegionTagsBuilder() {
    RegionTags._defaults(this);
  }

  RegionTagsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iso2 = $v.iso2;
      _admin1 = $v.admin1;
      _admin2 = $v.admin2;
      _sea = $v.sea;
      _near = $v.near?.toBuilder();
      _countryName = $v.countryName;
      _admin1Name = $v.admin1Name;
      _countyName = $v.countyName;
      _attribution = $v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionTags other) {
    _$v = other as _$RegionTags;
  }

  @override
  void update(void Function(RegionTagsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionTags build() => _build();

  _$RegionTags _build() {
    _$RegionTags _$result;
    try {
      _$result =
          _$v ??
          _$RegionTags._(
            iso2: iso2,
            admin1: admin1,
            admin2: admin2,
            sea: sea,
            near: _near?.build(),
            countryName: countryName,
            admin1Name: admin1Name,
            countyName: countyName,
            attribution: attribution,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'near';
        _near?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RegionTags',
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
