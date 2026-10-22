// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_history_series_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastHistorySeriesInner extends ForecastHistorySeriesInner {
  @override
  final String forecasterId;
  @override
  final BuiltList<ForecastHistorySeriesInnerPointsInner> points;

  factory _$ForecastHistorySeriesInner([
    void Function(ForecastHistorySeriesInnerBuilder)? updates,
  ]) => (ForecastHistorySeriesInnerBuilder()..update(updates))._build();

  _$ForecastHistorySeriesInner._({
    required this.forecasterId,
    required this.points,
  }) : super._();
  @override
  ForecastHistorySeriesInner rebuild(
    void Function(ForecastHistorySeriesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastHistorySeriesInnerBuilder toBuilder() =>
      ForecastHistorySeriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastHistorySeriesInner &&
        forecasterId == other.forecasterId &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastHistorySeriesInner')
          ..add('forecasterId', forecasterId)
          ..add('points', points))
        .toString();
  }
}

class ForecastHistorySeriesInnerBuilder
    implements
        Builder<ForecastHistorySeriesInner, ForecastHistorySeriesInnerBuilder> {
  _$ForecastHistorySeriesInner? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  ListBuilder<ForecastHistorySeriesInnerPointsInner>? _points;
  ListBuilder<ForecastHistorySeriesInnerPointsInner> get points =>
      _$this._points ??= ListBuilder<ForecastHistorySeriesInnerPointsInner>();
  set points(ListBuilder<ForecastHistorySeriesInnerPointsInner>? points) =>
      _$this._points = points;

  ForecastHistorySeriesInnerBuilder() {
    ForecastHistorySeriesInner._defaults(this);
  }

  ForecastHistorySeriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _points = $v.points.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastHistorySeriesInner other) {
    _$v = other as _$ForecastHistorySeriesInner;
  }

  @override
  void update(void Function(ForecastHistorySeriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastHistorySeriesInner build() => _build();

  _$ForecastHistorySeriesInner _build() {
    _$ForecastHistorySeriesInner _$result;
    try {
      _$result =
          _$v ??
          _$ForecastHistorySeriesInner._(
            forecasterId: BuiltValueNullFieldError.checkNotNull(
              forecasterId,
              r'ForecastHistorySeriesInner',
              'forecasterId',
            ),
            points: points.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastHistorySeriesInner',
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
