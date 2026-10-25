// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backfill_job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BackfillJobStatusEnum _$backfillJobStatusEnum_queued =
    const BackfillJobStatusEnum._('queued');
const BackfillJobStatusEnum _$backfillJobStatusEnum_running =
    const BackfillJobStatusEnum._('running');
const BackfillJobStatusEnum _$backfillJobStatusEnum_done =
    const BackfillJobStatusEnum._('done');
const BackfillJobStatusEnum _$backfillJobStatusEnum_failed =
    const BackfillJobStatusEnum._('failed');
const BackfillJobStatusEnum _$backfillJobStatusEnum_cancelled =
    const BackfillJobStatusEnum._('cancelled');
const BackfillJobStatusEnum _$backfillJobStatusEnum_unknownDefaultOpenApi =
    const BackfillJobStatusEnum._('unknownDefaultOpenApi');

BackfillJobStatusEnum _$backfillJobStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$backfillJobStatusEnum_queued;
    case 'running':
      return _$backfillJobStatusEnum_running;
    case 'done':
      return _$backfillJobStatusEnum_done;
    case 'failed':
      return _$backfillJobStatusEnum_failed;
    case 'cancelled':
      return _$backfillJobStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$backfillJobStatusEnum_unknownDefaultOpenApi;
    default:
      return _$backfillJobStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BackfillJobStatusEnum> _$backfillJobStatusEnumValues =
    BuiltSet<BackfillJobStatusEnum>(const <BackfillJobStatusEnum>[
      _$backfillJobStatusEnum_queued,
      _$backfillJobStatusEnum_running,
      _$backfillJobStatusEnum_done,
      _$backfillJobStatusEnum_failed,
      _$backfillJobStatusEnum_cancelled,
      _$backfillJobStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<BackfillJobStatusEnum> _$backfillJobStatusEnumSerializer =
    _$BackfillJobStatusEnumSerializer();

class _$BackfillJobStatusEnumSerializer
    implements PrimitiveSerializer<BackfillJobStatusEnum> {
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
  final Iterable<Type> types = const <Type>[BackfillJobStatusEnum];
  @override
  final String wireName = 'BackfillJobStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BackfillJobStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BackfillJobStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BackfillJobStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BackfillJob extends BackfillJob {
  @override
  final String id;
  @override
  final String sourceId;
  @override
  final BackfillJobStatusEnum status;
  @override
  final Date from;
  @override
  final Date? cursor;
  @override
  final int? pagesFetched;
  @override
  final int? versionsWritten;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? error;

  factory _$BackfillJob([void Function(BackfillJobBuilder)? updates]) =>
      (BackfillJobBuilder()..update(updates))._build();

  _$BackfillJob._({
    required this.id,
    required this.sourceId,
    required this.status,
    required this.from,
    this.cursor,
    this.pagesFetched,
    this.versionsWritten,
    required this.createdAt,
    this.startedAt,
    this.finishedAt,
    this.error,
  }) : super._();
  @override
  BackfillJob rebuild(void Function(BackfillJobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackfillJobBuilder toBuilder() => BackfillJobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackfillJob &&
        id == other.id &&
        sourceId == other.sourceId &&
        status == other.status &&
        from == other.from &&
        cursor == other.cursor &&
        pagesFetched == other.pagesFetched &&
        versionsWritten == other.versionsWritten &&
        createdAt == other.createdAt &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, cursor.hashCode);
    _$hash = $jc(_$hash, pagesFetched.hashCode);
    _$hash = $jc(_$hash, versionsWritten.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackfillJob')
          ..add('id', id)
          ..add('sourceId', sourceId)
          ..add('status', status)
          ..add('from', from)
          ..add('cursor', cursor)
          ..add('pagesFetched', pagesFetched)
          ..add('versionsWritten', versionsWritten)
          ..add('createdAt', createdAt)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('error', error))
        .toString();
  }
}

class BackfillJobBuilder implements Builder<BackfillJob, BackfillJobBuilder> {
  _$BackfillJob? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  BackfillJobStatusEnum? _status;
  BackfillJobStatusEnum? get status => _$this._status;
  set status(BackfillJobStatusEnum? status) => _$this._status = status;

  Date? _from;
  Date? get from => _$this._from;
  set from(Date? from) => _$this._from = from;

  Date? _cursor;
  Date? get cursor => _$this._cursor;
  set cursor(Date? cursor) => _$this._cursor = cursor;

  int? _pagesFetched;
  int? get pagesFetched => _$this._pagesFetched;
  set pagesFetched(int? pagesFetched) => _$this._pagesFetched = pagesFetched;

  int? _versionsWritten;
  int? get versionsWritten => _$this._versionsWritten;
  set versionsWritten(int? versionsWritten) =>
      _$this._versionsWritten = versionsWritten;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BackfillJobBuilder() {
    BackfillJob._defaults(this);
  }

  BackfillJobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sourceId = $v.sourceId;
      _status = $v.status;
      _from = $v.from;
      _cursor = $v.cursor;
      _pagesFetched = $v.pagesFetched;
      _versionsWritten = $v.versionsWritten;
      _createdAt = $v.createdAt;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackfillJob other) {
    _$v = other as _$BackfillJob;
  }

  @override
  void update(void Function(BackfillJobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackfillJob build() => _build();

  _$BackfillJob _build() {
    final _$result =
        _$v ??
        _$BackfillJob._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'BackfillJob', 'id'),
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'BackfillJob',
            'sourceId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'BackfillJob',
            'status',
          ),
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'BackfillJob',
            'from',
          ),
          cursor: cursor,
          pagesFetched: pagesFetched,
          versionsWritten: versionsWritten,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'BackfillJob',
            'createdAt',
          ),
          startedAt: startedAt,
          finishedAt: finishedAt,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
