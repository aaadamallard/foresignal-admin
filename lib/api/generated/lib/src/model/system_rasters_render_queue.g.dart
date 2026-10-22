// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_rasters_render_queue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemRastersRenderQueue extends SystemRastersRenderQueue {
  @override
  final int? depth;
  @override
  final int? active;
  @override
  final int? poolSize;

  factory _$SystemRastersRenderQueue(
          [void Function(SystemRastersRenderQueueBuilder)? updates]) =>
      (SystemRastersRenderQueueBuilder()..update(updates))._build();

  _$SystemRastersRenderQueue._({this.depth, this.active, this.poolSize})
      : super._();
  @override
  SystemRastersRenderQueue rebuild(
          void Function(SystemRastersRenderQueueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemRastersRenderQueueBuilder toBuilder() =>
      SystemRastersRenderQueueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemRastersRenderQueue &&
        depth == other.depth &&
        active == other.active &&
        poolSize == other.poolSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, depth.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, poolSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemRastersRenderQueue')
          ..add('depth', depth)
          ..add('active', active)
          ..add('poolSize', poolSize))
        .toString();
  }
}

class SystemRastersRenderQueueBuilder
    implements
        Builder<SystemRastersRenderQueue, SystemRastersRenderQueueBuilder> {
  _$SystemRastersRenderQueue? _$v;

  int? _depth;
  int? get depth => _$this._depth;
  set depth(int? depth) => _$this._depth = depth;

  int? _active;
  int? get active => _$this._active;
  set active(int? active) => _$this._active = active;

  int? _poolSize;
  int? get poolSize => _$this._poolSize;
  set poolSize(int? poolSize) => _$this._poolSize = poolSize;

  SystemRastersRenderQueueBuilder() {
    SystemRastersRenderQueue._defaults(this);
  }

  SystemRastersRenderQueueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _depth = $v.depth;
      _active = $v.active;
      _poolSize = $v.poolSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemRastersRenderQueue other) {
    _$v = other as _$SystemRastersRenderQueue;
  }

  @override
  void update(void Function(SystemRastersRenderQueueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemRastersRenderQueue build() => _build();

  _$SystemRastersRenderQueue _build() {
    final _$result = _$v ??
        _$SystemRastersRenderQueue._(
          depth: depth,
          active: active,
          poolSize: poolSize,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
