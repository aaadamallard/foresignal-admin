// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_key_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_airframe =
    const EntityKeyInputKeyTypeEnum._('airframe');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_icao24 =
    const EntityKeyInputKeyTypeEnum._('icao24');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_registration =
    const EntityKeyInputKeyTypeEnum._('registration');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_imo =
    const EntityKeyInputKeyTypeEnum._('imo');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_mmsi =
    const EntityKeyInputKeyTypeEnum._('mmsi');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_norad =
    const EntityKeyInputKeyTypeEnum._('norad');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_cospar =
    const EntityKeyInputKeyTypeEnum._('cospar');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_callsign =
    const EntityKeyInputKeyTypeEnum._('callsign');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_lei =
    const EntityKeyInputKeyTypeEnum._('lei');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_companyNumber =
    const EntityKeyInputKeyTypeEnum._('companyNumber');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_taxId =
    const EntityKeyInputKeyTypeEnum._('taxId');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_officerId =
    const EntityKeyInputKeyTypeEnum._('officerId');
const EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnum_personKey =
    const EntityKeyInputKeyTypeEnum._('personKey');

EntityKeyInputKeyTypeEnum _$entityKeyInputKeyTypeEnumValueOf(String name) {
  switch (name) {
    case 'airframe':
      return _$entityKeyInputKeyTypeEnum_airframe;
    case 'icao24':
      return _$entityKeyInputKeyTypeEnum_icao24;
    case 'registration':
      return _$entityKeyInputKeyTypeEnum_registration;
    case 'imo':
      return _$entityKeyInputKeyTypeEnum_imo;
    case 'mmsi':
      return _$entityKeyInputKeyTypeEnum_mmsi;
    case 'norad':
      return _$entityKeyInputKeyTypeEnum_norad;
    case 'cospar':
      return _$entityKeyInputKeyTypeEnum_cospar;
    case 'callsign':
      return _$entityKeyInputKeyTypeEnum_callsign;
    case 'lei':
      return _$entityKeyInputKeyTypeEnum_lei;
    case 'companyNumber':
      return _$entityKeyInputKeyTypeEnum_companyNumber;
    case 'taxId':
      return _$entityKeyInputKeyTypeEnum_taxId;
    case 'officerId':
      return _$entityKeyInputKeyTypeEnum_officerId;
    case 'personKey':
      return _$entityKeyInputKeyTypeEnum_personKey;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityKeyInputKeyTypeEnum> _$entityKeyInputKeyTypeEnumValues =
    BuiltSet<EntityKeyInputKeyTypeEnum>(const <EntityKeyInputKeyTypeEnum>[
  _$entityKeyInputKeyTypeEnum_airframe,
  _$entityKeyInputKeyTypeEnum_icao24,
  _$entityKeyInputKeyTypeEnum_registration,
  _$entityKeyInputKeyTypeEnum_imo,
  _$entityKeyInputKeyTypeEnum_mmsi,
  _$entityKeyInputKeyTypeEnum_norad,
  _$entityKeyInputKeyTypeEnum_cospar,
  _$entityKeyInputKeyTypeEnum_callsign,
  _$entityKeyInputKeyTypeEnum_lei,
  _$entityKeyInputKeyTypeEnum_companyNumber,
  _$entityKeyInputKeyTypeEnum_taxId,
  _$entityKeyInputKeyTypeEnum_officerId,
  _$entityKeyInputKeyTypeEnum_personKey,
]);

Serializer<EntityKeyInputKeyTypeEnum> _$entityKeyInputKeyTypeEnumSerializer =
    _$EntityKeyInputKeyTypeEnumSerializer();

class _$EntityKeyInputKeyTypeEnumSerializer
    implements PrimitiveSerializer<EntityKeyInputKeyTypeEnum> {
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
  final Iterable<Type> types = const <Type>[EntityKeyInputKeyTypeEnum];
  @override
  final String wireName = 'EntityKeyInputKeyTypeEnum';

  @override
  Object serialize(Serializers serializers, EntityKeyInputKeyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityKeyInputKeyTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityKeyInputKeyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityKeyInput extends EntityKeyInput {
  @override
  final EntityKeyInputKeyTypeEnum keyType;
  @override
  final String keyValue;
  @override
  final num? confidence;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;
  @override
  final bool? force;

  factory _$EntityKeyInput([void Function(EntityKeyInputBuilder)? updates]) =>
      (EntityKeyInputBuilder()..update(updates))._build();

  _$EntityKeyInput._(
      {required this.keyType,
      required this.keyValue,
      this.confidence,
      this.validFrom,
      this.validTo,
      this.force})
      : super._();
  @override
  EntityKeyInput rebuild(void Function(EntityKeyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityKeyInputBuilder toBuilder() => EntityKeyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityKeyInput &&
        keyType == other.keyType &&
        keyValue == other.keyValue &&
        confidence == other.confidence &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        force == other.force;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jc(_$hash, keyValue.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, force.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityKeyInput')
          ..add('keyType', keyType)
          ..add('keyValue', keyValue)
          ..add('confidence', confidence)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('force', force))
        .toString();
  }
}

class EntityKeyInputBuilder
    implements Builder<EntityKeyInput, EntityKeyInputBuilder> {
  _$EntityKeyInput? _$v;

  EntityKeyInputKeyTypeEnum? _keyType;
  EntityKeyInputKeyTypeEnum? get keyType => _$this._keyType;
  set keyType(EntityKeyInputKeyTypeEnum? keyType) => _$this._keyType = keyType;

  String? _keyValue;
  String? get keyValue => _$this._keyValue;
  set keyValue(String? keyValue) => _$this._keyValue = keyValue;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  bool? _force;
  bool? get force => _$this._force;
  set force(bool? force) => _$this._force = force;

  EntityKeyInputBuilder() {
    EntityKeyInput._defaults(this);
  }

  EntityKeyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyType = $v.keyType;
      _keyValue = $v.keyValue;
      _confidence = $v.confidence;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _force = $v.force;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityKeyInput other) {
    _$v = other as _$EntityKeyInput;
  }

  @override
  void update(void Function(EntityKeyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityKeyInput build() => _build();

  _$EntityKeyInput _build() {
    final _$result = _$v ??
        _$EntityKeyInput._(
          keyType: BuiltValueNullFieldError.checkNotNull(
              keyType, r'EntityKeyInput', 'keyType'),
          keyValue: BuiltValueNullFieldError.checkNotNull(
              keyValue, r'EntityKeyInput', 'keyValue'),
          confidence: confidence,
          validFrom: validFrom,
          validTo: validTo,
          force: force,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
