// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_member_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelEventMemberInputMemberTypeEnum
    _$intelEventMemberInputMemberTypeEnum_record =
    const IntelEventMemberInputMemberTypeEnum._('record');
const IntelEventMemberInputMemberTypeEnum
    _$intelEventMemberInputMemberTypeEnum_alert =
    const IntelEventMemberInputMemberTypeEnum._('alert');
const IntelEventMemberInputMemberTypeEnum
    _$intelEventMemberInputMemberTypeEnum_anomaly =
    const IntelEventMemberInputMemberTypeEnum._('anomaly');
const IntelEventMemberInputMemberTypeEnum
    _$intelEventMemberInputMemberTypeEnum_event =
    const IntelEventMemberInputMemberTypeEnum._('event');

IntelEventMemberInputMemberTypeEnum
    _$intelEventMemberInputMemberTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$intelEventMemberInputMemberTypeEnum_record;
    case 'alert':
      return _$intelEventMemberInputMemberTypeEnum_alert;
    case 'anomaly':
      return _$intelEventMemberInputMemberTypeEnum_anomaly;
    case 'event':
      return _$intelEventMemberInputMemberTypeEnum_event;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelEventMemberInputMemberTypeEnum>
    _$intelEventMemberInputMemberTypeEnumValues = BuiltSet<
        IntelEventMemberInputMemberTypeEnum>(const <IntelEventMemberInputMemberTypeEnum>[
  _$intelEventMemberInputMemberTypeEnum_record,
  _$intelEventMemberInputMemberTypeEnum_alert,
  _$intelEventMemberInputMemberTypeEnum_anomaly,
  _$intelEventMemberInputMemberTypeEnum_event,
]);

const IntelEventMemberInputRoleEnum _$intelEventMemberInputRoleEnum_supporting =
    const IntelEventMemberInputRoleEnum._('supporting');
const IntelEventMemberInputRoleEnum
    _$intelEventMemberInputRoleEnum_contradicting =
    const IntelEventMemberInputRoleEnum._('contradicting');
const IntelEventMemberInputRoleEnum _$intelEventMemberInputRoleEnum_context =
    const IntelEventMemberInputRoleEnum._('context');

IntelEventMemberInputRoleEnum _$intelEventMemberInputRoleEnumValueOf(
    String name) {
  switch (name) {
    case 'supporting':
      return _$intelEventMemberInputRoleEnum_supporting;
    case 'contradicting':
      return _$intelEventMemberInputRoleEnum_contradicting;
    case 'context':
      return _$intelEventMemberInputRoleEnum_context;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelEventMemberInputRoleEnum>
    _$intelEventMemberInputRoleEnumValues = BuiltSet<
        IntelEventMemberInputRoleEnum>(const <IntelEventMemberInputRoleEnum>[
  _$intelEventMemberInputRoleEnum_supporting,
  _$intelEventMemberInputRoleEnum_contradicting,
  _$intelEventMemberInputRoleEnum_context,
]);

Serializer<IntelEventMemberInputMemberTypeEnum>
    _$intelEventMemberInputMemberTypeEnumSerializer =
    _$IntelEventMemberInputMemberTypeEnumSerializer();
Serializer<IntelEventMemberInputRoleEnum>
    _$intelEventMemberInputRoleEnumSerializer =
    _$IntelEventMemberInputRoleEnumSerializer();

class _$IntelEventMemberInputMemberTypeEnumSerializer
    implements PrimitiveSerializer<IntelEventMemberInputMemberTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'event': 'event',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'event': 'event',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelEventMemberInputMemberTypeEnum
  ];
  @override
  final String wireName = 'IntelEventMemberInputMemberTypeEnum';

  @override
  Object serialize(
          Serializers serializers, IntelEventMemberInputMemberTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntelEventMemberInputMemberTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntelEventMemberInputMemberTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntelEventMemberInputRoleEnumSerializer
    implements PrimitiveSerializer<IntelEventMemberInputRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'supporting': 'supporting',
    'contradicting': 'contradicting',
    'context': 'context',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'supporting': 'supporting',
    'contradicting': 'contradicting',
    'context': 'context',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventMemberInputRoleEnum];
  @override
  final String wireName = 'IntelEventMemberInputRoleEnum';

  @override
  Object serialize(
          Serializers serializers, IntelEventMemberInputRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntelEventMemberInputRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntelEventMemberInputRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntelEventMemberInput extends IntelEventMemberInput {
  @override
  final IntelEventMemberInputMemberTypeEnum memberType;
  @override
  final IntelEventMemberInputRoleEnum? role;
  @override
  final String? sourceId;
  @override
  final String? externalId;
  @override
  final int? seq;
  @override
  final int? alertId;
  @override
  final int? anomalyId;
  @override
  final String? eventId;
  @override
  final String? signalFamily;
  @override
  final num? weight;

  factory _$IntelEventMemberInput(
          [void Function(IntelEventMemberInputBuilder)? updates]) =>
      (IntelEventMemberInputBuilder()..update(updates))._build();

  _$IntelEventMemberInput._(
      {required this.memberType,
      this.role,
      this.sourceId,
      this.externalId,
      this.seq,
      this.alertId,
      this.anomalyId,
      this.eventId,
      this.signalFamily,
      this.weight})
      : super._();
  @override
  IntelEventMemberInput rebuild(
          void Function(IntelEventMemberInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelEventMemberInputBuilder toBuilder() =>
      IntelEventMemberInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventMemberInput &&
        memberType == other.memberType &&
        role == other.role &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        seq == other.seq &&
        alertId == other.alertId &&
        anomalyId == other.anomalyId &&
        eventId == other.eventId &&
        signalFamily == other.signalFamily &&
        weight == other.weight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberType.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, anomalyId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventMemberInput')
          ..add('memberType', memberType)
          ..add('role', role)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('seq', seq)
          ..add('alertId', alertId)
          ..add('anomalyId', anomalyId)
          ..add('eventId', eventId)
          ..add('signalFamily', signalFamily)
          ..add('weight', weight))
        .toString();
  }
}

class IntelEventMemberInputBuilder
    implements Builder<IntelEventMemberInput, IntelEventMemberInputBuilder> {
  _$IntelEventMemberInput? _$v;

  IntelEventMemberInputMemberTypeEnum? _memberType;
  IntelEventMemberInputMemberTypeEnum? get memberType => _$this._memberType;
  set memberType(IntelEventMemberInputMemberTypeEnum? memberType) =>
      _$this._memberType = memberType;

  IntelEventMemberInputRoleEnum? _role;
  IntelEventMemberInputRoleEnum? get role => _$this._role;
  set role(IntelEventMemberInputRoleEnum? role) => _$this._role = role;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  int? _anomalyId;
  int? get anomalyId => _$this._anomalyId;
  set anomalyId(int? anomalyId) => _$this._anomalyId = anomalyId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  IntelEventMemberInputBuilder() {
    IntelEventMemberInput._defaults(this);
  }

  IntelEventMemberInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberType = $v.memberType;
      _role = $v.role;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _seq = $v.seq;
      _alertId = $v.alertId;
      _anomalyId = $v.anomalyId;
      _eventId = $v.eventId;
      _signalFamily = $v.signalFamily;
      _weight = $v.weight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventMemberInput other) {
    _$v = other as _$IntelEventMemberInput;
  }

  @override
  void update(void Function(IntelEventMemberInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventMemberInput build() => _build();

  _$IntelEventMemberInput _build() {
    final _$result = _$v ??
        _$IntelEventMemberInput._(
          memberType: BuiltValueNullFieldError.checkNotNull(
              memberType, r'IntelEventMemberInput', 'memberType'),
          role: role,
          sourceId: sourceId,
          externalId: externalId,
          seq: seq,
          alertId: alertId,
          anomalyId: anomalyId,
          eventId: eventId,
          signalFamily: signalFamily,
          weight: weight,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
