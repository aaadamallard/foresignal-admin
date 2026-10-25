// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_cycle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalysisCycleCadenceEnum _$analysisCycleCadenceEnum_daily =
    const AnalysisCycleCadenceEnum._('daily');
const AnalysisCycleCadenceEnum _$analysisCycleCadenceEnum_weekly =
    const AnalysisCycleCadenceEnum._('weekly');
const AnalysisCycleCadenceEnum _$analysisCycleCadenceEnum_monthly =
    const AnalysisCycleCadenceEnum._('monthly');
const AnalysisCycleCadenceEnum
_$analysisCycleCadenceEnum_unknownDefaultOpenApi =
    const AnalysisCycleCadenceEnum._('unknownDefaultOpenApi');

AnalysisCycleCadenceEnum _$analysisCycleCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$analysisCycleCadenceEnum_daily;
    case 'weekly':
      return _$analysisCycleCadenceEnum_weekly;
    case 'monthly':
      return _$analysisCycleCadenceEnum_monthly;
    case 'unknownDefaultOpenApi':
      return _$analysisCycleCadenceEnum_unknownDefaultOpenApi;
    default:
      return _$analysisCycleCadenceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisCycleCadenceEnum> _$analysisCycleCadenceEnumValues =
    BuiltSet<AnalysisCycleCadenceEnum>(const <AnalysisCycleCadenceEnum>[
      _$analysisCycleCadenceEnum_daily,
      _$analysisCycleCadenceEnum_weekly,
      _$analysisCycleCadenceEnum_monthly,
      _$analysisCycleCadenceEnum_unknownDefaultOpenApi,
    ]);

const AnalysisCycleRolesEnum _$analysisCycleRolesEnum_analyst =
    const AnalysisCycleRolesEnum._('analyst');
const AnalysisCycleRolesEnum _$analysisCycleRolesEnum_redTeam =
    const AnalysisCycleRolesEnum._('redTeam');
const AnalysisCycleRolesEnum _$analysisCycleRolesEnum_forecaster =
    const AnalysisCycleRolesEnum._('forecaster');
const AnalysisCycleRolesEnum _$analysisCycleRolesEnum_proposer =
    const AnalysisCycleRolesEnum._('proposer');
const AnalysisCycleRolesEnum _$analysisCycleRolesEnum_unknownDefaultOpenApi =
    const AnalysisCycleRolesEnum._('unknownDefaultOpenApi');

AnalysisCycleRolesEnum _$analysisCycleRolesEnumValueOf(String name) {
  switch (name) {
    case 'analyst':
      return _$analysisCycleRolesEnum_analyst;
    case 'redTeam':
      return _$analysisCycleRolesEnum_redTeam;
    case 'forecaster':
      return _$analysisCycleRolesEnum_forecaster;
    case 'proposer':
      return _$analysisCycleRolesEnum_proposer;
    case 'unknownDefaultOpenApi':
      return _$analysisCycleRolesEnum_unknownDefaultOpenApi;
    default:
      return _$analysisCycleRolesEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisCycleRolesEnum> _$analysisCycleRolesEnumValues =
    BuiltSet<AnalysisCycleRolesEnum>(const <AnalysisCycleRolesEnum>[
      _$analysisCycleRolesEnum_analyst,
      _$analysisCycleRolesEnum_redTeam,
      _$analysisCycleRolesEnum_forecaster,
      _$analysisCycleRolesEnum_proposer,
      _$analysisCycleRolesEnum_unknownDefaultOpenApi,
    ]);

const AnalysisCycleNotifyMinPriorityEnum
_$analysisCycleNotifyMinPriorityEnum_low =
    const AnalysisCycleNotifyMinPriorityEnum._('low');
const AnalysisCycleNotifyMinPriorityEnum
_$analysisCycleNotifyMinPriorityEnum_normal =
    const AnalysisCycleNotifyMinPriorityEnum._('normal');
const AnalysisCycleNotifyMinPriorityEnum
_$analysisCycleNotifyMinPriorityEnum_high =
    const AnalysisCycleNotifyMinPriorityEnum._('high');
const AnalysisCycleNotifyMinPriorityEnum
_$analysisCycleNotifyMinPriorityEnum_unknownDefaultOpenApi =
    const AnalysisCycleNotifyMinPriorityEnum._('unknownDefaultOpenApi');

AnalysisCycleNotifyMinPriorityEnum _$analysisCycleNotifyMinPriorityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'low':
      return _$analysisCycleNotifyMinPriorityEnum_low;
    case 'normal':
      return _$analysisCycleNotifyMinPriorityEnum_normal;
    case 'high':
      return _$analysisCycleNotifyMinPriorityEnum_high;
    case 'unknownDefaultOpenApi':
      return _$analysisCycleNotifyMinPriorityEnum_unknownDefaultOpenApi;
    default:
      return _$analysisCycleNotifyMinPriorityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisCycleNotifyMinPriorityEnum>
_$analysisCycleNotifyMinPriorityEnumValues =
    BuiltSet<AnalysisCycleNotifyMinPriorityEnum>(
      const <AnalysisCycleNotifyMinPriorityEnum>[
        _$analysisCycleNotifyMinPriorityEnum_low,
        _$analysisCycleNotifyMinPriorityEnum_normal,
        _$analysisCycleNotifyMinPriorityEnum_high,
        _$analysisCycleNotifyMinPriorityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AnalysisCycleCadenceEnum> _$analysisCycleCadenceEnumSerializer =
    _$AnalysisCycleCadenceEnumSerializer();
Serializer<AnalysisCycleRolesEnum> _$analysisCycleRolesEnumSerializer =
    _$AnalysisCycleRolesEnumSerializer();
Serializer<AnalysisCycleNotifyMinPriorityEnum>
_$analysisCycleNotifyMinPriorityEnumSerializer =
    _$AnalysisCycleNotifyMinPriorityEnumSerializer();

class _$AnalysisCycleCadenceEnumSerializer
    implements PrimitiveSerializer<AnalysisCycleCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisCycleCadenceEnum];
  @override
  final String wireName = 'AnalysisCycleCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCycleCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisCycleCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisCycleCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisCycleRolesEnumSerializer
    implements PrimitiveSerializer<AnalysisCycleRolesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'analyst': 'analyst',
    'redTeam': 'red-team',
    'forecaster': 'forecaster',
    'proposer': 'proposer',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'analyst': 'analyst',
    'red-team': 'redTeam',
    'forecaster': 'forecaster',
    'proposer': 'proposer',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisCycleRolesEnum];
  @override
  final String wireName = 'AnalysisCycleRolesEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCycleRolesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisCycleRolesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisCycleRolesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisCycleNotifyMinPriorityEnumSerializer
    implements PrimitiveSerializer<AnalysisCycleNotifyMinPriorityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisCycleNotifyMinPriorityEnum];
  @override
  final String wireName = 'AnalysisCycleNotifyMinPriorityEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCycleNotifyMinPriorityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisCycleNotifyMinPriorityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisCycleNotifyMinPriorityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisCycle extends AnalysisCycle {
  @override
  final String name;
  @override
  final AnalysisCycleCadenceEnum cadence;
  @override
  final AnalysisCycleInputSchedule schedule;
  @override
  final CycleScope scope;
  @override
  final String? analystProfileId;
  @override
  final BuiltSet<AnalysisCycleRolesEnum> roles;
  @override
  final BuiltList<String>? forecasterProviders;
  @override
  final int samples;
  @override
  final int? maxQuestions;
  @override
  final int? maxTokensPerCycle;
  @override
  final BuiltList<String>? channelIds;
  @override
  final AnalysisCycleNotifyMinPriorityEnum? notifyMinPriority;
  @override
  final bool enabled;
  @override
  final String id;
  @override
  final bool? builtIn;
  @override
  final DateTime? nextRunAt;
  @override
  final String? lastRunId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$AnalysisCycle([void Function(AnalysisCycleBuilder)? updates]) =>
      (AnalysisCycleBuilder()..update(updates))._build();

  _$AnalysisCycle._({
    required this.name,
    required this.cadence,
    required this.schedule,
    required this.scope,
    this.analystProfileId,
    required this.roles,
    this.forecasterProviders,
    required this.samples,
    this.maxQuestions,
    this.maxTokensPerCycle,
    this.channelIds,
    this.notifyMinPriority,
    required this.enabled,
    required this.id,
    this.builtIn,
    this.nextRunAt,
    this.lastRunId,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  AnalysisCycle rebuild(void Function(AnalysisCycleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisCycleBuilder toBuilder() => AnalysisCycleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisCycle &&
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
        enabled == other.enabled &&
        id == other.id &&
        builtIn == other.builtIn &&
        nextRunAt == other.nextRunAt &&
        lastRunId == other.lastRunId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, builtIn.hashCode);
    _$hash = $jc(_$hash, nextRunAt.hashCode);
    _$hash = $jc(_$hash, lastRunId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisCycle')
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
          ..add('enabled', enabled)
          ..add('id', id)
          ..add('builtIn', builtIn)
          ..add('nextRunAt', nextRunAt)
          ..add('lastRunId', lastRunId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AnalysisCycleBuilder
    implements Builder<AnalysisCycle, AnalysisCycleBuilder> {
  _$AnalysisCycle? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AnalysisCycleCadenceEnum? _cadence;
  AnalysisCycleCadenceEnum? get cadence => _$this._cadence;
  set cadence(AnalysisCycleCadenceEnum? cadence) => _$this._cadence = cadence;

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

  SetBuilder<AnalysisCycleRolesEnum>? _roles;
  SetBuilder<AnalysisCycleRolesEnum> get roles =>
      _$this._roles ??= SetBuilder<AnalysisCycleRolesEnum>();
  set roles(SetBuilder<AnalysisCycleRolesEnum>? roles) => _$this._roles = roles;

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

  AnalysisCycleNotifyMinPriorityEnum? _notifyMinPriority;
  AnalysisCycleNotifyMinPriorityEnum? get notifyMinPriority =>
      _$this._notifyMinPriority;
  set notifyMinPriority(
    AnalysisCycleNotifyMinPriorityEnum? notifyMinPriority,
  ) => _$this._notifyMinPriority = notifyMinPriority;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _builtIn;
  bool? get builtIn => _$this._builtIn;
  set builtIn(bool? builtIn) => _$this._builtIn = builtIn;

  DateTime? _nextRunAt;
  DateTime? get nextRunAt => _$this._nextRunAt;
  set nextRunAt(DateTime? nextRunAt) => _$this._nextRunAt = nextRunAt;

  String? _lastRunId;
  String? get lastRunId => _$this._lastRunId;
  set lastRunId(String? lastRunId) => _$this._lastRunId = lastRunId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AnalysisCycleBuilder() {
    AnalysisCycle._defaults(this);
  }

  AnalysisCycleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _cadence = $v.cadence;
      _schedule = $v.schedule.toBuilder();
      _scope = $v.scope.toBuilder();
      _analystProfileId = $v.analystProfileId;
      _roles = $v.roles.toBuilder();
      _forecasterProviders = $v.forecasterProviders?.toBuilder();
      _samples = $v.samples;
      _maxQuestions = $v.maxQuestions;
      _maxTokensPerCycle = $v.maxTokensPerCycle;
      _channelIds = $v.channelIds?.toBuilder();
      _notifyMinPriority = $v.notifyMinPriority;
      _enabled = $v.enabled;
      _id = $v.id;
      _builtIn = $v.builtIn;
      _nextRunAt = $v.nextRunAt;
      _lastRunId = $v.lastRunId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisCycle other) {
    _$v = other as _$AnalysisCycle;
  }

  @override
  void update(void Function(AnalysisCycleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisCycle build() => _build();

  _$AnalysisCycle _build() {
    _$AnalysisCycle _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisCycle._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AnalysisCycle',
              'name',
            ),
            cadence: BuiltValueNullFieldError.checkNotNull(
              cadence,
              r'AnalysisCycle',
              'cadence',
            ),
            schedule: schedule.build(),
            scope: scope.build(),
            analystProfileId: analystProfileId,
            roles: roles.build(),
            forecasterProviders: _forecasterProviders?.build(),
            samples: BuiltValueNullFieldError.checkNotNull(
              samples,
              r'AnalysisCycle',
              'samples',
            ),
            maxQuestions: maxQuestions,
            maxTokensPerCycle: maxTokensPerCycle,
            channelIds: _channelIds?.build(),
            notifyMinPriority: notifyMinPriority,
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'AnalysisCycle',
              'enabled',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'AnalysisCycle',
              'id',
            ),
            builtIn: builtIn,
            nextRunAt: nextRunAt,
            lastRunId: lastRunId,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'AnalysisCycle',
              'createdAt',
            ),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
        _$failedField = 'scope';
        scope.build();

        _$failedField = 'roles';
        roles.build();
        _$failedField = 'forecasterProviders';
        _forecasterProviders?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisCycle',
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
