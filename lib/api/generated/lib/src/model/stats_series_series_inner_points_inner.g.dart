// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_series_series_inner_points_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsSeriesSeriesInnerPointsInner
    extends StatsSeriesSeriesInnerPointsInner {
  @override
  final DateTime t;
  @override
  final int value;

  factory _$StatsSeriesSeriesInnerPointsInner(
          [void Function(StatsSeriesSeriesInnerPointsInnerBuilder)? updates]) =>
      (StatsSeriesSeriesInnerPointsInnerBuilder()..update(updates))._build();

  _$StatsSeriesSeriesInnerPointsInner._({required this.t, required this.value})
      : super._();
  @override
  StatsSeriesSeriesInnerPointsInner rebuild(
          void Function(StatsSeriesSeriesInnerPointsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsSeriesSeriesInnerPointsInnerBuilder toBuilder() =>
      StatsSeriesSeriesInnerPointsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsSeriesSeriesInnerPointsInner &&
        t == other.t &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsSeriesSeriesInnerPointsInner')
          ..add('t', t)
          ..add('value', value))
        .toString();
  }
}

class StatsSeriesSeriesInnerPointsInnerBuilder
    implements
        Builder<StatsSeriesSeriesInnerPointsInner,
            StatsSeriesSeriesInnerPointsInnerBuilder> {
  _$StatsSeriesSeriesInnerPointsInner? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  StatsSeriesSeriesInnerPointsInnerBuilder() {
    StatsSeriesSeriesInnerPointsInner._defaults(this);
  }

  StatsSeriesSeriesInnerPointsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsSeriesSeriesInnerPointsInner other) {
    _$v = other as _$StatsSeriesSeriesInnerPointsInner;
  }

  @override
  void update(
      void Function(StatsSeriesSeriesInnerPointsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsSeriesSeriesInnerPointsInner build() => _build();

  _$StatsSeriesSeriesInnerPointsInner _build() {
    final _$result = _$v ??
        _$StatsSeriesSeriesInnerPointsInner._(
          t: BuiltValueNullFieldError.checkNotNull(
              t, r'StatsSeriesSeriesInnerPointsInner', 't'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'StatsSeriesSeriesInnerPointsInner', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
