// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemInfoStatusEnum _$systemInfoStatusEnum_ok =
    const SystemInfoStatusEnum._('ok');
const SystemInfoStatusEnum _$systemInfoStatusEnum_degraded =
    const SystemInfoStatusEnum._('degraded');
const SystemInfoStatusEnum _$systemInfoStatusEnum_down =
    const SystemInfoStatusEnum._('down');
const SystemInfoStatusEnum _$systemInfoStatusEnum_unknownDefaultOpenApi =
    const SystemInfoStatusEnum._('unknownDefaultOpenApi');

SystemInfoStatusEnum _$systemInfoStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$systemInfoStatusEnum_ok;
    case 'degraded':
      return _$systemInfoStatusEnum_degraded;
    case 'down':
      return _$systemInfoStatusEnum_down;
    case 'unknownDefaultOpenApi':
      return _$systemInfoStatusEnum_unknownDefaultOpenApi;
    default:
      return _$systemInfoStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SystemInfoStatusEnum> _$systemInfoStatusEnumValues =
    BuiltSet<SystemInfoStatusEnum>(const <SystemInfoStatusEnum>[
      _$systemInfoStatusEnum_ok,
      _$systemInfoStatusEnum_degraded,
      _$systemInfoStatusEnum_down,
      _$systemInfoStatusEnum_unknownDefaultOpenApi,
    ]);

const SystemInfoModeEnum _$systemInfoModeEnum_full = const SystemInfoModeEnum._(
  'full',
);
const SystemInfoModeEnum _$systemInfoModeEnum_edge = const SystemInfoModeEnum._(
  'edge',
);
const SystemInfoModeEnum _$systemInfoModeEnum_unknownDefaultOpenApi =
    const SystemInfoModeEnum._('unknownDefaultOpenApi');

SystemInfoModeEnum _$systemInfoModeEnumValueOf(String name) {
  switch (name) {
    case 'full':
      return _$systemInfoModeEnum_full;
    case 'edge':
      return _$systemInfoModeEnum_edge;
    case 'unknownDefaultOpenApi':
      return _$systemInfoModeEnum_unknownDefaultOpenApi;
    default:
      return _$systemInfoModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SystemInfoModeEnum> _$systemInfoModeEnumValues =
    BuiltSet<SystemInfoModeEnum>(const <SystemInfoModeEnum>[
      _$systemInfoModeEnum_full,
      _$systemInfoModeEnum_edge,
      _$systemInfoModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<SystemInfoStatusEnum> _$systemInfoStatusEnumSerializer =
    _$SystemInfoStatusEnumSerializer();
Serializer<SystemInfoModeEnum> _$systemInfoModeEnumSerializer =
    _$SystemInfoModeEnumSerializer();

class _$SystemInfoStatusEnumSerializer
    implements PrimitiveSerializer<SystemInfoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'degraded': 'degraded',
    'down': 'down',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'degraded': 'degraded',
    'down': 'down',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemInfoStatusEnum];
  @override
  final String wireName = 'SystemInfoStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemInfoStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemInfoStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemInfoModeEnumSerializer
    implements PrimitiveSerializer<SystemInfoModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'full': 'full',
    'edge': 'edge',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'full': 'full',
    'edge': 'edge',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemInfoModeEnum];
  @override
  final String wireName = 'SystemInfoModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemInfoModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemInfoModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemInfo extends SystemInfo {
  @override
  final String version;
  @override
  final DateTime startedAt;
  @override
  final int? uptimeSeconds;
  @override
  final SystemInfoDatabase? database;
  @override
  final SystemInfoRecords? records;
  @override
  final SystemInfoSources? sources;
  @override
  final SystemInfoScheduler? scheduler;
  @override
  final SystemInfoStreams? streams;
  @override
  final SystemInfoNotifications? notifications;
  @override
  final SystemInfoLlm? llm;
  @override
  final SystemInfoSearch? search;
  @override
  final SystemInfoMcp? mcp;
  @override
  final String? apiVersion;
  @override
  final SystemInfoStatusEnum? status;
  @override
  final BuiltMap<String, bool>? features;
  @override
  final SystemInfoLimits? limits;
  @override
  final SystemInfoHistory? history;
  @override
  final SystemInfoCatchUp? catchUp;
  @override
  final SystemInfoIngestWriter? ingestWriter;
  @override
  final BuiltList<SystemInfoWarningsInner>? warnings;
  @override
  final SystemInfoSecurity? security;
  @override
  final SystemRasters? rasters;
  @override
  final MqttConnections? mqtt;
  @override
  final SystemInfoRasterFormats? rasterFormats;
  @override
  final SystemInfoSinks? sinks;
  @override
  final SystemInfoExports? exports;
  @override
  final SystemInfoArchive? archive;
  @override
  final SystemInfoHolds? holds;
  @override
  final SystemInfoModeEnum? mode;

  factory _$SystemInfo([void Function(SystemInfoBuilder)? updates]) =>
      (SystemInfoBuilder()..update(updates))._build();

  _$SystemInfo._({
    required this.version,
    required this.startedAt,
    this.uptimeSeconds,
    this.database,
    this.records,
    this.sources,
    this.scheduler,
    this.streams,
    this.notifications,
    this.llm,
    this.search,
    this.mcp,
    this.apiVersion,
    this.status,
    this.features,
    this.limits,
    this.history,
    this.catchUp,
    this.ingestWriter,
    this.warnings,
    this.security,
    this.rasters,
    this.mqtt,
    this.rasterFormats,
    this.sinks,
    this.exports,
    this.archive,
    this.holds,
    this.mode,
  }) : super._();
  @override
  SystemInfo rebuild(void Function(SystemInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoBuilder toBuilder() => SystemInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfo &&
        version == other.version &&
        startedAt == other.startedAt &&
        uptimeSeconds == other.uptimeSeconds &&
        database == other.database &&
        records == other.records &&
        sources == other.sources &&
        scheduler == other.scheduler &&
        streams == other.streams &&
        notifications == other.notifications &&
        llm == other.llm &&
        search == other.search &&
        mcp == other.mcp &&
        apiVersion == other.apiVersion &&
        status == other.status &&
        features == other.features &&
        limits == other.limits &&
        history == other.history &&
        catchUp == other.catchUp &&
        ingestWriter == other.ingestWriter &&
        warnings == other.warnings &&
        security == other.security &&
        rasters == other.rasters &&
        mqtt == other.mqtt &&
        rasterFormats == other.rasterFormats &&
        sinks == other.sinks &&
        exports == other.exports &&
        archive == other.archive &&
        holds == other.holds &&
        mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, uptimeSeconds.hashCode);
    _$hash = $jc(_$hash, database.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, scheduler.hashCode);
    _$hash = $jc(_$hash, streams.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jc(_$hash, llm.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, mcp.hashCode);
    _$hash = $jc(_$hash, apiVersion.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, limits.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, catchUp.hashCode);
    _$hash = $jc(_$hash, ingestWriter.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, security.hashCode);
    _$hash = $jc(_$hash, rasters.hashCode);
    _$hash = $jc(_$hash, mqtt.hashCode);
    _$hash = $jc(_$hash, rasterFormats.hashCode);
    _$hash = $jc(_$hash, sinks.hashCode);
    _$hash = $jc(_$hash, exports.hashCode);
    _$hash = $jc(_$hash, archive.hashCode);
    _$hash = $jc(_$hash, holds.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfo')
          ..add('version', version)
          ..add('startedAt', startedAt)
          ..add('uptimeSeconds', uptimeSeconds)
          ..add('database', database)
          ..add('records', records)
          ..add('sources', sources)
          ..add('scheduler', scheduler)
          ..add('streams', streams)
          ..add('notifications', notifications)
          ..add('llm', llm)
          ..add('search', search)
          ..add('mcp', mcp)
          ..add('apiVersion', apiVersion)
          ..add('status', status)
          ..add('features', features)
          ..add('limits', limits)
          ..add('history', history)
          ..add('catchUp', catchUp)
          ..add('ingestWriter', ingestWriter)
          ..add('warnings', warnings)
          ..add('security', security)
          ..add('rasters', rasters)
          ..add('mqtt', mqtt)
          ..add('rasterFormats', rasterFormats)
          ..add('sinks', sinks)
          ..add('exports', exports)
          ..add('archive', archive)
          ..add('holds', holds)
          ..add('mode', mode))
        .toString();
  }
}

class SystemInfoBuilder implements Builder<SystemInfo, SystemInfoBuilder> {
  _$SystemInfo? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  int? _uptimeSeconds;
  int? get uptimeSeconds => _$this._uptimeSeconds;
  set uptimeSeconds(int? uptimeSeconds) =>
      _$this._uptimeSeconds = uptimeSeconds;

  SystemInfoDatabaseBuilder? _database;
  SystemInfoDatabaseBuilder get database =>
      _$this._database ??= SystemInfoDatabaseBuilder();
  set database(SystemInfoDatabaseBuilder? database) =>
      _$this._database = database;

  SystemInfoRecordsBuilder? _records;
  SystemInfoRecordsBuilder get records =>
      _$this._records ??= SystemInfoRecordsBuilder();
  set records(SystemInfoRecordsBuilder? records) => _$this._records = records;

  SystemInfoSourcesBuilder? _sources;
  SystemInfoSourcesBuilder get sources =>
      _$this._sources ??= SystemInfoSourcesBuilder();
  set sources(SystemInfoSourcesBuilder? sources) => _$this._sources = sources;

  SystemInfoSchedulerBuilder? _scheduler;
  SystemInfoSchedulerBuilder get scheduler =>
      _$this._scheduler ??= SystemInfoSchedulerBuilder();
  set scheduler(SystemInfoSchedulerBuilder? scheduler) =>
      _$this._scheduler = scheduler;

  SystemInfoStreamsBuilder? _streams;
  SystemInfoStreamsBuilder get streams =>
      _$this._streams ??= SystemInfoStreamsBuilder();
  set streams(SystemInfoStreamsBuilder? streams) => _$this._streams = streams;

  SystemInfoNotificationsBuilder? _notifications;
  SystemInfoNotificationsBuilder get notifications =>
      _$this._notifications ??= SystemInfoNotificationsBuilder();
  set notifications(SystemInfoNotificationsBuilder? notifications) =>
      _$this._notifications = notifications;

  SystemInfoLlmBuilder? _llm;
  SystemInfoLlmBuilder get llm => _$this._llm ??= SystemInfoLlmBuilder();
  set llm(SystemInfoLlmBuilder? llm) => _$this._llm = llm;

  SystemInfoSearchBuilder? _search;
  SystemInfoSearchBuilder get search =>
      _$this._search ??= SystemInfoSearchBuilder();
  set search(SystemInfoSearchBuilder? search) => _$this._search = search;

  SystemInfoMcpBuilder? _mcp;
  SystemInfoMcpBuilder get mcp => _$this._mcp ??= SystemInfoMcpBuilder();
  set mcp(SystemInfoMcpBuilder? mcp) => _$this._mcp = mcp;

  String? _apiVersion;
  String? get apiVersion => _$this._apiVersion;
  set apiVersion(String? apiVersion) => _$this._apiVersion = apiVersion;

  SystemInfoStatusEnum? _status;
  SystemInfoStatusEnum? get status => _$this._status;
  set status(SystemInfoStatusEnum? status) => _$this._status = status;

  MapBuilder<String, bool>? _features;
  MapBuilder<String, bool> get features =>
      _$this._features ??= MapBuilder<String, bool>();
  set features(MapBuilder<String, bool>? features) =>
      _$this._features = features;

  SystemInfoLimitsBuilder? _limits;
  SystemInfoLimitsBuilder get limits =>
      _$this._limits ??= SystemInfoLimitsBuilder();
  set limits(SystemInfoLimitsBuilder? limits) => _$this._limits = limits;

  SystemInfoHistoryBuilder? _history;
  SystemInfoHistoryBuilder get history =>
      _$this._history ??= SystemInfoHistoryBuilder();
  set history(SystemInfoHistoryBuilder? history) => _$this._history = history;

  SystemInfoCatchUpBuilder? _catchUp;
  SystemInfoCatchUpBuilder get catchUp =>
      _$this._catchUp ??= SystemInfoCatchUpBuilder();
  set catchUp(SystemInfoCatchUpBuilder? catchUp) => _$this._catchUp = catchUp;

  SystemInfoIngestWriterBuilder? _ingestWriter;
  SystemInfoIngestWriterBuilder get ingestWriter =>
      _$this._ingestWriter ??= SystemInfoIngestWriterBuilder();
  set ingestWriter(SystemInfoIngestWriterBuilder? ingestWriter) =>
      _$this._ingestWriter = ingestWriter;

  ListBuilder<SystemInfoWarningsInner>? _warnings;
  ListBuilder<SystemInfoWarningsInner> get warnings =>
      _$this._warnings ??= ListBuilder<SystemInfoWarningsInner>();
  set warnings(ListBuilder<SystemInfoWarningsInner>? warnings) =>
      _$this._warnings = warnings;

  SystemInfoSecurityBuilder? _security;
  SystemInfoSecurityBuilder get security =>
      _$this._security ??= SystemInfoSecurityBuilder();
  set security(SystemInfoSecurityBuilder? security) =>
      _$this._security = security;

  SystemRastersBuilder? _rasters;
  SystemRastersBuilder get rasters =>
      _$this._rasters ??= SystemRastersBuilder();
  set rasters(SystemRastersBuilder? rasters) => _$this._rasters = rasters;

  MqttConnectionsBuilder? _mqtt;
  MqttConnectionsBuilder get mqtt => _$this._mqtt ??= MqttConnectionsBuilder();
  set mqtt(MqttConnectionsBuilder? mqtt) => _$this._mqtt = mqtt;

  SystemInfoRasterFormatsBuilder? _rasterFormats;
  SystemInfoRasterFormatsBuilder get rasterFormats =>
      _$this._rasterFormats ??= SystemInfoRasterFormatsBuilder();
  set rasterFormats(SystemInfoRasterFormatsBuilder? rasterFormats) =>
      _$this._rasterFormats = rasterFormats;

  SystemInfoSinksBuilder? _sinks;
  SystemInfoSinksBuilder get sinks =>
      _$this._sinks ??= SystemInfoSinksBuilder();
  set sinks(SystemInfoSinksBuilder? sinks) => _$this._sinks = sinks;

  SystemInfoExportsBuilder? _exports;
  SystemInfoExportsBuilder get exports =>
      _$this._exports ??= SystemInfoExportsBuilder();
  set exports(SystemInfoExportsBuilder? exports) => _$this._exports = exports;

  SystemInfoArchiveBuilder? _archive;
  SystemInfoArchiveBuilder get archive =>
      _$this._archive ??= SystemInfoArchiveBuilder();
  set archive(SystemInfoArchiveBuilder? archive) => _$this._archive = archive;

  SystemInfoHoldsBuilder? _holds;
  SystemInfoHoldsBuilder get holds =>
      _$this._holds ??= SystemInfoHoldsBuilder();
  set holds(SystemInfoHoldsBuilder? holds) => _$this._holds = holds;

  SystemInfoModeEnum? _mode;
  SystemInfoModeEnum? get mode => _$this._mode;
  set mode(SystemInfoModeEnum? mode) => _$this._mode = mode;

  SystemInfoBuilder() {
    SystemInfo._defaults(this);
  }

  SystemInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _startedAt = $v.startedAt;
      _uptimeSeconds = $v.uptimeSeconds;
      _database = $v.database?.toBuilder();
      _records = $v.records?.toBuilder();
      _sources = $v.sources?.toBuilder();
      _scheduler = $v.scheduler?.toBuilder();
      _streams = $v.streams?.toBuilder();
      _notifications = $v.notifications?.toBuilder();
      _llm = $v.llm?.toBuilder();
      _search = $v.search?.toBuilder();
      _mcp = $v.mcp?.toBuilder();
      _apiVersion = $v.apiVersion;
      _status = $v.status;
      _features = $v.features?.toBuilder();
      _limits = $v.limits?.toBuilder();
      _history = $v.history?.toBuilder();
      _catchUp = $v.catchUp?.toBuilder();
      _ingestWriter = $v.ingestWriter?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _security = $v.security?.toBuilder();
      _rasters = $v.rasters?.toBuilder();
      _mqtt = $v.mqtt?.toBuilder();
      _rasterFormats = $v.rasterFormats?.toBuilder();
      _sinks = $v.sinks?.toBuilder();
      _exports = $v.exports?.toBuilder();
      _archive = $v.archive?.toBuilder();
      _holds = $v.holds?.toBuilder();
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfo other) {
    _$v = other as _$SystemInfo;
  }

  @override
  void update(void Function(SystemInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfo build() => _build();

  _$SystemInfo _build() {
    _$SystemInfo _$result;
    try {
      _$result =
          _$v ??
          _$SystemInfo._(
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'SystemInfo',
              'version',
            ),
            startedAt: BuiltValueNullFieldError.checkNotNull(
              startedAt,
              r'SystemInfo',
              'startedAt',
            ),
            uptimeSeconds: uptimeSeconds,
            database: _database?.build(),
            records: _records?.build(),
            sources: _sources?.build(),
            scheduler: _scheduler?.build(),
            streams: _streams?.build(),
            notifications: _notifications?.build(),
            llm: _llm?.build(),
            search: _search?.build(),
            mcp: _mcp?.build(),
            apiVersion: apiVersion,
            status: status,
            features: _features?.build(),
            limits: _limits?.build(),
            history: _history?.build(),
            catchUp: _catchUp?.build(),
            ingestWriter: _ingestWriter?.build(),
            warnings: _warnings?.build(),
            security: _security?.build(),
            rasters: _rasters?.build(),
            mqtt: _mqtt?.build(),
            rasterFormats: _rasterFormats?.build(),
            sinks: _sinks?.build(),
            exports: _exports?.build(),
            archive: _archive?.build(),
            holds: _holds?.build(),
            mode: mode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'database';
        _database?.build();
        _$failedField = 'records';
        _records?.build();
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'scheduler';
        _scheduler?.build();
        _$failedField = 'streams';
        _streams?.build();
        _$failedField = 'notifications';
        _notifications?.build();
        _$failedField = 'llm';
        _llm?.build();
        _$failedField = 'search';
        _search?.build();
        _$failedField = 'mcp';
        _mcp?.build();

        _$failedField = 'features';
        _features?.build();
        _$failedField = 'limits';
        _limits?.build();
        _$failedField = 'history';
        _history?.build();
        _$failedField = 'catchUp';
        _catchUp?.build();
        _$failedField = 'ingestWriter';
        _ingestWriter?.build();
        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'security';
        _security?.build();
        _$failedField = 'rasters';
        _rasters?.build();
        _$failedField = 'mqtt';
        _mqtt?.build();
        _$failedField = 'rasterFormats';
        _rasterFormats?.build();
        _$failedField = 'sinks';
        _sinks?.build();
        _$failedField = 'exports';
        _exports?.build();
        _$failedField = 'archive';
        _archive?.build();
        _$failedField = 'holds';
        _holds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SystemInfo',
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
