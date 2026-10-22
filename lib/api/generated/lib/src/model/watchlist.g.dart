// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WatchlistIdentityEnum _$watchlistIdentityEnum_icao24 =
    const WatchlistIdentityEnum._('icao24');
const WatchlistIdentityEnum _$watchlistIdentityEnum_registration =
    const WatchlistIdentityEnum._('registration');
const WatchlistIdentityEnum _$watchlistIdentityEnum_callsign =
    const WatchlistIdentityEnum._('callsign');
const WatchlistIdentityEnum _$watchlistIdentityEnum_mmsi =
    const WatchlistIdentityEnum._('mmsi');
const WatchlistIdentityEnum _$watchlistIdentityEnum_imo =
    const WatchlistIdentityEnum._('imo');
const WatchlistIdentityEnum _$watchlistIdentityEnum_entity =
    const WatchlistIdentityEnum._('entity');
const WatchlistIdentityEnum _$watchlistIdentityEnum_custom =
    const WatchlistIdentityEnum._('custom');

WatchlistIdentityEnum _$watchlistIdentityEnumValueOf(String name) {
  switch (name) {
    case 'icao24':
      return _$watchlistIdentityEnum_icao24;
    case 'registration':
      return _$watchlistIdentityEnum_registration;
    case 'callsign':
      return _$watchlistIdentityEnum_callsign;
    case 'mmsi':
      return _$watchlistIdentityEnum_mmsi;
    case 'imo':
      return _$watchlistIdentityEnum_imo;
    case 'entity':
      return _$watchlistIdentityEnum_entity;
    case 'custom':
      return _$watchlistIdentityEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WatchlistIdentityEnum> _$watchlistIdentityEnumValues =
    BuiltSet<WatchlistIdentityEnum>(const <WatchlistIdentityEnum>[
      _$watchlistIdentityEnum_icao24,
      _$watchlistIdentityEnum_registration,
      _$watchlistIdentityEnum_callsign,
      _$watchlistIdentityEnum_mmsi,
      _$watchlistIdentityEnum_imo,
      _$watchlistIdentityEnum_entity,
      _$watchlistIdentityEnum_custom,
    ]);

const WatchlistNormalizeEnum _$watchlistNormalizeEnum_upper =
    const WatchlistNormalizeEnum._('upper');
const WatchlistNormalizeEnum _$watchlistNormalizeEnum_lower =
    const WatchlistNormalizeEnum._('lower');
const WatchlistNormalizeEnum _$watchlistNormalizeEnum_digits =
    const WatchlistNormalizeEnum._('digits');
const WatchlistNormalizeEnum _$watchlistNormalizeEnum_none =
    const WatchlistNormalizeEnum._('none');

WatchlistNormalizeEnum _$watchlistNormalizeEnumValueOf(String name) {
  switch (name) {
    case 'upper':
      return _$watchlistNormalizeEnum_upper;
    case 'lower':
      return _$watchlistNormalizeEnum_lower;
    case 'digits':
      return _$watchlistNormalizeEnum_digits;
    case 'none':
      return _$watchlistNormalizeEnum_none;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WatchlistNormalizeEnum> _$watchlistNormalizeEnumValues =
    BuiltSet<WatchlistNormalizeEnum>(const <WatchlistNormalizeEnum>[
      _$watchlistNormalizeEnum_upper,
      _$watchlistNormalizeEnum_lower,
      _$watchlistNormalizeEnum_digits,
      _$watchlistNormalizeEnum_none,
    ]);

Serializer<WatchlistIdentityEnum> _$watchlistIdentityEnumSerializer =
    _$WatchlistIdentityEnumSerializer();
Serializer<WatchlistNormalizeEnum> _$watchlistNormalizeEnumSerializer =
    _$WatchlistNormalizeEnumSerializer();

class _$WatchlistIdentityEnumSerializer
    implements PrimitiveSerializer<WatchlistIdentityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'icao24': 'icao24',
    'registration': 'registration',
    'callsign': 'callsign',
    'mmsi': 'mmsi',
    'imo': 'imo',
    'entity': 'entity',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'icao24': 'icao24',
    'registration': 'registration',
    'callsign': 'callsign',
    'mmsi': 'mmsi',
    'imo': 'imo',
    'entity': 'entity',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchlistIdentityEnum];
  @override
  final String wireName = 'WatchlistIdentityEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchlistIdentityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchlistIdentityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchlistIdentityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WatchlistNormalizeEnumSerializer
    implements PrimitiveSerializer<WatchlistNormalizeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'upper': 'upper',
    'lower': 'lower',
    'digits': 'digits',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'upper': 'upper',
    'lower': 'lower',
    'digits': 'digits',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchlistNormalizeEnum];
  @override
  final String wireName = 'WatchlistNormalizeEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchlistNormalizeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchlistNormalizeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchlistNormalizeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Watchlist extends Watchlist {
  @override
  final String name;
  @override
  final WatchlistIdentityEnum identity;
  @override
  final WatchlistNormalizeEnum? normalize;
  @override
  final String? description;
  @override
  final String id;
  @override
  final int itemCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Watchlist([void Function(WatchlistBuilder)? updates]) =>
      (WatchlistBuilder()..update(updates))._build();

  _$Watchlist._({
    required this.name,
    required this.identity,
    this.normalize,
    this.description,
    required this.id,
    required this.itemCount,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  Watchlist rebuild(void Function(WatchlistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistBuilder toBuilder() => WatchlistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Watchlist &&
        name == other.name &&
        identity == other.identity &&
        normalize == other.normalize &&
        description == other.description &&
        id == other.id &&
        itemCount == other.itemCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, normalize.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Watchlist')
          ..add('name', name)
          ..add('identity', identity)
          ..add('normalize', normalize)
          ..add('description', description)
          ..add('id', id)
          ..add('itemCount', itemCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class WatchlistBuilder implements Builder<Watchlist, WatchlistBuilder> {
  _$Watchlist? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WatchlistIdentityEnum? _identity;
  WatchlistIdentityEnum? get identity => _$this._identity;
  set identity(WatchlistIdentityEnum? identity) => _$this._identity = identity;

  WatchlistNormalizeEnum? _normalize;
  WatchlistNormalizeEnum? get normalize => _$this._normalize;
  set normalize(WatchlistNormalizeEnum? normalize) =>
      _$this._normalize = normalize;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  WatchlistBuilder() {
    Watchlist._defaults(this);
  }

  WatchlistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _identity = $v.identity;
      _normalize = $v.normalize;
      _description = $v.description;
      _id = $v.id;
      _itemCount = $v.itemCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Watchlist other) {
    _$v = other as _$Watchlist;
  }

  @override
  void update(void Function(WatchlistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Watchlist build() => _build();

  _$Watchlist _build() {
    final _$result =
        _$v ??
        _$Watchlist._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'Watchlist',
            'name',
          ),
          identity: BuiltValueNullFieldError.checkNotNull(
            identity,
            r'Watchlist',
            'identity',
          ),
          normalize: normalize,
          description: description,
          id: BuiltValueNullFieldError.checkNotNull(id, r'Watchlist', 'id'),
          itemCount: BuiltValueNullFieldError.checkNotNull(
            itemCount,
            r'Watchlist',
            'itemCount',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'Watchlist',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'Watchlist',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
