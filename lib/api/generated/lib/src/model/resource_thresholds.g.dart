// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_thresholds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceThresholds extends ResourceThresholds {
  @override
  final ResourceThreshold? disk;
  @override
  final ResourceThreshold? memory;
  @override
  final BuiltList<String>? alertChannels;
  @override
  final ResourceThresholdsSourceStorm? sourceStorm;
  @override
  final ResourceThresholdsCollectorBacklog? collectorBacklog;

  factory _$ResourceThresholds([
    void Function(ResourceThresholdsBuilder)? updates,
  ]) => (ResourceThresholdsBuilder()..update(updates))._build();

  _$ResourceThresholds._({
    this.disk,
    this.memory,
    this.alertChannels,
    this.sourceStorm,
    this.collectorBacklog,
  }) : super._();
  @override
  ResourceThresholds rebuild(
    void Function(ResourceThresholdsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceThresholdsBuilder toBuilder() =>
      ResourceThresholdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceThresholds &&
        disk == other.disk &&
        memory == other.memory &&
        alertChannels == other.alertChannels &&
        sourceStorm == other.sourceStorm &&
        collectorBacklog == other.collectorBacklog;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disk.hashCode);
    _$hash = $jc(_$hash, memory.hashCode);
    _$hash = $jc(_$hash, alertChannels.hashCode);
    _$hash = $jc(_$hash, sourceStorm.hashCode);
    _$hash = $jc(_$hash, collectorBacklog.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceThresholds')
          ..add('disk', disk)
          ..add('memory', memory)
          ..add('alertChannels', alertChannels)
          ..add('sourceStorm', sourceStorm)
          ..add('collectorBacklog', collectorBacklog))
        .toString();
  }
}

class ResourceThresholdsBuilder
    implements Builder<ResourceThresholds, ResourceThresholdsBuilder> {
  _$ResourceThresholds? _$v;

  ResourceThresholdBuilder? _disk;
  ResourceThresholdBuilder get disk =>
      _$this._disk ??= ResourceThresholdBuilder();
  set disk(ResourceThresholdBuilder? disk) => _$this._disk = disk;

  ResourceThresholdBuilder? _memory;
  ResourceThresholdBuilder get memory =>
      _$this._memory ??= ResourceThresholdBuilder();
  set memory(ResourceThresholdBuilder? memory) => _$this._memory = memory;

  ListBuilder<String>? _alertChannels;
  ListBuilder<String> get alertChannels =>
      _$this._alertChannels ??= ListBuilder<String>();
  set alertChannels(ListBuilder<String>? alertChannels) =>
      _$this._alertChannels = alertChannels;

  ResourceThresholdsSourceStormBuilder? _sourceStorm;
  ResourceThresholdsSourceStormBuilder get sourceStorm =>
      _$this._sourceStorm ??= ResourceThresholdsSourceStormBuilder();
  set sourceStorm(ResourceThresholdsSourceStormBuilder? sourceStorm) =>
      _$this._sourceStorm = sourceStorm;

  ResourceThresholdsCollectorBacklogBuilder? _collectorBacklog;
  ResourceThresholdsCollectorBacklogBuilder get collectorBacklog =>
      _$this._collectorBacklog ??= ResourceThresholdsCollectorBacklogBuilder();
  set collectorBacklog(
    ResourceThresholdsCollectorBacklogBuilder? collectorBacklog,
  ) => _$this._collectorBacklog = collectorBacklog;

  ResourceThresholdsBuilder() {
    ResourceThresholds._defaults(this);
  }

  ResourceThresholdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disk = $v.disk?.toBuilder();
      _memory = $v.memory?.toBuilder();
      _alertChannels = $v.alertChannels?.toBuilder();
      _sourceStorm = $v.sourceStorm?.toBuilder();
      _collectorBacklog = $v.collectorBacklog?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceThresholds other) {
    _$v = other as _$ResourceThresholds;
  }

  @override
  void update(void Function(ResourceThresholdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceThresholds build() => _build();

  _$ResourceThresholds _build() {
    _$ResourceThresholds _$result;
    try {
      _$result =
          _$v ??
          _$ResourceThresholds._(
            disk: _disk?.build(),
            memory: _memory?.build(),
            alertChannels: _alertChannels?.build(),
            sourceStorm: _sourceStorm?.build(),
            collectorBacklog: _collectorBacklog?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disk';
        _disk?.build();
        _$failedField = 'memory';
        _memory?.build();
        _$failedField = 'alertChannels';
        _alertChannels?.build();
        _$failedField = 'sourceStorm';
        _sourceStorm?.build();
        _$failedField = 'collectorBacklog';
        _collectorBacklog?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ResourceThresholds',
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
