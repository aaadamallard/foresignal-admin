// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persist_reason_counts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PersistReasonCounts extends PersistReasonCounts {
  @override
  final int FIRST;
  @override
  final int REAPPEAR;
  @override
  final int SIGNIFICANT;
  @override
  final int TOMBSTONE;
  @override
  final int CHANGE;
  @override
  final int SAMPLE;
  @override
  final int KEYFRAME;
  @override
  final int HEARTBEAT;
  @override
  final int TRIGGER_EDGE;

  factory _$PersistReasonCounts(
          [void Function(PersistReasonCountsBuilder)? updates]) =>
      (PersistReasonCountsBuilder()..update(updates))._build();

  _$PersistReasonCounts._(
      {required this.FIRST,
      required this.REAPPEAR,
      required this.SIGNIFICANT,
      required this.TOMBSTONE,
      required this.CHANGE,
      required this.SAMPLE,
      required this.KEYFRAME,
      required this.HEARTBEAT,
      required this.TRIGGER_EDGE})
      : super._();
  @override
  PersistReasonCounts rebuild(
          void Function(PersistReasonCountsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersistReasonCountsBuilder toBuilder() =>
      PersistReasonCountsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersistReasonCounts &&
        FIRST == other.FIRST &&
        REAPPEAR == other.REAPPEAR &&
        SIGNIFICANT == other.SIGNIFICANT &&
        TOMBSTONE == other.TOMBSTONE &&
        CHANGE == other.CHANGE &&
        SAMPLE == other.SAMPLE &&
        KEYFRAME == other.KEYFRAME &&
        HEARTBEAT == other.HEARTBEAT &&
        TRIGGER_EDGE == other.TRIGGER_EDGE;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, FIRST.hashCode);
    _$hash = $jc(_$hash, REAPPEAR.hashCode);
    _$hash = $jc(_$hash, SIGNIFICANT.hashCode);
    _$hash = $jc(_$hash, TOMBSTONE.hashCode);
    _$hash = $jc(_$hash, CHANGE.hashCode);
    _$hash = $jc(_$hash, SAMPLE.hashCode);
    _$hash = $jc(_$hash, KEYFRAME.hashCode);
    _$hash = $jc(_$hash, HEARTBEAT.hashCode);
    _$hash = $jc(_$hash, TRIGGER_EDGE.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersistReasonCounts')
          ..add('FIRST', FIRST)
          ..add('REAPPEAR', REAPPEAR)
          ..add('SIGNIFICANT', SIGNIFICANT)
          ..add('TOMBSTONE', TOMBSTONE)
          ..add('CHANGE', CHANGE)
          ..add('SAMPLE', SAMPLE)
          ..add('KEYFRAME', KEYFRAME)
          ..add('HEARTBEAT', HEARTBEAT)
          ..add('TRIGGER_EDGE', TRIGGER_EDGE))
        .toString();
  }
}

class PersistReasonCountsBuilder
    implements Builder<PersistReasonCounts, PersistReasonCountsBuilder> {
  _$PersistReasonCounts? _$v;

  int? _FIRST;
  int? get FIRST => _$this._FIRST;
  set FIRST(int? FIRST) => _$this._FIRST = FIRST;

  int? _REAPPEAR;
  int? get REAPPEAR => _$this._REAPPEAR;
  set REAPPEAR(int? REAPPEAR) => _$this._REAPPEAR = REAPPEAR;

  int? _SIGNIFICANT;
  int? get SIGNIFICANT => _$this._SIGNIFICANT;
  set SIGNIFICANT(int? SIGNIFICANT) => _$this._SIGNIFICANT = SIGNIFICANT;

  int? _TOMBSTONE;
  int? get TOMBSTONE => _$this._TOMBSTONE;
  set TOMBSTONE(int? TOMBSTONE) => _$this._TOMBSTONE = TOMBSTONE;

  int? _CHANGE;
  int? get CHANGE => _$this._CHANGE;
  set CHANGE(int? CHANGE) => _$this._CHANGE = CHANGE;

  int? _SAMPLE;
  int? get SAMPLE => _$this._SAMPLE;
  set SAMPLE(int? SAMPLE) => _$this._SAMPLE = SAMPLE;

  int? _KEYFRAME;
  int? get KEYFRAME => _$this._KEYFRAME;
  set KEYFRAME(int? KEYFRAME) => _$this._KEYFRAME = KEYFRAME;

  int? _HEARTBEAT;
  int? get HEARTBEAT => _$this._HEARTBEAT;
  set HEARTBEAT(int? HEARTBEAT) => _$this._HEARTBEAT = HEARTBEAT;

  int? _TRIGGER_EDGE;
  int? get TRIGGER_EDGE => _$this._TRIGGER_EDGE;
  set TRIGGER_EDGE(int? TRIGGER_EDGE) => _$this._TRIGGER_EDGE = TRIGGER_EDGE;

  PersistReasonCountsBuilder() {
    PersistReasonCounts._defaults(this);
  }

  PersistReasonCountsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _FIRST = $v.FIRST;
      _REAPPEAR = $v.REAPPEAR;
      _SIGNIFICANT = $v.SIGNIFICANT;
      _TOMBSTONE = $v.TOMBSTONE;
      _CHANGE = $v.CHANGE;
      _SAMPLE = $v.SAMPLE;
      _KEYFRAME = $v.KEYFRAME;
      _HEARTBEAT = $v.HEARTBEAT;
      _TRIGGER_EDGE = $v.TRIGGER_EDGE;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersistReasonCounts other) {
    _$v = other as _$PersistReasonCounts;
  }

  @override
  void update(void Function(PersistReasonCountsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersistReasonCounts build() => _build();

  _$PersistReasonCounts _build() {
    final _$result = _$v ??
        _$PersistReasonCounts._(
          FIRST: BuiltValueNullFieldError.checkNotNull(
              FIRST, r'PersistReasonCounts', 'FIRST'),
          REAPPEAR: BuiltValueNullFieldError.checkNotNull(
              REAPPEAR, r'PersistReasonCounts', 'REAPPEAR'),
          SIGNIFICANT: BuiltValueNullFieldError.checkNotNull(
              SIGNIFICANT, r'PersistReasonCounts', 'SIGNIFICANT'),
          TOMBSTONE: BuiltValueNullFieldError.checkNotNull(
              TOMBSTONE, r'PersistReasonCounts', 'TOMBSTONE'),
          CHANGE: BuiltValueNullFieldError.checkNotNull(
              CHANGE, r'PersistReasonCounts', 'CHANGE'),
          SAMPLE: BuiltValueNullFieldError.checkNotNull(
              SAMPLE, r'PersistReasonCounts', 'SAMPLE'),
          KEYFRAME: BuiltValueNullFieldError.checkNotNull(
              KEYFRAME, r'PersistReasonCounts', 'KEYFRAME'),
          HEARTBEAT: BuiltValueNullFieldError.checkNotNull(
              HEARTBEAT, r'PersistReasonCounts', 'HEARTBEAT'),
          TRIGGER_EDGE: BuiltValueNullFieldError.checkNotNull(
              TRIGGER_EDGE, r'PersistReasonCounts', 'TRIGGER_EDGE'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
