// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replay_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReplayResultStatusEnum _$replayResultStatusEnum_queued =
    const ReplayResultStatusEnum._('queued');
const ReplayResultStatusEnum _$replayResultStatusEnum_running =
    const ReplayResultStatusEnum._('running');
const ReplayResultStatusEnum _$replayResultStatusEnum_done =
    const ReplayResultStatusEnum._('done');
const ReplayResultStatusEnum _$replayResultStatusEnum_failed =
    const ReplayResultStatusEnum._('failed');
const ReplayResultStatusEnum _$replayResultStatusEnum_unknownDefaultOpenApi =
    const ReplayResultStatusEnum._('unknownDefaultOpenApi');

ReplayResultStatusEnum _$replayResultStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$replayResultStatusEnum_queued;
    case 'running':
      return _$replayResultStatusEnum_running;
    case 'done':
      return _$replayResultStatusEnum_done;
    case 'failed':
      return _$replayResultStatusEnum_failed;
    case 'unknownDefaultOpenApi':
      return _$replayResultStatusEnum_unknownDefaultOpenApi;
    default:
      return _$replayResultStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReplayResultStatusEnum> _$replayResultStatusEnumValues =
    BuiltSet<ReplayResultStatusEnum>(const <ReplayResultStatusEnum>[
      _$replayResultStatusEnum_queued,
      _$replayResultStatusEnum_running,
      _$replayResultStatusEnum_done,
      _$replayResultStatusEnum_failed,
      _$replayResultStatusEnum_unknownDefaultOpenApi,
    ]);

const ReplayResultOutcomeEnum _$replayResultOutcomeEnum_identical =
    const ReplayResultOutcomeEnum._('identical');
const ReplayResultOutcomeEnum _$replayResultOutcomeEnum_differs =
    const ReplayResultOutcomeEnum._('differs');
const ReplayResultOutcomeEnum _$replayResultOutcomeEnum_notReplayable =
    const ReplayResultOutcomeEnum._('notReplayable');
const ReplayResultOutcomeEnum _$replayResultOutcomeEnum_unknownDefaultOpenApi =
    const ReplayResultOutcomeEnum._('unknownDefaultOpenApi');

ReplayResultOutcomeEnum _$replayResultOutcomeEnumValueOf(String name) {
  switch (name) {
    case 'identical':
      return _$replayResultOutcomeEnum_identical;
    case 'differs':
      return _$replayResultOutcomeEnum_differs;
    case 'notReplayable':
      return _$replayResultOutcomeEnum_notReplayable;
    case 'unknownDefaultOpenApi':
      return _$replayResultOutcomeEnum_unknownDefaultOpenApi;
    default:
      return _$replayResultOutcomeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReplayResultOutcomeEnum> _$replayResultOutcomeEnumValues =
    BuiltSet<ReplayResultOutcomeEnum>(const <ReplayResultOutcomeEnum>[
      _$replayResultOutcomeEnum_identical,
      _$replayResultOutcomeEnum_differs,
      _$replayResultOutcomeEnum_notReplayable,
      _$replayResultOutcomeEnum_unknownDefaultOpenApi,
    ]);

const ReplayResultReasonEnum _$replayResultReasonEnum_inputsPurged =
    const ReplayResultReasonEnum._('inputsPurged');
const ReplayResultReasonEnum _$replayResultReasonEnum_componentRemoved =
    const ReplayResultReasonEnum._('componentRemoved');
const ReplayResultReasonEnum _$replayResultReasonEnum_llmOutput =
    const ReplayResultReasonEnum._('llmOutput');
const ReplayResultReasonEnum _$replayResultReasonEnum_unknownDefaultOpenApi =
    const ReplayResultReasonEnum._('unknownDefaultOpenApi');

ReplayResultReasonEnum _$replayResultReasonEnumValueOf(String name) {
  switch (name) {
    case 'inputsPurged':
      return _$replayResultReasonEnum_inputsPurged;
    case 'componentRemoved':
      return _$replayResultReasonEnum_componentRemoved;
    case 'llmOutput':
      return _$replayResultReasonEnum_llmOutput;
    case 'unknownDefaultOpenApi':
      return _$replayResultReasonEnum_unknownDefaultOpenApi;
    default:
      return _$replayResultReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReplayResultReasonEnum> _$replayResultReasonEnumValues =
    BuiltSet<ReplayResultReasonEnum>(const <ReplayResultReasonEnum>[
      _$replayResultReasonEnum_inputsPurged,
      _$replayResultReasonEnum_componentRemoved,
      _$replayResultReasonEnum_llmOutput,
      _$replayResultReasonEnum_unknownDefaultOpenApi,
    ]);

Serializer<ReplayResultStatusEnum> _$replayResultStatusEnumSerializer =
    _$ReplayResultStatusEnumSerializer();
Serializer<ReplayResultOutcomeEnum> _$replayResultOutcomeEnumSerializer =
    _$ReplayResultOutcomeEnumSerializer();
Serializer<ReplayResultReasonEnum> _$replayResultReasonEnumSerializer =
    _$ReplayResultReasonEnumSerializer();

class _$ReplayResultStatusEnumSerializer
    implements PrimitiveSerializer<ReplayResultStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReplayResultStatusEnum];
  @override
  final String wireName = 'ReplayResultStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReplayResultStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReplayResultStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReplayResultStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReplayResultOutcomeEnumSerializer
    implements PrimitiveSerializer<ReplayResultOutcomeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'identical': 'identical',
    'differs': 'differs',
    'notReplayable': 'not-replayable',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'identical': 'identical',
    'differs': 'differs',
    'not-replayable': 'notReplayable',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReplayResultOutcomeEnum];
  @override
  final String wireName = 'ReplayResultOutcomeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReplayResultOutcomeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReplayResultOutcomeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReplayResultOutcomeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReplayResultReasonEnumSerializer
    implements PrimitiveSerializer<ReplayResultReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inputsPurged': 'inputs-purged',
    'componentRemoved': 'component-removed',
    'llmOutput': 'llm-output',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'inputs-purged': 'inputsPurged',
    'component-removed': 'componentRemoved',
    'llm-output': 'llmOutput',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReplayResultReasonEnum];
  @override
  final String wireName = 'ReplayResultReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReplayResultReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReplayResultReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReplayResultReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReplayResult extends ReplayResult {
  @override
  final String jobId;
  @override
  final String manifestId;
  @override
  final ReplayResultStatusEnum status;
  @override
  final ReplayResultOutcomeEnum? outcome;
  @override
  final ReplayResultReasonEnum? reason;
  @override
  final String? diffSummary;
  @override
  final String? message;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;

  factory _$ReplayResult([void Function(ReplayResultBuilder)? updates]) =>
      (ReplayResultBuilder()..update(updates))._build();

  _$ReplayResult._({
    required this.jobId,
    required this.manifestId,
    required this.status,
    this.outcome,
    this.reason,
    this.diffSummary,
    this.message,
    this.startedAt,
    this.finishedAt,
  }) : super._();
  @override
  ReplayResult rebuild(void Function(ReplayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplayResultBuilder toBuilder() => ReplayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplayResult &&
        jobId == other.jobId &&
        manifestId == other.manifestId &&
        status == other.status &&
        outcome == other.outcome &&
        reason == other.reason &&
        diffSummary == other.diffSummary &&
        message == other.message &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, diffSummary.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReplayResult')
          ..add('jobId', jobId)
          ..add('manifestId', manifestId)
          ..add('status', status)
          ..add('outcome', outcome)
          ..add('reason', reason)
          ..add('diffSummary', diffSummary)
          ..add('message', message)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt))
        .toString();
  }
}

class ReplayResultBuilder
    implements Builder<ReplayResult, ReplayResultBuilder> {
  _$ReplayResult? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ReplayResultStatusEnum? _status;
  ReplayResultStatusEnum? get status => _$this._status;
  set status(ReplayResultStatusEnum? status) => _$this._status = status;

  ReplayResultOutcomeEnum? _outcome;
  ReplayResultOutcomeEnum? get outcome => _$this._outcome;
  set outcome(ReplayResultOutcomeEnum? outcome) => _$this._outcome = outcome;

  ReplayResultReasonEnum? _reason;
  ReplayResultReasonEnum? get reason => _$this._reason;
  set reason(ReplayResultReasonEnum? reason) => _$this._reason = reason;

  String? _diffSummary;
  String? get diffSummary => _$this._diffSummary;
  set diffSummary(String? diffSummary) => _$this._diffSummary = diffSummary;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  ReplayResultBuilder() {
    ReplayResult._defaults(this);
  }

  ReplayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _manifestId = $v.manifestId;
      _status = $v.status;
      _outcome = $v.outcome;
      _reason = $v.reason;
      _diffSummary = $v.diffSummary;
      _message = $v.message;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplayResult other) {
    _$v = other as _$ReplayResult;
  }

  @override
  void update(void Function(ReplayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplayResult build() => _build();

  _$ReplayResult _build() {
    final _$result =
        _$v ??
        _$ReplayResult._(
          jobId: BuiltValueNullFieldError.checkNotNull(
            jobId,
            r'ReplayResult',
            'jobId',
          ),
          manifestId: BuiltValueNullFieldError.checkNotNull(
            manifestId,
            r'ReplayResult',
            'manifestId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'ReplayResult',
            'status',
          ),
          outcome: outcome,
          reason: reason,
          diffSummary: diffSummary,
          message: message,
          startedAt: startedAt,
          finishedAt: finishedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
