// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_cycle_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalysisCycleInputCadenceEnum _$analysisCycleInputCadenceEnum_daily =
    const AnalysisCycleInputCadenceEnum._('daily');
const AnalysisCycleInputCadenceEnum _$analysisCycleInputCadenceEnum_weekly =
    const AnalysisCycleInputCadenceEnum._('weekly');
const AnalysisCycleInputCadenceEnum _$analysisCycleInputCadenceEnum_monthly =
    const AnalysisCycleInputCadenceEnum._('monthly');

AnalysisCycleInputCadenceEnum _$analysisCycleInputCadenceEnumValueOf(
    String name) {
  switch (name) {
    case 'daily':
      return _$analysisCycleInputCadenceEnum_daily;
    case 'weekly':
      return _$analysisCycleInputCadenceEnum_weekly;
    case 'monthly':
      return _$analysisCycleInputCadenceEnum_monthly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalysisCycleInputCadenceEnum>
    _$analysisCycleInputCadenceEnumValues = BuiltSet<
        AnalysisCycleInputCadenceEnum>(const <AnalysisCycleInputCadenceEnum>[
  _$analysisCycleInputCadenceEnum_daily,
  _$analysisCycleInputCadenceEnum_weekly,
  _$analysisCycleInputCadenceEnum_monthly,
]);

const AnalysisCycleInputRolesEnum _$analysisCycleInputRolesEnum_analyst =
    const AnalysisCycleInputRolesEnum._('analyst');
const AnalysisCycleInputRolesEnum _$analysisCycleInputRolesEnum_redTeam =
    const AnalysisCycleInputRolesEnum._('redTeam');
const AnalysisCycleInputRolesEnum _$analysisCycleInputRolesEnum_forecaster =
    const AnalysisCycleInputRolesEnum._('forecaster');
const AnalysisCycleInputRolesEnum _$analysisCycleInputRolesEnum_proposer =
    const AnalysisCycleInputRolesEnum._('proposer');

AnalysisCycleInputRolesEnum _$analysisCycleInputRolesEnumValueOf(String name) {
  switch (name) {
    case 'analyst':
      return _$analysisCycleInputRolesEnum_analyst;
    case 'redTeam':
      return _$analysisCycleInputRolesEnum_redTeam;
    case 'forecaster':
      return _$analysisCycleInputRolesEnum_forecaster;
    case 'proposer':
      return _$analysisCycleInputRolesEnum_proposer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalysisCycleInputRolesEnum>
    _$analysisCycleInputRolesEnumValues =
    BuiltSet<AnalysisCycleInputRolesEnum>(const <AnalysisCycleInputRolesEnum>[
  _$analysisCycleInputRolesEnum_analyst,
  _$analysisCycleInputRolesEnum_redTeam,
  _$analysisCycleInputRolesEnum_forecaster,
  _$analysisCycleInputRolesEnum_proposer,
]);

const AnalysisCycleInputNotifyMinPriorityEnum
    _$analysisCycleInputNotifyMinPriorityEnum_low =
    const AnalysisCycleInputNotifyMinPriorityEnum._('low');
const AnalysisCycleInputNotifyMinPriorityEnum
    _$analysisCycleInputNotifyMinPriorityEnum_normal =
    const AnalysisCycleInputNotifyMinPriorityEnum._('normal');
const AnalysisCycleInputNotifyMinPriorityEnum
    _$analysisCycleInputNotifyMinPriorityEnum_high =
    const AnalysisCycleInputNotifyMinPriorityEnum._('high');

AnalysisCycleInputNotifyMinPriorityEnum
    _$analysisCycleInputNotifyMinPriorityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$analysisCycleInputNotifyMinPriorityEnum_low;
    case 'normal':
      return _$analysisCycleInputNotifyMinPriorityEnum_normal;
    case 'high':
      return _$analysisCycleInputNotifyMinPriorityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalysisCycleInputNotifyMinPriorityEnum>
    _$analysisCycleInputNotifyMinPriorityEnumValues = BuiltSet<
        AnalysisCycleInputNotifyMinPriorityEnum>(const <AnalysisCycleInputNotifyMinPriorityEnum>[
  _$analysisCycleInputNotifyMinPriorityEnum_low,
  _$analysisCycleInputNotifyMinPriorityEnum_normal,
  _$analysisCycleInputNotifyMinPriorityEnum_high,
]);

Serializer<AnalysisCycleInputCadenceEnum>
    _$analysisCycleInputCadenceEnumSerializer =
    _$AnalysisCycleInputCadenceEnumSerializer();
Serializer<AnalysisCycleInputRolesEnum>
    _$analysisCycleInputRolesEnumSerializer =
    _$AnalysisCycleInputRolesEnumSerializer();
Serializer<AnalysisCycleInputNotifyMinPriorityEnum>
    _$analysisCycleInputNotifyMinPriorityEnumSerializer =
    _$AnalysisCycleInputNotifyMinPriorityEnumSerializer();

class _$AnalysisCycleInputCadenceEnumSerializer
    implements PrimitiveSerializer<AnalysisCycleInputCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisCycleInputCadenceEnum];
  @override
  final String wireName = 'AnalysisCycleInputCadenceEnum';

  @override
  Object serialize(
          Serializers serializers, AnalysisCycleInputCadenceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalysisCycleInputCadenceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalysisCycleInputCadenceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalysisCycleInputRolesEnumSerializer
    implements PrimitiveSerializer<AnalysisCycleInputRolesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'analyst': 'analyst',
    'redTeam': 'red-team',
    'forecaster': 'forecaster',
    'proposer': 'proposer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'analyst': 'analyst',
    'red-team': 'redTeam',
    'forecaster': 'forecaster',
    'proposer': 'proposer',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisCycleInputRolesEnum];
  @override
  final String wireName = 'AnalysisCycleInputRolesEnum';

  @override
  Object serialize(Serializers serializers, AnalysisCycleInputRolesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalysisCycleInputRolesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalysisCycleInputRolesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalysisCycleInputNotifyMinPriorityEnumSerializer
    implements PrimitiveSerializer<AnalysisCycleInputNotifyMinPriorityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AnalysisCycleInputNotifyMinPriorityEnum
  ];
  @override
  final String wireName = 'AnalysisCycleInputNotifyMinPriorityEnum';

  @override
  Object serialize(Serializers serializers,
          AnalysisCycleInputNotifyMinPriorityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalysisCycleInputNotifyMinPriorityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalysisCycleInputNotifyMinPriorityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalysisCycleInput extends AnalysisCycleInput {
  @override
  final String name;
  @override
  final AnalysisCycleInputCadenceEnum cadence;
  @override
  final AnalysisCycleInputSchedule schedule;
  @override
  final CycleScope? scope;
  @override
  final String? analystProfileId;
  @override
  final BuiltSet<AnalysisCycleInputRolesEnum>? roles;
  @override
  final BuiltList<String>? forecasterProviders;
  @override
  final int? samples;
  @override
  final int? maxQuestions;
  @override
  final int? maxTokensPerCycle;
  @override
  final BuiltList<String>? channelIds;
  @override
  final AnalysisCycleInputNotifyMinPriorityEnum? notifyMinPriority;
  @override
  final bool? enabled;

  factory _$AnalysisCycleInput(
          [void Function(AnalysisCycleInputBuilder)? updates]) =>
      (AnalysisCycleInputBuilder()..update(updates))._build();

  _$AnalysisCycleInput._(
      {required this.name,
      required this.cadence,
      required this.schedule,
      this.scope,
      this.analystProfileId,
      this.roles,
      this.forecasterProviders,
      this.samples,
      this.maxQuestions,
      this.maxTokensPerCycle,
      this.channelIds,
      this.notifyMinPriority,
      this.enabled})
      : super._();
  @override
  AnalysisCycleInput rebuild(
          void Function(AnalysisCycleInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisCycleInputBuilder toBuilder() =>
      AnalysisCycleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisCycleInput &&
        name == other.name &&
        cadence == other.cadence &&
        schedule == other.schedule &&
        scope == other.scope &&
        analystProfileId == other.analystProfileId &&
        roles == other.roles &&
        forecasterProviders == other.forecasterProviders &&
        samples == other.samples &&
        maxQuestions == other.maxQuestions &&
        maxTokensPerCycle == other.maxTokensPerCycle &&
        channelIds == other.channelIds &&
        notifyMinPriority == other.notifyMinPriority &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, analystProfileId.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, forecasterProviders.hashCode);
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jc(_$hash, maxQuestions.hashCode);
    _$hash = $jc(_$hash, maxTokensPerCycle.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, notifyMinPriority.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisCycleInput')
          ..add('name', name)
          ..add('cadence', cadence)
          ..add('schedule', schedule)
          ..add('scope', scope)
          ..add('analystProfileId', analystProfileId)
          ..add('roles', roles)
          ..add('forecasterProviders', forecasterProviders)
          ..add('samples', samples)
          ..add('maxQuestions', maxQuestions)
          ..add('maxTokensPerCycle', maxTokensPerCycle)
          ..add('channelIds', channelIds)
          ..add('notifyMinPriority', notifyMinPriority)
          ..add('enabled', enabled))
        .toString();
  }
}

class AnalysisCycleInputBuilder
    implements Builder<AnalysisCycleInput, AnalysisCycleInputBuilder> {
  _$AnalysisCycleInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AnalysisCycleInputCadenceEnum? _cadence;
  AnalysisCycleInputCadenceEnum? get cadence => _$this._cadence;
  set cadence(AnalysisCycleInputCadenceEnum? cadence) =>
      _$this._cadence = cadence;

  AnalysisCycleInputScheduleBuilder? _schedule;
  AnalysisCycleInputScheduleBuilder get schedule =>
      _$this._schedule ??= AnalysisCycleInputScheduleBuilder();
  set schedule(AnalysisCycleInputScheduleBuilder? schedule) =>
      _$this._schedule = schedule;

  CycleScopeBuilder? _scope;
  CycleScopeBuilder get scope => _$this._scope ??= CycleScopeBuilder();
  set scope(CycleScopeBuilder? scope) => _$this._scope = scope;

  String? _analystProfileId;
  String? get analystProfileId => _$this._analystProfileId;
  set analystProfileId(String? analystProfileId) =>
      _$this._analystProfileId = analystProfileId;

  SetBuilder<AnalysisCycleInputRolesEnum>? _roles;
  SetBuilder<AnalysisCycleInputRolesEnum> get roles =>
      _$this._roles ??= SetBuilder<AnalysisCycleInputRolesEnum>();
  set roles(SetBuilder<AnalysisCycleInputRolesEnum>? roles) =>
      _$this._roles = roles;

  ListBuilder<String>? _forecasterProviders;
  ListBuilder<String> get forecasterProviders =>
      _$this._forecasterProviders ??= ListBuilder<String>();
  set forecasterProviders(ListBuilder<String>? forecasterProviders) =>
      _$this._forecasterProviders = forecasterProviders;

  int? _samples;
  int? get samples => _$this._samples;
  set samples(int? samples) => _$this._samples = samples;

  int? _maxQuestions;
  int? get maxQuestions => _$this._maxQuestions;
  set maxQuestions(int? maxQuestions) => _$this._maxQuestions = maxQuestions;

  int? _maxTokensPerCycle;
  int? get maxTokensPerCycle => _$this._maxTokensPerCycle;
  set maxTokensPerCycle(int? maxTokensPerCycle) =>
      _$this._maxTokensPerCycle = maxTokensPerCycle;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  AnalysisCycleInputNotifyMinPriorityEnum? _notifyMinPriority;
  AnalysisCycleInputNotifyMinPriorityEnum? get notifyMinPriority =>
      _$this._notifyMinPriority;
  set notifyMinPriority(
          AnalysisCycleInputNotifyMinPriorityEnum? notifyMinPriority) =>
      _$this._notifyMinPriority = notifyMinPriority;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  AnalysisCycleInputBuilder() {
    AnalysisCycleInput._defaults(this);
  }

  AnalysisCycleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _cadence = $v.cadence;
      _schedule = $v.schedule.toBuilder();
      _scope = $v.scope?.toBuilder();
      _analystProfileId = $v.analystProfileId;
      _roles = $v.roles?.toBuilder();
      _forecasterProviders = $v.forecasterProviders?.toBuilder();
      _samples = $v.samples;
      _maxQuestions = $v.maxQuestions;
      _maxTokensPerCycle = $v.maxTokensPerCycle;
      _channelIds = $v.channelIds?.toBuilder();
      _notifyMinPriority = $v.notifyMinPriority;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisCycleInput other) {
    _$v = other as _$AnalysisCycleInput;
  }

  @override
  void update(void Function(AnalysisCycleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisCycleInput build() => _build();

  _$AnalysisCycleInput _build() {
    _$AnalysisCycleInput _$result;
    try {
      _$result = _$v ??
          _$AnalysisCycleInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AnalysisCycleInput', 'name'),
            cadence: BuiltValueNullFieldError.checkNotNull(
                cadence, r'AnalysisCycleInput', 'cadence'),
            schedule: schedule.build(),
            scope: _scope?.build(),
            analystProfileId: analystProfileId,
            roles: _roles?.build(),
            forecasterProviders: _forecasterProviders?.build(),
            samples: samples,
            maxQuestions: maxQuestions,
            maxTokensPerCycle: maxTokensPerCycle,
            channelIds: _channelIds?.build(),
            notifyMinPriority: notifyMinPriority,
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
        _$failedField = 'scope';
        _scope?.build();

        _$failedField = 'roles';
        _roles?.build();
        _$failedField = 'forecasterProviders';
        _forecasterProviders?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalysisCycleInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
