// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_catch_up.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoCatchUp extends SystemInfoCatchUp {
  @override
  final int? triggerLagSeq;
  @override
  final int? ingestQueueDepth;
  @override
  final bool? catchingUp;

  factory _$SystemInfoCatchUp(
          [void Function(SystemInfoCatchUpBuilder)? updates]) =>
      (SystemInfoCatchUpBuilder()..update(updates))._build();

  _$SystemInfoCatchUp._(
      {this.triggerLagSeq, this.ingestQueueDepth, this.catchingUp})
      : super._();
  @override
  SystemInfoCatchUp rebuild(void Function(SystemInfoCatchUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoCatchUpBuilder toBuilder() =>
      SystemInfoCatchUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoCatchUp &&
        triggerLagSeq == other.triggerLagSeq &&
        ingestQueueDepth == other.ingestQueueDepth &&
        catchingUp == other.catchingUp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, triggerLagSeq.hashCode);
    _$hash = $jc(_$hash, ingestQueueDepth.hashCode);
    _$hash = $jc(_$hash, catchingUp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoCatchUp')
          ..add('triggerLagSeq', triggerLagSeq)
          ..add('ingestQueueDepth', ingestQueueDepth)
          ..add('catchingUp', catchingUp))
        .toString();
  }
}

class SystemInfoCatchUpBuilder
    implements Builder<SystemInfoCatchUp, SystemInfoCatchUpBuilder> {
  _$SystemInfoCatchUp? _$v;

  int? _triggerLagSeq;
  int? get triggerLagSeq => _$this._triggerLagSeq;
  set triggerLagSeq(int? triggerLagSeq) =>
      _$this._triggerLagSeq = triggerLagSeq;

  int? _ingestQueueDepth;
  int? get ingestQueueDepth => _$this._ingestQueueDepth;
  set ingestQueueDepth(int? ingestQueueDepth) =>
      _$this._ingestQueueDepth = ingestQueueDepth;

  bool? _catchingUp;
  bool? get catchingUp => _$this._catchingUp;
  set catchingUp(bool? catchingUp) => _$this._catchingUp = catchingUp;

  SystemInfoCatchUpBuilder() {
    SystemInfoCatchUp._defaults(this);
  }

  SystemInfoCatchUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerLagSeq = $v.triggerLagSeq;
      _ingestQueueDepth = $v.ingestQueueDepth;
      _catchingUp = $v.catchingUp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoCatchUp other) {
    _$v = other as _$SystemInfoCatchUp;
  }

  @override
  void update(void Function(SystemInfoCatchUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoCatchUp build() => _build();

  _$SystemInfoCatchUp _build() {
    final _$result = _$v ??
        _$SystemInfoCatchUp._(
          triggerLagSeq: triggerLagSeq,
          ingestQueueDepth: ingestQueueDepth,
          catchingUp: catchingUp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
