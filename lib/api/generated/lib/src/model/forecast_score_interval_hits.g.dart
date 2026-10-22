// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_score_interval_hits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastScoreIntervalHits extends ForecastScoreIntervalHits {
  @override
  final bool? p05p95;
  @override
  final bool? p25p75;

  factory _$ForecastScoreIntervalHits(
          [void Function(ForecastScoreIntervalHitsBuilder)? updates]) =>
      (ForecastScoreIntervalHitsBuilder()..update(updates))._build();

  _$ForecastScoreIntervalHits._({this.p05p95, this.p25p75}) : super._();
  @override
  ForecastScoreIntervalHits rebuild(
          void Function(ForecastScoreIntervalHitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastScoreIntervalHitsBuilder toBuilder() =>
      ForecastScoreIntervalHitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastScoreIntervalHits &&
        p05p95 == other.p05p95 &&
        p25p75 == other.p25p75;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p05p95.hashCode);
    _$hash = $jc(_$hash, p25p75.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastScoreIntervalHits')
          ..add('p05p95', p05p95)
          ..add('p25p75', p25p75))
        .toString();
  }
}

class ForecastScoreIntervalHitsBuilder
    implements
        Builder<ForecastScoreIntervalHits, ForecastScoreIntervalHitsBuilder> {
  _$ForecastScoreIntervalHits? _$v;

  bool? _p05p95;
  bool? get p05p95 => _$this._p05p95;
  set p05p95(bool? p05p95) => _$this._p05p95 = p05p95;

  bool? _p25p75;
  bool? get p25p75 => _$this._p25p75;
  set p25p75(bool? p25p75) => _$this._p25p75 = p25p75;

  ForecastScoreIntervalHitsBuilder() {
    ForecastScoreIntervalHits._defaults(this);
  }

  ForecastScoreIntervalHitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p05p95 = $v.p05p95;
      _p25p75 = $v.p25p75;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastScoreIntervalHits other) {
    _$v = other as _$ForecastScoreIntervalHits;
  }

  @override
  void update(void Function(ForecastScoreIntervalHitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastScoreIntervalHits build() => _build();

  _$ForecastScoreIntervalHits _build() {
    final _$result = _$v ??
        _$ForecastScoreIntervalHits._(
          p05p95: p05p95,
          p25p75: p25p75,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
