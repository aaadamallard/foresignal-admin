// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_forecast_model_backtest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesForecastModelBacktest extends SeriesForecastModelBacktest {
  @override
  final int origins;
  @override
  final String? spacing;
  @override
  final int? selectionHorizon;
  @override
  final BuiltList<SeriesForecastModelBacktestResultsInner> results;

  factory _$SeriesForecastModelBacktest(
          [void Function(SeriesForecastModelBacktestBuilder)? updates]) =>
      (SeriesForecastModelBacktestBuilder()..update(updates))._build();

  _$SeriesForecastModelBacktest._(
      {required this.origins,
      this.spacing,
      this.selectionHorizon,
      required this.results})
      : super._();
  @override
  SeriesForecastModelBacktest rebuild(
          void Function(SeriesForecastModelBacktestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesForecastModelBacktestBuilder toBuilder() =>
      SeriesForecastModelBacktestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesForecastModelBacktest &&
        origins == other.origins &&
        spacing == other.spacing &&
        selectionHorizon == other.selectionHorizon &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, origins.hashCode);
    _$hash = $jc(_$hash, spacing.hashCode);
    _$hash = $jc(_$hash, selectionHorizon.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesForecastModelBacktest')
          ..add('origins', origins)
          ..add('spacing', spacing)
          ..add('selectionHorizon', selectionHorizon)
          ..add('results', results))
        .toString();
  }
}

class SeriesForecastModelBacktestBuilder
    implements
        Builder<SeriesForecastModelBacktest,
            SeriesForecastModelBacktestBuilder> {
  _$SeriesForecastModelBacktest? _$v;

  int? _origins;
  int? get origins => _$this._origins;
  set origins(int? origins) => _$this._origins = origins;

  String? _spacing;
  String? get spacing => _$this._spacing;
  set spacing(String? spacing) => _$this._spacing = spacing;

  int? _selectionHorizon;
  int? get selectionHorizon => _$this._selectionHorizon;
  set selectionHorizon(int? selectionHorizon) =>
      _$this._selectionHorizon = selectionHorizon;

  ListBuilder<SeriesForecastModelBacktestResultsInner>? _results;
  ListBuilder<SeriesForecastModelBacktestResultsInner> get results =>
      _$this._results ??=
          ListBuilder<SeriesForecastModelBacktestResultsInner>();
  set results(ListBuilder<SeriesForecastModelBacktestResultsInner>? results) =>
      _$this._results = results;

  SeriesForecastModelBacktestBuilder() {
    SeriesForecastModelBacktest._defaults(this);
  }

  SeriesForecastModelBacktestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _origins = $v.origins;
      _spacing = $v.spacing;
      _selectionHorizon = $v.selectionHorizon;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesForecastModelBacktest other) {
    _$v = other as _$SeriesForecastModelBacktest;
  }

  @override
  void update(void Function(SeriesForecastModelBacktestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesForecastModelBacktest build() => _build();

  _$SeriesForecastModelBacktest _build() {
    _$SeriesForecastModelBacktest _$result;
    try {
      _$result = _$v ??
          _$SeriesForecastModelBacktest._(
            origins: BuiltValueNullFieldError.checkNotNull(
                origins, r'SeriesForecastModelBacktest', 'origins'),
            spacing: spacing,
            selectionHorizon: selectionHorizon,
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesForecastModelBacktest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
