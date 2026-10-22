// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance_sources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlanceSources extends GlanceSources {
  @override
  final int? healthy;
  @override
  final int? degraded;
  @override
  final int? failing;

  factory _$GlanceSources([void Function(GlanceSourcesBuilder)? updates]) =>
      (GlanceSourcesBuilder()..update(updates))._build();

  _$GlanceSources._({this.healthy, this.degraded, this.failing}) : super._();
  @override
  GlanceSources rebuild(void Function(GlanceSourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlanceSourcesBuilder toBuilder() => GlanceSourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlanceSources &&
        healthy == other.healthy &&
        degraded == other.degraded &&
        failing == other.failing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, healthy.hashCode);
    _$hash = $jc(_$hash, degraded.hashCode);
    _$hash = $jc(_$hash, failing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlanceSources')
          ..add('healthy', healthy)
          ..add('degraded', degraded)
          ..add('failing', failing))
        .toString();
  }
}

class GlanceSourcesBuilder
    implements Builder<GlanceSources, GlanceSourcesBuilder> {
  _$GlanceSources? _$v;

  int? _healthy;
  int? get healthy => _$this._healthy;
  set healthy(int? healthy) => _$this._healthy = healthy;

  int? _degraded;
  int? get degraded => _$this._degraded;
  set degraded(int? degraded) => _$this._degraded = degraded;

  int? _failing;
  int? get failing => _$this._failing;
  set failing(int? failing) => _$this._failing = failing;

  GlanceSourcesBuilder() {
    GlanceSources._defaults(this);
  }

  GlanceSourcesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _healthy = $v.healthy;
      _degraded = $v.degraded;
      _failing = $v.failing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlanceSources other) {
    _$v = other as _$GlanceSources;
  }

  @override
  void update(void Function(GlanceSourcesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlanceSources build() => _build();

  _$GlanceSources _build() {
    final _$result = _$v ??
        _$GlanceSources._(
          healthy: healthy,
          degraded: degraded,
          failing: failing,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
