// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_member.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationMemberMemberTypeEnum _$situationMemberMemberTypeEnum_intelEvent =
    const SituationMemberMemberTypeEnum._('intelEvent');
const SituationMemberMemberTypeEnum _$situationMemberMemberTypeEnum_finding =
    const SituationMemberMemberTypeEnum._('finding');
const SituationMemberMemberTypeEnum _$situationMemberMemberTypeEnum_alert =
    const SituationMemberMemberTypeEnum._('alert');
const SituationMemberMemberTypeEnum _$situationMemberMemberTypeEnum_anomaly =
    const SituationMemberMemberTypeEnum._('anomaly');
const SituationMemberMemberTypeEnum _$situationMemberMemberTypeEnum_record =
    const SituationMemberMemberTypeEnum._('record');
const SituationMemberMemberTypeEnum
_$situationMemberMemberTypeEnum_investigation =
    const SituationMemberMemberTypeEnum._('investigation');

SituationMemberMemberTypeEnum _$situationMemberMemberTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'intelEvent':
      return _$situationMemberMemberTypeEnum_intelEvent;
    case 'finding':
      return _$situationMemberMemberTypeEnum_finding;
    case 'alert':
      return _$situationMemberMemberTypeEnum_alert;
    case 'anomaly':
      return _$situationMemberMemberTypeEnum_anomaly;
    case 'record':
      return _$situationMemberMemberTypeEnum_record;
    case 'investigation':
      return _$situationMemberMemberTypeEnum_investigation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationMemberMemberTypeEnum>
_$situationMemberMemberTypeEnumValues = BuiltSet<SituationMemberMemberTypeEnum>(
  const <SituationMemberMemberTypeEnum>[
    _$situationMemberMemberTypeEnum_intelEvent,
    _$situationMemberMemberTypeEnum_finding,
    _$situationMemberMemberTypeEnum_alert,
    _$situationMemberMemberTypeEnum_anomaly,
    _$situationMemberMemberTypeEnum_record,
    _$situationMemberMemberTypeEnum_investigation,
  ],
);

const SituationMemberRoleEnum _$situationMemberRoleEnum_core =
    const SituationMemberRoleEnum._('core');
const SituationMemberRoleEnum _$situationMemberRoleEnum_context =
    const SituationMemberRoleEnum._('context');

SituationMemberRoleEnum _$situationMemberRoleEnumValueOf(String name) {
  switch (name) {
    case 'core':
      return _$situationMemberRoleEnum_core;
    case 'context':
      return _$situationMemberRoleEnum_context;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationMemberRoleEnum> _$situationMemberRoleEnumValues =
    BuiltSet<SituationMemberRoleEnum>(const <SituationMemberRoleEnum>[
      _$situationMemberRoleEnum_core,
      _$situationMemberRoleEnum_context,
    ]);

Serializer<SituationMemberMemberTypeEnum>
_$situationMemberMemberTypeEnumSerializer =
    _$SituationMemberMemberTypeEnumSerializer();
Serializer<SituationMemberRoleEnum> _$situationMemberRoleEnumSerializer =
    _$SituationMemberRoleEnumSerializer();

class _$SituationMemberMemberTypeEnumSerializer
    implements PrimitiveSerializer<SituationMemberMemberTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'intelEvent': 'intel_event',
    'finding': 'finding',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'record': 'record',
    'investigation': 'investigation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'intel_event': 'intelEvent',
    'finding': 'finding',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'record': 'record',
    'investigation': 'investigation',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationMemberMemberTypeEnum];
  @override
  final String wireName = 'SituationMemberMemberTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationMemberMemberTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationMemberMemberTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationMemberMemberTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationMemberRoleEnumSerializer
    implements PrimitiveSerializer<SituationMemberRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'core': 'core',
    'context': 'context',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'core': 'core',
    'context': 'context',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationMemberRoleEnum];
  @override
  final String wireName = 'SituationMemberRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationMemberRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationMemberRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationMemberRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationMember extends SituationMember {
  @override
  final String id;
  @override
  final String situationId;
  @override
  final SituationMemberMemberTypeEnum memberType;
  @override
  final String ref;
  @override
  final String objectRef;
  @override
  final int? seq;
  @override
  final int? version;
  @override
  final String? kind;
  @override
  final String? signalFamily;
  @override
  final String? title;
  @override
  final String? severity;
  @override
  final DateTime? observedAt;
  @override
  final SituationMemberRoleEnum role;
  @override
  final SituationJoinReason? joinReason;
  @override
  final String corroboration;
  @override
  final DateTime addedAt;
  @override
  final String addedBy;

  factory _$SituationMember([void Function(SituationMemberBuilder)? updates]) =>
      (SituationMemberBuilder()..update(updates))._build();

  _$SituationMember._({
    required this.id,
    required this.situationId,
    required this.memberType,
    required this.ref,
    required this.objectRef,
    this.seq,
    this.version,
    this.kind,
    this.signalFamily,
    this.title,
    this.severity,
    this.observedAt,
    required this.role,
    this.joinReason,
    required this.corroboration,
    required this.addedAt,
    required this.addedBy,
  }) : super._();
  @override
  SituationMember rebuild(void Function(SituationMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationMemberBuilder toBuilder() => SituationMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationMember &&
        id == other.id &&
        situationId == other.situationId &&
        memberType == other.memberType &&
        ref == other.ref &&
        objectRef == other.objectRef &&
        seq == other.seq &&
        version == other.version &&
        kind == other.kind &&
        signalFamily == other.signalFamily &&
        title == other.title &&
        severity == other.severity &&
        observedAt == other.observedAt &&
        role == other.role &&
        joinReason == other.joinReason &&
        corroboration == other.corroboration &&
        addedAt == other.addedAt &&
        addedBy == other.addedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, memberType.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, objectRef.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, joinReason.hashCode);
    _$hash = $jc(_$hash, corroboration.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, addedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationMember')
          ..add('id', id)
          ..add('situationId', situationId)
          ..add('memberType', memberType)
          ..add('ref', ref)
          ..add('objectRef', objectRef)
          ..add('seq', seq)
          ..add('version', version)
          ..add('kind', kind)
          ..add('signalFamily', signalFamily)
          ..add('title', title)
          ..add('severity', severity)
          ..add('observedAt', observedAt)
          ..add('role', role)
          ..add('joinReason', joinReason)
          ..add('corroboration', corroboration)
          ..add('addedAt', addedAt)
          ..add('addedBy', addedBy))
        .toString();
  }
}

class SituationMemberBuilder
    implements Builder<SituationMember, SituationMemberBuilder> {
  _$SituationMember? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  SituationMemberMemberTypeEnum? _memberType;
  SituationMemberMemberTypeEnum? get memberType => _$this._memberType;
  set memberType(SituationMemberMemberTypeEnum? memberType) =>
      _$this._memberType = memberType;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _objectRef;
  String? get objectRef => _$this._objectRef;
  set objectRef(String? objectRef) => _$this._objectRef = objectRef;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  SituationMemberRoleEnum? _role;
  SituationMemberRoleEnum? get role => _$this._role;
  set role(SituationMemberRoleEnum? role) => _$this._role = role;

  SituationJoinReasonBuilder? _joinReason;
  SituationJoinReasonBuilder get joinReason =>
      _$this._joinReason ??= SituationJoinReasonBuilder();
  set joinReason(SituationJoinReasonBuilder? joinReason) =>
      _$this._joinReason = joinReason;

  String? _corroboration;
  String? get corroboration => _$this._corroboration;
  set corroboration(String? corroboration) =>
      _$this._corroboration = corroboration;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  String? _addedBy;
  String? get addedBy => _$this._addedBy;
  set addedBy(String? addedBy) => _$this._addedBy = addedBy;

  SituationMemberBuilder() {
    SituationMember._defaults(this);
  }

  SituationMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _situationId = $v.situationId;
      _memberType = $v.memberType;
      _ref = $v.ref;
      _objectRef = $v.objectRef;
      _seq = $v.seq;
      _version = $v.version;
      _kind = $v.kind;
      _signalFamily = $v.signalFamily;
      _title = $v.title;
      _severity = $v.severity;
      _observedAt = $v.observedAt;
      _role = $v.role;
      _joinReason = $v.joinReason?.toBuilder();
      _corroboration = $v.corroboration;
      _addedAt = $v.addedAt;
      _addedBy = $v.addedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationMember other) {
    _$v = other as _$SituationMember;
  }

  @override
  void update(void Function(SituationMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationMember build() => _build();

  _$SituationMember _build() {
    _$SituationMember _$result;
    try {
      _$result =
          _$v ??
          _$SituationMember._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'SituationMember',
              'id',
            ),
            situationId: BuiltValueNullFieldError.checkNotNull(
              situationId,
              r'SituationMember',
              'situationId',
            ),
            memberType: BuiltValueNullFieldError.checkNotNull(
              memberType,
              r'SituationMember',
              'memberType',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'SituationMember',
              'ref',
            ),
            objectRef: BuiltValueNullFieldError.checkNotNull(
              objectRef,
              r'SituationMember',
              'objectRef',
            ),
            seq: seq,
            version: version,
            kind: kind,
            signalFamily: signalFamily,
            title: title,
            severity: severity,
            observedAt: observedAt,
            role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'SituationMember',
              'role',
            ),
            joinReason: _joinReason?.build(),
            corroboration: BuiltValueNullFieldError.checkNotNull(
              corroboration,
              r'SituationMember',
              'corroboration',
            ),
            addedAt: BuiltValueNullFieldError.checkNotNull(
              addedAt,
              r'SituationMember',
              'addedAt',
            ),
            addedBy: BuiltValueNullFieldError.checkNotNull(
              addedBy,
              r'SituationMember',
              'addedBy',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'joinReason';
        _joinReason?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationMember',
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
