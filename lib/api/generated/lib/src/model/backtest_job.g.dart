// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backtest_job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BacktestJobTypeEnum _$backtestJobTypeEnum_rule =
    const BacktestJobTypeEnum._('rule');
const BacktestJobTypeEnum _$backtestJobTypeEnum_recipe =
    const BacktestJobTypeEnum._('recipe');
const BacktestJobTypeEnum _$backtestJobTypeEnum_precursor =
    const BacktestJobTypeEnum._('precursor');
const BacktestJobTypeEnum _$backtestJobTypeEnum_quality =
    const BacktestJobTypeEnum._('quality');
const BacktestJobTypeEnum _$backtestJobTypeEnum_eventStudy =
    const BacktestJobTypeEnum._('eventStudy');
const BacktestJobTypeEnum _$backtestJobTypeEnum_precursorMining =
    const BacktestJobTypeEnum._('precursorMining');
const BacktestJobTypeEnum _$backtestJobTypeEnum_forecastEvaluation =
    const BacktestJobTypeEnum._('forecastEvaluation');
const BacktestJobTypeEnum _$backtestJobTypeEnum_referenceImport =
    const BacktestJobTypeEnum._('referenceImport');
const BacktestJobTypeEnum _$backtestJobTypeEnum_baseRateRefresh =
    const BacktestJobTypeEnum._('baseRateRefresh');
const BacktestJobTypeEnum _$backtestJobTypeEnum_manifestReplay =
    const BacktestJobTypeEnum._('manifestReplay');
const BacktestJobTypeEnum _$backtestJobTypeEnum_benchmark =
    const BacktestJobTypeEnum._('benchmark');
const BacktestJobTypeEnum _$backtestJobTypeEnum_unknownDefaultOpenApi =
    const BacktestJobTypeEnum._('unknownDefaultOpenApi');

BacktestJobTypeEnum _$backtestJobTypeEnumValueOf(String name) {
  switch (name) {
    case 'rule':
      return _$backtestJobTypeEnum_rule;
    case 'recipe':
      return _$backtestJobTypeEnum_recipe;
    case 'precursor':
      return _$backtestJobTypeEnum_precursor;
    case 'quality':
      return _$backtestJobTypeEnum_quality;
    case 'eventStudy':
      return _$backtestJobTypeEnum_eventStudy;
    case 'precursorMining':
      return _$backtestJobTypeEnum_precursorMining;
    case 'forecastEvaluation':
      return _$backtestJobTypeEnum_forecastEvaluation;
    case 'referenceImport':
      return _$backtestJobTypeEnum_referenceImport;
    case 'baseRateRefresh':
      return _$backtestJobTypeEnum_baseRateRefresh;
    case 'manifestReplay':
      return _$backtestJobTypeEnum_manifestReplay;
    case 'benchmark':
      return _$backtestJobTypeEnum_benchmark;
    case 'unknownDefaultOpenApi':
      return _$backtestJobTypeEnum_unknownDefaultOpenApi;
    default:
      return _$backtestJobTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BacktestJobTypeEnum> _$backtestJobTypeEnumValues =
    BuiltSet<BacktestJobTypeEnum>(const <BacktestJobTypeEnum>[
      _$backtestJobTypeEnum_rule,
      _$backtestJobTypeEnum_recipe,
      _$backtestJobTypeEnum_precursor,
      _$backtestJobTypeEnum_quality,
      _$backtestJobTypeEnum_eventStudy,
      _$backtestJobTypeEnum_precursorMining,
      _$backtestJobTypeEnum_forecastEvaluation,
      _$backtestJobTypeEnum_referenceImport,
      _$backtestJobTypeEnum_baseRateRefresh,
      _$backtestJobTypeEnum_manifestReplay,
      _$backtestJobTypeEnum_benchmark,
      _$backtestJobTypeEnum_unknownDefaultOpenApi,
    ]);

const BacktestJobStatusEnum _$backtestJobStatusEnum_queued =
    const BacktestJobStatusEnum._('queued');
const BacktestJobStatusEnum _$backtestJobStatusEnum_running =
    const BacktestJobStatusEnum._('running');
const BacktestJobStatusEnum _$backtestJobStatusEnum_done =
    const BacktestJobStatusEnum._('done');
const BacktestJobStatusEnum _$backtestJobStatusEnum_failed =
    const BacktestJobStatusEnum._('failed');
const BacktestJobStatusEnum _$backtestJobStatusEnum_cancelled =
    const BacktestJobStatusEnum._('cancelled');
const BacktestJobStatusEnum _$backtestJobStatusEnum_unknownDefaultOpenApi =
    const BacktestJobStatusEnum._('unknownDefaultOpenApi');

BacktestJobStatusEnum _$backtestJobStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$backtestJobStatusEnum_queued;
    case 'running':
      return _$backtestJobStatusEnum_running;
    case 'done':
      return _$backtestJobStatusEnum_done;
    case 'failed':
      return _$backtestJobStatusEnum_failed;
    case 'cancelled':
      return _$backtestJobStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$backtestJobStatusEnum_unknownDefaultOpenApi;
    default:
      return _$backtestJobStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BacktestJobStatusEnum> _$backtestJobStatusEnumValues =
    BuiltSet<BacktestJobStatusEnum>(const <BacktestJobStatusEnum>[
      _$backtestJobStatusEnum_queued,
      _$backtestJobStatusEnum_running,
      _$backtestJobStatusEnum_done,
      _$backtestJobStatusEnum_failed,
      _$backtestJobStatusEnum_cancelled,
      _$backtestJobStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<BacktestJobTypeEnum> _$backtestJobTypeEnumSerializer =
    _$BacktestJobTypeEnumSerializer();
Serializer<BacktestJobStatusEnum> _$backtestJobStatusEnumSerializer =
    _$BacktestJobStatusEnumSerializer();

class _$BacktestJobTypeEnumSerializer
    implements PrimitiveSerializer<BacktestJobTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rule': 'rule',
    'recipe': 'recipe',
    'precursor': 'precursor',
    'quality': 'quality',
    'eventStudy': 'event-study',
    'precursorMining': 'precursor-mining',
    'forecastEvaluation': 'forecast-evaluation',
    'referenceImport': 'reference-import',
    'baseRateRefresh': 'base-rate-refresh',
    'manifestReplay': 'manifest-replay',
    'benchmark': 'benchmark',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rule': 'rule',
    'recipe': 'recipe',
    'precursor': 'precursor',
    'quality': 'quality',
    'event-study': 'eventStudy',
    'precursor-mining': 'precursorMining',
    'forecast-evaluation': 'forecastEvaluation',
    'reference-import': 'referenceImport',
    'base-rate-refresh': 'baseRateRefresh',
    'manifest-replay': 'manifestReplay',
    'benchmark': 'benchmark',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BacktestJobTypeEnum];
  @override
  final String wireName = 'BacktestJobTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BacktestJobTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BacktestJobTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BacktestJobTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BacktestJobStatusEnumSerializer
    implements PrimitiveSerializer<BacktestJobStatusEnum> {
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
  final Iterable<Type> types = const <Type>[BacktestJobStatusEnum];
  @override
  final String wireName = 'BacktestJobStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BacktestJobStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BacktestJobStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BacktestJobStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BacktestJob extends BacktestJob {
  @override
  final String id;
  @override
  final BacktestJobTypeEnum type;
  @override
  final String? targetId;
  @override
  final BuiltMap<String, JsonObject?>? definition;
  @override
  final String definitionHash;
  @override
  final int fromSeq;
  @override
  final int toSeq;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final BacktestJobStatusEnum status;
  @override
  final num progress;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? createdBy;
  @override
  final String? detectorVersion;
  @override
  final BuiltList<BacktestCaveat> caveats;
  @override
  final BacktestJobResult? result;
  @override
  final bool? truncated;
  @override
  final String? error;
  @override
  final String? manifestId;

  factory _$BacktestJob([void Function(BacktestJobBuilder)? updates]) =>
      (BacktestJobBuilder()..update(updates))._build();

  _$BacktestJob._({
    required this.id,
    required this.type,
    this.targetId,
    this.definition,
    required this.definitionHash,
    required this.fromSeq,
    required this.toSeq,
    this.from,
    this.to,
    required this.status,
    required this.progress,
    required this.createdAt,
    this.startedAt,
    this.finishedAt,
    this.createdBy,
    this.detectorVersion,
    required this.caveats,
    this.result,
    this.truncated,
    this.error,
    this.manifestId,
  }) : super._();
  @override
  BacktestJob rebuild(void Function(BacktestJobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BacktestJobBuilder toBuilder() => BacktestJobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BacktestJob &&
        id == other.id &&
        type == other.type &&
        targetId == other.targetId &&
        definition == other.definition &&
        definitionHash == other.definitionHash &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        from == other.from &&
        to == other.to &&
        status == other.status &&
        progress == other.progress &&
        createdAt == other.createdAt &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        createdBy == other.createdBy &&
        detectorVersion == other.detectorVersion &&
        caveats == other.caveats &&
        result == other.result &&
        truncated == other.truncated &&
        error == other.error &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, definitionHash.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, detectorVersion.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BacktestJob')
          ..add('id', id)
          ..add('type', type)
          ..add('targetId', targetId)
          ..add('definition', definition)
          ..add('definitionHash', definitionHash)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('from', from)
          ..add('to', to)
          ..add('status', status)
          ..add('progress', progress)
          ..add('createdAt', createdAt)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('createdBy', createdBy)
          ..add('detectorVersion', detectorVersion)
          ..add('caveats', caveats)
          ..add('result', result)
          ..add('truncated', truncated)
          ..add('error', error)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class BacktestJobBuilder implements Builder<BacktestJob, BacktestJobBuilder> {
  _$BacktestJob? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  BacktestJobTypeEnum? _type;
  BacktestJobTypeEnum? get type => _$this._type;
  set type(BacktestJobTypeEnum? type) => _$this._type = type;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  MapBuilder<String, JsonObject?>? _definition;
  MapBuilder<String, JsonObject?> get definition =>
      _$this._definition ??= MapBuilder<String, JsonObject?>();
  set definition(MapBuilder<String, JsonObject?>? definition) =>
      _$this._definition = definition;

  String? _definitionHash;
  String? get definitionHash => _$this._definitionHash;
  set definitionHash(String? definitionHash) =>
      _$this._definitionHash = definitionHash;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  BacktestJobStatusEnum? _status;
  BacktestJobStatusEnum? get status => _$this._status;
  set status(BacktestJobStatusEnum? status) => _$this._status = status;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _detectorVersion;
  String? get detectorVersion => _$this._detectorVersion;
  set detectorVersion(String? detectorVersion) =>
      _$this._detectorVersion = detectorVersion;

  ListBuilder<BacktestCaveat>? _caveats;
  ListBuilder<BacktestCaveat> get caveats =>
      _$this._caveats ??= ListBuilder<BacktestCaveat>();
  set caveats(ListBuilder<BacktestCaveat>? caveats) =>
      _$this._caveats = caveats;

  BacktestJobResultBuilder? _result;
  BacktestJobResultBuilder get result =>
      _$this._result ??= BacktestJobResultBuilder();
  set result(BacktestJobResultBuilder? result) => _$this._result = result;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  BacktestJobBuilder() {
    BacktestJob._defaults(this);
  }

  BacktestJobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _targetId = $v.targetId;
      _definition = $v.definition?.toBuilder();
      _definitionHash = $v.definitionHash;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _from = $v.from;
      _to = $v.to;
      _status = $v.status;
      _progress = $v.progress;
      _createdAt = $v.createdAt;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _createdBy = $v.createdBy;
      _detectorVersion = $v.detectorVersion;
      _caveats = $v.caveats.toBuilder();
      _result = $v.result?.toBuilder();
      _truncated = $v.truncated;
      _error = $v.error;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BacktestJob other) {
    _$v = other as _$BacktestJob;
  }

  @override
  void update(void Function(BacktestJobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BacktestJob build() => _build();

  _$BacktestJob _build() {
    _$BacktestJob _$result;
    try {
      _$result =
          _$v ??
          _$BacktestJob._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'BacktestJob', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'BacktestJob',
              'type',
            ),
            targetId: targetId,
            definition: _definition?.build(),
            definitionHash: BuiltValueNullFieldError.checkNotNull(
              definitionHash,
              r'BacktestJob',
              'definitionHash',
            ),
            fromSeq: BuiltValueNullFieldError.checkNotNull(
              fromSeq,
              r'BacktestJob',
              'fromSeq',
            ),
            toSeq: BuiltValueNullFieldError.checkNotNull(
              toSeq,
              r'BacktestJob',
              'toSeq',
            ),
            from: from,
            to: to,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'BacktestJob',
              'status',
            ),
            progress: BuiltValueNullFieldError.checkNotNull(
              progress,
              r'BacktestJob',
              'progress',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'BacktestJob',
              'createdAt',
            ),
            startedAt: startedAt,
            finishedAt: finishedAt,
            createdBy: createdBy,
            detectorVersion: detectorVersion,
            caveats: caveats.build(),
            result: _result?.build(),
            truncated: truncated,
            error: error,
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definition';
        _definition?.build();

        _$failedField = 'caveats';
        caveats.build();
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BacktestJob',
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
