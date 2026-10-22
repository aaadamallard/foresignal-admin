// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_airframe =
    const EntityKeyKeyTypeEnum._('airframe');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_icao24 =
    const EntityKeyKeyTypeEnum._('icao24');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_registration =
    const EntityKeyKeyTypeEnum._('registration');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_imo =
    const EntityKeyKeyTypeEnum._('imo');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_mmsi =
    const EntityKeyKeyTypeEnum._('mmsi');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_norad =
    const EntityKeyKeyTypeEnum._('norad');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_cospar =
    const EntityKeyKeyTypeEnum._('cospar');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_callsign =
    const EntityKeyKeyTypeEnum._('callsign');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_lei =
    const EntityKeyKeyTypeEnum._('lei');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_companyNumber =
    const EntityKeyKeyTypeEnum._('companyNumber');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_taxId =
    const EntityKeyKeyTypeEnum._('taxId');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_officerId =
    const EntityKeyKeyTypeEnum._('officerId');
const EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnum_personKey =
    const EntityKeyKeyTypeEnum._('personKey');

EntityKeyKeyTypeEnum _$entityKeyKeyTypeEnumValueOf(String name) {
  switch (name) {
    case 'airframe':
      return _$entityKeyKeyTypeEnum_airframe;
    case 'icao24':
      return _$entityKeyKeyTypeEnum_icao24;
    case 'registration':
      return _$entityKeyKeyTypeEnum_registration;
    case 'imo':
      return _$entityKeyKeyTypeEnum_imo;
    case 'mmsi':
      return _$entityKeyKeyTypeEnum_mmsi;
    case 'norad':
      return _$entityKeyKeyTypeEnum_norad;
    case 'cospar':
      return _$entityKeyKeyTypeEnum_cospar;
    case 'callsign':
      return _$entityKeyKeyTypeEnum_callsign;
    case 'lei':
      return _$entityKeyKeyTypeEnum_lei;
    case 'companyNumber':
      return _$entityKeyKeyTypeEnum_companyNumber;
    case 'taxId':
      return _$entityKeyKeyTypeEnum_taxId;
    case 'officerId':
      return _$entityKeyKeyTypeEnum_officerId;
    case 'personKey':
      return _$entityKeyKeyTypeEnum_personKey;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityKeyKeyTypeEnum> _$entityKeyKeyTypeEnumValues =
    BuiltSet<EntityKeyKeyTypeEnum>(const <EntityKeyKeyTypeEnum>[
      _$entityKeyKeyTypeEnum_airframe,
      _$entityKeyKeyTypeEnum_icao24,
      _$entityKeyKeyTypeEnum_registration,
      _$entityKeyKeyTypeEnum_imo,
      _$entityKeyKeyTypeEnum_mmsi,
      _$entityKeyKeyTypeEnum_norad,
      _$entityKeyKeyTypeEnum_cospar,
      _$entityKeyKeyTypeEnum_callsign,
      _$entityKeyKeyTypeEnum_lei,
      _$entityKeyKeyTypeEnum_companyNumber,
      _$entityKeyKeyTypeEnum_taxId,
      _$entityKeyKeyTypeEnum_officerId,
      _$entityKeyKeyTypeEnum_personKey,
    ]);

const EntityKeyRoleEnum _$entityKeyRoleEnum_ANCHOR = const EntityKeyRoleEnum._(
  'ANCHOR',
);
const EntityKeyRoleEnum _$entityKeyRoleEnum_WEAK = const EntityKeyRoleEnum._(
  'WEAK',
);

EntityKeyRoleEnum _$entityKeyRoleEnumValueOf(String name) {
  switch (name) {
    case 'ANCHOR':
      return _$entityKeyRoleEnum_ANCHOR;
    case 'WEAK':
      return _$entityKeyRoleEnum_WEAK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityKeyRoleEnum> _$entityKeyRoleEnumValues =
    BuiltSet<EntityKeyRoleEnum>(const <EntityKeyRoleEnum>[
      _$entityKeyRoleEnum_ANCHOR,
      _$entityKeyRoleEnum_WEAK,
    ]);

const EntityKeyOriginEnum _$entityKeyOriginEnum_REGISTRY =
    const EntityKeyOriginEnum._('REGISTRY');
const EntityKeyOriginEnum _$entityKeyOriginEnum_CO_ASSERTED =
    const EntityKeyOriginEnum._('CO_ASSERTED');
const EntityKeyOriginEnum _$entityKeyOriginEnum_OBSERVED =
    const EntityKeyOriginEnum._('OBSERVED');
const EntityKeyOriginEnum _$entityKeyOriginEnum_OPERATOR =
    const EntityKeyOriginEnum._('OPERATOR');

EntityKeyOriginEnum _$entityKeyOriginEnumValueOf(String name) {
  switch (name) {
    case 'REGISTRY':
      return _$entityKeyOriginEnum_REGISTRY;
    case 'CO_ASSERTED':
      return _$entityKeyOriginEnum_CO_ASSERTED;
    case 'OBSERVED':
      return _$entityKeyOriginEnum_OBSERVED;
    case 'OPERATOR':
      return _$entityKeyOriginEnum_OPERATOR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityKeyOriginEnum> _$entityKeyOriginEnumValues =
    BuiltSet<EntityKeyOriginEnum>(const <EntityKeyOriginEnum>[
      _$entityKeyOriginEnum_REGISTRY,
      _$entityKeyOriginEnum_CO_ASSERTED,
      _$entityKeyOriginEnum_OBSERVED,
      _$entityKeyOriginEnum_OPERATOR,
    ]);

Serializer<EntityKeyKeyTypeEnum> _$entityKeyKeyTypeEnumSerializer =
    _$EntityKeyKeyTypeEnumSerializer();
Serializer<EntityKeyRoleEnum> _$entityKeyRoleEnumSerializer =
    _$EntityKeyRoleEnumSerializer();
Serializer<EntityKeyOriginEnum> _$entityKeyOriginEnumSerializer =
    _$EntityKeyOriginEnumSerializer();

class _$EntityKeyKeyTypeEnumSerializer
    implements PrimitiveSerializer<EntityKeyKeyTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'airframe': 'airframe',
    'icao24': 'icao24',
    'registration': 'registration',
    'imo': 'imo',
    'mmsi': 'mmsi',
    'norad': 'norad',
    'cospar': 'cospar',
    'callsign': 'callsign',
    'lei': 'lei',
    'companyNumber': 'company-number',
    'taxId': 'tax-id',
    'officerId': 'officer-id',
    'personKey': 'person-key',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'airframe': 'airframe',
    'icao24': 'icao24',
    'registration': 'registration',
    'imo': 'imo',
    'mmsi': 'mmsi',
    'norad': 'norad',
    'cospar': 'cospar',
    'callsign': 'callsign',
    'lei': 'lei',
    'company-number': 'companyNumber',
    'tax-id': 'taxId',
    'officer-id': 'officerId',
    'person-key': 'personKey',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityKeyKeyTypeEnum];
  @override
  final String wireName = 'EntityKeyKeyTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityKeyKeyTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityKeyKeyTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityKeyKeyTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityKeyRoleEnumSerializer
    implements PrimitiveSerializer<EntityKeyRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ANCHOR': 'ANCHOR',
    'WEAK': 'WEAK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ANCHOR': 'ANCHOR',
    'WEAK': 'WEAK',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityKeyRoleEnum];
  @override
  final String wireName = 'EntityKeyRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityKeyRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityKeyRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityKeyRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityKeyOriginEnumSerializer
    implements PrimitiveSerializer<EntityKeyOriginEnum> {
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
  final Iterable<Type> types = const <Type>[EntityKeyOriginEnum];
  @override
  final String wireName = 'EntityKeyOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityKeyOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityKeyOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityKeyOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityKey extends EntityKey {
  @override
  final int id;
  @override
  final String entityId;
  @override
  final EntityKeyKeyTypeEnum keyType;
  @override
  final String keyValue;
  @override
  final EntityKeyRoleEnum role;
  @override
  final num confidence;
  @override
  final EntityKeyOriginEnum origin;
  @override
  final String? originRef;
  @override
  final DateTime validFrom;
  @override
  final DateTime? validTo;
  @override
  final bool retracted;

  factory _$EntityKey([void Function(EntityKeyBuilder)? updates]) =>
      (EntityKeyBuilder()..update(updates))._build();

  _$EntityKey._({
    required this.id,
    required this.entityId,
    required this.keyType,
    required this.keyValue,
    required this.role,
    required this.confidence,
    required this.origin,
    this.originRef,
    required this.validFrom,
    this.validTo,
    required this.retracted,
  }) : super._();
  @override
  EntityKey rebuild(void Function(EntityKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityKeyBuilder toBuilder() => EntityKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityKey &&
        id == other.id &&
        entityId == other.entityId &&
        keyType == other.keyType &&
        keyValue == other.keyValue &&
        role == other.role &&
        confidence == other.confidence &&
        origin == other.origin &&
        originRef == other.originRef &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        retracted == other.retracted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jc(_$hash, keyValue.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, originRef.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, retracted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityKey')
          ..add('id', id)
          ..add('entityId', entityId)
          ..add('keyType', keyType)
          ..add('keyValue', keyValue)
          ..add('role', role)
          ..add('confidence', confidence)
          ..add('origin', origin)
          ..add('originRef', originRef)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('retracted', retracted))
        .toString();
  }
}

class EntityKeyBuilder implements Builder<EntityKey, EntityKeyBuilder> {
  _$EntityKey? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  EntityKeyKeyTypeEnum? _keyType;
  EntityKeyKeyTypeEnum? get keyType => _$this._keyType;
  set keyType(EntityKeyKeyTypeEnum? keyType) => _$this._keyType = keyType;

  String? _keyValue;
  String? get keyValue => _$this._keyValue;
  set keyValue(String? keyValue) => _$this._keyValue = keyValue;

  EntityKeyRoleEnum? _role;
  EntityKeyRoleEnum? get role => _$this._role;
  set role(EntityKeyRoleEnum? role) => _$this._role = role;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  EntityKeyOriginEnum? _origin;
  EntityKeyOriginEnum? get origin => _$this._origin;
  set origin(EntityKeyOriginEnum? origin) => _$this._origin = origin;

  String? _originRef;
  String? get originRef => _$this._originRef;
  set originRef(String? originRef) => _$this._originRef = originRef;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  bool? _retracted;
  bool? get retracted => _$this._retracted;
  set retracted(bool? retracted) => _$this._retracted = retracted;

  EntityKeyBuilder() {
    EntityKey._defaults(this);
  }

  EntityKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _entityId = $v.entityId;
      _keyType = $v.keyType;
      _keyValue = $v.keyValue;
      _role = $v.role;
      _confidence = $v.confidence;
      _origin = $v.origin;
      _originRef = $v.originRef;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _retracted = $v.retracted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityKey other) {
    _$v = other as _$EntityKey;
  }

  @override
  void update(void Function(EntityKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityKey build() => _build();

  _$EntityKey _build() {
    final _$result =
        _$v ??
        _$EntityKey._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EntityKey', 'id'),
          entityId: BuiltValueNullFieldError.checkNotNull(
            entityId,
            r'EntityKey',
            'entityId',
          ),
          keyType: BuiltValueNullFieldError.checkNotNull(
            keyType,
            r'EntityKey',
            'keyType',
          ),
          keyValue: BuiltValueNullFieldError.checkNotNull(
            keyValue,
            r'EntityKey',
            'keyValue',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'EntityKey',
            'role',
          ),
          confidence: BuiltValueNullFieldError.checkNotNull(
            confidence,
            r'EntityKey',
            'confidence',
          ),
          origin: BuiltValueNullFieldError.checkNotNull(
            origin,
            r'EntityKey',
            'origin',
          ),
          originRef: originRef,
          validFrom: BuiltValueNullFieldError.checkNotNull(
            validFrom,
            r'EntityKey',
            'validFrom',
          ),
          validTo: validTo,
          retracted: BuiltValueNullFieldError.checkNotNull(
            retracted,
            r'EntityKey',
            'retracted',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
