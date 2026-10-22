// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialCueBackendEnum _$socialCueBackendEnum_platformApis =
    const SocialCueBackendEnum._('platformApis');
const SocialCueBackendEnum _$socialCueBackendEnum_xaiXSearch =
    const SocialCueBackendEnum._('xaiXSearch');

SocialCueBackendEnum _$socialCueBackendEnumValueOf(String name) {
  switch (name) {
    case 'platformApis':
      return _$socialCueBackendEnum_platformApis;
    case 'xaiXSearch':
      return _$socialCueBackendEnum_xaiXSearch;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialCueBackendEnum> _$socialCueBackendEnumValues =
    BuiltSet<SocialCueBackendEnum>(const <SocialCueBackendEnum>[
  _$socialCueBackendEnum_platformApis,
  _$socialCueBackendEnum_xaiXSearch,
]);

const SocialCueStatusEnum _$socialCueStatusEnum_queued =
    const SocialCueStatusEnum._('queued');
const SocialCueStatusEnum _$socialCueStatusEnum_running =
    const SocialCueStatusEnum._('running');
const SocialCueStatusEnum _$socialCueStatusEnum_done =
    const SocialCueStatusEnum._('done');
const SocialCueStatusEnum _$socialCueStatusEnum_failed =
    const SocialCueStatusEnum._('failed');
const SocialCueStatusEnum _$socialCueStatusEnum_budgetRefused =
    const SocialCueStatusEnum._('budgetRefused');

SocialCueStatusEnum _$socialCueStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$socialCueStatusEnum_queued;
    case 'running':
      return _$socialCueStatusEnum_running;
    case 'done':
      return _$socialCueStatusEnum_done;
    case 'failed':
      return _$socialCueStatusEnum_failed;
    case 'budgetRefused':
      return _$socialCueStatusEnum_budgetRefused;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialCueStatusEnum> _$socialCueStatusEnumValues =
    BuiltSet<SocialCueStatusEnum>(const <SocialCueStatusEnum>[
  _$socialCueStatusEnum_queued,
  _$socialCueStatusEnum_running,
  _$socialCueStatusEnum_done,
  _$socialCueStatusEnum_failed,
  _$socialCueStatusEnum_budgetRefused,
]);

Serializer<SocialCueBackendEnum> _$socialCueBackendEnumSerializer =
    _$SocialCueBackendEnumSerializer();
Serializer<SocialCueStatusEnum> _$socialCueStatusEnumSerializer =
    _$SocialCueStatusEnumSerializer();

class _$SocialCueBackendEnumSerializer
    implements PrimitiveSerializer<SocialCueBackendEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'platformApis': 'platform-apis',
    'xaiXSearch': 'xai-x-search',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'platform-apis': 'platformApis',
    'xai-x-search': 'xaiXSearch',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialCueBackendEnum];
  @override
  final String wireName = 'SocialCueBackendEnum';

  @override
  Object serialize(Serializers serializers, SocialCueBackendEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialCueBackendEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialCueBackendEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialCueStatusEnumSerializer
    implements PrimitiveSerializer<SocialCueStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'budgetRefused': 'budget-refused',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'budget-refused': 'budgetRefused',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialCueStatusEnum];
  @override
  final String wireName = 'SocialCueStatusEnum';

  @override
  Object serialize(Serializers serializers, SocialCueStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialCueStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialCueStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialCue extends SocialCue {
  @override
  final String id;
  @override
  final SocialCueTrigger trigger;
  @override
  final SocialCueBackendEnum backend;
  @override
  final BuiltList<SocialCueQuery> queries;
  @override
  final BuiltList<SocialPlatformId> platforms;
  @override
  final TimeRange window;
  @override
  final SocialCueStatusEnum status;
  @override
  final String? statusReason;
  @override
  final BuiltList<SocialCueResultsInner> results;
  @override
  final BuiltList<String> narrativeIds;
  @override
  final num costUsd;
  @override
  final num? maxCostUsd;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? completedAt;
  @override
  final String? manifestId;

  factory _$SocialCue([void Function(SocialCueBuilder)? updates]) =>
      (SocialCueBuilder()..update(updates))._build();

  _$SocialCue._(
      {required this.id,
      required this.trigger,
      required this.backend,
      required this.queries,
      required this.platforms,
      required this.window,
      required this.status,
      this.statusReason,
      required this.results,
      required this.narrativeIds,
      required this.costUsd,
      this.maxCostUsd,
      required this.createdBy,
      required this.createdAt,
      this.startedAt,
      this.completedAt,
      this.manifestId})
      : super._();
  @override
  SocialCue rebuild(void Function(SocialCueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCueBuilder toBuilder() => SocialCueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCue &&
        id == other.id &&
        trigger == other.trigger &&
        backend == other.backend &&
        queries == other.queries &&
        platforms == other.platforms &&
        window == other.window &&
        status == other.status &&
        statusReason == other.statusReason &&
        results == other.results &&
        narrativeIds == other.narrativeIds &&
        costUsd == other.costUsd &&
        maxCostUsd == other.maxCostUsd &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, backend.hashCode);
    _$hash = $jc(_$hash, queries.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, narrativeIds.hashCode);
    _$hash = $jc(_$hash, costUsd.hashCode);
    _$hash = $jc(_$hash, maxCostUsd.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCue')
          ..add('id', id)
          ..add('trigger', trigger)
          ..add('backend', backend)
          ..add('queries', queries)
          ..add('platforms', platforms)
          ..add('window', window)
          ..add('status', status)
          ..add('statusReason', statusReason)
          ..add('results', results)
          ..add('narrativeIds', narrativeIds)
          ..add('costUsd', costUsd)
          ..add('maxCostUsd', maxCostUsd)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class SocialCueBuilder implements Builder<SocialCue, SocialCueBuilder> {
  _$SocialCue? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SocialCueTriggerBuilder? _trigger;
  SocialCueTriggerBuilder get trigger =>
      _$this._trigger ??= SocialCueTriggerBuilder();
  set trigger(SocialCueTriggerBuilder? trigger) => _$this._trigger = trigger;

  SocialCueBackendEnum? _backend;
  SocialCueBackendEnum? get backend => _$this._backend;
  set backend(SocialCueBackendEnum? backend) => _$this._backend = backend;

  ListBuilder<SocialCueQuery>? _queries;
  ListBuilder<SocialCueQuery> get queries =>
      _$this._queries ??= ListBuilder<SocialCueQuery>();
  set queries(ListBuilder<SocialCueQuery>? queries) =>
      _$this._queries = queries;

  ListBuilder<SocialPlatformId>? _platforms;
  ListBuilder<SocialPlatformId> get platforms =>
      _$this._platforms ??= ListBuilder<SocialPlatformId>();
  set platforms(ListBuilder<SocialPlatformId>? platforms) =>
      _$this._platforms = platforms;

  TimeRangeBuilder? _window;
  TimeRangeBuilder get window => _$this._window ??= TimeRangeBuilder();
  set window(TimeRangeBuilder? window) => _$this._window = window;

  SocialCueStatusEnum? _status;
  SocialCueStatusEnum? get status => _$this._status;
  set status(SocialCueStatusEnum? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  ListBuilder<SocialCueResultsInner>? _results;
  ListBuilder<SocialCueResultsInner> get results =>
      _$this._results ??= ListBuilder<SocialCueResultsInner>();
  set results(ListBuilder<SocialCueResultsInner>? results) =>
      _$this._results = results;

  ListBuilder<String>? _narrativeIds;
  ListBuilder<String> get narrativeIds =>
      _$this._narrativeIds ??= ListBuilder<String>();
  set narrativeIds(ListBuilder<String>? narrativeIds) =>
      _$this._narrativeIds = narrativeIds;

  num? _costUsd;
  num? get costUsd => _$this._costUsd;
  set costUsd(num? costUsd) => _$this._costUsd = costUsd;

  num? _maxCostUsd;
  num? get maxCostUsd => _$this._maxCostUsd;
  set maxCostUsd(num? maxCostUsd) => _$this._maxCostUsd = maxCostUsd;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SocialCueBuilder() {
    SocialCue._defaults(this);
  }

  SocialCueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _trigger = $v.trigger.toBuilder();
      _backend = $v.backend;
      _queries = $v.queries.toBuilder();
      _platforms = $v.platforms.toBuilder();
      _window = $v.window.toBuilder();
      _status = $v.status;
      _statusReason = $v.statusReason;
      _results = $v.results.toBuilder();
      _narrativeIds = $v.narrativeIds.toBuilder();
      _costUsd = $v.costUsd;
      _maxCostUsd = $v.maxCostUsd;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _startedAt = $v.startedAt;
      _completedAt = $v.completedAt;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCue other) {
    _$v = other as _$SocialCue;
  }

  @override
  void update(void Function(SocialCueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCue build() => _build();

  _$SocialCue _build() {
    _$SocialCue _$result;
    try {
      _$result = _$v ??
          _$SocialCue._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'SocialCue', 'id'),
            trigger: trigger.build(),
            backend: BuiltValueNullFieldError.checkNotNull(
                backend, r'SocialCue', 'backend'),
            queries: queries.build(),
            platforms: platforms.build(),
            window: window.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SocialCue', 'status'),
            statusReason: statusReason,
            results: results.build(),
            narrativeIds: narrativeIds.build(),
            costUsd: BuiltValueNullFieldError.checkNotNull(
                costUsd, r'SocialCue', 'costUsd'),
            maxCostUsd: maxCostUsd,
            createdBy: BuiltValueNullFieldError.checkNotNull(
                createdBy, r'SocialCue', 'createdBy'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'SocialCue', 'createdAt'),
            startedAt: startedAt,
            completedAt: completedAt,
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trigger';
        trigger.build();

        _$failedField = 'queries';
        queries.build();
        _$failedField = 'platforms';
        platforms.build();
        _$failedField = 'window';
        window.build();

        _$failedField = 'results';
        results.build();
        _$failedField = 'narrativeIds';
        narrativeIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialCue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
