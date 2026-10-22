// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_history_series_inner_points_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastHistorySeriesInnerPointsInner
    extends ForecastHistorySeriesInnerPointsInner {
  @override
  final Date date;
  @override
  final num? probability;
  @override
  final BuiltMap<String, num>? distribution;
  @override
  final Quantiles? quantiles;
  @override
  final String forecastId;

  factory _$ForecastHistorySeriesInnerPointsInner([
    void Function(ForecastHistorySeriesInnerPointsInnerBuilder)? updates,
  ]) => (ForecastHistorySeriesInnerPointsInnerBuilder()..update(updates))
      ._build();

  _$ForecastHistorySeriesInnerPointsInner._({
    required this.date,
    this.probability,
    this.distribution,
    this.quantiles,
    required this.forecastId,
  }) : super._();
  @override
  ForecastHistorySeriesInnerPointsInner rebuild(
    void Function(ForecastHistorySeriesInnerPointsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastHistorySeriesInnerPointsInnerBuilder toBuilder() =>
      ForecastHistorySeriesInnerPointsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastHistorySeriesInnerPointsInner &&
        date == other.date &&
        probability == other.probability &&
        distribution == other.distribution &&
        quantiles == other.quantiles &&
        forecastId == other.forecastId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, distribution.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jc(_$hash, forecastId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ForecastHistorySeriesInnerPointsInner',
          )
          ..add('date', date)
          ..add('probability', probability)
          ..add('distribution', distribution)
          ..add('quantiles', quantiles)
          ..add('forecastId', forecastId))
        .toString();
  }
}

class ForecastHistorySeriesInnerPointsInnerBuilder
    implements
        Builder<
          ForecastHistorySeriesInnerPointsInner,
          ForecastHistorySeriesInnerPointsInnerBuilder
        > {
  _$ForecastHistorySeriesInnerPointsInner? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  MapBuilder<String, num>? _distribution;
  MapBuilder<String, num> get distribution =>
      _$this._distribution ??= MapBuilder<String, num>();
  set distribution(MapBuilder<String, num>? distribution) =>
      _$this._distribution = distribution;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  String? _forecastId;
  String? get forecastId => _$this._forecastId;
  set forecastId(String? forecastId) => _$this._forecastId = forecastId;

  ForecastHistorySeriesInnerPointsInnerBuilder() {
    ForecastHistorySeriesInnerPointsInner._defaults(this);
  }

  ForecastHistorySeriesInnerPointsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _probability = $v.probability;
      _distribution = $v.distribution?.toBuilder();
      _quantiles = $v.quantiles?.toBuilder();
      _forecastId = $v.forecastId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastHistorySeriesInnerPointsInner other) {
    _$v = other as _$ForecastHistorySeriesInnerPointsInner;
  }

  @override
  void update(
    void Function(ForecastHistorySeriesInnerPointsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ForecastHistorySeriesInnerPointsInner build() => _build();

  _$ForecastHistorySeriesInnerPointsInner _build() {
    _$ForecastHistorySeriesInnerPointsInner _$result;
    try {
      _$result =
          _$v ??
          _$ForecastHistorySeriesInnerPointsInner._(
            date: BuiltValueNullFieldError.checkNotNull(
              date,
              r'ForecastHistorySeriesInnerPointsInner',
              'date',
            ),
            probability: probability,
            distribution: _distribution?.build(),
            quantiles: _quantiles?.build(),
            forecastId: BuiltValueNullFieldError.checkNotNull(
              forecastId,
              r'ForecastHistorySeriesInnerPointsInner',
              'forecastId',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'distribution';
        _distribution?.build();
        _$failedField = 'quantiles';
        _quantiles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastHistorySeriesInnerPointsInner',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
