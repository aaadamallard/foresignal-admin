// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_thresholds_collector_backlog.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceThresholdsCollectorBacklog
    extends ResourceThresholdsCollectorBacklog {
  @override
  final int? triggerLagSeq;
  @override
  final int? waitingPulls;
  @override
  final int? sustainedSeconds;

  factory _$ResourceThresholdsCollectorBacklog([
    void Function(ResourceThresholdsCollectorBacklogBuilder)? updates,
  ]) => (ResourceThresholdsCollectorBacklogBuilder()..update(updates))._build();

  _$ResourceThresholdsCollectorBacklog._({
    this.triggerLagSeq,
    this.waitingPulls,
    this.sustainedSeconds,
  }) : super._();
  @override
  ResourceThresholdsCollectorBacklog rebuild(
    void Function(ResourceThresholdsCollectorBacklogBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceThresholdsCollectorBacklogBuilder toBuilder() =>
      ResourceThresholdsCollectorBacklogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceThresholdsCollectorBacklog &&
        triggerLagSeq == other.triggerLagSeq &&
        waitingPulls == other.waitingPulls &&
        sustainedSeconds == other.sustainedSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, triggerLagSeq.hashCode);
    _$hash = $jc(_$hash, waitingPulls.hashCode);
    _$hash = $jc(_$hash, sustainedSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceThresholdsCollectorBacklog')
          ..add('triggerLagSeq', triggerLagSeq)
          ..add('waitingPulls', waitingPulls)
          ..add('sustainedSeconds', sustainedSeconds))
        .toString();
  }
}

class ResourceThresholdsCollectorBacklogBuilder
    implements
        Builder<
          ResourceThresholdsCollectorBacklog,
          ResourceThresholdsCollectorBacklogBuilder
        > {
  _$ResourceThresholdsCollectorBacklog? _$v;

  int? _triggerLagSeq;
  int? get triggerLagSeq => _$this._triggerLagSeq;
  set triggerLagSeq(int? triggerLagSeq) =>
      _$this._triggerLagSeq = triggerLagSeq;

  int? _waitingPulls;
  int? get waitingPulls => _$this._waitingPulls;
  set waitingPulls(int? waitingPulls) => _$this._waitingPulls = waitingPulls;

  int? _sustainedSeconds;
  int? get sustainedSeconds => _$this._sustainedSeconds;
  set sustainedSeconds(int? sustainedSeconds) =>
      _$this._sustainedSeconds = sustainedSeconds;

  ResourceThresholdsCollectorBacklogBuilder() {
    ResourceThresholdsCollectorBacklog._defaults(this);
  }

  ResourceThresholdsCollectorBacklogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerLagSeq = $v.triggerLagSeq;
      _waitingPulls = $v.waitingPulls;
      _sustainedSeconds = $v.sustainedSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceThresholdsCollectorBacklog other) {
    _$v = other as _$ResourceThresholdsCollectorBacklog;
  }

  @override
  void update(
    void Function(ResourceThresholdsCollectorBacklogBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ResourceThresholdsCollectorBacklog build() => _build();

  _$ResourceThresholdsCollectorBacklog _build() {
    final _$result =
        _$v ??
        _$ResourceThresholdsCollectorBacklog._(
          triggerLagSeq: triggerLagSeq,
          waitingPulls: waitingPulls,
          sustainedSeconds: sustainedSeconds,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
