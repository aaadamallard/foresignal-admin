// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_scheduler.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoScheduler extends SystemInfoScheduler {
  @override
  final bool? running;
  @override
  final int? scheduledSources;
  @override
  final int? activeFetches;
  @override
  final int? activeStreams;
  @override
  final int? ingestQueueDepth;

  factory _$SystemInfoScheduler([
    void Function(SystemInfoSchedulerBuilder)? updates,
  ]) => (SystemInfoSchedulerBuilder()..update(updates))._build();

  _$SystemInfoScheduler._({
    this.running,
    this.scheduledSources,
    this.activeFetches,
    this.activeStreams,
    this.ingestQueueDepth,
  }) : super._();
  @override
  SystemInfoScheduler rebuild(
    void Function(SystemInfoSchedulerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemInfoSchedulerBuilder toBuilder() =>
      SystemInfoSchedulerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoScheduler &&
        running == other.running &&
        scheduledSources == other.scheduledSources &&
        activeFetches == other.activeFetches &&
        activeStreams == other.activeStreams &&
        ingestQueueDepth == other.ingestQueueDepth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, running.hashCode);
    _$hash = $jc(_$hash, scheduledSources.hashCode);
    _$hash = $jc(_$hash, activeFetches.hashCode);
    _$hash = $jc(_$hash, activeStreams.hashCode);
    _$hash = $jc(_$hash, ingestQueueDepth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoScheduler')
          ..add('running', running)
          ..add('scheduledSources', scheduledSources)
          ..add('activeFetches', activeFetches)
          ..add('activeStreams', activeStreams)
          ..add('ingestQueueDepth', ingestQueueDepth))
        .toString();
  }
}

class SystemInfoSchedulerBuilder
    implements Builder<SystemInfoScheduler, SystemInfoSchedulerBuilder> {
  _$SystemInfoScheduler? _$v;

  bool? _running;
  bool? get running => _$this._running;
  set running(bool? running) => _$this._running = running;

  int? _scheduledSources;
  int? get scheduledSources => _$this._scheduledSources;
  set scheduledSources(int? scheduledSources) =>
      _$this._scheduledSources = scheduledSources;

  int? _activeFetches;
  int? get activeFetches => _$this._activeFetches;
  set activeFetches(int? activeFetches) =>
      _$this._activeFetches = activeFetches;

  int? _activeStreams;
  int? get activeStreams => _$this._activeStreams;
  set activeStreams(int? activeStreams) =>
      _$this._activeStreams = activeStreams;

  int? _ingestQueueDepth;
  int? get ingestQueueDepth => _$this._ingestQueueDepth;
  set ingestQueueDepth(int? ingestQueueDepth) =>
      _$this._ingestQueueDepth = ingestQueueDepth;

  SystemInfoSchedulerBuilder() {
    SystemInfoScheduler._defaults(this);
  }

  SystemInfoSchedulerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _running = $v.running;
      _scheduledSources = $v.scheduledSources;
      _activeFetches = $v.activeFetches;
      _activeStreams = $v.activeStreams;
      _ingestQueueDepth = $v.ingestQueueDepth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoScheduler other) {
    _$v = other as _$SystemInfoScheduler;
  }

  @override
  void update(void Function(SystemInfoSchedulerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoScheduler build() => _build();

  _$SystemInfoScheduler _build() {
    final _$result =
        _$v ??
        _$SystemInfoScheduler._(
          running: running,
          scheduledSources: scheduledSources,
          activeFetches: activeFetches,
          activeStreams: activeStreams,
          ingestQueueDepth: ingestQueueDepth,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
