// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_airframe =
    const EntityLinkKeyTypeEnum._('airframe');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_icao24 =
    const EntityLinkKeyTypeEnum._('icao24');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_registration =
    const EntityLinkKeyTypeEnum._('registration');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_imo =
    const EntityLinkKeyTypeEnum._('imo');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_mmsi =
    const EntityLinkKeyTypeEnum._('mmsi');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_norad =
    const EntityLinkKeyTypeEnum._('norad');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_cospar =
    const EntityLinkKeyTypeEnum._('cospar');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_callsign =
    const EntityLinkKeyTypeEnum._('callsign');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_lei =
    const EntityLinkKeyTypeEnum._('lei');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_companyNumber =
    const EntityLinkKeyTypeEnum._('companyNumber');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_taxId =
    const EntityLinkKeyTypeEnum._('taxId');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_officerId =
    const EntityLinkKeyTypeEnum._('officerId');
const EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnum_personKey =
    const EntityLinkKeyTypeEnum._('personKey');

EntityLinkKeyTypeEnum _$entityLinkKeyTypeEnumValueOf(String name) {
  switch (name) {
    case 'airframe':
      return _$entityLinkKeyTypeEnum_airframe;
    case 'icao24':
      return _$entityLinkKeyTypeEnum_icao24;
    case 'registration':
      return _$entityLinkKeyTypeEnum_registration;
    case 'imo':
      return _$entityLinkKeyTypeEnum_imo;
    case 'mmsi':
      return _$entityLinkKeyTypeEnum_mmsi;
    case 'norad':
      return _$entityLinkKeyTypeEnum_norad;
    case 'cospar':
      return _$entityLinkKeyTypeEnum_cospar;
    case 'callsign':
      return _$entityLinkKeyTypeEnum_callsign;
    case 'lei':
      return _$entityLinkKeyTypeEnum_lei;
    case 'companyNumber':
      return _$entityLinkKeyTypeEnum_companyNumber;
    case 'taxId':
      return _$entityLinkKeyTypeEnum_taxId;
    case 'officerId':
      return _$entityLinkKeyTypeEnum_officerId;
    case 'personKey':
      return _$entityLinkKeyTypeEnum_personKey;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityLinkKeyTypeEnum> _$entityLinkKeyTypeEnumValues =
    BuiltSet<EntityLinkKeyTypeEnum>(const <EntityLinkKeyTypeEnum>[
      _$entityLinkKeyTypeEnum_airframe,
      _$entityLinkKeyTypeEnum_icao24,
      _$entityLinkKeyTypeEnum_registration,
      _$entityLinkKeyTypeEnum_imo,
      _$entityLinkKeyTypeEnum_mmsi,
      _$entityLinkKeyTypeEnum_norad,
      _$entityLinkKeyTypeEnum_cospar,
      _$entityLinkKeyTypeEnum_callsign,
      _$entityLinkKeyTypeEnum_lei,
      _$entityLinkKeyTypeEnum_companyNumber,
      _$entityLinkKeyTypeEnum_taxId,
      _$entityLinkKeyTypeEnum_officerId,
      _$entityLinkKeyTypeEnum_personKey,
    ]);

Serializer<EntityLinkKeyTypeEnum> _$entityLinkKeyTypeEnumSerializer =
    _$EntityLinkKeyTypeEnumSerializer();

class _$EntityLinkKeyTypeEnumSerializer
    implements PrimitiveSerializer<EntityLinkKeyTypeEnum> {
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
  final Iterable<Type> types = const <Type>[EntityLinkKeyTypeEnum];
  @override
  final String wireName = 'EntityLinkKeyTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EntityLinkKeyTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityLinkKeyTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityLinkKeyTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EntityLink extends EntityLink {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final EntityLinkKeyTypeEnum keyType;
  @override
  final String keyValue;
  @override
  final num confidence;
  @override
  final DateTime validFrom;
  @override
  final DateTime? validTo;
  @override
  final int? firstSeq;

  factory _$EntityLink([void Function(EntityLinkBuilder)? updates]) =>
      (EntityLinkBuilder()..update(updates))._build();

  _$EntityLink._({
    required this.sourceId,
    required this.externalId,
    required this.keyType,
    required this.keyValue,
    required this.confidence,
    required this.validFrom,
    this.validTo,
    this.firstSeq,
  }) : super._();
  @override
  EntityLink rebuild(void Function(EntityLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityLinkBuilder toBuilder() => EntityLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityLink &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        keyType == other.keyType &&
        keyValue == other.keyValue &&
        confidence == other.confidence &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        firstSeq == other.firstSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jc(_$hash, keyValue.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, firstSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityLink')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('keyType', keyType)
          ..add('keyValue', keyValue)
          ..add('confidence', confidence)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('firstSeq', firstSeq))
        .toString();
  }
}

class EntityLinkBuilder implements Builder<EntityLink, EntityLinkBuilder> {
  _$EntityLink? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  EntityLinkKeyTypeEnum? _keyType;
  EntityLinkKeyTypeEnum? get keyType => _$this._keyType;
  set keyType(EntityLinkKeyTypeEnum? keyType) => _$this._keyType = keyType;

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

  int? _firstSeq;
  int? get firstSeq => _$this._firstSeq;
  set firstSeq(int? firstSeq) => _$this._firstSeq = firstSeq;

  EntityLinkBuilder() {
    EntityLink._defaults(this);
  }

  EntityLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _keyType = $v.keyType;
      _keyValue = $v.keyValue;
      _confidence = $v.confidence;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _firstSeq = $v.firstSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityLink other) {
    _$v = other as _$EntityLink;
  }

  @override
  void update(void Function(EntityLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityLink build() => _build();

  _$EntityLink _build() {
    final _$result =
        _$v ??
        _$EntityLink._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'EntityLink',
            'sourceId',
          ),
          externalId: BuiltValueNullFieldError.checkNotNull(
            externalId,
            r'EntityLink',
            'externalId',
          ),
          keyType: BuiltValueNullFieldError.checkNotNull(
            keyType,
            r'EntityLink',
            'keyType',
          ),
          keyValue: BuiltValueNullFieldError.checkNotNull(
            keyValue,
            r'EntityLink',
            'keyValue',
          ),
          confidence: BuiltValueNullFieldError.checkNotNull(
            confidence,
            r'EntityLink',
            'confidence',
          ),
          validFrom: BuiltValueNullFieldError.checkNotNull(
            validFrom,
            r'EntityLink',
            'validFrom',
          ),
          validTo: validTo,
          firstSeq: firstSeq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
