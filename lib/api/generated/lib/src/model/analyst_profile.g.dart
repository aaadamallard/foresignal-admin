// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystProfileEffortEnum _$analystProfileEffortEnum_low =
    const AnalystProfileEffortEnum._('low');
const AnalystProfileEffortEnum _$analystProfileEffortEnum_medium =
    const AnalystProfileEffortEnum._('medium');

AnalystProfileEffortEnum _$analystProfileEffortEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$analystProfileEffortEnum_low;
    case 'medium':
      return _$analystProfileEffortEnum_medium;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystProfileEffortEnum> _$analystProfileEffortEnumValues =
    BuiltSet<AnalystProfileEffortEnum>(const <AnalystProfileEffortEnum>[
  _$analystProfileEffortEnum_low,
  _$analystProfileEffortEnum_medium,
]);

const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeWatch =
    const AnalystProfileAllowedActionsEnum._('proposeWatch');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeIntelEvent =
    const AnalystProfileAllowedActionsEnum._('proposeIntelEvent');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeInvestigationItem =
    const AnalystProfileAllowedActionsEnum._('proposeInvestigationItem');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_annotateEvent =
    const AnalystProfileAllowedActionsEnum._('annotateEvent');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeHypothesisSet =
    const AnalystProfileAllowedActionsEnum._('proposeHypothesisSet');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeIndicator =
    const AnalystProfileAllowedActionsEnum._('proposeIndicator');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeQuestion =
    const AnalystProfileAllowedActionsEnum._('proposeQuestion');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeSituationMerge =
    const AnalystProfileAllowedActionsEnum._('proposeSituationMerge');
const AnalystProfileAllowedActionsEnum
    _$analystProfileAllowedActionsEnum_proposeChronicle =
    const AnalystProfileAllowedActionsEnum._('proposeChronicle');

AnalystProfileAllowedActionsEnum _$analystProfileAllowedActionsEnumValueOf(
    String name) {
  switch (name) {
    case 'proposeWatch':
      return _$analystProfileAllowedActionsEnum_proposeWatch;
    case 'proposeIntelEvent':
      return _$analystProfileAllowedActionsEnum_proposeIntelEvent;
    case 'proposeInvestigationItem':
      return _$analystProfileAllowedActionsEnum_proposeInvestigationItem;
    case 'annotateEvent':
      return _$analystProfileAllowedActionsEnum_annotateEvent;
    case 'proposeHypothesisSet':
      return _$analystProfileAllowedActionsEnum_proposeHypothesisSet;
    case 'proposeIndicator':
      return _$analystProfileAllowedActionsEnum_proposeIndicator;
    case 'proposeQuestion':
      return _$analystProfileAllowedActionsEnum_proposeQuestion;
    case 'proposeSituationMerge':
      return _$analystProfileAllowedActionsEnum_proposeSituationMerge;
    case 'proposeChronicle':
      return _$analystProfileAllowedActionsEnum_proposeChronicle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystProfileAllowedActionsEnum>
    _$analystProfileAllowedActionsEnumValues = BuiltSet<
        AnalystProfileAllowedActionsEnum>(const <AnalystProfileAllowedActionsEnum>[
  _$analystProfileAllowedActionsEnum_proposeWatch,
  _$analystProfileAllowedActionsEnum_proposeIntelEvent,
  _$analystProfileAllowedActionsEnum_proposeInvestigationItem,
  _$analystProfileAllowedActionsEnum_annotateEvent,
  _$analystProfileAllowedActionsEnum_proposeHypothesisSet,
  _$analystProfileAllowedActionsEnum_proposeIndicator,
  _$analystProfileAllowedActionsEnum_proposeQuestion,
  _$analystProfileAllowedActionsEnum_proposeSituationMerge,
  _$analystProfileAllowedActionsEnum_proposeChronicle,
]);

const AnalystProfileNotifyMinPriorityEnum
    _$analystProfileNotifyMinPriorityEnum_low =
    const AnalystProfileNotifyMinPriorityEnum._('low');
const AnalystProfileNotifyMinPriorityEnum
    _$analystProfileNotifyMinPriorityEnum_normal =
    const AnalystProfileNotifyMinPriorityEnum._('normal');
const AnalystProfileNotifyMinPriorityEnum
    _$analystProfileNotifyMinPriorityEnum_high =
    const AnalystProfileNotifyMinPriorityEnum._('high');

AnalystProfileNotifyMinPriorityEnum
    _$analystProfileNotifyMinPriorityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$analystProfileNotifyMinPriorityEnum_low;
    case 'normal':
      return _$analystProfileNotifyMinPriorityEnum_normal;
    case 'high':
      return _$analystProfileNotifyMinPriorityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystProfileNotifyMinPriorityEnum>
    _$analystProfileNotifyMinPriorityEnumValues = BuiltSet<
        AnalystProfileNotifyMinPriorityEnum>(const <AnalystProfileNotifyMinPriorityEnum>[
  _$analystProfileNotifyMinPriorityEnum_low,
  _$analystProfileNotifyMinPriorityEnum_normal,
  _$analystProfileNotifyMinPriorityEnum_high,
]);

Serializer<AnalystProfileEffortEnum> _$analystProfileEffortEnumSerializer =
    _$AnalystProfileEffortEnumSerializer();
Serializer<AnalystProfileAllowedActionsEnum>
    _$analystProfileAllowedActionsEnumSerializer =
    _$AnalystProfileAllowedActionsEnumSerializer();
Serializer<AnalystProfileNotifyMinPriorityEnum>
    _$analystProfileNotifyMinPriorityEnumSerializer =
    _$AnalystProfileNotifyMinPriorityEnumSerializer();

class _$AnalystProfileEffortEnumSerializer
    implements PrimitiveSerializer<AnalystProfileEffortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystProfileEffortEnum];
  @override
  final String wireName = 'AnalystProfileEffortEnum';

  @override
  Object serialize(Serializers serializers, AnalystProfileEffortEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystProfileEffortEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystProfileEffortEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystProfileAllowedActionsEnumSerializer
    implements PrimitiveSerializer<AnalystProfileAllowedActionsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'proposeWatch': 'propose_watch',
    'proposeIntelEvent': 'propose_intel_event',
    'proposeInvestigationItem': 'propose_investigation_item',
    'annotateEvent': 'annotate_event',
    'proposeHypothesisSet': 'propose_hypothesis_set',
    'proposeIndicator': 'propose_indicator',
    'proposeQuestion': 'propose_question',
    'proposeSituationMerge': 'propose_situation_merge',
    'proposeChronicle': 'propose_chronicle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'propose_watch': 'proposeWatch',
    'propose_intel_event': 'proposeIntelEvent',
    'propose_investigation_item': 'proposeInvestigationItem',
    'annotate_event': 'annotateEvent',
    'propose_hypothesis_set': 'proposeHypothesisSet',
    'propose_indicator': 'proposeIndicator',
    'propose_question': 'proposeQuestion',
    'propose_situation_merge': 'proposeSituationMerge',
    'propose_chronicle': 'proposeChronicle',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystProfileAllowedActionsEnum];
  @override
  final String wireName = 'AnalystProfileAllowedActionsEnum';

  @override
  Object serialize(
          Serializers serializers, AnalystProfileAllowedActionsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystProfileAllowedActionsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystProfileAllowedActionsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystProfileNotifyMinPriorityEnumSerializer
    implements PrimitiveSerializer<AnalystProfileNotifyMinPriorityEnum> {
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
    AnalystProfileNotifyMinPriorityEnum
  ];
  @override
  final String wireName = 'AnalystProfileNotifyMinPriorityEnum';

  @override
  Object serialize(
          Serializers serializers, AnalystProfileNotifyMinPriorityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystProfileNotifyMinPriorityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystProfileNotifyMinPriorityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystProfile extends AnalystProfile {
  @override
  final String id;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final AnalystProfileSchedule schedule;
  @override
  final AnalystProfileScope? scope;
  @override
  final String? lookback;
  @override
  final String? instructions;
  @override
  final String? providerId;
  @override
  final AnalystProfileEffortEnum effort;
  @override
  final int? maxRunsPerDay;
  @override
  final int? maxTokensPerRun;
  @override
  final int? maxToolCalls;
  @override
  final int? maxWallSeconds;
  @override
  final bool allowActions;
  @override
  final BuiltList<AnalystProfileAllowedActionsEnum>? allowedActions;
  @override
  final int? maxAutoActionsPerDay;
  @override
  final BuiltList<String>? channelIds;
  @override
  final AnalystProfileNotifyMinPriorityEnum? notifyMinPriority;
  @override
  final String ownerTokenId;
  @override
  final DateTime? nextRunAt;
  @override
  final DateTime? lastRunAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$AnalystProfile([void Function(AnalystProfileBuilder)? updates]) =>
      (AnalystProfileBuilder()..update(updates))._build();

  _$AnalystProfile._(
      {required this.id,
      required this.name,
      required this.enabled,
      required this.schedule,
      this.scope,
      this.lookback,
      this.instructions,
      this.providerId,
      required this.effort,
      this.maxRunsPerDay,
      this.maxTokensPerRun,
      this.maxToolCalls,
      this.maxWallSeconds,
      required this.allowActions,
      this.allowedActions,
      this.maxAutoActionsPerDay,
      this.channelIds,
      this.notifyMinPriority,
      required this.ownerTokenId,
      this.nextRunAt,
      this.lastRunAt,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  AnalystProfile rebuild(void Function(AnalystProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystProfileBuilder toBuilder() => AnalystProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystProfile &&
        id == other.id &&
        name == other.name &&
        enabled == other.enabled &&
        schedule == other.schedule &&
        scope == other.scope &&
        lookback == other.lookback &&
        instructions == other.instructions &&
        providerId == other.providerId &&
        effort == other.effort &&
        maxRunsPerDay == other.maxRunsPerDay &&
        maxTokensPerRun == other.maxTokensPerRun &&
        maxToolCalls == other.maxToolCalls &&
        maxWallSeconds == other.maxWallSeconds &&
        allowActions == other.allowActions &&
        allowedActions == other.allowedActions &&
        maxAutoActionsPerDay == other.maxAutoActionsPerDay &&
        channelIds == other.channelIds &&
        notifyMinPriority == other.notifyMinPriority &&
        ownerTokenId == other.ownerTokenId &&
        nextRunAt == other.nextRunAt &&
        lastRunAt == other.lastRunAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, lookback.hashCode);
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jc(_$hash, maxRunsPerDay.hashCode);
    _$hash = $jc(_$hash, maxTokensPerRun.hashCode);
    _$hash = $jc(_$hash, maxToolCalls.hashCode);
    _$hash = $jc(_$hash, maxWallSeconds.hashCode);
    _$hash = $jc(_$hash, allowActions.hashCode);
    _$hash = $jc(_$hash, allowedActions.hashCode);
    _$hash = $jc(_$hash, maxAutoActionsPerDay.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, notifyMinPriority.hashCode);
    _$hash = $jc(_$hash, ownerTokenId.hashCode);
    _$hash = $jc(_$hash, nextRunAt.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystProfile')
          ..add('id', id)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('schedule', schedule)
          ..add('scope', scope)
          ..add('lookback', lookback)
          ..add('instructions', instructions)
          ..add('providerId', providerId)
          ..add('effort', effort)
          ..add('maxRunsPerDay', maxRunsPerDay)
          ..add('maxTokensPerRun', maxTokensPerRun)
          ..add('maxToolCalls', maxToolCalls)
          ..add('maxWallSeconds', maxWallSeconds)
          ..add('allowActions', allowActions)
          ..add('allowedActions', allowedActions)
          ..add('maxAutoActionsPerDay', maxAutoActionsPerDay)
          ..add('channelIds', channelIds)
          ..add('notifyMinPriority', notifyMinPriority)
          ..add('ownerTokenId', ownerTokenId)
          ..add('nextRunAt', nextRunAt)
          ..add('lastRunAt', lastRunAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AnalystProfileBuilder
    implements Builder<AnalystProfile, AnalystProfileBuilder> {
  _$AnalystProfile? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  AnalystProfileScheduleBuilder? _schedule;
  AnalystProfileScheduleBuilder get schedule =>
      _$this._schedule ??= AnalystProfileScheduleBuilder();
  set schedule(AnalystProfileScheduleBuilder? schedule) =>
      _$this._schedule = schedule;

  AnalystProfileScopeBuilder? _scope;
  AnalystProfileScopeBuilder get scope =>
      _$this._scope ??= AnalystProfileScopeBuilder();
  set scope(AnalystProfileScopeBuilder? scope) => _$this._scope = scope;

  String? _lookback;
  String? get lookback => _$this._lookback;
  set lookback(String? lookback) => _$this._lookback = lookback;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  AnalystProfileEffortEnum? _effort;
  AnalystProfileEffortEnum? get effort => _$this._effort;
  set effort(AnalystProfileEffortEnum? effort) => _$this._effort = effort;

  int? _maxRunsPerDay;
  int? get maxRunsPerDay => _$this._maxRunsPerDay;
  set maxRunsPerDay(int? maxRunsPerDay) =>
      _$this._maxRunsPerDay = maxRunsPerDay;

  int? _maxTokensPerRun;
  int? get maxTokensPerRun => _$this._maxTokensPerRun;
  set maxTokensPerRun(int? maxTokensPerRun) =>
      _$this._maxTokensPerRun = maxTokensPerRun;

  int? _maxToolCalls;
  int? get maxToolCalls => _$this._maxToolCalls;
  set maxToolCalls(int? maxToolCalls) => _$this._maxToolCalls = maxToolCalls;

  int? _maxWallSeconds;
  int? get maxWallSeconds => _$this._maxWallSeconds;
  set maxWallSeconds(int? maxWallSeconds) =>
      _$this._maxWallSeconds = maxWallSeconds;

  bool? _allowActions;
  bool? get allowActions => _$this._allowActions;
  set allowActions(bool? allowActions) => _$this._allowActions = allowActions;

  ListBuilder<AnalystProfileAllowedActionsEnum>? _allowedActions;
  ListBuilder<AnalystProfileAllowedActionsEnum> get allowedActions =>
      _$this._allowedActions ??=
          ListBuilder<AnalystProfileAllowedActionsEnum>();
  set allowedActions(
          ListBuilder<AnalystProfileAllowedActionsEnum>? allowedActions) =>
      _$this._allowedActions = allowedActions;

  int? _maxAutoActionsPerDay;
  int? get maxAutoActionsPerDay => _$this._maxAutoActionsPerDay;
  set maxAutoActionsPerDay(int? maxAutoActionsPerDay) =>
      _$this._maxAutoActionsPerDay = maxAutoActionsPerDay;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  AnalystProfileNotifyMinPriorityEnum? _notifyMinPriority;
  AnalystProfileNotifyMinPriorityEnum? get notifyMinPriority =>
      _$this._notifyMinPriority;
  set notifyMinPriority(
          AnalystProfileNotifyMinPriorityEnum? notifyMinPriority) =>
      _$this._notifyMinPriority = notifyMinPriority;

  String? _ownerTokenId;
  String? get ownerTokenId => _$this._ownerTokenId;
  set ownerTokenId(String? ownerTokenId) => _$this._ownerTokenId = ownerTokenId;

  DateTime? _nextRunAt;
  DateTime? get nextRunAt => _$this._nextRunAt;
  set nextRunAt(DateTime? nextRunAt) => _$this._nextRunAt = nextRunAt;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AnalystProfileBuilder() {
    AnalystProfile._defaults(this);
  }

  AnalystProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _enabled = $v.enabled;
      _schedule = $v.schedule.toBuilder();
      _scope = $v.scope?.toBuilder();
      _lookback = $v.lookback;
      _instructions = $v.instructions;
      _providerId = $v.providerId;
      _effort = $v.effort;
      _maxRunsPerDay = $v.maxRunsPerDay;
      _maxTokensPerRun = $v.maxTokensPerRun;
      _maxToolCalls = $v.maxToolCalls;
      _maxWallSeconds = $v.maxWallSeconds;
      _allowActions = $v.allowActions;
      _allowedActions = $v.allowedActions?.toBuilder();
      _maxAutoActionsPerDay = $v.maxAutoActionsPerDay;
      _channelIds = $v.channelIds?.toBuilder();
      _notifyMinPriority = $v.notifyMinPriority;
      _ownerTokenId = $v.ownerTokenId;
      _nextRunAt = $v.nextRunAt;
      _lastRunAt = $v.lastRunAt;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystProfile other) {
    _$v = other as _$AnalystProfile;
  }

  @override
  void update(void Function(AnalystProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystProfile build() => _build();

  _$AnalystProfile _build() {
    _$AnalystProfile _$result;
    try {
      _$result = _$v ??
          _$AnalystProfile._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AnalystProfile', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AnalystProfile', 'name'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'AnalystProfile', 'enabled'),
            schedule: schedule.build(),
            scope: _scope?.build(),
            lookback: lookback,
            instructions: instructions,
            providerId: providerId,
            effort: BuiltValueNullFieldError.checkNotNull(
                effort, r'AnalystProfile', 'effort'),
            maxRunsPerDay: maxRunsPerDay,
            maxTokensPerRun: maxTokensPerRun,
            maxToolCalls: maxToolCalls,
            maxWallSeconds: maxWallSeconds,
            allowActions: BuiltValueNullFieldError.checkNotNull(
                allowActions, r'AnalystProfile', 'allowActions'),
            allowedActions: _allowedActions?.build(),
            maxAutoActionsPerDay: maxAutoActionsPerDay,
            channelIds: _channelIds?.build(),
            notifyMinPriority: notifyMinPriority,
            ownerTokenId: BuiltValueNullFieldError.checkNotNull(
                ownerTokenId, r'AnalystProfile', 'ownerTokenId'),
            nextRunAt: nextRunAt,
            lastRunAt: lastRunAt,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AnalystProfile', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'AnalystProfile', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
        _$failedField = 'scope';
        _scope?.build();

        _$failedField = 'allowedActions';
        _allowedActions?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalystProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
