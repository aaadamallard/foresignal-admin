// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_storage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceStorage extends SourceStorage {
  @override
  final num? observationsPerMinute;
  @override
  final num? versionsPerMinute;
  @override
  final num? persistRatio;
  @override
  final num? triggerEdgeShare;
  @override
  final int? bytesPerDay;
  @override
  final int? projectedBytes;
  @override
  final int? lateLastHour;
  @override
  final int? clampedLastHour;

  factory _$SourceStorage([void Function(SourceStorageBuilder)? updates]) =>
      (SourceStorageBuilder()..update(updates))._build();

  _$SourceStorage._({
    this.observationsPerMinute,
    this.versionsPerMinute,
    this.persistRatio,
    this.triggerEdgeShare,
    this.bytesPerDay,
    this.projectedBytes,
    this.lateLastHour,
    this.clampedLastHour,
  }) : super._();
  @override
  SourceStorage rebuild(void Function(SourceStorageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceStorageBuilder toBuilder() => SourceStorageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceStorage &&
        observationsPerMinute == other.observationsPerMinute &&
        versionsPerMinute == other.versionsPerMinute &&
        persistRatio == other.persistRatio &&
        triggerEdgeShare == other.triggerEdgeShare &&
        bytesPerDay == other.bytesPerDay &&
        projectedBytes == other.projectedBytes &&
        lateLastHour == other.lateLastHour &&
        clampedLastHour == other.clampedLastHour;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, observationsPerMinute.hashCode);
    _$hash = $jc(_$hash, versionsPerMinute.hashCode);
    _$hash = $jc(_$hash, persistRatio.hashCode);
    _$hash = $jc(_$hash, triggerEdgeShare.hashCode);
    _$hash = $jc(_$hash, bytesPerDay.hashCode);
    _$hash = $jc(_$hash, projectedBytes.hashCode);
    _$hash = $jc(_$hash, lateLastHour.hashCode);
    _$hash = $jc(_$hash, clampedLastHour.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceStorage')
          ..add('observationsPerMinute', observationsPerMinute)
          ..add('versionsPerMinute', versionsPerMinute)
          ..add('persistRatio', persistRatio)
          ..add('triggerEdgeShare', triggerEdgeShare)
          ..add('bytesPerDay', bytesPerDay)
          ..add('projectedBytes', projectedBytes)
          ..add('lateLastHour', lateLastHour)
          ..add('clampedLastHour', clampedLastHour))
        .toString();
  }
}

class SourceStorageBuilder
    implements Builder<SourceStorage, SourceStorageBuilder> {
  _$SourceStorage? _$v;

  num? _observationsPerMinute;
  num? get observationsPerMinute => _$this._observationsPerMinute;
  set observationsPerMinute(num? observationsPerMinute) =>
      _$this._observationsPerMinute = observationsPerMinute;

  num? _versionsPerMinute;
  num? get versionsPerMinute => _$this._versionsPerMinute;
  set versionsPerMinute(num? versionsPerMinute) =>
      _$this._versionsPerMinute = versionsPerMinute;

  num? _persistRatio;
  num? get persistRatio => _$this._persistRatio;
  set persistRatio(num? persistRatio) => _$this._persistRatio = persistRatio;

  num? _triggerEdgeShare;
  num? get triggerEdgeShare => _$this._triggerEdgeShare;
  set triggerEdgeShare(num? triggerEdgeShare) =>
      _$this._triggerEdgeShare = triggerEdgeShare;

  int? _bytesPerDay;
  int? get bytesPerDay => _$this._bytesPerDay;
  set bytesPerDay(int? bytesPerDay) => _$this._bytesPerDay = bytesPerDay;

  int? _projectedBytes;
  int? get projectedBytes => _$this._projectedBytes;
  set projectedBytes(int? projectedBytes) =>
      _$this._projectedBytes = projectedBytes;

  int? _lateLastHour;
  int? get lateLastHour => _$this._lateLastHour;
  set lateLastHour(int? lateLastHour) => _$this._lateLastHour = lateLastHour;

  int? _clampedLastHour;
  int? get clampedLastHour => _$this._clampedLastHour;
  set clampedLastHour(int? clampedLastHour) =>
      _$this._clampedLastHour = clampedLastHour;

  SourceStorageBuilder() {
    SourceStorage._defaults(this);
  }

  SourceStorageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _observationsPerMinute = $v.observationsPerMinute;
      _versionsPerMinute = $v.versionsPerMinute;
      _persistRatio = $v.persistRatio;
      _triggerEdgeShare = $v.triggerEdgeShare;
      _bytesPerDay = $v.bytesPerDay;
      _projectedBytes = $v.projectedBytes;
      _lateLastHour = $v.lateLastHour;
      _clampedLastHour = $v.clampedLastHour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceStorage other) {
    _$v = other as _$SourceStorage;
  }

  @override
  void update(void Function(SourceStorageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceStorage build() => _build();

  _$SourceStorage _build() {
    final _$result =
        _$v ??
        _$SourceStorage._(
          observationsPerMinute: observationsPerMinute,
          versionsPerMinute: versionsPerMinute,
          persistRatio: persistRatio,
          triggerEdgeShare: triggerEdgeShare,
          bytesPerDay: bytesPerDay,
          projectedBytes: projectedBytes,
          lateLastHour: lateLastHour,
          clampedLastHour: clampedLastHour,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
