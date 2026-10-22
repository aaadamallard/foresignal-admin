// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_window_stats_placebo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyWindowStatsPlacebo extends EventStudyWindowStatsPlacebo {
  @override
  final int count;
  @override
  final num? mean;
  @override
  final num? sd;
  @override
  final num? p05;
  @override
  final num? p50;
  @override
  final num? p95;

  factory _$EventStudyWindowStatsPlacebo(
          [void Function(EventStudyWindowStatsPlaceboBuilder)? updates]) =>
      (EventStudyWindowStatsPlaceboBuilder()..update(updates))._build();

  _$EventStudyWindowStatsPlacebo._(
      {required this.count, this.mean, this.sd, this.p05, this.p50, this.p95})
      : super._();
  @override
  EventStudyWindowStatsPlacebo rebuild(
          void Function(EventStudyWindowStatsPlaceboBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyWindowStatsPlaceboBuilder toBuilder() =>
      EventStudyWindowStatsPlaceboBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyWindowStatsPlacebo &&
        count == other.count &&
        mean == other.mean &&
        sd == other.sd &&
        p05 == other.p05 &&
        p50 == other.p50 &&
        p95 == other.p95;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jc(_$hash, sd.hashCode);
    _$hash = $jc(_$hash, p05.hashCode);
    _$hash = $jc(_$hash, p50.hashCode);
    _$hash = $jc(_$hash, p95.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyWindowStatsPlacebo')
          ..add('count', count)
          ..add('mean', mean)
          ..add('sd', sd)
          ..add('p05', p05)
          ..add('p50', p50)
          ..add('p95', p95))
        .toString();
  }
}

class EventStudyWindowStatsPlaceboBuilder
    implements
        Builder<EventStudyWindowStatsPlacebo,
            EventStudyWindowStatsPlaceboBuilder> {
  _$EventStudyWindowStatsPlacebo? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  num? _mean;
  num? get mean => _$this._mean;
  set mean(num? mean) => _$this._mean = mean;

  num? _sd;
  num? get sd => _$this._sd;
  set sd(num? sd) => _$this._sd = sd;

  num? _p05;
  num? get p05 => _$this._p05;
  set p05(num? p05) => _$this._p05 = p05;

  num? _p50;
  num? get p50 => _$this._p50;
  set p50(num? p50) => _$this._p50 = p50;

  num? _p95;
  num? get p95 => _$this._p95;
  set p95(num? p95) => _$this._p95 = p95;

  EventStudyWindowStatsPlaceboBuilder() {
    EventStudyWindowStatsPlacebo._defaults(this);
  }

  EventStudyWindowStatsPlaceboBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _mean = $v.mean;
      _sd = $v.sd;
      _p05 = $v.p05;
      _p50 = $v.p50;
      _p95 = $v.p95;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyWindowStatsPlacebo other) {
    _$v = other as _$EventStudyWindowStatsPlacebo;
  }

  @override
  void update(void Function(EventStudyWindowStatsPlaceboBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyWindowStatsPlacebo build() => _build();

  _$EventStudyWindowStatsPlacebo _build() {
    final _$result = _$v ??
        _$EventStudyWindowStatsPlacebo._(
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'EventStudyWindowStatsPlacebo', 'count'),
          mean: mean,
          sd: sd,
          p05: p05,
          p50: p50,
          p95: p95,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
