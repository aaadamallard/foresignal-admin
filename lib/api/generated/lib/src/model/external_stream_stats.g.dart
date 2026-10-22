// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_stream_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalStreamStats extends ExternalStreamStats {
  @override
  final String? streamId;
  @override
  final String? mode;
  @override
  final String? kind;
  @override
  final int? items;
  @override
  final int? rejected;
  @override
  final DateTime? lastItemAt;
  @override
  final int? bindings;

  factory _$ExternalStreamStats(
          [void Function(ExternalStreamStatsBuilder)? updates]) =>
      (ExternalStreamStatsBuilder()..update(updates))._build();

  _$ExternalStreamStats._(
      {this.streamId,
      this.mode,
      this.kind,
      this.items,
      this.rejected,
      this.lastItemAt,
      this.bindings})
      : super._();
  @override
  ExternalStreamStats rebuild(
          void Function(ExternalStreamStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalStreamStatsBuilder toBuilder() =>
      ExternalStreamStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalStreamStats &&
        streamId == other.streamId &&
        mode == other.mode &&
        kind == other.kind &&
        items == other.items &&
        rejected == other.rejected &&
        lastItemAt == other.lastItemAt &&
        bindings == other.bindings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, lastItemAt.hashCode);
    _$hash = $jc(_$hash, bindings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalStreamStats')
          ..add('streamId', streamId)
          ..add('mode', mode)
          ..add('kind', kind)
          ..add('items', items)
          ..add('rejected', rejected)
          ..add('lastItemAt', lastItemAt)
          ..add('bindings', bindings))
        .toString();
  }
}

class ExternalStreamStatsBuilder
    implements Builder<ExternalStreamStats, ExternalStreamStatsBuilder> {
  _$ExternalStreamStats? _$v;

  String? _streamId;
  String? get streamId => _$this._streamId;
  set streamId(String? streamId) => _$this._streamId = streamId;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _items;
  int? get items => _$this._items;
  set items(int? items) => _$this._items = items;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  DateTime? _lastItemAt;
  DateTime? get lastItemAt => _$this._lastItemAt;
  set lastItemAt(DateTime? lastItemAt) => _$this._lastItemAt = lastItemAt;

  int? _bindings;
  int? get bindings => _$this._bindings;
  set bindings(int? bindings) => _$this._bindings = bindings;

  ExternalStreamStatsBuilder() {
    ExternalStreamStats._defaults(this);
  }

  ExternalStreamStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamId = $v.streamId;
      _mode = $v.mode;
      _kind = $v.kind;
      _items = $v.items;
      _rejected = $v.rejected;
      _lastItemAt = $v.lastItemAt;
      _bindings = $v.bindings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalStreamStats other) {
    _$v = other as _$ExternalStreamStats;
  }

  @override
  void update(void Function(ExternalStreamStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalStreamStats build() => _build();

  _$ExternalStreamStats _build() {
    final _$result = _$v ??
        _$ExternalStreamStats._(
          streamId: streamId,
          mode: mode,
          kind: kind,
          items: items,
          rejected: rejected,
          lastItemAt: lastItemAt,
          bindings: bindings,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
