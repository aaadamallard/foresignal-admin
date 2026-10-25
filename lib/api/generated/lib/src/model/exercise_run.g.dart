// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExerciseRunSpeedEnum _$exerciseRunSpeedEnum_realtime =
    const ExerciseRunSpeedEnum._('realtime');
const ExerciseRunSpeedEnum _$exerciseRunSpeedEnum_x10 =
    const ExerciseRunSpeedEnum._('x10');
const ExerciseRunSpeedEnum _$exerciseRunSpeedEnum_x60 =
    const ExerciseRunSpeedEnum._('x60');
const ExerciseRunSpeedEnum _$exerciseRunSpeedEnum_max =
    const ExerciseRunSpeedEnum._('max');
const ExerciseRunSpeedEnum _$exerciseRunSpeedEnum_unknownDefaultOpenApi =
    const ExerciseRunSpeedEnum._('unknownDefaultOpenApi');

ExerciseRunSpeedEnum _$exerciseRunSpeedEnumValueOf(String name) {
  switch (name) {
    case 'realtime':
      return _$exerciseRunSpeedEnum_realtime;
    case 'x10':
      return _$exerciseRunSpeedEnum_x10;
    case 'x60':
      return _$exerciseRunSpeedEnum_x60;
    case 'max':
      return _$exerciseRunSpeedEnum_max;
    case 'unknownDefaultOpenApi':
      return _$exerciseRunSpeedEnum_unknownDefaultOpenApi;
    default:
      return _$exerciseRunSpeedEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExerciseRunSpeedEnum> _$exerciseRunSpeedEnumValues =
    BuiltSet<ExerciseRunSpeedEnum>(const <ExerciseRunSpeedEnum>[
      _$exerciseRunSpeedEnum_realtime,
      _$exerciseRunSpeedEnum_x10,
      _$exerciseRunSpeedEnum_x60,
      _$exerciseRunSpeedEnum_max,
      _$exerciseRunSpeedEnum_unknownDefaultOpenApi,
    ]);

const ExerciseRunStatusEnum _$exerciseRunStatusEnum_PLANNED =
    const ExerciseRunStatusEnum._('PLANNED');
const ExerciseRunStatusEnum _$exerciseRunStatusEnum_RUNNING =
    const ExerciseRunStatusEnum._('RUNNING');
const ExerciseRunStatusEnum _$exerciseRunStatusEnum_DONE =
    const ExerciseRunStatusEnum._('DONE');
const ExerciseRunStatusEnum _$exerciseRunStatusEnum_CANCELLED =
    const ExerciseRunStatusEnum._('CANCELLED');
const ExerciseRunStatusEnum _$exerciseRunStatusEnum_FAILED =
    const ExerciseRunStatusEnum._('FAILED');
const ExerciseRunStatusEnum _$exerciseRunStatusEnum_unknownDefaultOpenApi =
    const ExerciseRunStatusEnum._('unknownDefaultOpenApi');

ExerciseRunStatusEnum _$exerciseRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'PLANNED':
      return _$exerciseRunStatusEnum_PLANNED;
    case 'RUNNING':
      return _$exerciseRunStatusEnum_RUNNING;
    case 'DONE':
      return _$exerciseRunStatusEnum_DONE;
    case 'CANCELLED':
      return _$exerciseRunStatusEnum_CANCELLED;
    case 'FAILED':
      return _$exerciseRunStatusEnum_FAILED;
    case 'unknownDefaultOpenApi':
      return _$exerciseRunStatusEnum_unknownDefaultOpenApi;
    default:
      return _$exerciseRunStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExerciseRunStatusEnum> _$exerciseRunStatusEnumValues =
    BuiltSet<ExerciseRunStatusEnum>(const <ExerciseRunStatusEnum>[
      _$exerciseRunStatusEnum_PLANNED,
      _$exerciseRunStatusEnum_RUNNING,
      _$exerciseRunStatusEnum_DONE,
      _$exerciseRunStatusEnum_CANCELLED,
      _$exerciseRunStatusEnum_FAILED,
      _$exerciseRunStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExerciseRunSpeedEnum> _$exerciseRunSpeedEnumSerializer =
    _$ExerciseRunSpeedEnumSerializer();
Serializer<ExerciseRunStatusEnum> _$exerciseRunStatusEnumSerializer =
    _$ExerciseRunStatusEnumSerializer();

class _$ExerciseRunSpeedEnumSerializer
    implements PrimitiveSerializer<ExerciseRunSpeedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'realtime': 'realtime',
    'x10': 'x10',
    'x60': 'x60',
    'max': 'max',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'realtime': 'realtime',
    'x10': 'x10',
    'x60': 'x60',
    'max': 'max',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExerciseRunSpeedEnum];
  @override
  final String wireName = 'ExerciseRunSpeedEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExerciseRunSpeedEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExerciseRunSpeedEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExerciseRunSpeedEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExerciseRunStatusEnumSerializer
    implements PrimitiveSerializer<ExerciseRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PLANNED': 'PLANNED',
    'RUNNING': 'RUNNING',
    'DONE': 'DONE',
    'CANCELLED': 'CANCELLED',
    'FAILED': 'FAILED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PLANNED': 'PLANNED',
    'RUNNING': 'RUNNING',
    'DONE': 'DONE',
    'CANCELLED': 'CANCELLED',
    'FAILED': 'FAILED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExerciseRunStatusEnum];
  @override
  final String wireName = 'ExerciseRunStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExerciseRunStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExerciseRunStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExerciseRunStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExerciseRun extends ExerciseRun {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final String? tag;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final ExerciseRunSpeedEnum? speed;
  @override
  final BuiltList<String>? channelIds;
  @override
  final bool? enrich;
  @override
  final bool? dryRun;
  @override
  final ExerciseRunStatusEnum status;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final ExerciseStats? stats;

  factory _$ExerciseRun([void Function(ExerciseRunBuilder)? updates]) =>
      (ExerciseRunBuilder()..update(updates))._build();

  _$ExerciseRun._({
    required this.id,
    required this.name,
    this.ruleIds,
    this.tag,
    this.from,
    this.to,
    this.fromSeq,
    this.toSeq,
    this.speed,
    this.channelIds,
    this.enrich,
    this.dryRun,
    required this.status,
    this.createdBy,
    required this.createdAt,
    this.startedAt,
    this.finishedAt,
    this.stats,
  }) : super._();
  @override
  ExerciseRun rebuild(void Function(ExerciseRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseRunBuilder toBuilder() => ExerciseRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseRun &&
        id == other.id &&
        name == other.name &&
        ruleIds == other.ruleIds &&
        tag == other.tag &&
        from == other.from &&
        to == other.to &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        speed == other.speed &&
        channelIds == other.channelIds &&
        enrich == other.enrich &&
        dryRun == other.dryRun &&
        status == other.status &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        stats == other.stats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, enrich.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseRun')
          ..add('id', id)
          ..add('name', name)
          ..add('ruleIds', ruleIds)
          ..add('tag', tag)
          ..add('from', from)
          ..add('to', to)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('speed', speed)
          ..add('channelIds', channelIds)
          ..add('enrich', enrich)
          ..add('dryRun', dryRun)
          ..add('status', status)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('stats', stats))
        .toString();
  }
}

class ExerciseRunBuilder implements Builder<ExerciseRun, ExerciseRunBuilder> {
  _$ExerciseRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  ExerciseRunSpeedEnum? _speed;
  ExerciseRunSpeedEnum? get speed => _$this._speed;
  set speed(ExerciseRunSpeedEnum? speed) => _$this._speed = speed;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  bool? _enrich;
  bool? get enrich => _$this._enrich;
  set enrich(bool? enrich) => _$this._enrich = enrich;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ExerciseRunStatusEnum? _status;
  ExerciseRunStatusEnum? get status => _$this._status;
  set status(ExerciseRunStatusEnum? status) => _$this._status = status;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  ExerciseStatsBuilder? _stats;
  ExerciseStatsBuilder get stats => _$this._stats ??= ExerciseStatsBuilder();
  set stats(ExerciseStatsBuilder? stats) => _$this._stats = stats;

  ExerciseRunBuilder() {
    ExerciseRun._defaults(this);
  }

  ExerciseRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _ruleIds = $v.ruleIds?.toBuilder();
      _tag = $v.tag;
      _from = $v.from;
      _to = $v.to;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _speed = $v.speed;
      _channelIds = $v.channelIds?.toBuilder();
      _enrich = $v.enrich;
      _dryRun = $v.dryRun;
      _status = $v.status;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _stats = $v.stats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseRun other) {
    _$v = other as _$ExerciseRun;
  }

  @override
  void update(void Function(ExerciseRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseRun build() => _build();

  _$ExerciseRun _build() {
    _$ExerciseRun _$result;
    try {
      _$result =
          _$v ??
          _$ExerciseRun._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ExerciseRun', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ExerciseRun',
              'name',
            ),
            ruleIds: _ruleIds?.build(),
            tag: tag,
            from: from,
            to: to,
            fromSeq: fromSeq,
            toSeq: toSeq,
            speed: speed,
            channelIds: _channelIds?.build(),
            enrich: enrich,
            dryRun: dryRun,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExerciseRun',
              'status',
            ),
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ExerciseRun',
              'createdAt',
            ),
            startedAt: startedAt,
            finishedAt: finishedAt,
            stats: _stats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleIds';
        _ruleIds?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();

        _$failedField = 'stats';
        _stats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExerciseRun',
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
