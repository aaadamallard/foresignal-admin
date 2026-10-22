// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_near.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegionNearCompass16Enum _$regionNearCompass16Enum_N =
    const RegionNearCompass16Enum._('N');
const RegionNearCompass16Enum _$regionNearCompass16Enum_NNE =
    const RegionNearCompass16Enum._('NNE');
const RegionNearCompass16Enum _$regionNearCompass16Enum_NE =
    const RegionNearCompass16Enum._('NE');
const RegionNearCompass16Enum _$regionNearCompass16Enum_ENE =
    const RegionNearCompass16Enum._('ENE');
const RegionNearCompass16Enum _$regionNearCompass16Enum_E =
    const RegionNearCompass16Enum._('E');
const RegionNearCompass16Enum _$regionNearCompass16Enum_ESE =
    const RegionNearCompass16Enum._('ESE');
const RegionNearCompass16Enum _$regionNearCompass16Enum_SE =
    const RegionNearCompass16Enum._('SE');
const RegionNearCompass16Enum _$regionNearCompass16Enum_SSE =
    const RegionNearCompass16Enum._('SSE');
const RegionNearCompass16Enum _$regionNearCompass16Enum_S =
    const RegionNearCompass16Enum._('S');
const RegionNearCompass16Enum _$regionNearCompass16Enum_SSW =
    const RegionNearCompass16Enum._('SSW');
const RegionNearCompass16Enum _$regionNearCompass16Enum_SW =
    const RegionNearCompass16Enum._('SW');
const RegionNearCompass16Enum _$regionNearCompass16Enum_WSW =
    const RegionNearCompass16Enum._('WSW');
const RegionNearCompass16Enum _$regionNearCompass16Enum_W =
    const RegionNearCompass16Enum._('W');
const RegionNearCompass16Enum _$regionNearCompass16Enum_WNW =
    const RegionNearCompass16Enum._('WNW');
const RegionNearCompass16Enum _$regionNearCompass16Enum_NW =
    const RegionNearCompass16Enum._('NW');
const RegionNearCompass16Enum _$regionNearCompass16Enum_NNW =
    const RegionNearCompass16Enum._('NNW');

RegionNearCompass16Enum _$regionNearCompass16EnumValueOf(String name) {
  switch (name) {
    case 'N':
      return _$regionNearCompass16Enum_N;
    case 'NNE':
      return _$regionNearCompass16Enum_NNE;
    case 'NE':
      return _$regionNearCompass16Enum_NE;
    case 'ENE':
      return _$regionNearCompass16Enum_ENE;
    case 'E':
      return _$regionNearCompass16Enum_E;
    case 'ESE':
      return _$regionNearCompass16Enum_ESE;
    case 'SE':
      return _$regionNearCompass16Enum_SE;
    case 'SSE':
      return _$regionNearCompass16Enum_SSE;
    case 'S':
      return _$regionNearCompass16Enum_S;
    case 'SSW':
      return _$regionNearCompass16Enum_SSW;
    case 'SW':
      return _$regionNearCompass16Enum_SW;
    case 'WSW':
      return _$regionNearCompass16Enum_WSW;
    case 'W':
      return _$regionNearCompass16Enum_W;
    case 'WNW':
      return _$regionNearCompass16Enum_WNW;
    case 'NW':
      return _$regionNearCompass16Enum_NW;
    case 'NNW':
      return _$regionNearCompass16Enum_NNW;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegionNearCompass16Enum> _$regionNearCompass16EnumValues =
    BuiltSet<RegionNearCompass16Enum>(const <RegionNearCompass16Enum>[
  _$regionNearCompass16Enum_N,
  _$regionNearCompass16Enum_NNE,
  _$regionNearCompass16Enum_NE,
  _$regionNearCompass16Enum_ENE,
  _$regionNearCompass16Enum_E,
  _$regionNearCompass16Enum_ESE,
  _$regionNearCompass16Enum_SE,
  _$regionNearCompass16Enum_SSE,
  _$regionNearCompass16Enum_S,
  _$regionNearCompass16Enum_SSW,
  _$regionNearCompass16Enum_SW,
  _$regionNearCompass16Enum_WSW,
  _$regionNearCompass16Enum_W,
  _$regionNearCompass16Enum_WNW,
  _$regionNearCompass16Enum_NW,
  _$regionNearCompass16Enum_NNW,
]);

Serializer<RegionNearCompass16Enum> _$regionNearCompass16EnumSerializer =
    _$RegionNearCompass16EnumSerializer();

class _$RegionNearCompass16EnumSerializer
    implements PrimitiveSerializer<RegionNearCompass16Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'N': 'N',
    'NNE': 'NNE',
    'NE': 'NE',
    'ENE': 'ENE',
    'E': 'E',
    'ESE': 'ESE',
    'SE': 'SE',
    'SSE': 'SSE',
    'S': 'S',
    'SSW': 'SSW',
    'SW': 'SW',
    'WSW': 'WSW',
    'W': 'W',
    'WNW': 'WNW',
    'NW': 'NW',
    'NNW': 'NNW',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'N': 'N',
    'NNE': 'NNE',
    'NE': 'NE',
    'ENE': 'ENE',
    'E': 'E',
    'ESE': 'ESE',
    'SE': 'SE',
    'SSE': 'SSE',
    'S': 'S',
    'SSW': 'SSW',
    'SW': 'SW',
    'WSW': 'WSW',
    'W': 'W',
    'WNW': 'WNW',
    'NW': 'NW',
    'NNW': 'NNW',
  };

  @override
  final Iterable<Type> types = const <Type>[RegionNearCompass16Enum];
  @override
  final String wireName = 'RegionNearCompass16Enum';

  @override
  Object serialize(Serializers serializers, RegionNearCompass16Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RegionNearCompass16Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RegionNearCompass16Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RegionNear extends RegionNear {
  @override
  final int geonameid;
  @override
  final String name;
  @override
  final String? iso2;
  @override
  final String? admin1;
  @override
  final num distanceKm;
  @override
  final num? bearingDeg;
  @override
  final RegionNearCompass16Enum compass16;
  @override
  final int? population;
  @override
  final String? text;

  factory _$RegionNear([void Function(RegionNearBuilder)? updates]) =>
      (RegionNearBuilder()..update(updates))._build();

  _$RegionNear._(
      {required this.geonameid,
      required this.name,
      this.iso2,
      this.admin1,
      required this.distanceKm,
      this.bearingDeg,
      required this.compass16,
      this.population,
      this.text})
      : super._();
  @override
  RegionNear rebuild(void Function(RegionNearBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionNearBuilder toBuilder() => RegionNearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionNear &&
        geonameid == other.geonameid &&
        name == other.name &&
        iso2 == other.iso2 &&
        admin1 == other.admin1 &&
        distanceKm == other.distanceKm &&
        bearingDeg == other.bearingDeg &&
        compass16 == other.compass16 &&
        population == other.population &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geonameid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iso2.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, bearingDeg.hashCode);
    _$hash = $jc(_$hash, compass16.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionNear')
          ..add('geonameid', geonameid)
          ..add('name', name)
          ..add('iso2', iso2)
          ..add('admin1', admin1)
          ..add('distanceKm', distanceKm)
          ..add('bearingDeg', bearingDeg)
          ..add('compass16', compass16)
          ..add('population', population)
          ..add('text', text))
        .toString();
  }
}

class RegionNearBuilder implements Builder<RegionNear, RegionNearBuilder> {
  _$RegionNear? _$v;

  int? _geonameid;
  int? get geonameid => _$this._geonameid;
  set geonameid(int? geonameid) => _$this._geonameid = geonameid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iso2;
  String? get iso2 => _$this._iso2;
  set iso2(String? iso2) => _$this._iso2 = iso2;

  String? _admin1;
  String? get admin1 => _$this._admin1;
  set admin1(String? admin1) => _$this._admin1 = admin1;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  num? _bearingDeg;
  num? get bearingDeg => _$this._bearingDeg;
  set bearingDeg(num? bearingDeg) => _$this._bearingDeg = bearingDeg;

  RegionNearCompass16Enum? _compass16;
  RegionNearCompass16Enum? get compass16 => _$this._compass16;
  set compass16(RegionNearCompass16Enum? compass16) =>
      _$this._compass16 = compass16;

  int? _population;
  int? get population => _$this._population;
  set population(int? population) => _$this._population = population;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  RegionNearBuilder() {
    RegionNear._defaults(this);
  }

  RegionNearBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geonameid = $v.geonameid;
      _name = $v.name;
      _iso2 = $v.iso2;
      _admin1 = $v.admin1;
      _distanceKm = $v.distanceKm;
      _bearingDeg = $v.bearingDeg;
      _compass16 = $v.compass16;
      _population = $v.population;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionNear other) {
    _$v = other as _$RegionNear;
  }

  @override
  void update(void Function(RegionNearBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionNear build() => _build();

  _$RegionNear _build() {
    final _$result = _$v ??
        _$RegionNear._(
          geonameid: BuiltValueNullFieldError.checkNotNull(
              geonameid, r'RegionNear', 'geonameid'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'RegionNear', 'name'),
          iso2: iso2,
          admin1: admin1,
          distanceKm: BuiltValueNullFieldError.checkNotNull(
              distanceKm, r'RegionNear', 'distanceKm'),
          bearingDeg: bearingDeg,
          compass16: BuiltValueNullFieldError.checkNotNull(
              compass16, r'RegionNear', 'compass16'),
          population: population,
          text: text,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
