// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MaintenanceRunTriggerEnum _$maintenanceRunTriggerEnum_monthlyCycle =
    const MaintenanceRunTriggerEnum._('monthlyCycle');
const MaintenanceRunTriggerEnum _$maintenanceRunTriggerEnum_manual =
    const MaintenanceRunTriggerEnum._('manual');
const MaintenanceRunTriggerEnum _$maintenanceRunTriggerEnum_schedule =
    const MaintenanceRunTriggerEnum._('schedule');
const MaintenanceRunTriggerEnum
_$maintenanceRunTriggerEnum_unknownDefaultOpenApi =
    const MaintenanceRunTriggerEnum._('unknownDefaultOpenApi');

MaintenanceRunTriggerEnum _$maintenanceRunTriggerEnumValueOf(String name) {
  switch (name) {
    case 'monthlyCycle':
      return _$maintenanceRunTriggerEnum_monthlyCycle;
    case 'manual':
      return _$maintenanceRunTriggerEnum_manual;
    case 'schedule':
      return _$maintenanceRunTriggerEnum_schedule;
    case 'unknownDefaultOpenApi':
      return _$maintenanceRunTriggerEnum_unknownDefaultOpenApi;
    default:
      return _$maintenanceRunTriggerEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MaintenanceRunTriggerEnum> _$maintenanceRunTriggerEnumValues =
    BuiltSet<MaintenanceRunTriggerEnum>(const <MaintenanceRunTriggerEnum>[
      _$maintenanceRunTriggerEnum_monthlyCycle,
      _$maintenanceRunTriggerEnum_manual,
      _$maintenanceRunTriggerEnum_schedule,
      _$maintenanceRunTriggerEnum_unknownDefaultOpenApi,
    ]);

const MaintenanceRunStatusEnum _$maintenanceRunStatusEnum_running =
    const MaintenanceRunStatusEnum._('running');
const MaintenanceRunStatusEnum _$maintenanceRunStatusEnum_done =
    const MaintenanceRunStatusEnum._('done');
const MaintenanceRunStatusEnum _$maintenanceRunStatusEnum_partial =
    const MaintenanceRunStatusEnum._('partial');
const MaintenanceRunStatusEnum _$maintenanceRunStatusEnum_failed =
    const MaintenanceRunStatusEnum._('failed');
const MaintenanceRunStatusEnum
_$maintenanceRunStatusEnum_unknownDefaultOpenApi =
    const MaintenanceRunStatusEnum._('unknownDefaultOpenApi');

MaintenanceRunStatusEnum _$maintenanceRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'running':
      return _$maintenanceRunStatusEnum_running;
    case 'done':
      return _$maintenanceRunStatusEnum_done;
    case 'partial':
      return _$maintenanceRunStatusEnum_partial;
    case 'failed':
      return _$maintenanceRunStatusEnum_failed;
    case 'unknownDefaultOpenApi':
      return _$maintenanceRunStatusEnum_unknownDefaultOpenApi;
    default:
      return _$maintenanceRunStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MaintenanceRunStatusEnum> _$maintenanceRunStatusEnumValues =
    BuiltSet<MaintenanceRunStatusEnum>(const <MaintenanceRunStatusEnum>[
      _$maintenanceRunStatusEnum_running,
      _$maintenanceRunStatusEnum_done,
      _$maintenanceRunStatusEnum_partial,
      _$maintenanceRunStatusEnum_failed,
      _$maintenanceRunStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<MaintenanceRunTriggerEnum> _$maintenanceRunTriggerEnumSerializer =
    _$MaintenanceRunTriggerEnumSerializer();
Serializer<MaintenanceRunStatusEnum> _$maintenanceRunStatusEnumSerializer =
    _$MaintenanceRunStatusEnumSerializer();

class _$MaintenanceRunTriggerEnumSerializer
    implements PrimitiveSerializer<MaintenanceRunTriggerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthlyCycle': 'monthly-cycle',
    'manual': 'manual',
    'schedule': 'schedule',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monthly-cycle': 'monthlyCycle',
    'manual': 'manual',
    'schedule': 'schedule',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MaintenanceRunTriggerEnum];
  @override
  final String wireName = 'MaintenanceRunTriggerEnum';

  @override
  Object serialize(
    Serializers serializers,
    MaintenanceRunTriggerEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MaintenanceRunTriggerEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MaintenanceRunTriggerEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MaintenanceRunStatusEnumSerializer
    implements PrimitiveSerializer<MaintenanceRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
    'done': 'done',
    'partial': 'partial',
    'failed': 'failed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
    'done': 'done',
    'partial': 'partial',
    'failed': 'failed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MaintenanceRunStatusEnum];
  @override
  final String wireName = 'MaintenanceRunStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    MaintenanceRunStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MaintenanceRunStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MaintenanceRunStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MaintenanceRun extends MaintenanceRun {
  @override
  final String id;
  @override
  final MaintenanceRunTriggerEnum trigger;
  @override
  final MaintenanceRunStatusEnum status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final BuiltList<MaintenanceRunStepsInner> steps;

  factory _$MaintenanceRun([void Function(MaintenanceRunBuilder)? updates]) =>
      (MaintenanceRunBuilder()..update(updates))._build();

  _$MaintenanceRun._({
    required this.id,
    required this.trigger,
    required this.status,
    required this.startedAt,
    this.finishedAt,
    required this.steps,
  }) : super._();
  @override
  MaintenanceRun rebuild(void Function(MaintenanceRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaintenanceRunBuilder toBuilder() => MaintenanceRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaintenanceRun &&
        id == other.id &&
        trigger == other.trigger &&
        status == other.status &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        steps == other.steps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaintenanceRun')
          ..add('id', id)
          ..add('trigger', trigger)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('steps', steps))
        .toString();
  }
}

class MaintenanceRunBuilder
    implements Builder<MaintenanceRun, MaintenanceRunBuilder> {
  _$MaintenanceRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MaintenanceRunTriggerEnum? _trigger;
  MaintenanceRunTriggerEnum? get trigger => _$this._trigger;
  set trigger(MaintenanceRunTriggerEnum? trigger) => _$this._trigger = trigger;

  MaintenanceRunStatusEnum? _status;
  MaintenanceRunStatusEnum? get status => _$this._status;
  set status(MaintenanceRunStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  ListBuilder<MaintenanceRunStepsInner>? _steps;
  ListBuilder<MaintenanceRunStepsInner> get steps =>
      _$this._steps ??= ListBuilder<MaintenanceRunStepsInner>();
  set steps(ListBuilder<MaintenanceRunStepsInner>? steps) =>
      _$this._steps = steps;

  MaintenanceRunBuilder() {
    MaintenanceRun._defaults(this);
  }

  MaintenanceRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _trigger = $v.trigger;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _steps = $v.steps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaintenanceRun other) {
    _$v = other as _$MaintenanceRun;
  }

  @override
  void update(void Function(MaintenanceRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaintenanceRun build() => _build();

  _$MaintenanceRun _build() {
    _$MaintenanceRun _$result;
    try {
      _$result =
          _$v ??
          _$MaintenanceRun._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'MaintenanceRun',
              'id',
            ),
            trigger: BuiltValueNullFieldError.checkNotNull(
              trigger,
              r'MaintenanceRun',
              'trigger',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'MaintenanceRun',
              'status',
            ),
            startedAt: BuiltValueNullFieldError.checkNotNull(
              startedAt,
              r'MaintenanceRun',
              'startedAt',
            ),
            finishedAt: finishedAt,
            steps: steps.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'steps';
        steps.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MaintenanceRun',
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
