// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EscalationStateEnum _$escalationStateEnum_active =
    const EscalationStateEnum._('active');
const EscalationStateEnum _$escalationStateEnum_stopped =
    const EscalationStateEnum._('stopped');
const EscalationStateEnum _$escalationStateEnum_exhausted =
    const EscalationStateEnum._('exhausted');

EscalationStateEnum _$escalationStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$escalationStateEnum_active;
    case 'stopped':
      return _$escalationStateEnum_stopped;
    case 'exhausted':
      return _$escalationStateEnum_exhausted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EscalationStateEnum> _$escalationStateEnumValues =
    BuiltSet<EscalationStateEnum>(const <EscalationStateEnum>[
      _$escalationStateEnum_active,
      _$escalationStateEnum_stopped,
      _$escalationStateEnum_exhausted,
    ]);

Serializer<EscalationStateEnum> _$escalationStateEnumSerializer =
    _$EscalationStateEnumSerializer();

class _$EscalationStateEnumSerializer
    implements PrimitiveSerializer<EscalationStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'stopped': 'stopped',
    'exhausted': 'exhausted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'stopped': 'stopped',
    'exhausted': 'exhausted',
  };

  @override
  final Iterable<Type> types = const <Type>[EscalationStateEnum];
  @override
  final String wireName = 'EscalationStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    EscalationStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EscalationStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EscalationStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Escalation extends Escalation {
  @override
  final int alertId;
  @override
  final String policyId;
  @override
  final int? nextStep;
  @override
  final DateTime? nextAt;
  @override
  final int? repeatsDone;
  @override
  final EscalationStateEnum state;
  @override
  final String? stoppedReason;
  @override
  final DateTime? updatedAt;

  factory _$Escalation([void Function(EscalationBuilder)? updates]) =>
      (EscalationBuilder()..update(updates))._build();

  _$Escalation._({
    required this.alertId,
    required this.policyId,
    this.nextStep,
    this.nextAt,
    this.repeatsDone,
    required this.state,
    this.stoppedReason,
    this.updatedAt,
  }) : super._();
  @override
  Escalation rebuild(void Function(EscalationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalationBuilder toBuilder() => EscalationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Escalation &&
        alertId == other.alertId &&
        policyId == other.policyId &&
        nextStep == other.nextStep &&
        nextAt == other.nextAt &&
        repeatsDone == other.repeatsDone &&
        state == other.state &&
        stoppedReason == other.stoppedReason &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jc(_$hash, nextStep.hashCode);
    _$hash = $jc(_$hash, nextAt.hashCode);
    _$hash = $jc(_$hash, repeatsDone.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stoppedReason.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Escalation')
          ..add('alertId', alertId)
          ..add('policyId', policyId)
          ..add('nextStep', nextStep)
          ..add('nextAt', nextAt)
          ..add('repeatsDone', repeatsDone)
          ..add('state', state)
          ..add('stoppedReason', stoppedReason)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EscalationBuilder implements Builder<Escalation, EscalationBuilder> {
  _$Escalation? _$v;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(String? policyId) => _$this._policyId = policyId;

  int? _nextStep;
  int? get nextStep => _$this._nextStep;
  set nextStep(int? nextStep) => _$this._nextStep = nextStep;

  DateTime? _nextAt;
  DateTime? get nextAt => _$this._nextAt;
  set nextAt(DateTime? nextAt) => _$this._nextAt = nextAt;

  int? _repeatsDone;
  int? get repeatsDone => _$this._repeatsDone;
  set repeatsDone(int? repeatsDone) => _$this._repeatsDone = repeatsDone;

  EscalationStateEnum? _state;
  EscalationStateEnum? get state => _$this._state;
  set state(EscalationStateEnum? state) => _$this._state = state;

  String? _stoppedReason;
  String? get stoppedReason => _$this._stoppedReason;
  set stoppedReason(String? stoppedReason) =>
      _$this._stoppedReason = stoppedReason;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  EscalationBuilder() {
    Escalation._defaults(this);
  }

  EscalationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alertId = $v.alertId;
      _policyId = $v.policyId;
      _nextStep = $v.nextStep;
      _nextAt = $v.nextAt;
      _repeatsDone = $v.repeatsDone;
      _state = $v.state;
      _stoppedReason = $v.stoppedReason;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Escalation other) {
    _$v = other as _$Escalation;
  }

  @override
  void update(void Function(EscalationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Escalation build() => _build();

  _$Escalation _build() {
    final _$result =
        _$v ??
        _$Escalation._(
          alertId: BuiltValueNullFieldError.checkNotNull(
            alertId,
            r'Escalation',
            'alertId',
          ),
          policyId: BuiltValueNullFieldError.checkNotNull(
            policyId,
            r'Escalation',
            'policyId',
          ),
          nextStep: nextStep,
          nextAt: nextAt,
          repeatsDone: repeatsDone,
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'Escalation',
            'state',
          ),
          stoppedReason: stoppedReason,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
