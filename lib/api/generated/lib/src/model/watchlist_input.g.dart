// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_icao24 =
    const WatchlistInputIdentityEnum._('icao24');
const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_registration =
    const WatchlistInputIdentityEnum._('registration');
const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_callsign =
    const WatchlistInputIdentityEnum._('callsign');
const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_mmsi =
    const WatchlistInputIdentityEnum._('mmsi');
const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_imo =
    const WatchlistInputIdentityEnum._('imo');
const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_entity =
    const WatchlistInputIdentityEnum._('entity');
const WatchlistInputIdentityEnum _$watchlistInputIdentityEnum_custom =
    const WatchlistInputIdentityEnum._('custom');
const WatchlistInputIdentityEnum
_$watchlistInputIdentityEnum_unknownDefaultOpenApi =
    const WatchlistInputIdentityEnum._('unknownDefaultOpenApi');

WatchlistInputIdentityEnum _$watchlistInputIdentityEnumValueOf(String name) {
  switch (name) {
    case 'icao24':
      return _$watchlistInputIdentityEnum_icao24;
    case 'registration':
      return _$watchlistInputIdentityEnum_registration;
    case 'callsign':
      return _$watchlistInputIdentityEnum_callsign;
    case 'mmsi':
      return _$watchlistInputIdentityEnum_mmsi;
    case 'imo':
      return _$watchlistInputIdentityEnum_imo;
    case 'entity':
      return _$watchlistInputIdentityEnum_entity;
    case 'custom':
      return _$watchlistInputIdentityEnum_custom;
    case 'unknownDefaultOpenApi':
      return _$watchlistInputIdentityEnum_unknownDefaultOpenApi;
    default:
      return _$watchlistInputIdentityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<WatchlistInputIdentityEnum> _$watchlistInputIdentityEnumValues =
    BuiltSet<WatchlistInputIdentityEnum>(const <WatchlistInputIdentityEnum>[
      _$watchlistInputIdentityEnum_icao24,
      _$watchlistInputIdentityEnum_registration,
      _$watchlistInputIdentityEnum_callsign,
      _$watchlistInputIdentityEnum_mmsi,
      _$watchlistInputIdentityEnum_imo,
      _$watchlistInputIdentityEnum_entity,
      _$watchlistInputIdentityEnum_custom,
      _$watchlistInputIdentityEnum_unknownDefaultOpenApi,
    ]);

const WatchlistInputNormalizeEnum _$watchlistInputNormalizeEnum_upper =
    const WatchlistInputNormalizeEnum._('upper');
const WatchlistInputNormalizeEnum _$watchlistInputNormalizeEnum_lower =
    const WatchlistInputNormalizeEnum._('lower');
const WatchlistInputNormalizeEnum _$watchlistInputNormalizeEnum_digits =
    const WatchlistInputNormalizeEnum._('digits');
const WatchlistInputNormalizeEnum _$watchlistInputNormalizeEnum_none =
    const WatchlistInputNormalizeEnum._('none');
const WatchlistInputNormalizeEnum
_$watchlistInputNormalizeEnum_unknownDefaultOpenApi =
    const WatchlistInputNormalizeEnum._('unknownDefaultOpenApi');

WatchlistInputNormalizeEnum _$watchlistInputNormalizeEnumValueOf(String name) {
  switch (name) {
    case 'upper':
      return _$watchlistInputNormalizeEnum_upper;
    case 'lower':
      return _$watchlistInputNormalizeEnum_lower;
    case 'digits':
      return _$watchlistInputNormalizeEnum_digits;
    case 'none':
      return _$watchlistInputNormalizeEnum_none;
    case 'unknownDefaultOpenApi':
      return _$watchlistInputNormalizeEnum_unknownDefaultOpenApi;
    default:
      return _$watchlistInputNormalizeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<WatchlistInputNormalizeEnum>
_$watchlistInputNormalizeEnumValues =
    BuiltSet<WatchlistInputNormalizeEnum>(const <WatchlistInputNormalizeEnum>[
      _$watchlistInputNormalizeEnum_upper,
      _$watchlistInputNormalizeEnum_lower,
      _$watchlistInputNormalizeEnum_digits,
      _$watchlistInputNormalizeEnum_none,
      _$watchlistInputNormalizeEnum_unknownDefaultOpenApi,
    ]);

Serializer<WatchlistInputIdentityEnum> _$watchlistInputIdentityEnumSerializer =
    _$WatchlistInputIdentityEnumSerializer();
Serializer<WatchlistInputNormalizeEnum>
_$watchlistInputNormalizeEnumSerializer =
    _$WatchlistInputNormalizeEnumSerializer();

class _$WatchlistInputIdentityEnumSerializer
    implements PrimitiveSerializer<WatchlistInputIdentityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'icao24': 'icao24',
    'registration': 'registration',
    'callsign': 'callsign',
    'mmsi': 'mmsi',
    'imo': 'imo',
    'entity': 'entity',
    'custom': 'custom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'icao24': 'icao24',
    'registration': 'registration',
    'callsign': 'callsign',
    'mmsi': 'mmsi',
    'imo': 'imo',
    'entity': 'entity',
    'custom': 'custom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchlistInputIdentityEnum];
  @override
  final String wireName = 'WatchlistInputIdentityEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchlistInputIdentityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchlistInputIdentityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchlistInputIdentityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WatchlistInputNormalizeEnumSerializer
    implements PrimitiveSerializer<WatchlistInputNormalizeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'upper': 'upper',
    'lower': 'lower',
    'digits': 'digits',
    'none': 'none',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'upper': 'upper',
    'lower': 'lower',
    'digits': 'digits',
    'none': 'none',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchlistInputNormalizeEnum];
  @override
  final String wireName = 'WatchlistInputNormalizeEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchlistInputNormalizeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchlistInputNormalizeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchlistInputNormalizeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WatchlistInput extends WatchlistInput {
  @override
  final String name;
  @override
  final WatchlistInputIdentityEnum identity;
  @override
  final WatchlistInputNormalizeEnum? normalize;
  @override
  final String? description;

  factory _$WatchlistInput([void Function(WatchlistInputBuilder)? updates]) =>
      (WatchlistInputBuilder()..update(updates))._build();

  _$WatchlistInput._({
    required this.name,
    required this.identity,
    this.normalize,
    this.description,
  }) : super._();
  @override
  WatchlistInput rebuild(void Function(WatchlistInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistInputBuilder toBuilder() => WatchlistInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistInput &&
        name == other.name &&
        identity == other.identity &&
        normalize == other.normalize &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, normalize.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistInput')
          ..add('name', name)
          ..add('identity', identity)
          ..add('normalize', normalize)
          ..add('description', description))
        .toString();
  }
}

class WatchlistInputBuilder
    implements Builder<WatchlistInput, WatchlistInputBuilder> {
  _$WatchlistInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WatchlistInputIdentityEnum? _identity;
  WatchlistInputIdentityEnum? get identity => _$this._identity;
  set identity(WatchlistInputIdentityEnum? identity) =>
      _$this._identity = identity;

  WatchlistInputNormalizeEnum? _normalize;
  WatchlistInputNormalizeEnum? get normalize => _$this._normalize;
  set normalize(WatchlistInputNormalizeEnum? normalize) =>
      _$this._normalize = normalize;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  WatchlistInputBuilder() {
    WatchlistInput._defaults(this);
  }

  WatchlistInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _identity = $v.identity;
      _normalize = $v.normalize;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistInput other) {
    _$v = other as _$WatchlistInput;
  }

  @override
  void update(void Function(WatchlistInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistInput build() => _build();

  _$WatchlistInput _build() {
    final _$result =
        _$v ??
        _$WatchlistInput._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'WatchlistInput',
            'name',
          ),
          identity: BuiltValueNullFieldError.checkNotNull(
            identity,
            r'WatchlistInput',
            'identity',
          ),
          normalize: normalize,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
