// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_forecast_model_backtest_results_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnum_seasonalNaive =
    const SeriesForecastModelBacktestResultsInnerMethodEnum._('seasonalNaive');
const SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnum_etsAnn =
    const SeriesForecastModelBacktestResultsInnerMethodEnum._('etsAnn');
const SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnum_etsAaa =
    const SeriesForecastModelBacktestResultsInnerMethodEnum._('etsAaa');
const SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnum_nbGlm =
    const SeriesForecastModelBacktestResultsInnerMethodEnum._('nbGlm');
const SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnum_dampedTrend =
    const SeriesForecastModelBacktestResultsInnerMethodEnum._('dampedTrend');
const SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnum_unknownDefaultOpenApi =
    const SeriesForecastModelBacktestResultsInnerMethodEnum._(
      'unknownDefaultOpenApi',
    );

SeriesForecastModelBacktestResultsInnerMethodEnum
_$seriesForecastModelBacktestResultsInnerMethodEnumValueOf(String name) {
  switch (name) {
    case 'seasonalNaive':
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_seasonalNaive;
    case 'etsAnn':
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_etsAnn;
    case 'etsAaa':
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_etsAaa;
    case 'nbGlm':
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_nbGlm;
    case 'dampedTrend':
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_dampedTrend;
    case 'unknownDefaultOpenApi':
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_unknownDefaultOpenApi;
    default:
      return _$seriesForecastModelBacktestResultsInnerMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SeriesForecastModelBacktestResultsInnerMethodEnum>
_$seriesForecastModelBacktestResultsInnerMethodEnumValues =
    BuiltSet<SeriesForecastModelBacktestResultsInnerMethodEnum>(const <
      SeriesForecastModelBacktestResultsInnerMethodEnum
    >[
      _$seriesForecastModelBacktestResultsInnerMethodEnum_seasonalNaive,
      _$seriesForecastModelBacktestResultsInnerMethodEnum_etsAnn,
      _$seriesForecastModelBacktestResultsInnerMethodEnum_etsAaa,
      _$seriesForecastModelBacktestResultsInnerMethodEnum_nbGlm,
      _$seriesForecastModelBacktestResultsInnerMethodEnum_dampedTrend,
      _$seriesForecastModelBacktestResultsInnerMethodEnum_unknownDefaultOpenApi,
    ]);

Serializer<SeriesForecastModelBacktestResultsInnerMethodEnum>
_$seriesForecastModelBacktestResultsInnerMethodEnumSerializer =
    _$SeriesForecastModelBacktestResultsInnerMethodEnumSerializer();

class _$SeriesForecastModelBacktestResultsInnerMethodEnumSerializer
    implements
        PrimitiveSerializer<SeriesForecastModelBacktestResultsInnerMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'seasonalNaive': 'seasonal-naive',
    'etsAnn': 'ets-ann',
    'etsAaa': 'ets-aaa',
    'nbGlm': 'nb-glm',
    'dampedTrend': 'damped-trend',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'seasonal-naive': 'seasonalNaive',
    'ets-ann': 'etsAnn',
    'ets-aaa': 'etsAaa',
    'nb-glm': 'nbGlm',
    'damped-trend': 'dampedTrend',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SeriesForecastModelBacktestResultsInnerMethodEnum,
  ];
  @override
  final String wireName = 'SeriesForecastModelBacktestResultsInnerMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastModelBacktestResultsInnerMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesForecastModelBacktestResultsInnerMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesForecastModelBacktestResultsInnerMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesForecastModelBacktestResultsInner
    extends SeriesForecastModelBacktestResultsInner {
  @override
  final SeriesForecastModelBacktestResultsInnerMethodEnum method;
  @override
  final int horizon;
  @override
  final num meanPinballLoss;
  @override
  final num? intervalCoverageP05P95;

  factory _$SeriesForecastModelBacktestResultsInner([
    void Function(SeriesForecastModelBacktestResultsInnerBuilder)? updates,
  ]) => (SeriesForecastModelBacktestResultsInnerBuilder()..update(updates))
      ._build();

  _$SeriesForecastModelBacktestResultsInner._({
    required this.method,
    required this.horizon,
    required this.meanPinballLoss,
    this.intervalCoverageP05P95,
  }) : super._();
  @override
  SeriesForecastModelBacktestResultsInner rebuild(
    void Function(SeriesForecastModelBacktestResultsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SeriesForecastModelBacktestResultsInnerBuilder toBuilder() =>
      SeriesForecastModelBacktestResultsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesForecastModelBacktestResultsInner &&
        method == other.method &&
        horizon == other.horizon &&
        meanPinballLoss == other.meanPinballLoss &&
        intervalCoverageP05P95 == other.intervalCoverageP05P95;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, meanPinballLoss.hashCode);
    _$hash = $jc(_$hash, intervalCoverageP05P95.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SeriesForecastModelBacktestResultsInner',
          )
          ..add('method', method)
          ..add('horizon', horizon)
          ..add('meanPinballLoss', meanPinballLoss)
          ..add('intervalCoverageP05P95', intervalCoverageP05P95))
        .toString();
  }
}

class SeriesForecastModelBacktestResultsInnerBuilder
    implements
        Builder<
          SeriesForecastModelBacktestResultsInner,
          SeriesForecastModelBacktestResultsInnerBuilder
        > {
  _$SeriesForecastModelBacktestResultsInner? _$v;

  SeriesForecastModelBacktestResultsInnerMethodEnum? _method;
  SeriesForecastModelBacktestResultsInnerMethodEnum? get method =>
      _$this._method;
  set method(SeriesForecastModelBacktestResultsInnerMethodEnum? method) =>
      _$this._method = method;

  int? _horizon;
  int? get horizon => _$this._horizon;
  set horizon(int? horizon) => _$this._horizon = horizon;

  num? _meanPinballLoss;
  num? get meanPinballLoss => _$this._meanPinballLoss;
  set meanPinballLoss(num? meanPinballLoss) =>
      _$this._meanPinballLoss = meanPinballLoss;

  num? _intervalCoverageP05P95;
  num? get intervalCoverageP05P95 => _$this._intervalCoverageP05P95;
  set intervalCoverageP05P95(num? intervalCoverageP05P95) =>
      _$this._intervalCoverageP05P95 = intervalCoverageP05P95;

  SeriesForecastModelBacktestResultsInnerBuilder() {
    SeriesForecastModelBacktestResultsInner._defaults(this);
  }

  SeriesForecastModelBacktestResultsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _horizon = $v.horizon;
      _meanPinballLoss = $v.meanPinballLoss;
      _intervalCoverageP05P95 = $v.intervalCoverageP05P95;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesForecastModelBacktestResultsInner other) {
    _$v = other as _$SeriesForecastModelBacktestResultsInner;
  }

  @override
  void update(
    void Function(SeriesForecastModelBacktestResultsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SeriesForecastModelBacktestResultsInner build() => _build();

  _$SeriesForecastModelBacktestResultsInner _build() {
    final _$result =
        _$v ??
        _$SeriesForecastModelBacktestResultsInner._(
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'SeriesForecastModelBacktestResultsInner',
            'method',
          ),
          horizon: BuiltValueNullFieldError.checkNotNull(
            horizon,
            r'SeriesForecastModelBacktestResultsInner',
            'horizon',
          ),
          meanPinballLoss: BuiltValueNullFieldError.checkNotNull(
            meanPinballLoss,
            r'SeriesForecastModelBacktestResultsInner',
            'meanPinballLoss',
          ),
          intervalCoverageP05P95: intervalCoverageP05P95,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
