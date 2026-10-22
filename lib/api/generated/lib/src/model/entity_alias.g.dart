// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_alias.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityAliasAliasTypeEnum _$entityAliasAliasTypeEnum_NAME =
    const EntityAliasAliasTypeEnum._('NAME');
const EntityAliasAliasTypeEnum _$entityAliasAliasTypeEnum_FORMER_NAME =
    const EntityAliasAliasTypeEnum._('FORMER_NAME');
const EntityAliasAliasTypeEnum _$entityAliasAliasTypeEnum_OPERATOR_LABEL =
    const EntityAliasAliasTypeEnum._('OPERATOR_LABEL');

EntityAliasAliasTypeEnum _$entityAliasAliasTypeEnumValueOf(String name) {
  switch (name) {
    case 'NAME':
      return _$entityAliasAliasTypeEnum_NAME;
    case 'FORMER_NAME':
      return _$entityAliasAliasTypeEnum_FORMER_NAME;
    case 'OPERATOR_LABEL':
      return _$entityAliasAliasTypeEnum_OPERATOR_LABEL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityAliasAliasTypeEnum> _$entityAliasAliasTypeEnumValues =
    BuiltSet<EntityAliasAliasTypeEnum>(const <EntityAliasAliasTypeEnum>[
      _$entityAliasAliasTypeEnum_NAME,
      _$entityAliasAliasTypeEnum_FORMER_NAME,
      _$entityAliasAliasTypeEnum_OPERATOR_LABEL,
    ]);

const EntityAliasOriginEnum _$entityAliasOriginEnum_REGISTRY =
    const EntityAliasOriginEnum._('REGISTRY');
const EntityAliasOriginEnum _$entityAliasOriginEnum_CO_ASSERTED =
    const EntityAliasOriginEnum._('CO_ASSERTED');
const EntityAliasOriginEnum _$entityAliasOriginEnum_OBSERVED =
    const EntityAliasOriginEnum._('OBSERVED');
const EntityAliasOriginEnum _$entityAliasOriginEnum_OPERATOR =
    const EntityAliasOriginEnum._('OPERATOR');

EntityAliasOriginEnum _$entityAliasOriginEnumValueOf(String name) {
  switch (name) {
    case 'REGISTRY':
      return _$entityAliasOriginEnum_REGISTRY;
    case 'CO_ASSERTED':
      return _$entityAliasOriginEnum_CO_ASSERTED;
    case 'OBSERVED':
      return _$entityAliasOriginEnum_OBSERVED;
    case 'OPERATOR':
      return _$entityAliasOriginEnum_OPERATOR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityAliasOriginEnum> _$entityAliasOriginEnumValues =
    BuiltSet<EntityAliasOriginEnum>(const <EntityAliasOriginEnum>[
      _$entityAliasOriginEnum_REGISTRY,
      _$entityAliasOriginEnum_CO_ASSERTED,
      _$entityAliasOriginEnum_OBSERVED,
      _$entityAliasOriginEnum_OPERATOR,
    ]);

Serializer<EntityAliasAliasTypeEnum> _$entityAliasAliasTypeEnumSerializer =
    _$EntityAliasAliasTypeEnumSerializer();
Serializer<EntityAliasOriginEnum> _$entityAliasOriginEnumSerializer =
    _$EntityAliasOriginEnumSerializer();

class _$EntityAliasAliasTypeEnumSerializer
    implements PrimitiveSerializer<EntityAliasAliasTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NAME': 'NAME',
    'FORMER_NAME': 'FORMER_NAME',
    'OPERATOR_LABEL': 'OPERATOR_LABEL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NAME': 'NAME',
    'FORMER_NAME': 'FORMER_NAME',
    'OPERATOR_LABEL': 'OPERATOR_LABEL',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityAliasAliasTypeEnum];
  @override
  final String wireName = 'EntityAliasAliasTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityAliasAliasTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityAliasAliasTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityAliasAliasTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityAliasOriginEnumSerializer
    implements PrimitiveSerializer<EntityAliasOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REGISTRY': 'REGISTRY',
    'CO_ASSERTED': 'CO_ASSERTED',
    'OBSERVED': 'OBSERVED',
    'OPERATOR': 'OPERATOR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REGISTRY': 'REGISTRY',
    'CO_ASSERTED': 'CO_ASSERTED',
    'OBSERVED': 'OBSERVED',
    'OPERATOR': 'OPERATOR',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityAliasOriginEnum];
  @override
  final String wireName = 'EntityAliasOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityAliasOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityAliasOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityAliasOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityAlias extends EntityAlias {
  @override
  final int id;
  @override
  final String alias;
  @override
  final EntityAliasAliasTypeEnum aliasType;
  @override
  final DateTime validFrom;
  @override
  final DateTime? validTo;
  @override
  final EntityAliasOriginEnum origin;

  factory _$EntityAlias([void Function(EntityAliasBuilder)? updates]) =>
      (EntityAliasBuilder()..update(updates))._build();

  _$EntityAlias._({
    required this.id,
    required this.alias,
    required this.aliasType,
    required this.validFrom,
    this.validTo,
    required this.origin,
  }) : super._();
  @override
  EntityAlias rebuild(void Function(EntityAliasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityAliasBuilder toBuilder() => EntityAliasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityAlias &&
        id == other.id &&
        alias == other.alias &&
        aliasType == other.aliasType &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        origin == other.origin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, aliasType.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityAlias')
          ..add('id', id)
          ..add('alias', alias)
          ..add('aliasType', aliasType)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('origin', origin))
        .toString();
  }
}

class EntityAliasBuilder implements Builder<EntityAlias, EntityAliasBuilder> {
  _$EntityAlias? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  EntityAliasAliasTypeEnum? _aliasType;
  EntityAliasAliasTypeEnum? get aliasType => _$this._aliasType;
  set aliasType(EntityAliasAliasTypeEnum? aliasType) =>
      _$this._aliasType = aliasType;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  EntityAliasOriginEnum? _origin;
  EntityAliasOriginEnum? get origin => _$this._origin;
  set origin(EntityAliasOriginEnum? origin) => _$this._origin = origin;

  EntityAliasBuilder() {
    EntityAlias._defaults(this);
  }

  EntityAliasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _alias = $v.alias;
      _aliasType = $v.aliasType;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _origin = $v.origin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityAlias other) {
    _$v = other as _$EntityAlias;
  }

  @override
  void update(void Function(EntityAliasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityAlias build() => _build();

  _$EntityAlias _build() {
    final _$result =
        _$v ??
        _$EntityAlias._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EntityAlias', 'id'),
          alias: BuiltValueNullFieldError.checkNotNull(
            alias,
            r'EntityAlias',
            'alias',
          ),
          aliasType: BuiltValueNullFieldError.checkNotNull(
            aliasType,
            r'EntityAlias',
            'aliasType',
          ),
          validFrom: BuiltValueNullFieldError.checkNotNull(
            validFrom,
            r'EntityAlias',
            'validFrom',
          ),
          validTo: validTo,
          origin: BuiltValueNullFieldError.checkNotNull(
            origin,
            r'EntityAlias',
            'origin',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
