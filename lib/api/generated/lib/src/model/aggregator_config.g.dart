// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregator_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregatorConfig extends AggregatorConfig {
  @override
  final bool enabled;
  @override
  final String? mode;
  @override
  final String? endpoint;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final bool? disableSupersededSources;

  factory _$AggregatorConfig([
    void Function(AggregatorConfigBuilder)? updates,
  ]) => (AggregatorConfigBuilder()..update(updates))._build();

  _$AggregatorConfig._({
    required this.enabled,
    this.mode,
    this.endpoint,
    this.config,
    this.disableSupersededSources,
  }) : super._();
  @override
  AggregatorConfig rebuild(void Function(AggregatorConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregatorConfigBuilder toBuilder() =>
      AggregatorConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregatorConfig &&
        enabled == other.enabled &&
        mode == other.mode &&
        endpoint == other.endpoint &&
        config == other.config &&
        disableSupersededSources == other.disableSupersededSources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, disableSupersededSources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggregatorConfig')
          ..add('enabled', enabled)
          ..add('mode', mode)
          ..add('endpoint', endpoint)
          ..add('config', config)
          ..add('disableSupersededSources', disableSupersededSources))
        .toString();
  }
}

class AggregatorConfigBuilder
    implements Builder<AggregatorConfig, AggregatorConfigBuilder> {
  _$AggregatorConfig? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  bool? _disableSupersededSources;
  bool? get disableSupersededSources => _$this._disableSupersededSources;
  set disableSupersededSources(bool? disableSupersededSources) =>
      _$this._disableSupersededSources = disableSupersededSources;

  AggregatorConfigBuilder() {
    AggregatorConfig._defaults(this);
  }

  AggregatorConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _mode = $v.mode;
      _endpoint = $v.endpoint;
      _config = $v.config?.toBuilder();
      _disableSupersededSources = $v.disableSupersededSources;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregatorConfig other) {
    _$v = other as _$AggregatorConfig;
  }

  @override
  void update(void Function(AggregatorConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregatorConfig build() => _build();

  _$AggregatorConfig _build() {
    _$AggregatorConfig _$result;
    try {
      _$result =
          _$v ??
          _$AggregatorConfig._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'AggregatorConfig',
              'enabled',
            ),
            mode: mode,
            endpoint: endpoint,
            config: _config?.build(),
            disableSupersededSources: disableSupersededSources,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AggregatorConfig',
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
