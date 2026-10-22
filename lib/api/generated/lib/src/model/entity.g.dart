// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityTypeEnum _$entityTypeEnum_aircraft = const EntityTypeEnum._(
  'aircraft',
);
const EntityTypeEnum _$entityTypeEnum_vessel = const EntityTypeEnum._('vessel');
const EntityTypeEnum _$entityTypeEnum_satellite = const EntityTypeEnum._(
  'satellite',
);
const EntityTypeEnum _$entityTypeEnum_station = const EntityTypeEnum._(
  'station',
);
const EntityTypeEnum _$entityTypeEnum_person = const EntityTypeEnum._('person');
const EntityTypeEnum _$entityTypeEnum_organization = const EntityTypeEnum._(
  'organization',
);

EntityTypeEnum _$entityTypeEnumValueOf(String name) {
  switch (name) {
    case 'aircraft':
      return _$entityTypeEnum_aircraft;
    case 'vessel':
      return _$entityTypeEnum_vessel;
    case 'satellite':
      return _$entityTypeEnum_satellite;
    case 'station':
      return _$entityTypeEnum_station;
    case 'person':
      return _$entityTypeEnum_person;
    case 'organization':
      return _$entityTypeEnum_organization;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityTypeEnum> _$entityTypeEnumValues =
    BuiltSet<EntityTypeEnum>(const <EntityTypeEnum>[
      _$entityTypeEnum_aircraft,
      _$entityTypeEnum_vessel,
      _$entityTypeEnum_satellite,
      _$entityTypeEnum_station,
      _$entityTypeEnum_person,
      _$entityTypeEnum_organization,
    ]);

const EntityStatusEnum _$entityStatusEnum_ACTIVE = const EntityStatusEnum._(
  'ACTIVE',
);
const EntityStatusEnum _$entityStatusEnum_MERGED = const EntityStatusEnum._(
  'MERGED',
);

EntityStatusEnum _$entityStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$entityStatusEnum_ACTIVE;
    case 'MERGED':
      return _$entityStatusEnum_MERGED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityStatusEnum> _$entityStatusEnumValues =
    BuiltSet<EntityStatusEnum>(const <EntityStatusEnum>[
      _$entityStatusEnum_ACTIVE,
      _$entityStatusEnum_MERGED,
    ]);

Serializer<EntityTypeEnum> _$entityTypeEnumSerializer =
    _$EntityTypeEnumSerializer();
Serializer<EntityStatusEnum> _$entityStatusEnumSerializer =
    _$EntityStatusEnumSerializer();

class _$EntityTypeEnumSerializer
    implements PrimitiveSerializer<EntityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'aircraft': 'aircraft',
    'vessel': 'vessel',
    'satellite': 'satellite',
    'station': 'station',
    'person': 'person',
    'organization': 'organization',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'aircraft': 'aircraft',
    'vessel': 'vessel',
    'satellite': 'satellite',
    'station': 'station',
    'person': 'person',
    'organization': 'organization',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityTypeEnum];
  @override
  final String wireName = 'EntityTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityStatusEnumSerializer
    implements PrimitiveSerializer<EntityStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'MERGED': 'MERGED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'MERGED': 'MERGED',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityStatusEnum];
  @override
  final String wireName = 'EntityStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Entity extends Entity {
  @override
  final String id;
  @override
  final String? requestedId;
  @override
  final EntityTypeEnum type;
  @override
  final String? displayName;
  @override
  final BuiltMap<String, JsonObject?>? attributes;
  @override
  final bool provisional;
  @override
  final EntityStatusEnum status;
  @override
  final String? mergedInto;
  @override
  final BuiltList<EntityKey>? keys;
  @override
  final BuiltList<EntityAlias>? aliases;
  @override
  final BuiltMap<String, int>? openLinkCounts;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Entity([void Function(EntityBuilder)? updates]) =>
      (EntityBuilder()..update(updates))._build();

  _$Entity._({
    required this.id,
    this.requestedId,
    required this.type,
    this.displayName,
    this.attributes,
    required this.provisional,
    required this.status,
    this.mergedInto,
    this.keys,
    this.aliases,
    this.openLinkCounts,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  Entity rebuild(void Function(EntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityBuilder toBuilder() => EntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Entity &&
        id == other.id &&
        requestedId == other.requestedId &&
        type == other.type &&
        displayName == other.displayName &&
        attributes == other.attributes &&
        provisional == other.provisional &&
        status == other.status &&
        mergedInto == other.mergedInto &&
        keys == other.keys &&
        aliases == other.aliases &&
        openLinkCounts == other.openLinkCounts &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, requestedId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, provisional.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jc(_$hash, aliases.hashCode);
    _$hash = $jc(_$hash, openLinkCounts.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Entity')
          ..add('id', id)
          ..add('requestedId', requestedId)
          ..add('type', type)
          ..add('displayName', displayName)
          ..add('attributes', attributes)
          ..add('provisional', provisional)
          ..add('status', status)
          ..add('mergedInto', mergedInto)
          ..add('keys', keys)
          ..add('aliases', aliases)
          ..add('openLinkCounts', openLinkCounts)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EntityBuilder implements Builder<Entity, EntityBuilder> {
  _$Entity? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _requestedId;
  String? get requestedId => _$this._requestedId;
  set requestedId(String? requestedId) => _$this._requestedId = requestedId;

  EntityTypeEnum? _type;
  EntityTypeEnum? get type => _$this._type;
  set type(EntityTypeEnum? type) => _$this._type = type;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  MapBuilder<String, JsonObject?>? _attributes;
  MapBuilder<String, JsonObject?> get attributes =>
      _$this._attributes ??= MapBuilder<String, JsonObject?>();
  set attributes(MapBuilder<String, JsonObject?>? attributes) =>
      _$this._attributes = attributes;

  bool? _provisional;
  bool? get provisional => _$this._provisional;
  set provisional(bool? provisional) => _$this._provisional = provisional;

  EntityStatusEnum? _status;
  EntityStatusEnum? get status => _$this._status;
  set status(EntityStatusEnum? status) => _$this._status = status;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  ListBuilder<EntityKey>? _keys;
  ListBuilder<EntityKey> get keys => _$this._keys ??= ListBuilder<EntityKey>();
  set keys(ListBuilder<EntityKey>? keys) => _$this._keys = keys;

  ListBuilder<EntityAlias>? _aliases;
  ListBuilder<EntityAlias> get aliases =>
      _$this._aliases ??= ListBuilder<EntityAlias>();
  set aliases(ListBuilder<EntityAlias>? aliases) => _$this._aliases = aliases;

  MapBuilder<String, int>? _openLinkCounts;
  MapBuilder<String, int> get openLinkCounts =>
      _$this._openLinkCounts ??= MapBuilder<String, int>();
  set openLinkCounts(MapBuilder<String, int>? openLinkCounts) =>
      _$this._openLinkCounts = openLinkCounts;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  EntityBuilder() {
    Entity._defaults(this);
  }

  EntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _requestedId = $v.requestedId;
      _type = $v.type;
      _displayName = $v.displayName;
      _attributes = $v.attributes?.toBuilder();
      _provisional = $v.provisional;
      _status = $v.status;
      _mergedInto = $v.mergedInto;
      _keys = $v.keys?.toBuilder();
      _aliases = $v.aliases?.toBuilder();
      _openLinkCounts = $v.openLinkCounts?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Entity other) {
    _$v = other as _$Entity;
  }

  @override
  void update(void Function(EntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Entity build() => _build();

  _$Entity _build() {
    _$Entity _$result;
    try {
      _$result =
          _$v ??
          _$Entity._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Entity', 'id'),
            requestedId: requestedId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Entity',
              'type',
            ),
            displayName: displayName,
            attributes: _attributes?.build(),
            provisional: BuiltValueNullFieldError.checkNotNull(
              provisional,
              r'Entity',
              'provisional',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Entity',
              'status',
            ),
            mergedInto: mergedInto,
            keys: _keys?.build(),
            aliases: _aliases?.build(),
            openLinkCounts: _openLinkCounts?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Entity',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Entity',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();

        _$failedField = 'keys';
        _keys?.build();
        _$failedField = 'aliases';
        _aliases?.build();
        _$failedField = 'openLinkCounts';
        _openLinkCounts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Entity',
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
