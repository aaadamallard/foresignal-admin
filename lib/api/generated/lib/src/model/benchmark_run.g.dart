// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkRunSuiteEnum _$benchmarkRunSuiteEnum_synthetic =
    const BenchmarkRunSuiteEnum._('synthetic');
const BenchmarkRunSuiteEnum _$benchmarkRunSuiteEnum_historical =
    const BenchmarkRunSuiteEnum._('historical');
const BenchmarkRunSuiteEnum _$benchmarkRunSuiteEnum_all =
    const BenchmarkRunSuiteEnum._('all');
const BenchmarkRunSuiteEnum _$benchmarkRunSuiteEnum_unknownDefaultOpenApi =
    const BenchmarkRunSuiteEnum._('unknownDefaultOpenApi');

BenchmarkRunSuiteEnum _$benchmarkRunSuiteEnumValueOf(String name) {
  switch (name) {
    case 'synthetic':
      return _$benchmarkRunSuiteEnum_synthetic;
    case 'historical':
      return _$benchmarkRunSuiteEnum_historical;
    case 'all':
      return _$benchmarkRunSuiteEnum_all;
    case 'unknownDefaultOpenApi':
      return _$benchmarkRunSuiteEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkRunSuiteEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkRunSuiteEnum> _$benchmarkRunSuiteEnumValues =
    BuiltSet<BenchmarkRunSuiteEnum>(const <BenchmarkRunSuiteEnum>[
      _$benchmarkRunSuiteEnum_synthetic,
      _$benchmarkRunSuiteEnum_historical,
      _$benchmarkRunSuiteEnum_all,
      _$benchmarkRunSuiteEnum_unknownDefaultOpenApi,
    ]);

const BenchmarkRunJobStatusEnum _$benchmarkRunJobStatusEnum_queued =
    const BenchmarkRunJobStatusEnum._('queued');
const BenchmarkRunJobStatusEnum _$benchmarkRunJobStatusEnum_running =
    const BenchmarkRunJobStatusEnum._('running');
const BenchmarkRunJobStatusEnum _$benchmarkRunJobStatusEnum_done =
    const BenchmarkRunJobStatusEnum._('done');
const BenchmarkRunJobStatusEnum _$benchmarkRunJobStatusEnum_failed =
    const BenchmarkRunJobStatusEnum._('failed');
const BenchmarkRunJobStatusEnum _$benchmarkRunJobStatusEnum_cancelled =
    const BenchmarkRunJobStatusEnum._('cancelled');
const BenchmarkRunJobStatusEnum
_$benchmarkRunJobStatusEnum_unknownDefaultOpenApi =
    const BenchmarkRunJobStatusEnum._('unknownDefaultOpenApi');

BenchmarkRunJobStatusEnum _$benchmarkRunJobStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$benchmarkRunJobStatusEnum_queued;
    case 'running':
      return _$benchmarkRunJobStatusEnum_running;
    case 'done':
      return _$benchmarkRunJobStatusEnum_done;
    case 'failed':
      return _$benchmarkRunJobStatusEnum_failed;
    case 'cancelled':
      return _$benchmarkRunJobStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$benchmarkRunJobStatusEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkRunJobStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkRunJobStatusEnum> _$benchmarkRunJobStatusEnumValues =
    BuiltSet<BenchmarkRunJobStatusEnum>(const <BenchmarkRunJobStatusEnum>[
      _$benchmarkRunJobStatusEnum_queued,
      _$benchmarkRunJobStatusEnum_running,
      _$benchmarkRunJobStatusEnum_done,
      _$benchmarkRunJobStatusEnum_failed,
      _$benchmarkRunJobStatusEnum_cancelled,
      _$benchmarkRunJobStatusEnum_unknownDefaultOpenApi,
    ]);

const BenchmarkRunStatusEnum _$benchmarkRunStatusEnum_pass =
    const BenchmarkRunStatusEnum._('pass');
const BenchmarkRunStatusEnum _$benchmarkRunStatusEnum_warn =
    const BenchmarkRunStatusEnum._('warn');
const BenchmarkRunStatusEnum _$benchmarkRunStatusEnum_fail =
    const BenchmarkRunStatusEnum._('fail');
const BenchmarkRunStatusEnum _$benchmarkRunStatusEnum_unknownDefaultOpenApi =
    const BenchmarkRunStatusEnum._('unknownDefaultOpenApi');

BenchmarkRunStatusEnum _$benchmarkRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'pass':
      return _$benchmarkRunStatusEnum_pass;
    case 'warn':
      return _$benchmarkRunStatusEnum_warn;
    case 'fail':
      return _$benchmarkRunStatusEnum_fail;
    case 'unknownDefaultOpenApi':
      return _$benchmarkRunStatusEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkRunStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkRunStatusEnum> _$benchmarkRunStatusEnumValues =
    BuiltSet<BenchmarkRunStatusEnum>(const <BenchmarkRunStatusEnum>[
      _$benchmarkRunStatusEnum_pass,
      _$benchmarkRunStatusEnum_warn,
      _$benchmarkRunStatusEnum_fail,
      _$benchmarkRunStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<BenchmarkRunSuiteEnum> _$benchmarkRunSuiteEnumSerializer =
    _$BenchmarkRunSuiteEnumSerializer();
Serializer<BenchmarkRunJobStatusEnum> _$benchmarkRunJobStatusEnumSerializer =
    _$BenchmarkRunJobStatusEnumSerializer();
Serializer<BenchmarkRunStatusEnum> _$benchmarkRunStatusEnumSerializer =
    _$BenchmarkRunStatusEnumSerializer();

class _$BenchmarkRunSuiteEnumSerializer
    implements PrimitiveSerializer<BenchmarkRunSuiteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'synthetic': 'synthetic',
    'historical': 'historical',
    'all': 'all',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'synthetic': 'synthetic',
    'historical': 'historical',
    'all': 'all',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BenchmarkRunSuiteEnum];
  @override
  final String wireName = 'BenchmarkRunSuiteEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkRunSuiteEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkRunSuiteEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkRunSuiteEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkRunJobStatusEnumSerializer
    implements PrimitiveSerializer<BenchmarkRunJobStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'cancelled': 'cancelled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'cancelled': 'cancelled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BenchmarkRunJobStatusEnum];
  @override
  final String wireName = 'BenchmarkRunJobStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkRunJobStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkRunJobStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkRunJobStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkRunStatusEnumSerializer
    implements PrimitiveSerializer<BenchmarkRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BenchmarkRunStatusEnum];
  @override
  final String wireName = 'BenchmarkRunStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkRunStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkRunStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkRunStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkRun extends BenchmarkRun {
  @override
  final String id;
  @override
  final BenchmarkRunSuiteEnum suite;
  @override
  final String suiteVersion;
  @override
  final String? scorerVersion;
  @override
  final int seed;
  @override
  final BuiltList<String> components;
  @override
  final BenchmarkRunJobStatusEnum jobStatus;
  @override
  final num? progress;
  @override
  final BenchmarkRunStatusEnum? status;
  @override
  final BuiltList<BenchmarkComponentResult>? results;
  @override
  final String? manifestId;
  @override
  final String? createdBy;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? error;

  factory _$BenchmarkRun([void Function(BenchmarkRunBuilder)? updates]) =>
      (BenchmarkRunBuilder()..update(updates))._build();

  _$BenchmarkRun._({
    required this.id,
    required this.suite,
    required this.suiteVersion,
    this.scorerVersion,
    required this.seed,
    required this.components,
    required this.jobStatus,
    this.progress,
    this.status,
    this.results,
    this.manifestId,
    this.createdBy,
    this.startedAt,
    this.finishedAt,
    this.error,
  }) : super._();
  @override
  BenchmarkRun rebuild(void Function(BenchmarkRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkRunBuilder toBuilder() => BenchmarkRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkRun &&
        id == other.id &&
        suite == other.suite &&
        suiteVersion == other.suiteVersion &&
        scorerVersion == other.scorerVersion &&
        seed == other.seed &&
        components == other.components &&
        jobStatus == other.jobStatus &&
        progress == other.progress &&
        status == other.status &&
        results == other.results &&
        manifestId == other.manifestId &&
        createdBy == other.createdBy &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, suite.hashCode);
    _$hash = $jc(_$hash, suiteVersion.hashCode);
    _$hash = $jc(_$hash, scorerVersion.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, jobStatus.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkRun')
          ..add('id', id)
          ..add('suite', suite)
          ..add('suiteVersion', suiteVersion)
          ..add('scorerVersion', scorerVersion)
          ..add('seed', seed)
          ..add('components', components)
          ..add('jobStatus', jobStatus)
          ..add('progress', progress)
          ..add('status', status)
          ..add('results', results)
          ..add('manifestId', manifestId)
          ..add('createdBy', createdBy)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('error', error))
        .toString();
  }
}

class BenchmarkRunBuilder
    implements Builder<BenchmarkRun, BenchmarkRunBuilder> {
  _$BenchmarkRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  BenchmarkRunSuiteEnum? _suite;
  BenchmarkRunSuiteEnum? get suite => _$this._suite;
  set suite(BenchmarkRunSuiteEnum? suite) => _$this._suite = suite;

  String? _suiteVersion;
  String? get suiteVersion => _$this._suiteVersion;
  set suiteVersion(String? suiteVersion) => _$this._suiteVersion = suiteVersion;

  String? _scorerVersion;
  String? get scorerVersion => _$this._scorerVersion;
  set scorerVersion(String? scorerVersion) =>
      _$this._scorerVersion = scorerVersion;

  int? _seed;
  int? get seed => _$this._seed;
  set seed(int? seed) => _$this._seed = seed;

  ListBuilder<String>? _components;
  ListBuilder<String> get components =>
      _$this._components ??= ListBuilder<String>();
  set components(ListBuilder<String>? components) =>
      _$this._components = components;

  BenchmarkRunJobStatusEnum? _jobStatus;
  BenchmarkRunJobStatusEnum? get jobStatus => _$this._jobStatus;
  set jobStatus(BenchmarkRunJobStatusEnum? jobStatus) =>
      _$this._jobStatus = jobStatus;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  BenchmarkRunStatusEnum? _status;
  BenchmarkRunStatusEnum? get status => _$this._status;
  set status(BenchmarkRunStatusEnum? status) => _$this._status = status;

  ListBuilder<BenchmarkComponentResult>? _results;
  ListBuilder<BenchmarkComponentResult> get results =>
      _$this._results ??= ListBuilder<BenchmarkComponentResult>();
  set results(ListBuilder<BenchmarkComponentResult>? results) =>
      _$this._results = results;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BenchmarkRunBuilder() {
    BenchmarkRun._defaults(this);
  }

  BenchmarkRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _suite = $v.suite;
      _suiteVersion = $v.suiteVersion;
      _scorerVersion = $v.scorerVersion;
      _seed = $v.seed;
      _components = $v.components.toBuilder();
      _jobStatus = $v.jobStatus;
      _progress = $v.progress;
      _status = $v.status;
      _results = $v.results?.toBuilder();
      _manifestId = $v.manifestId;
      _createdBy = $v.createdBy;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkRun other) {
    _$v = other as _$BenchmarkRun;
  }

  @override
  void update(void Function(BenchmarkRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkRun build() => _build();

  _$BenchmarkRun _build() {
    _$BenchmarkRun _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkRun._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'BenchmarkRun',
              'id',
            ),
            suite: BuiltValueNullFieldError.checkNotNull(
              suite,
              r'BenchmarkRun',
              'suite',
            ),
            suiteVersion: BuiltValueNullFieldError.checkNotNull(
              suiteVersion,
              r'BenchmarkRun',
              'suiteVersion',
            ),
            scorerVersion: scorerVersion,
            seed: BuiltValueNullFieldError.checkNotNull(
              seed,
              r'BenchmarkRun',
              'seed',
            ),
            components: components.build(),
            jobStatus: BuiltValueNullFieldError.checkNotNull(
              jobStatus,
              r'BenchmarkRun',
              'jobStatus',
            ),
            progress: progress,
            status: status,
            results: _results?.build(),
            manifestId: manifestId,
            createdBy: createdBy,
            startedAt: startedAt,
            finishedAt: finishedAt,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();

        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkRun',
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
