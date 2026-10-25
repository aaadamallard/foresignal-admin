// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_member_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_intelEvent =
    const SituationMemberInputMemberTypeEnum._('intelEvent');
const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_finding =
    const SituationMemberInputMemberTypeEnum._('finding');
const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_alert =
    const SituationMemberInputMemberTypeEnum._('alert');
const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_anomaly =
    const SituationMemberInputMemberTypeEnum._('anomaly');
const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_record =
    const SituationMemberInputMemberTypeEnum._('record');
const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_investigation =
    const SituationMemberInputMemberTypeEnum._('investigation');
const SituationMemberInputMemberTypeEnum
_$situationMemberInputMemberTypeEnum_unknownDefaultOpenApi =
    const SituationMemberInputMemberTypeEnum._('unknownDefaultOpenApi');

SituationMemberInputMemberTypeEnum _$situationMemberInputMemberTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'intelEvent':
      return _$situationMemberInputMemberTypeEnum_intelEvent;
    case 'finding':
      return _$situationMemberInputMemberTypeEnum_finding;
    case 'alert':
      return _$situationMemberInputMemberTypeEnum_alert;
    case 'anomaly':
      return _$situationMemberInputMemberTypeEnum_anomaly;
    case 'record':
      return _$situationMemberInputMemberTypeEnum_record;
    case 'investigation':
      return _$situationMemberInputMemberTypeEnum_investigation;
    case 'unknownDefaultOpenApi':
      return _$situationMemberInputMemberTypeEnum_unknownDefaultOpenApi;
    default:
      return _$situationMemberInputMemberTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SituationMemberInputMemberTypeEnum>
_$situationMemberInputMemberTypeEnumValues =
    BuiltSet<SituationMemberInputMemberTypeEnum>(
      const <SituationMemberInputMemberTypeEnum>[
        _$situationMemberInputMemberTypeEnum_intelEvent,
        _$situationMemberInputMemberTypeEnum_finding,
        _$situationMemberInputMemberTypeEnum_alert,
        _$situationMemberInputMemberTypeEnum_anomaly,
        _$situationMemberInputMemberTypeEnum_record,
        _$situationMemberInputMemberTypeEnum_investigation,
        _$situationMemberInputMemberTypeEnum_unknownDefaultOpenApi,
      ],
    );

const SituationMemberInputRoleEnum _$situationMemberInputRoleEnum_core =
    const SituationMemberInputRoleEnum._('core');
const SituationMemberInputRoleEnum _$situationMemberInputRoleEnum_context =
    const SituationMemberInputRoleEnum._('context');
const SituationMemberInputRoleEnum
_$situationMemberInputRoleEnum_unknownDefaultOpenApi =
    const SituationMemberInputRoleEnum._('unknownDefaultOpenApi');

SituationMemberInputRoleEnum _$situationMemberInputRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'core':
      return _$situationMemberInputRoleEnum_core;
    case 'context':
      return _$situationMemberInputRoleEnum_context;
    case 'unknownDefaultOpenApi':
      return _$situationMemberInputRoleEnum_unknownDefaultOpenApi;
    default:
      return _$situationMemberInputRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SituationMemberInputRoleEnum>
_$situationMemberInputRoleEnumValues =
    BuiltSet<SituationMemberInputRoleEnum>(const <SituationMemberInputRoleEnum>[
      _$situationMemberInputRoleEnum_core,
      _$situationMemberInputRoleEnum_context,
      _$situationMemberInputRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<SituationMemberInputMemberTypeEnum>
_$situationMemberInputMemberTypeEnumSerializer =
    _$SituationMemberInputMemberTypeEnumSerializer();
Serializer<SituationMemberInputRoleEnum>
_$situationMemberInputRoleEnumSerializer =
    _$SituationMemberInputRoleEnumSerializer();

class _$SituationMemberInputMemberTypeEnumSerializer
    implements PrimitiveSerializer<SituationMemberInputMemberTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'intelEvent': 'intel_event',
    'finding': 'finding',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'record': 'record',
    'investigation': 'investigation',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'intel_event': 'intelEvent',
    'finding': 'finding',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'record': 'record',
    'investigation': 'investigation',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationMemberInputMemberTypeEnum];
  @override
  final String wireName = 'SituationMemberInputMemberTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationMemberInputMemberTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationMemberInputMemberTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationMemberInputMemberTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationMemberInputRoleEnumSerializer
    implements PrimitiveSerializer<SituationMemberInputRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'core': 'core',
    'context': 'context',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'core': 'core',
    'context': 'context',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationMemberInputRoleEnum];
  @override
  final String wireName = 'SituationMemberInputRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationMemberInputRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationMemberInputRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationMemberInputRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationMemberInput extends SituationMemberInput {
  @override
  final SituationMemberInputMemberTypeEnum memberType;
  @override
  final String ref;
  @override
  final int? seq;
  @override
  final SituationMemberInputRoleEnum? role;
  @override
  final String? moveFromSituationId;

  factory _$SituationMemberInput([
    void Function(SituationMemberInputBuilder)? updates,
  ]) => (SituationMemberInputBuilder()..update(updates))._build();

  _$SituationMemberInput._({
    required this.memberType,
    required this.ref,
    this.seq,
    this.role,
    this.moveFromSituationId,
  }) : super._();
  @override
  SituationMemberInput rebuild(
    void Function(SituationMemberInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationMemberInputBuilder toBuilder() =>
      SituationMemberInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationMemberInput &&
        memberType == other.memberType &&
        ref == other.ref &&
        seq == other.seq &&
        role == other.role &&
        moveFromSituationId == other.moveFromSituationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberType.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, moveFromSituationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationMemberInput')
          ..add('memberType', memberType)
          ..add('ref', ref)
          ..add('seq', seq)
          ..add('role', role)
          ..add('moveFromSituationId', moveFromSituationId))
        .toString();
  }
}

class SituationMemberInputBuilder
    implements Builder<SituationMemberInput, SituationMemberInputBuilder> {
  _$SituationMemberInput? _$v;

  SituationMemberInputMemberTypeEnum? _memberType;
  SituationMemberInputMemberTypeEnum? get memberType => _$this._memberType;
  set memberType(SituationMemberInputMemberTypeEnum? memberType) =>
      _$this._memberType = memberType;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  SituationMemberInputRoleEnum? _role;
  SituationMemberInputRoleEnum? get role => _$this._role;
  set role(SituationMemberInputRoleEnum? role) => _$this._role = role;

  String? _moveFromSituationId;
  String? get moveFromSituationId => _$this._moveFromSituationId;
  set moveFromSituationId(String? moveFromSituationId) =>
      _$this._moveFromSituationId = moveFromSituationId;

  SituationMemberInputBuilder() {
    SituationMemberInput._defaults(this);
  }

  SituationMemberInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberType = $v.memberType;
      _ref = $v.ref;
      _seq = $v.seq;
      _role = $v.role;
      _moveFromSituationId = $v.moveFromSituationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationMemberInput other) {
    _$v = other as _$SituationMemberInput;
  }

  @override
  void update(void Function(SituationMemberInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationMemberInput build() => _build();

  _$SituationMemberInput _build() {
    final _$result =
        _$v ??
        _$SituationMemberInput._(
          memberType: BuiltValueNullFieldError.checkNotNull(
            memberType,
            r'SituationMemberInput',
            'memberType',
          ),
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'SituationMemberInput',
            'ref',
          ),
          seq: seq,
          role: role,
          moveFromSituationId: moveFromSituationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
