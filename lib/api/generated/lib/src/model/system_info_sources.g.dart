// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_sources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoSources extends SystemInfoSources {
  @override
  final int? total;
  @override
  final int? enabled;
  @override
  final int? healthy;
  @override
  final int? degraded;
  @override
  final int? failing;

  factory _$SystemInfoSources([
    void Function(SystemInfoSourcesBuilder)? updates,
  ]) => (SystemInfoSourcesBuilder()..update(updates))._build();

  _$SystemInfoSources._({
    this.total,
    this.enabled,
    this.healthy,
    this.degraded,
    this.failing,
  }) : super._();
  @override
  SystemInfoSources rebuild(void Function(SystemInfoSourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoSourcesBuilder toBuilder() =>
      SystemInfoSourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoSources &&
        total == other.total &&
        enabled == other.enabled &&
        healthy == other.healthy &&
        degraded == other.degraded &&
        failing == other.failing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, healthy.hashCode);
    _$hash = $jc(_$hash, degraded.hashCode);
    _$hash = $jc(_$hash, failing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoSources')
          ..add('total', total)
          ..add('enabled', enabled)
          ..add('healthy', healthy)
          ..add('degraded', degraded)
          ..add('failing', failing))
        .toString();
  }
}

class SystemInfoSourcesBuilder
    implements Builder<SystemInfoSources, SystemInfoSourcesBuilder> {
  _$SystemInfoSources? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _enabled;
  int? get enabled => _$this._enabled;
  set enabled(int? enabled) => _$this._enabled = enabled;

  int? _healthy;
  int? get healthy => _$this._healthy;
  set healthy(int? healthy) => _$this._healthy = healthy;

  int? _degraded;
  int? get degraded => _$this._degraded;
  set degraded(int? degraded) => _$this._degraded = degraded;

  int? _failing;
  int? get failing => _$this._failing;
  set failing(int? failing) => _$this._failing = failing;

  SystemInfoSourcesBuilder() {
    SystemInfoSources._defaults(this);
  }

  SystemInfoSourcesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _enabled = $v.enabled;
      _healthy = $v.healthy;
      _degraded = $v.degraded;
      _failing = $v.failing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoSources other) {
    _$v = other as _$SystemInfoSources;
  }

  @override
  void update(void Function(SystemInfoSourcesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoSources build() => _build();

  _$SystemInfoSources _build() {
    final _$result =
        _$v ??
        _$SystemInfoSources._(
          total: total,
          enabled: enabled,
          healthy: healthy,
          degraded: degraded,
          failing: failing,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
