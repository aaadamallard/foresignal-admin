// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReferenceAreaKindEnum _$referenceAreaKindEnum_country =
    const ReferenceAreaKindEnum._('country');
const ReferenceAreaKindEnum _$referenceAreaKindEnum_admin1 =
    const ReferenceAreaKindEnum._('admin1');
const ReferenceAreaKindEnum _$referenceAreaKindEnum_place =
    const ReferenceAreaKindEnum._('place');

ReferenceAreaKindEnum _$referenceAreaKindEnumValueOf(String name) {
  switch (name) {
    case 'country':
      return _$referenceAreaKindEnum_country;
    case 'admin1':
      return _$referenceAreaKindEnum_admin1;
    case 'place':
      return _$referenceAreaKindEnum_place;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceAreaKindEnum> _$referenceAreaKindEnumValues =
    BuiltSet<ReferenceAreaKindEnum>(const <ReferenceAreaKindEnum>[
      _$referenceAreaKindEnum_country,
      _$referenceAreaKindEnum_admin1,
      _$referenceAreaKindEnum_place,
    ]);

Serializer<ReferenceAreaKindEnum> _$referenceAreaKindEnumSerializer =
    _$ReferenceAreaKindEnumSerializer();

class _$ReferenceAreaKindEnumSerializer
    implements PrimitiveSerializer<ReferenceAreaKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'country': 'country',
    'admin1': 'admin1',
    'place': 'place',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'country': 'country',
    'admin1': 'admin1',
    'place': 'place',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceAreaKindEnum];
  @override
  final String wireName = 'ReferenceAreaKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReferenceAreaKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReferenceAreaKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReferenceAreaKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReferenceArea extends ReferenceArea {
  @override
  final ReferenceAreaKindEnum kind;
  @override
  final String? code;
  @override
  final String name;
  @override
  final String label;
  @override
  final String? countryIso2;
  @override
  final String? countryName;
  @override
  final String? admin1;
  @override
  final String? admin1Name;
  @override
  final num lon;
  @override
  final num lat;
  @override
  final int? placeId;
  @override
  final int? population;

  factory _$ReferenceArea([void Function(ReferenceAreaBuilder)? updates]) =>
      (ReferenceAreaBuilder()..update(updates))._build();

  _$ReferenceArea._({
    required this.kind,
    this.code,
    required this.name,
    required this.label,
    this.countryIso2,
    this.countryName,
    this.admin1,
    this.admin1Name,
    required this.lon,
    required this.lat,
    this.placeId,
    this.population,
  }) : super._();
  @override
  ReferenceArea rebuild(void Function(ReferenceAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenceAreaBuilder toBuilder() => ReferenceAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceArea &&
        kind == other.kind &&
        code == other.code &&
        name == other.name &&
        label == other.label &&
        countryIso2 == other.countryIso2 &&
        countryName == other.countryName &&
        admin1 == other.admin1 &&
        admin1Name == other.admin1Name &&
        lon == other.lon &&
        lat == other.lat &&
        placeId == other.placeId &&
        population == other.population;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, countryIso2.hashCode);
    _$hash = $jc(_$hash, countryName.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, admin1Name.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceArea')
          ..add('kind', kind)
          ..add('code', code)
          ..add('name', name)
          ..add('label', label)
          ..add('countryIso2', countryIso2)
          ..add('countryName', countryName)
          ..add('admin1', admin1)
          ..add('admin1Name', admin1Name)
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('placeId', placeId)
          ..add('population', population))
        .toString();
  }
}

class ReferenceAreaBuilder
    implements Builder<ReferenceArea, ReferenceAreaBuilder> {
  _$ReferenceArea? _$v;

  ReferenceAreaKindEnum? _kind;
  ReferenceAreaKindEnum? get kind => _$this._kind;
  set kind(ReferenceAreaKindEnum? kind) => _$this._kind = kind;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _countryIso2;
  String? get countryIso2 => _$this._countryIso2;
  set countryIso2(String? countryIso2) => _$this._countryIso2 = countryIso2;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  String? _admin1;
  String? get admin1 => _$this._admin1;
  set admin1(String? admin1) => _$this._admin1 = admin1;

  String? _admin1Name;
  String? get admin1Name => _$this._admin1Name;
  set admin1Name(String? admin1Name) => _$this._admin1Name = admin1Name;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  int? _placeId;
  int? get placeId => _$this._placeId;
  set placeId(int? placeId) => _$this._placeId = placeId;

  int? _population;
  int? get population => _$this._population;
  set population(int? population) => _$this._population = population;

  ReferenceAreaBuilder() {
    ReferenceArea._defaults(this);
  }

  ReferenceAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _code = $v.code;
      _name = $v.name;
      _label = $v.label;
      _countryIso2 = $v.countryIso2;
      _countryName = $v.countryName;
      _admin1 = $v.admin1;
      _admin1Name = $v.admin1Name;
      _lon = $v.lon;
      _lat = $v.lat;
      _placeId = $v.placeId;
      _population = $v.population;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceArea other) {
    _$v = other as _$ReferenceArea;
  }

  @override
  void update(void Function(ReferenceAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceArea build() => _build();

  _$ReferenceArea _build() {
    final _$result =
        _$v ??
        _$ReferenceArea._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'ReferenceArea',
            'kind',
          ),
          code: code,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ReferenceArea',
            'name',
          ),
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'ReferenceArea',
            'label',
          ),
          countryIso2: countryIso2,
          countryName: countryName,
          admin1: admin1,
          admin1Name: admin1Name,
          lon: BuiltValueNullFieldError.checkNotNull(
            lon,
            r'ReferenceArea',
            'lon',
          ),
          lat: BuiltValueNullFieldError.checkNotNull(
            lat,
            r'ReferenceArea',
            'lat',
          ),
          placeId: placeId,
          population: population,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
