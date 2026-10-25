// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_member.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelEventMemberRoleEnum _$intelEventMemberRoleEnum_supporting =
    const IntelEventMemberRoleEnum._('supporting');
const IntelEventMemberRoleEnum _$intelEventMemberRoleEnum_contradicting =
    const IntelEventMemberRoleEnum._('contradicting');
const IntelEventMemberRoleEnum _$intelEventMemberRoleEnum_context =
    const IntelEventMemberRoleEnum._('context');
const IntelEventMemberRoleEnum
_$intelEventMemberRoleEnum_unknownDefaultOpenApi =
    const IntelEventMemberRoleEnum._('unknownDefaultOpenApi');

IntelEventMemberRoleEnum _$intelEventMemberRoleEnumValueOf(String name) {
  switch (name) {
    case 'supporting':
      return _$intelEventMemberRoleEnum_supporting;
    case 'contradicting':
      return _$intelEventMemberRoleEnum_contradicting;
    case 'context':
      return _$intelEventMemberRoleEnum_context;
    case 'unknownDefaultOpenApi':
      return _$intelEventMemberRoleEnum_unknownDefaultOpenApi;
    default:
      return _$intelEventMemberRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelEventMemberRoleEnum> _$intelEventMemberRoleEnumValues =
    BuiltSet<IntelEventMemberRoleEnum>(const <IntelEventMemberRoleEnum>[
      _$intelEventMemberRoleEnum_supporting,
      _$intelEventMemberRoleEnum_contradicting,
      _$intelEventMemberRoleEnum_context,
      _$intelEventMemberRoleEnum_unknownDefaultOpenApi,
    ]);

const IntelEventMemberMemberTypeEnum _$intelEventMemberMemberTypeEnum_record =
    const IntelEventMemberMemberTypeEnum._('record');
const IntelEventMemberMemberTypeEnum _$intelEventMemberMemberTypeEnum_alert =
    const IntelEventMemberMemberTypeEnum._('alert');
const IntelEventMemberMemberTypeEnum _$intelEventMemberMemberTypeEnum_anomaly =
    const IntelEventMemberMemberTypeEnum._('anomaly');
const IntelEventMemberMemberTypeEnum _$intelEventMemberMemberTypeEnum_event =
    const IntelEventMemberMemberTypeEnum._('event');
const IntelEventMemberMemberTypeEnum
_$intelEventMemberMemberTypeEnum_unknownDefaultOpenApi =
    const IntelEventMemberMemberTypeEnum._('unknownDefaultOpenApi');

IntelEventMemberMemberTypeEnum _$intelEventMemberMemberTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'record':
      return _$intelEventMemberMemberTypeEnum_record;
    case 'alert':
      return _$intelEventMemberMemberTypeEnum_alert;
    case 'anomaly':
      return _$intelEventMemberMemberTypeEnum_anomaly;
    case 'event':
      return _$intelEventMemberMemberTypeEnum_event;
    case 'unknownDefaultOpenApi':
      return _$intelEventMemberMemberTypeEnum_unknownDefaultOpenApi;
    default:
      return _$intelEventMemberMemberTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelEventMemberMemberTypeEnum>
_$intelEventMemberMemberTypeEnumValues =
    BuiltSet<IntelEventMemberMemberTypeEnum>(
      const <IntelEventMemberMemberTypeEnum>[
        _$intelEventMemberMemberTypeEnum_record,
        _$intelEventMemberMemberTypeEnum_alert,
        _$intelEventMemberMemberTypeEnum_anomaly,
        _$intelEventMemberMemberTypeEnum_event,
        _$intelEventMemberMemberTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<IntelEventMemberRoleEnum> _$intelEventMemberRoleEnumSerializer =
    _$IntelEventMemberRoleEnumSerializer();
Serializer<IntelEventMemberMemberTypeEnum>
_$intelEventMemberMemberTypeEnumSerializer =
    _$IntelEventMemberMemberTypeEnumSerializer();

class _$IntelEventMemberRoleEnumSerializer
    implements PrimitiveSerializer<IntelEventMemberRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'supporting': 'supporting',
    'contradicting': 'contradicting',
    'context': 'context',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'supporting': 'supporting',
    'contradicting': 'contradicting',
    'context': 'context',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventMemberRoleEnum];
  @override
  final String wireName = 'IntelEventMemberRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelEventMemberRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelEventMemberRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelEventMemberRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelEventMemberMemberTypeEnumSerializer
    implements PrimitiveSerializer<IntelEventMemberMemberTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'event': 'event',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'event': 'event',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventMemberMemberTypeEnum];
  @override
  final String wireName = 'IntelEventMemberMemberTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelEventMemberMemberTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelEventMemberMemberTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelEventMemberMemberTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelEventMember extends IntelEventMember {
  @override
  final String id;
  @override
  final IntelEventMemberRoleEnum role;
  @override
  final IntelEventMemberMemberTypeEnum memberType;
  @override
  final String? sourceId;
  @override
  final String? externalId;
  @override
  final int? seq;
  @override
  final int? version;
  @override
  final int? alertId;
  @override
  final int? anomalyId;
  @override
  final String? eventId;
  @override
  final String? kind;
  @override
  final DateTime? observedAt;
  @override
  final IntelEventMemberJoinReason? joinReason;
  @override
  final String? signalFamily;
  @override
  final num? weight;
  @override
  final BuiltMap<String, JsonObject?>? snapshot;
  @override
  final DateTime addedAt;
  @override
  final String addedBy;

  factory _$IntelEventMember([
    void Function(IntelEventMemberBuilder)? updates,
  ]) => (IntelEventMemberBuilder()..update(updates))._build();

  _$IntelEventMember._({
    required this.id,
    required this.role,
    required this.memberType,
    this.sourceId,
    this.externalId,
    this.seq,
    this.version,
    this.alertId,
    this.anomalyId,
    this.eventId,
    this.kind,
    this.observedAt,
    this.joinReason,
    this.signalFamily,
    this.weight,
    this.snapshot,
    required this.addedAt,
    required this.addedBy,
  }) : super._();
  @override
  IntelEventMember rebuild(void Function(IntelEventMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelEventMemberBuilder toBuilder() =>
      IntelEventMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventMember &&
        id == other.id &&
        role == other.role &&
        memberType == other.memberType &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        seq == other.seq &&
        version == other.version &&
        alertId == other.alertId &&
        anomalyId == other.anomalyId &&
        eventId == other.eventId &&
        kind == other.kind &&
        observedAt == other.observedAt &&
        joinReason == other.joinReason &&
        signalFamily == other.signalFamily &&
        weight == other.weight &&
        snapshot == other.snapshot &&
        addedAt == other.addedAt &&
        addedBy == other.addedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, memberType.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, anomalyId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, joinReason.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, snapshot.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, addedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventMember')
          ..add('id', id)
          ..add('role', role)
          ..add('memberType', memberType)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('seq', seq)
          ..add('version', version)
          ..add('alertId', alertId)
          ..add('anomalyId', anomalyId)
          ..add('eventId', eventId)
          ..add('kind', kind)
          ..add('observedAt', observedAt)
          ..add('joinReason', joinReason)
          ..add('signalFamily', signalFamily)
          ..add('weight', weight)
          ..add('snapshot', snapshot)
          ..add('addedAt', addedAt)
          ..add('addedBy', addedBy))
        .toString();
  }
}

class IntelEventMemberBuilder
    implements Builder<IntelEventMember, IntelEventMemberBuilder> {
  _$IntelEventMember? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  IntelEventMemberRoleEnum? _role;
  IntelEventMemberRoleEnum? get role => _$this._role;
  set role(IntelEventMemberRoleEnum? role) => _$this._role = role;

  IntelEventMemberMemberTypeEnum? _memberType;
  IntelEventMemberMemberTypeEnum? get memberType => _$this._memberType;
  set memberType(IntelEventMemberMemberTypeEnum? memberType) =>
      _$this._memberType = memberType;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  int? _anomalyId;
  int? get anomalyId => _$this._anomalyId;
  set anomalyId(int? anomalyId) => _$this._anomalyId = anomalyId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  IntelEventMemberJoinReasonBuilder? _joinReason;
  IntelEventMemberJoinReasonBuilder get joinReason =>
      _$this._joinReason ??= IntelEventMemberJoinReasonBuilder();
  set joinReason(IntelEventMemberJoinReasonBuilder? joinReason) =>
      _$this._joinReason = joinReason;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  MapBuilder<String, JsonObject?>? _snapshot;
  MapBuilder<String, JsonObject?> get snapshot =>
      _$this._snapshot ??= MapBuilder<String, JsonObject?>();
  set snapshot(MapBuilder<String, JsonObject?>? snapshot) =>
      _$this._snapshot = snapshot;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  String? _addedBy;
  String? get addedBy => _$this._addedBy;
  set addedBy(String? addedBy) => _$this._addedBy = addedBy;

  IntelEventMemberBuilder() {
    IntelEventMember._defaults(this);
  }

  IntelEventMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _role = $v.role;
      _memberType = $v.memberType;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _seq = $v.seq;
      _version = $v.version;
      _alertId = $v.alertId;
      _anomalyId = $v.anomalyId;
      _eventId = $v.eventId;
      _kind = $v.kind;
      _observedAt = $v.observedAt;
      _joinReason = $v.joinReason?.toBuilder();
      _signalFamily = $v.signalFamily;
      _weight = $v.weight;
      _snapshot = $v.snapshot?.toBuilder();
      _addedAt = $v.addedAt;
      _addedBy = $v.addedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventMember other) {
    _$v = other as _$IntelEventMember;
  }

  @override
  void update(void Function(IntelEventMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventMember build() => _build();

  _$IntelEventMember _build() {
    _$IntelEventMember _$result;
    try {
      _$result =
          _$v ??
          _$IntelEventMember._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'IntelEventMember',
              'id',
            ),
            role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'IntelEventMember',
              'role',
            ),
            memberType: BuiltValueNullFieldError.checkNotNull(
              memberType,
              r'IntelEventMember',
              'memberType',
            ),
            sourceId: sourceId,
            externalId: externalId,
            seq: seq,
            version: version,
            alertId: alertId,
            anomalyId: anomalyId,
            eventId: eventId,
            kind: kind,
            observedAt: observedAt,
            joinReason: _joinReason?.build(),
            signalFamily: signalFamily,
            weight: weight,
            snapshot: _snapshot?.build(),
            addedAt: BuiltValueNullFieldError.checkNotNull(
              addedAt,
              r'IntelEventMember',
              'addedAt',
            ),
            addedBy: BuiltValueNullFieldError.checkNotNull(
              addedBy,
              r'IntelEventMember',
              'addedBy',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'joinReason';
        _joinReason?.build();

        _$failedField = 'snapshot';
        _snapshot?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelEventMember',
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
