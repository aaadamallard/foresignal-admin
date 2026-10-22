// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_layer_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLayerStats extends ChronicleLayerStats {
  @override
  final int? rows;
  @override
  final int? bytes;

  factory _$ChronicleLayerStats([
    void Function(ChronicleLayerStatsBuilder)? updates,
  ]) => (ChronicleLayerStatsBuilder()..update(updates))._build();

  _$ChronicleLayerStats._({this.rows, this.bytes}) : super._();
  @override
  ChronicleLayerStats rebuild(
    void Function(ChronicleLayerStatsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleLayerStatsBuilder toBuilder() =>
      ChronicleLayerStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLayerStats &&
        rows == other.rows &&
        bytes == other.bytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLayerStats')
          ..add('rows', rows)
          ..add('bytes', bytes))
        .toString();
  }
}

class ChronicleLayerStatsBuilder
    implements Builder<ChronicleLayerStats, ChronicleLayerStatsBuilder> {
  _$ChronicleLayerStats? _$v;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  ChronicleLayerStatsBuilder() {
    ChronicleLayerStats._defaults(this);
  }

  ChronicleLayerStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rows = $v.rows;
      _bytes = $v.bytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLayerStats other) {
    _$v = other as _$ChronicleLayerStats;
  }

  @override
  void update(void Function(ChronicleLayerStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLayerStats build() => _build();

  _$ChronicleLayerStats _build() {
    final _$result = _$v ?? _$ChronicleLayerStats._(rows: rows, bytes: bytes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
