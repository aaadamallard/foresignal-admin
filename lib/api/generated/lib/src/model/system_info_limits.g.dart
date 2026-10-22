// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_limits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoLimits extends SystemInfoLimits {
  @override
  final int? pageMax;
  @override
  final int? historyPageMax;
  @override
  final int? sseClientBuffer;
  @override
  final int? liveMaxEntities;
  @override
  final int? ingestMaxBytes;
  @override
  final int? ingestMaxRecords;
  @override
  final int? tileMaxFeatures;

  factory _$SystemInfoLimits([
    void Function(SystemInfoLimitsBuilder)? updates,
  ]) => (SystemInfoLimitsBuilder()..update(updates))._build();

  _$SystemInfoLimits._({
    this.pageMax,
    this.historyPageMax,
    this.sseClientBuffer,
    this.liveMaxEntities,
    this.ingestMaxBytes,
    this.ingestMaxRecords,
    this.tileMaxFeatures,
  }) : super._();
  @override
  SystemInfoLimits rebuild(void Function(SystemInfoLimitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoLimitsBuilder toBuilder() =>
      SystemInfoLimitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoLimits &&
        pageMax == other.pageMax &&
        historyPageMax == other.historyPageMax &&
        sseClientBuffer == other.sseClientBuffer &&
        liveMaxEntities == other.liveMaxEntities &&
        ingestMaxBytes == other.ingestMaxBytes &&
        ingestMaxRecords == other.ingestMaxRecords &&
        tileMaxFeatures == other.tileMaxFeatures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageMax.hashCode);
    _$hash = $jc(_$hash, historyPageMax.hashCode);
    _$hash = $jc(_$hash, sseClientBuffer.hashCode);
    _$hash = $jc(_$hash, liveMaxEntities.hashCode);
    _$hash = $jc(_$hash, ingestMaxBytes.hashCode);
    _$hash = $jc(_$hash, ingestMaxRecords.hashCode);
    _$hash = $jc(_$hash, tileMaxFeatures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoLimits')
          ..add('pageMax', pageMax)
          ..add('historyPageMax', historyPageMax)
          ..add('sseClientBuffer', sseClientBuffer)
          ..add('liveMaxEntities', liveMaxEntities)
          ..add('ingestMaxBytes', ingestMaxBytes)
          ..add('ingestMaxRecords', ingestMaxRecords)
          ..add('tileMaxFeatures', tileMaxFeatures))
        .toString();
  }
}

class SystemInfoLimitsBuilder
    implements Builder<SystemInfoLimits, SystemInfoLimitsBuilder> {
  _$SystemInfoLimits? _$v;

  int? _pageMax;
  int? get pageMax => _$this._pageMax;
  set pageMax(int? pageMax) => _$this._pageMax = pageMax;

  int? _historyPageMax;
  int? get historyPageMax => _$this._historyPageMax;
  set historyPageMax(int? historyPageMax) =>
      _$this._historyPageMax = historyPageMax;

  int? _sseClientBuffer;
  int? get sseClientBuffer => _$this._sseClientBuffer;
  set sseClientBuffer(int? sseClientBuffer) =>
      _$this._sseClientBuffer = sseClientBuffer;

  int? _liveMaxEntities;
  int? get liveMaxEntities => _$this._liveMaxEntities;
  set liveMaxEntities(int? liveMaxEntities) =>
      _$this._liveMaxEntities = liveMaxEntities;

  int? _ingestMaxBytes;
  int? get ingestMaxBytes => _$this._ingestMaxBytes;
  set ingestMaxBytes(int? ingestMaxBytes) =>
      _$this._ingestMaxBytes = ingestMaxBytes;

  int? _ingestMaxRecords;
  int? get ingestMaxRecords => _$this._ingestMaxRecords;
  set ingestMaxRecords(int? ingestMaxRecords) =>
      _$this._ingestMaxRecords = ingestMaxRecords;

  int? _tileMaxFeatures;
  int? get tileMaxFeatures => _$this._tileMaxFeatures;
  set tileMaxFeatures(int? tileMaxFeatures) =>
      _$this._tileMaxFeatures = tileMaxFeatures;

  SystemInfoLimitsBuilder() {
    SystemInfoLimits._defaults(this);
  }

  SystemInfoLimitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageMax = $v.pageMax;
      _historyPageMax = $v.historyPageMax;
      _sseClientBuffer = $v.sseClientBuffer;
      _liveMaxEntities = $v.liveMaxEntities;
      _ingestMaxBytes = $v.ingestMaxBytes;
      _ingestMaxRecords = $v.ingestMaxRecords;
      _tileMaxFeatures = $v.tileMaxFeatures;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoLimits other) {
    _$v = other as _$SystemInfoLimits;
  }

  @override
  void update(void Function(SystemInfoLimitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoLimits build() => _build();

  _$SystemInfoLimits _build() {
    final _$result =
        _$v ??
        _$SystemInfoLimits._(
          pageMax: pageMax,
          historyPageMax: historyPageMax,
          sseClientBuffer: sseClientBuffer,
          liveMaxEntities: liveMaxEntities,
          ingestMaxBytes: ingestMaxBytes,
          ingestMaxRecords: ingestMaxRecords,
          tileMaxFeatures: tileMaxFeatures,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
