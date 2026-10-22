// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CycleRunCadenceEnum _$cycleRunCadenceEnum_daily =
    const CycleRunCadenceEnum._('daily');
const CycleRunCadenceEnum _$cycleRunCadenceEnum_weekly =
    const CycleRunCadenceEnum._('weekly');
const CycleRunCadenceEnum _$cycleRunCadenceEnum_monthly =
    const CycleRunCadenceEnum._('monthly');
const CycleRunCadenceEnum _$cycleRunCadenceEnum_onDemand =
    const CycleRunCadenceEnum._('onDemand');

CycleRunCadenceEnum _$cycleRunCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$cycleRunCadenceEnum_daily;
    case 'weekly':
      return _$cycleRunCadenceEnum_weekly;
    case 'monthly':
      return _$cycleRunCadenceEnum_monthly;
    case 'onDemand':
      return _$cycleRunCadenceEnum_onDemand;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CycleRunCadenceEnum> _$cycleRunCadenceEnumValues =
    BuiltSet<CycleRunCadenceEnum>(const <CycleRunCadenceEnum>[
  _$cycleRunCadenceEnum_daily,
  _$cycleRunCadenceEnum_weekly,
  _$cycleRunCadenceEnum_monthly,
  _$cycleRunCadenceEnum_onDemand,
]);

const CycleRunTriggerEnum _$cycleRunTriggerEnum_schedule =
    const CycleRunTriggerEnum._('schedule');
const CycleRunTriggerEnum _$cycleRunTriggerEnum_missed =
    const CycleRunTriggerEnum._('missed');
const CycleRunTriggerEnum _$cycleRunTriggerEnum_manual =
    const CycleRunTriggerEnum._('manual');
const CycleRunTriggerEnum _$cycleRunTriggerEnum_situation =
    const CycleRunTriggerEnum._('situation');

CycleRunTriggerEnum _$cycleRunTriggerEnumValueOf(String name) {
  switch (name) {
    case 'schedule':
      return _$cycleRunTriggerEnum_schedule;
    case 'missed':
      return _$cycleRunTriggerEnum_missed;
    case 'manual':
      return _$cycleRunTriggerEnum_manual;
    case 'situation':
      return _$cycleRunTriggerEnum_situation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CycleRunTriggerEnum> _$cycleRunTriggerEnumValues =
    BuiltSet<CycleRunTriggerEnum>(const <CycleRunTriggerEnum>[
  _$cycleRunTriggerEnum_schedule,
  _$cycleRunTriggerEnum_missed,
  _$cycleRunTriggerEnum_manual,
  _$cycleRunTriggerEnum_situation,
]);

const CycleRunStatusEnum _$cycleRunStatusEnum_queued =
    const CycleRunStatusEnum._('queued');
const CycleRunStatusEnum _$cycleRunStatusEnum_running =
    const CycleRunStatusEnum._('running');
const CycleRunStatusEnum _$cycleRunStatusEnum_ok =
    const CycleRunStatusEnum._('ok');
const CycleRunStatusEnum _$cycleRunStatusEnum_partial =
    const CycleRunStatusEnum._('partial');
const CycleRunStatusEnum _$cycleRunStatusEnum_digestOnly =
    const CycleRunStatusEnum._('digestOnly');
const CycleRunStatusEnum _$cycleRunStatusEnum_failed =
    const CycleRunStatusEnum._('failed');

CycleRunStatusEnum _$cycleRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$cycleRunStatusEnum_queued;
    case 'running':
      return _$cycleRunStatusEnum_running;
    case 'ok':
      return _$cycleRunStatusEnum_ok;
    case 'partial':
      return _$cycleRunStatusEnum_partial;
    case 'digestOnly':
      return _$cycleRunStatusEnum_digestOnly;
    case 'failed':
      return _$cycleRunStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CycleRunStatusEnum> _$cycleRunStatusEnumValues =
    BuiltSet<CycleRunStatusEnum>(const <CycleRunStatusEnum>[
  _$cycleRunStatusEnum_queued,
  _$cycleRunStatusEnum_running,
  _$cycleRunStatusEnum_ok,
  _$cycleRunStatusEnum_partial,
  _$cycleRunStatusEnum_digestOnly,
  _$cycleRunStatusEnum_failed,
]);

Serializer<CycleRunCadenceEnum> _$cycleRunCadenceEnumSerializer =
    _$CycleRunCadenceEnumSerializer();
Serializer<CycleRunTriggerEnum> _$cycleRunTriggerEnumSerializer =
    _$CycleRunTriggerEnumSerializer();
Serializer<CycleRunStatusEnum> _$cycleRunStatusEnumSerializer =
    _$CycleRunStatusEnumSerializer();

class _$CycleRunCadenceEnumSerializer
    implements PrimitiveSerializer<CycleRunCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'onDemand': 'on-demand',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'on-demand': 'onDemand',
  };

  @override
  final Iterable<Type> types = const <Type>[CycleRunCadenceEnum];
  @override
  final String wireName = 'CycleRunCadenceEnum';

  @override
  Object serialize(Serializers serializers, CycleRunCadenceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CycleRunCadenceEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CycleRunCadenceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CycleRunTriggerEnumSerializer
    implements PrimitiveSerializer<CycleRunTriggerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'schedule': 'schedule',
    'missed': 'missed',
    'manual': 'manual',
    'situation': 'situation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'schedule': 'schedule',
    'missed': 'missed',
    'manual': 'manual',
    'situation': 'situation',
  };

  @override
  final Iterable<Type> types = const <Type>[CycleRunTriggerEnum];
  @override
  final String wireName = 'CycleRunTriggerEnum';

  @override
  Object serialize(Serializers serializers, CycleRunTriggerEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CycleRunTriggerEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CycleRunTriggerEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CycleRunStatusEnumSerializer
    implements PrimitiveSerializer<CycleRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'ok': 'ok',
    'partial': 'partial',
    'digestOnly': 'digest-only',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'ok': 'ok',
    'partial': 'partial',
    'digest-only': 'digestOnly',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[CycleRunStatusEnum];
  @override
  final String wireName = 'CycleRunStatusEnum';

  @override
  Object serialize(Serializers serializers, CycleRunStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CycleRunStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CycleRunStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CycleRun extends CycleRun {
  @override
  final String id;
  @override
  final String? cycleId;
  @override
  final String? situationId;
  @override
  final CycleRunCadenceEnum cadence;
  @override
  final CycleRunTriggerEnum trigger;
  @override
  final CycleRunStatusEnum status;
  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;
  @override
  final String? previousRunId;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final CyclePacket? packet;
  @override
  final BuiltList<CycleRunRolesInner>? roles;
  @override
  final int? tokensUsed;
  @override
  final String? assessmentId;
  @override
  final MaintenanceRun? maintenance;
  @override
  final String? manifestId;
  @override
  final BuiltList<String>? warnings;
  @override
  final String? error;

  factory _$CycleRun([void Function(CycleRunBuilder)? updates]) =>
      (CycleRunBuilder()..update(updates))._build();

  _$CycleRun._(
      {required this.id,
      this.cycleId,
      this.situationId,
      required this.cadence,
      required this.trigger,
      required this.status,
      required this.periodStart,
      required this.periodEnd,
      this.previousRunId,
      this.startedAt,
      this.finishedAt,
      this.packet,
      this.roles,
      this.tokensUsed,
      this.assessmentId,
      this.maintenance,
      this.manifestId,
      this.warnings,
      this.error})
      : super._();
  @override
  CycleRun rebuild(void Function(CycleRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CycleRunBuilder toBuilder() => CycleRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CycleRun &&
        id == other.id &&
        cycleId == other.cycleId &&
        situationId == other.situationId &&
        cadence == other.cadence &&
        trigger == other.trigger &&
        status == other.status &&
        periodStart == other.periodStart &&
        periodEnd == other.periodEnd &&
        previousRunId == other.previousRunId &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        packet == other.packet &&
        roles == other.roles &&
        tokensUsed == other.tokensUsed &&
        assessmentId == other.assessmentId &&
        maintenance == other.maintenance &&
        manifestId == other.manifestId &&
        warnings == other.warnings &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, cycleId.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jc(_$hash, periodEnd.hashCode);
    _$hash = $jc(_$hash, previousRunId.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, packet.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, tokensUsed.hashCode);
    _$hash = $jc(_$hash, assessmentId.hashCode);
    _$hash = $jc(_$hash, maintenance.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CycleRun')
          ..add('id', id)
          ..add('cycleId', cycleId)
          ..add('situationId', situationId)
          ..add('cadence', cadence)
          ..add('trigger', trigger)
          ..add('status', status)
          ..add('periodStart', periodStart)
          ..add('periodEnd', periodEnd)
          ..add('previousRunId', previousRunId)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('packet', packet)
          ..add('roles', roles)
          ..add('tokensUsed', tokensUsed)
          ..add('assessmentId', assessmentId)
          ..add('maintenance', maintenance)
          ..add('manifestId', manifestId)
          ..add('warnings', warnings)
          ..add('error', error))
        .toString();
  }
}

class CycleRunBuilder implements Builder<CycleRun, CycleRunBuilder> {
  _$CycleRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _cycleId;
  String? get cycleId => _$this._cycleId;
  set cycleId(String? cycleId) => _$this._cycleId = cycleId;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  CycleRunCadenceEnum? _cadence;
  CycleRunCadenceEnum? get cadence => _$this._cadence;
  set cadence(CycleRunCadenceEnum? cadence) => _$this._cadence = cadence;

  CycleRunTriggerEnum? _trigger;
  CycleRunTriggerEnum? get trigger => _$this._trigger;
  set trigger(CycleRunTriggerEnum? trigger) => _$this._trigger = trigger;

  CycleRunStatusEnum? _status;
  CycleRunStatusEnum? get status => _$this._status;
  set status(CycleRunStatusEnum? status) => _$this._status = status;

  DateTime? _periodStart;
  DateTime? get periodStart => _$this._periodStart;
  set periodStart(DateTime? periodStart) => _$this._periodStart = periodStart;

  DateTime? _periodEnd;
  DateTime? get periodEnd => _$this._periodEnd;
  set periodEnd(DateTime? periodEnd) => _$this._periodEnd = periodEnd;

  String? _previousRunId;
  String? get previousRunId => _$this._previousRunId;
  set previousRunId(String? previousRunId) =>
      _$this._previousRunId = previousRunId;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  CyclePacketBuilder? _packet;
  CyclePacketBuilder get packet => _$this._packet ??= CyclePacketBuilder();
  set packet(CyclePacketBuilder? packet) => _$this._packet = packet;

  ListBuilder<CycleRunRolesInner>? _roles;
  ListBuilder<CycleRunRolesInner> get roles =>
      _$this._roles ??= ListBuilder<CycleRunRolesInner>();
  set roles(ListBuilder<CycleRunRolesInner>? roles) => _$this._roles = roles;

  int? _tokensUsed;
  int? get tokensUsed => _$this._tokensUsed;
  set tokensUsed(int? tokensUsed) => _$this._tokensUsed = tokensUsed;

  String? _assessmentId;
  String? get assessmentId => _$this._assessmentId;
  set assessmentId(String? assessmentId) => _$this._assessmentId = assessmentId;

  MaintenanceRunBuilder? _maintenance;
  MaintenanceRunBuilder get maintenance =>
      _$this._maintenance ??= MaintenanceRunBuilder();
  set maintenance(MaintenanceRunBuilder? maintenance) =>
      _$this._maintenance = maintenance;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  CycleRunBuilder() {
    CycleRun._defaults(this);
  }

  CycleRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _cycleId = $v.cycleId;
      _situationId = $v.situationId;
      _cadence = $v.cadence;
      _trigger = $v.trigger;
      _status = $v.status;
      _periodStart = $v.periodStart;
      _periodEnd = $v.periodEnd;
      _previousRunId = $v.previousRunId;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _packet = $v.packet?.toBuilder();
      _roles = $v.roles?.toBuilder();
      _tokensUsed = $v.tokensUsed;
      _assessmentId = $v.assessmentId;
      _maintenance = $v.maintenance?.toBuilder();
      _manifestId = $v.manifestId;
      _warnings = $v.warnings?.toBuilder();
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CycleRun other) {
    _$v = other as _$CycleRun;
  }

  @override
  void update(void Function(CycleRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CycleRun build() => _build();

  _$CycleRun _build() {
    _$CycleRun _$result;
    try {
      _$result = _$v ??
          _$CycleRun._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'CycleRun', 'id'),
            cycleId: cycleId,
            situationId: situationId,
            cadence: BuiltValueNullFieldError.checkNotNull(
                cadence, r'CycleRun', 'cadence'),
            trigger: BuiltValueNullFieldError.checkNotNull(
                trigger, r'CycleRun', 'trigger'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'CycleRun', 'status'),
            periodStart: BuiltValueNullFieldError.checkNotNull(
                periodStart, r'CycleRun', 'periodStart'),
            periodEnd: BuiltValueNullFieldError.checkNotNull(
                periodEnd, r'CycleRun', 'periodEnd'),
            previousRunId: previousRunId,
            startedAt: startedAt,
            finishedAt: finishedAt,
            packet: _packet?.build(),
            roles: _roles?.build(),
            tokensUsed: tokensUsed,
            assessmentId: assessmentId,
            maintenance: _maintenance?.build(),
            manifestId: manifestId,
            warnings: _warnings?.build(),
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'packet';
        _packet?.build();
        _$failedField = 'roles';
        _roles?.build();

        _$failedField = 'maintenance';
        _maintenance?.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CycleRun', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
