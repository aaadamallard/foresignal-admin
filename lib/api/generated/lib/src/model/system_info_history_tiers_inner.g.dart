// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_history_tiers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoHistoryTiersInner extends SystemInfoHistoryTiersInner {
  @override
  final HistoryTier tier;
  @override
  final int partitions;
  @override
  final int rows;
  @override
  final int bytes;
  @override
  final int? headroomSeq;
  @override
  final num? windowDays;
  @override
  final int? downsampledLeaves;
  @override
  final int? downsampledRows;

  factory _$SystemInfoHistoryTiersInner(
          [void Function(SystemInfoHistoryTiersInnerBuilder)? updates]) =>
      (SystemInfoHistoryTiersInnerBuilder()..update(updates))._build();

  _$SystemInfoHistoryTiersInner._(
      {required this.tier,
      required this.partitions,
      required this.rows,
      required this.bytes,
      this.headroomSeq,
      this.windowDays,
      this.downsampledLeaves,
      this.downsampledRows})
      : super._();
  @override
  SystemInfoHistoryTiersInner rebuild(
          void Function(SystemInfoHistoryTiersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoHistoryTiersInnerBuilder toBuilder() =>
      SystemInfoHistoryTiersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoHistoryTiersInner &&
        tier == other.tier &&
        partitions == other.partitions &&
        rows == other.rows &&
        bytes == other.bytes &&
        headroomSeq == other.headroomSeq &&
        windowDays == other.windowDays &&
        downsampledLeaves == other.downsampledLeaves &&
        downsampledRows == other.downsampledRows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, partitions.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, headroomSeq.hashCode);
    _$hash = $jc(_$hash, windowDays.hashCode);
    _$hash = $jc(_$hash, downsampledLeaves.hashCode);
    _$hash = $jc(_$hash, downsampledRows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoHistoryTiersInner')
          ..add('tier', tier)
          ..add('partitions', partitions)
          ..add('rows', rows)
          ..add('bytes', bytes)
          ..add('headroomSeq', headroomSeq)
          ..add('windowDays', windowDays)
          ..add('downsampledLeaves', downsampledLeaves)
          ..add('downsampledRows', downsampledRows))
        .toString();
  }
}

class SystemInfoHistoryTiersInnerBuilder
    implements
        Builder<SystemInfoHistoryTiersInner,
            SystemInfoHistoryTiersInnerBuilder> {
  _$SystemInfoHistoryTiersInner? _$v;

  HistoryTier? _tier;
  HistoryTier? get tier => _$this._tier;
  set tier(HistoryTier? tier) => _$this._tier = tier;

  int? _partitions;
  int? get partitions => _$this._partitions;
  set partitions(int? partitions) => _$this._partitions = partitions;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  int? _headroomSeq;
  int? get headroomSeq => _$this._headroomSeq;
  set headroomSeq(int? headroomSeq) => _$this._headroomSeq = headroomSeq;

  num? _windowDays;
  num? get windowDays => _$this._windowDays;
  set windowDays(num? windowDays) => _$this._windowDays = windowDays;

  int? _downsampledLeaves;
  int? get downsampledLeaves => _$this._downsampledLeaves;
  set downsampledLeaves(int? downsampledLeaves) =>
      _$this._downsampledLeaves = downsampledLeaves;

  int? _downsampledRows;
  int? get downsampledRows => _$this._downsampledRows;
  set downsampledRows(int? downsampledRows) =>
      _$this._downsampledRows = downsampledRows;

  SystemInfoHistoryTiersInnerBuilder() {
    SystemInfoHistoryTiersInner._defaults(this);
  }

  SystemInfoHistoryTiersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tier = $v.tier;
      _partitions = $v.partitions;
      _rows = $v.rows;
      _bytes = $v.bytes;
      _headroomSeq = $v.headroomSeq;
      _windowDays = $v.windowDays;
      _downsampledLeaves = $v.downsampledLeaves;
      _downsampledRows = $v.downsampledRows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoHistoryTiersInner other) {
    _$v = other as _$SystemInfoHistoryTiersInner;
  }

  @override
  void update(void Function(SystemInfoHistoryTiersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoHistoryTiersInner build() => _build();

  _$SystemInfoHistoryTiersInner _build() {
    final _$result = _$v ??
        _$SystemInfoHistoryTiersInner._(
          tier: BuiltValueNullFieldError.checkNotNull(
              tier, r'SystemInfoHistoryTiersInner', 'tier'),
          partitions: BuiltValueNullFieldError.checkNotNull(
              partitions, r'SystemInfoHistoryTiersInner', 'partitions'),
          rows: BuiltValueNullFieldError.checkNotNull(
              rows, r'SystemInfoHistoryTiersInner', 'rows'),
          bytes: BuiltValueNullFieldError.checkNotNull(
              bytes, r'SystemInfoHistoryTiersInner', 'bytes'),
          headroomSeq: headroomSeq,
          windowDays: windowDays,
          downsampledLeaves: downsampledLeaves,
          downsampledRows: downsampledRows,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
