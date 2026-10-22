// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_infrastructure_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OsmInfrastructurePayloadOsmTypeEnum
_$osmInfrastructurePayloadOsmTypeEnum_node =
    const OsmInfrastructurePayloadOsmTypeEnum._('node');
const OsmInfrastructurePayloadOsmTypeEnum
_$osmInfrastructurePayloadOsmTypeEnum_way =
    const OsmInfrastructurePayloadOsmTypeEnum._('way');
const OsmInfrastructurePayloadOsmTypeEnum
_$osmInfrastructurePayloadOsmTypeEnum_relation =
    const OsmInfrastructurePayloadOsmTypeEnum._('relation');

OsmInfrastructurePayloadOsmTypeEnum
_$osmInfrastructurePayloadOsmTypeEnumValueOf(String name) {
  switch (name) {
    case 'node':
      return _$osmInfrastructurePayloadOsmTypeEnum_node;
    case 'way':
      return _$osmInfrastructurePayloadOsmTypeEnum_way;
    case 'relation':
      return _$osmInfrastructurePayloadOsmTypeEnum_relation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OsmInfrastructurePayloadOsmTypeEnum>
_$osmInfrastructurePayloadOsmTypeEnumValues =
    BuiltSet<OsmInfrastructurePayloadOsmTypeEnum>(
      const <OsmInfrastructurePayloadOsmTypeEnum>[
        _$osmInfrastructurePayloadOsmTypeEnum_node,
        _$osmInfrastructurePayloadOsmTypeEnum_way,
        _$osmInfrastructurePayloadOsmTypeEnum_relation,
      ],
    );

Serializer<OsmInfrastructurePayloadOsmTypeEnum>
_$osmInfrastructurePayloadOsmTypeEnumSerializer =
    _$OsmInfrastructurePayloadOsmTypeEnumSerializer();

class _$OsmInfrastructurePayloadOsmTypeEnumSerializer
    implements PrimitiveSerializer<OsmInfrastructurePayloadOsmTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'node': 'node',
    'way': 'way',
    'relation': 'relation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'node': 'node',
    'way': 'way',
    'relation': 'relation',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OsmInfrastructurePayloadOsmTypeEnum,
  ];
  @override
  final String wireName = 'OsmInfrastructurePayloadOsmTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OsmInfrastructurePayloadOsmTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OsmInfrastructurePayloadOsmTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OsmInfrastructurePayloadOsmTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OsmInfrastructurePayload extends OsmInfrastructurePayload {
  @override
  final String? name;
  @override
  final String? operator_;
  @override
  final num? voltageKv;
  @override
  final num? capacityMw;
  @override
  final int? beds;
  @override
  final String? emergency;
  @override
  final String? iata;
  @override
  final String? icao;
  @override
  final String? ref;
  @override
  final OsmInfrastructurePayloadOsmTypeEnum? osmType;
  @override
  final int? osmVersion;

  factory _$OsmInfrastructurePayload([
    void Function(OsmInfrastructurePayloadBuilder)? updates,
  ]) => (OsmInfrastructurePayloadBuilder()..update(updates))._build();

  _$OsmInfrastructurePayload._({
    this.name,
    this.operator_,
    this.voltageKv,
    this.capacityMw,
    this.beds,
    this.emergency,
    this.iata,
    this.icao,
    this.ref,
    this.osmType,
    this.osmVersion,
  }) : super._();
  @override
  OsmInfrastructurePayload rebuild(
    void Function(OsmInfrastructurePayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OsmInfrastructurePayloadBuilder toBuilder() =>
      OsmInfrastructurePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OsmInfrastructurePayload &&
        name == other.name &&
        operator_ == other.operator_ &&
        voltageKv == other.voltageKv &&
        capacityMw == other.capacityMw &&
        beds == other.beds &&
        emergency == other.emergency &&
        iata == other.iata &&
        icao == other.icao &&
        ref == other.ref &&
        osmType == other.osmType &&
        osmVersion == other.osmVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, voltageKv.hashCode);
    _$hash = $jc(_$hash, capacityMw.hashCode);
    _$hash = $jc(_$hash, beds.hashCode);
    _$hash = $jc(_$hash, emergency.hashCode);
    _$hash = $jc(_$hash, iata.hashCode);
    _$hash = $jc(_$hash, icao.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, osmType.hashCode);
    _$hash = $jc(_$hash, osmVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OsmInfrastructurePayload')
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('voltageKv', voltageKv)
          ..add('capacityMw', capacityMw)
          ..add('beds', beds)
          ..add('emergency', emergency)
          ..add('iata', iata)
          ..add('icao', icao)
          ..add('ref', ref)
          ..add('osmType', osmType)
          ..add('osmVersion', osmVersion))
        .toString();
  }
}

class OsmInfrastructurePayloadBuilder
    implements
        Builder<OsmInfrastructurePayload, OsmInfrastructurePayloadBuilder> {
  _$OsmInfrastructurePayload? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  num? _voltageKv;
  num? get voltageKv => _$this._voltageKv;
  set voltageKv(num? voltageKv) => _$this._voltageKv = voltageKv;

  num? _capacityMw;
  num? get capacityMw => _$this._capacityMw;
  set capacityMw(num? capacityMw) => _$this._capacityMw = capacityMw;

  int? _beds;
  int? get beds => _$this._beds;
  set beds(int? beds) => _$this._beds = beds;

  String? _emergency;
  String? get emergency => _$this._emergency;
  set emergency(String? emergency) => _$this._emergency = emergency;

  String? _iata;
  String? get iata => _$this._iata;
  set iata(String? iata) => _$this._iata = iata;

  String? _icao;
  String? get icao => _$this._icao;
  set icao(String? icao) => _$this._icao = icao;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  OsmInfrastructurePayloadOsmTypeEnum? _osmType;
  OsmInfrastructurePayloadOsmTypeEnum? get osmType => _$this._osmType;
  set osmType(OsmInfrastructurePayloadOsmTypeEnum? osmType) =>
      _$this._osmType = osmType;

  int? _osmVersion;
  int? get osmVersion => _$this._osmVersion;
  set osmVersion(int? osmVersion) => _$this._osmVersion = osmVersion;

  OsmInfrastructurePayloadBuilder() {
    OsmInfrastructurePayload._defaults(this);
  }

  OsmInfrastructurePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _operator_ = $v.operator_;
      _voltageKv = $v.voltageKv;
      _capacityMw = $v.capacityMw;
      _beds = $v.beds;
      _emergency = $v.emergency;
      _iata = $v.iata;
      _icao = $v.icao;
      _ref = $v.ref;
      _osmType = $v.osmType;
      _osmVersion = $v.osmVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OsmInfrastructurePayload other) {
    _$v = other as _$OsmInfrastructurePayload;
  }

  @override
  void update(void Function(OsmInfrastructurePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OsmInfrastructurePayload build() => _build();

  _$OsmInfrastructurePayload _build() {
    final _$result =
        _$v ??
        _$OsmInfrastructurePayload._(
          name: name,
          operator_: operator_,
          voltageKv: voltageKv,
          capacityMw: capacityMw,
          beds: beds,
          emergency: emergency,
          iata: iata,
          icao: icao,
          ref: ref,
          osmType: osmType,
          osmVersion: osmVersion,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
