// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorBatchModeEnum _$precursorBatchModeEnum_mine =
    const PrecursorBatchModeEnum._('mine');
const PrecursorBatchModeEnum _$precursorBatchModeEnum_retest =
    const PrecursorBatchModeEnum._('retest');

PrecursorBatchModeEnum _$precursorBatchModeEnumValueOf(String name) {
  switch (name) {
    case 'mine':
      return _$precursorBatchModeEnum_mine;
    case 'retest':
      return _$precursorBatchModeEnum_retest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorBatchModeEnum> _$precursorBatchModeEnumValues =
    BuiltSet<PrecursorBatchModeEnum>(const <PrecursorBatchModeEnum>[
  _$precursorBatchModeEnum_mine,
  _$precursorBatchModeEnum_retest,
]);

const PrecursorBatchTriggerEnum _$precursorBatchTriggerEnum_schedule =
    const PrecursorBatchTriggerEnum._('schedule');
const PrecursorBatchTriggerEnum _$precursorBatchTriggerEnum_manual =
    const PrecursorBatchTriggerEnum._('manual');
const PrecursorBatchTriggerEnum _$precursorBatchTriggerEnum_cycle =
    const PrecursorBatchTriggerEnum._('cycle');

PrecursorBatchTriggerEnum _$precursorBatchTriggerEnumValueOf(String name) {
  switch (name) {
    case 'schedule':
      return _$precursorBatchTriggerEnum_schedule;
    case 'manual':
      return _$precursorBatchTriggerEnum_manual;
    case 'cycle':
      return _$precursorBatchTriggerEnum_cycle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorBatchTriggerEnum> _$precursorBatchTriggerEnumValues =
    BuiltSet<PrecursorBatchTriggerEnum>(const <PrecursorBatchTriggerEnum>[
  _$precursorBatchTriggerEnum_schedule,
  _$precursorBatchTriggerEnum_manual,
  _$precursorBatchTriggerEnum_cycle,
]);

const PrecursorBatchStatusEnum _$precursorBatchStatusEnum_running =
    const PrecursorBatchStatusEnum._('running');
const PrecursorBatchStatusEnum _$precursorBatchStatusEnum_done =
    const PrecursorBatchStatusEnum._('done');
const PrecursorBatchStatusEnum _$precursorBatchStatusEnum_failed =
    const PrecursorBatchStatusEnum._('failed');
const PrecursorBatchStatusEnum _$precursorBatchStatusEnum_cancelled =
    const PrecursorBatchStatusEnum._('cancelled');

PrecursorBatchStatusEnum _$precursorBatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'running':
      return _$precursorBatchStatusEnum_running;
    case 'done':
      return _$precursorBatchStatusEnum_done;
    case 'failed':
      return _$precursorBatchStatusEnum_failed;
    case 'cancelled':
      return _$precursorBatchStatusEnum_cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorBatchStatusEnum> _$precursorBatchStatusEnumValues =
    BuiltSet<PrecursorBatchStatusEnum>(const <PrecursorBatchStatusEnum>[
  _$precursorBatchStatusEnum_running,
  _$precursorBatchStatusEnum_done,
  _$precursorBatchStatusEnum_failed,
  _$precursorBatchStatusEnum_cancelled,
]);

const PrecursorBatchMethodEnum _$precursorBatchMethodEnum_BH =
    const PrecursorBatchMethodEnum._('BH');
const PrecursorBatchMethodEnum _$precursorBatchMethodEnum_BY =
    const PrecursorBatchMethodEnum._('BY');

PrecursorBatchMethodEnum _$precursorBatchMethodEnumValueOf(String name) {
  switch (name) {
    case 'BH':
      return _$precursorBatchMethodEnum_BH;
    case 'BY':
      return _$precursorBatchMethodEnum_BY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorBatchMethodEnum> _$precursorBatchMethodEnumValues =
    BuiltSet<PrecursorBatchMethodEnum>(const <PrecursorBatchMethodEnum>[
  _$precursorBatchMethodEnum_BH,
  _$precursorBatchMethodEnum_BY,
]);

Serializer<PrecursorBatchModeEnum> _$precursorBatchModeEnumSerializer =
    _$PrecursorBatchModeEnumSerializer();
Serializer<PrecursorBatchTriggerEnum> _$precursorBatchTriggerEnumSerializer =
    _$PrecursorBatchTriggerEnumSerializer();
Serializer<PrecursorBatchStatusEnum> _$precursorBatchStatusEnumSerializer =
    _$PrecursorBatchStatusEnumSerializer();
Serializer<PrecursorBatchMethodEnum> _$precursorBatchMethodEnumSerializer =
    _$PrecursorBatchMethodEnumSerializer();

class _$PrecursorBatchModeEnumSerializer
    implements PrimitiveSerializer<PrecursorBatchModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mine': 'mine',
    'retest': 'retest',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mine': 'mine',
    'retest': 'retest',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorBatchModeEnum];
  @override
  final String wireName = 'PrecursorBatchModeEnum';

  @override
  Object serialize(Serializers serializers, PrecursorBatchModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrecursorBatchModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrecursorBatchModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrecursorBatchTriggerEnumSerializer
    implements PrimitiveSerializer<PrecursorBatchTriggerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'schedule': 'schedule',
    'manual': 'manual',
    'cycle': 'cycle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'schedule': 'schedule',
    'manual': 'manual',
    'cycle': 'cycle',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorBatchTriggerEnum];
  @override
  final String wireName = 'PrecursorBatchTriggerEnum';

  @override
  Object serialize(Serializers serializers, PrecursorBatchTriggerEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrecursorBatchTriggerEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrecursorBatchTriggerEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrecursorBatchStatusEnumSerializer
    implements PrimitiveSerializer<PrecursorBatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'cancelled': 'cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorBatchStatusEnum];
  @override
  final String wireName = 'PrecursorBatchStatusEnum';

  @override
  Object serialize(Serializers serializers, PrecursorBatchStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrecursorBatchStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrecursorBatchStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrecursorBatchMethodEnumSerializer
    implements PrimitiveSerializer<PrecursorBatchMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BH': 'BH',
    'BY': 'BY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BH': 'BH',
    'BY': 'BY',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorBatchMethodEnum];
  @override
  final String wireName = 'PrecursorBatchMethodEnum';

  @override
  Object serialize(Serializers serializers, PrecursorBatchMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrecursorBatchMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrecursorBatchMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrecursorBatch extends PrecursorBatch {
  @override
  final String id;
  @override
  final String? jobId;
  @override
  final PrecursorBatchModeEnum mode;
  @override
  final PrecursorBatchTriggerEnum? trigger;
  @override
  final PrecursorBatchStatusEnum status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final int candidatesGenerated;
  @override
  final int tested;
  @override
  final int capped;
  @override
  final int? insufficient;
  @override
  final int survivors;
  @override
  final int validated;
  @override
  final num q;
  @override
  final PrecursorBatchMethodEnum method;
  @override
  final BuiltMap<String, JsonObject?>? windows;
  @override
  final String? error;
  @override
  final String? manifestId;

  factory _$PrecursorBatch([void Function(PrecursorBatchBuilder)? updates]) =>
      (PrecursorBatchBuilder()..update(updates))._build();

  _$PrecursorBatch._(
      {required this.id,
      this.jobId,
      required this.mode,
      this.trigger,
      required this.status,
      required this.startedAt,
      this.finishedAt,
      required this.candidatesGenerated,
      required this.tested,
      required this.capped,
      this.insufficient,
      required this.survivors,
      required this.validated,
      required this.q,
      required this.method,
      this.windows,
      this.error,
      this.manifestId})
      : super._();
  @override
  PrecursorBatch rebuild(void Function(PrecursorBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorBatchBuilder toBuilder() => PrecursorBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorBatch &&
        id == other.id &&
        jobId == other.jobId &&
        mode == other.mode &&
        trigger == other.trigger &&
        status == other.status &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        candidatesGenerated == other.candidatesGenerated &&
        tested == other.tested &&
        capped == other.capped &&
        insufficient == other.insufficient &&
        survivors == other.survivors &&
        validated == other.validated &&
        q == other.q &&
        method == other.method &&
        windows == other.windows &&
        error == other.error &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, candidatesGenerated.hashCode);
    _$hash = $jc(_$hash, tested.hashCode);
    _$hash = $jc(_$hash, capped.hashCode);
    _$hash = $jc(_$hash, insufficient.hashCode);
    _$hash = $jc(_$hash, survivors.hashCode);
    _$hash = $jc(_$hash, validated.hashCode);
    _$hash = $jc(_$hash, q.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorBatch')
          ..add('id', id)
          ..add('jobId', jobId)
          ..add('mode', mode)
          ..add('trigger', trigger)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('candidatesGenerated', candidatesGenerated)
          ..add('tested', tested)
          ..add('capped', capped)
          ..add('insufficient', insufficient)
          ..add('survivors', survivors)
          ..add('validated', validated)
          ..add('q', q)
          ..add('method', method)
          ..add('windows', windows)
          ..add('error', error)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class PrecursorBatchBuilder
    implements Builder<PrecursorBatch, PrecursorBatchBuilder> {
  _$PrecursorBatch? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  PrecursorBatchModeEnum? _mode;
  PrecursorBatchModeEnum? get mode => _$this._mode;
  set mode(PrecursorBatchModeEnum? mode) => _$this._mode = mode;

  PrecursorBatchTriggerEnum? _trigger;
  PrecursorBatchTriggerEnum? get trigger => _$this._trigger;
  set trigger(PrecursorBatchTriggerEnum? trigger) => _$this._trigger = trigger;

  PrecursorBatchStatusEnum? _status;
  PrecursorBatchStatusEnum? get status => _$this._status;
  set status(PrecursorBatchStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  int? _candidatesGenerated;
  int? get candidatesGenerated => _$this._candidatesGenerated;
  set candidatesGenerated(int? candidatesGenerated) =>
      _$this._candidatesGenerated = candidatesGenerated;

  int? _tested;
  int? get tested => _$this._tested;
  set tested(int? tested) => _$this._tested = tested;

  int? _capped;
  int? get capped => _$this._capped;
  set capped(int? capped) => _$this._capped = capped;

  int? _insufficient;
  int? get insufficient => _$this._insufficient;
  set insufficient(int? insufficient) => _$this._insufficient = insufficient;

  int? _survivors;
  int? get survivors => _$this._survivors;
  set survivors(int? survivors) => _$this._survivors = survivors;

  int? _validated;
  int? get validated => _$this._validated;
  set validated(int? validated) => _$this._validated = validated;

  num? _q;
  num? get q => _$this._q;
  set q(num? q) => _$this._q = q;

  PrecursorBatchMethodEnum? _method;
  PrecursorBatchMethodEnum? get method => _$this._method;
  set method(PrecursorBatchMethodEnum? method) => _$this._method = method;

  MapBuilder<String, JsonObject?>? _windows;
  MapBuilder<String, JsonObject?> get windows =>
      _$this._windows ??= MapBuilder<String, JsonObject?>();
  set windows(MapBuilder<String, JsonObject?>? windows) =>
      _$this._windows = windows;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  PrecursorBatchBuilder() {
    PrecursorBatch._defaults(this);
  }

  PrecursorBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _jobId = $v.jobId;
      _mode = $v.mode;
      _trigger = $v.trigger;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _candidatesGenerated = $v.candidatesGenerated;
      _tested = $v.tested;
      _capped = $v.capped;
      _insufficient = $v.insufficient;
      _survivors = $v.survivors;
      _validated = $v.validated;
      _q = $v.q;
      _method = $v.method;
      _windows = $v.windows?.toBuilder();
      _error = $v.error;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorBatch other) {
    _$v = other as _$PrecursorBatch;
  }

  @override
  void update(void Function(PrecursorBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorBatch build() => _build();

  _$PrecursorBatch _build() {
    _$PrecursorBatch _$result;
    try {
      _$result = _$v ??
          _$PrecursorBatch._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PrecursorBatch', 'id'),
            jobId: jobId,
            mode: BuiltValueNullFieldError.checkNotNull(
                mode, r'PrecursorBatch', 'mode'),
            trigger: trigger,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'PrecursorBatch', 'status'),
            startedAt: BuiltValueNullFieldError.checkNotNull(
                startedAt, r'PrecursorBatch', 'startedAt'),
            finishedAt: finishedAt,
            candidatesGenerated: BuiltValueNullFieldError.checkNotNull(
                candidatesGenerated, r'PrecursorBatch', 'candidatesGenerated'),
            tested: BuiltValueNullFieldError.checkNotNull(
                tested, r'PrecursorBatch', 'tested'),
            capped: BuiltValueNullFieldError.checkNotNull(
                capped, r'PrecursorBatch', 'capped'),
            insufficient: insufficient,
            survivors: BuiltValueNullFieldError.checkNotNull(
                survivors, r'PrecursorBatch', 'survivors'),
            validated: BuiltValueNullFieldError.checkNotNull(
                validated, r'PrecursorBatch', 'validated'),
            q: BuiltValueNullFieldError.checkNotNull(q, r'PrecursorBatch', 'q'),
            method: BuiltValueNullFieldError.checkNotNull(
                method, r'PrecursorBatch', 'method'),
            windows: _windows?.build(),
            error: error,
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'windows';
        _windows?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PrecursorBatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
