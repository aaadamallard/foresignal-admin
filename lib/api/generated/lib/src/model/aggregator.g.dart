// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Aggregator extends Aggregator {
  @override
  final String domain;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final String? mode;
  @override
  final String? endpoint;
  @override
  final String? status;
  @override
  final BuiltList<String>? supersededSources;
  @override
  final DateTime? lastSeenAt;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final bool? disableSupersededSources;
  @override
  final bool? implemented;
  @override
  final String? statusReason;
  @override
  final BuiltList<String>? sourceIds;

  factory _$Aggregator([void Function(AggregatorBuilder)? updates]) =>
      (AggregatorBuilder()..update(updates))._build();

  _$Aggregator._({
    required this.domain,
    required this.name,
    required this.enabled,
    this.mode,
    this.endpoint,
    this.status,
    this.supersededSources,
    this.lastSeenAt,
    this.config,
    this.disableSupersededSources,
    this.implemented,
    this.statusReason,
    this.sourceIds,
  }) : super._();
  @override
  Aggregator rebuild(void Function(AggregatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregatorBuilder toBuilder() => AggregatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Aggregator &&
        domain == other.domain &&
        name == other.name &&
        enabled == other.enabled &&
        mode == other.mode &&
        endpoint == other.endpoint &&
        status == other.status &&
        supersededSources == other.supersededSources &&
        lastSeenAt == other.lastSeenAt &&
        config == other.config &&
        disableSupersededSources == other.disableSupersededSources &&
        implemented == other.implemented &&
        statusReason == other.statusReason &&
        sourceIds == other.sourceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, supersededSources.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, disableSupersededSources.hashCode);
    _$hash = $jc(_$hash, implemented.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Aggregator')
          ..add('domain', domain)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('mode', mode)
          ..add('endpoint', endpoint)
          ..add('status', status)
          ..add('supersededSources', supersededSources)
          ..add('lastSeenAt', lastSeenAt)
          ..add('config', config)
          ..add('disableSupersededSources', disableSupersededSources)
          ..add('implemented', implemented)
          ..add('statusReason', statusReason)
          ..add('sourceIds', sourceIds))
        .toString();
  }
}

class AggregatorBuilder implements Builder<Aggregator, AggregatorBuilder> {
  _$Aggregator? _$v;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<String>? _supersededSources;
  ListBuilder<String> get supersededSources =>
      _$this._supersededSources ??= ListBuilder<String>();
  set supersededSources(ListBuilder<String>? supersededSources) =>
      _$this._supersededSources = supersededSources;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  bool? _disableSupersededSources;
  bool? get disableSupersededSources => _$this._disableSupersededSources;
  set disableSupersededSources(bool? disableSupersededSources) =>
      _$this._disableSupersededSources = disableSupersededSources;

  bool? _implemented;
  bool? get implemented => _$this._implemented;
  set implemented(bool? implemented) => _$this._implemented = implemented;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  ListBuilder<String>? _sourceIds;
  ListBuilder<String> get sourceIds =>
      _$this._sourceIds ??= ListBuilder<String>();
  set sourceIds(ListBuilder<String>? sourceIds) =>
      _$this._sourceIds = sourceIds;

  AggregatorBuilder() {
    Aggregator._defaults(this);
  }

  AggregatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domain = $v.domain;
      _name = $v.name;
      _enabled = $v.enabled;
      _mode = $v.mode;
      _endpoint = $v.endpoint;
      _status = $v.status;
      _supersededSources = $v.supersededSources?.toBuilder();
      _lastSeenAt = $v.lastSeenAt;
      _config = $v.config?.toBuilder();
      _disableSupersededSources = $v.disableSupersededSources;
      _implemented = $v.implemented;
      _statusReason = $v.statusReason;
      _sourceIds = $v.sourceIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Aggregator other) {
    _$v = other as _$Aggregator;
  }

  @override
  void update(void Function(AggregatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Aggregator build() => _build();

  _$Aggregator _build() {
    _$Aggregator _$result;
    try {
      _$result =
          _$v ??
          _$Aggregator._(
            domain: BuiltValueNullFieldError.checkNotNull(
              domain,
              r'Aggregator',
              'domain',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Aggregator',
              'name',
            ),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'Aggregator',
              'enabled',
            ),
            mode: mode,
            endpoint: endpoint,
            status: status,
            supersededSources: _supersededSources?.build(),
            lastSeenAt: lastSeenAt,
            config: _config?.build(),
            disableSupersededSources: disableSupersededSources,
            implemented: implemented,
            statusReason: statusReason,
            sourceIds: _sourceIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supersededSources';
        _supersededSources?.build();

        _$failedField = 'config';
        _config?.build();

        _$failedField = 'sourceIds';
        _sourceIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Aggregator',
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
