// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_forecast_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesForecastModelMethodEnum
_$seriesForecastModelMethodEnum_seasonalNaive =
    const SeriesForecastModelMethodEnum._('seasonalNaive');
const SeriesForecastModelMethodEnum _$seriesForecastModelMethodEnum_etsAnn =
    const SeriesForecastModelMethodEnum._('etsAnn');
const SeriesForecastModelMethodEnum _$seriesForecastModelMethodEnum_etsAaa =
    const SeriesForecastModelMethodEnum._('etsAaa');
const SeriesForecastModelMethodEnum _$seriesForecastModelMethodEnum_nbGlm =
    const SeriesForecastModelMethodEnum._('nbGlm');
const SeriesForecastModelMethodEnum
_$seriesForecastModelMethodEnum_dampedTrend =
    const SeriesForecastModelMethodEnum._('dampedTrend');

SeriesForecastModelMethodEnum _$seriesForecastModelMethodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'seasonalNaive':
      return _$seriesForecastModelMethodEnum_seasonalNaive;
    case 'etsAnn':
      return _$seriesForecastModelMethodEnum_etsAnn;
    case 'etsAaa':
      return _$seriesForecastModelMethodEnum_etsAaa;
    case 'nbGlm':
      return _$seriesForecastModelMethodEnum_nbGlm;
    case 'dampedTrend':
      return _$seriesForecastModelMethodEnum_dampedTrend;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesForecastModelMethodEnum>
_$seriesForecastModelMethodEnumValues = BuiltSet<SeriesForecastModelMethodEnum>(
  const <SeriesForecastModelMethodEnum>[
    _$seriesForecastModelMethodEnum_seasonalNaive,
    _$seriesForecastModelMethodEnum_etsAnn,
    _$seriesForecastModelMethodEnum_etsAaa,
    _$seriesForecastModelMethodEnum_nbGlm,
    _$seriesForecastModelMethodEnum_dampedTrend,
  ],
);

Serializer<SeriesForecastModelMethodEnum>
_$seriesForecastModelMethodEnumSerializer =
    _$SeriesForecastModelMethodEnumSerializer();

class _$SeriesForecastModelMethodEnumSerializer
    implements PrimitiveSerializer<SeriesForecastModelMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'seasonalNaive': 'seasonal-naive',
    'etsAnn': 'ets-ann',
    'etsAaa': 'ets-aaa',
    'nbGlm': 'nb-glm',
    'dampedTrend': 'damped-trend',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'seasonal-naive': 'seasonalNaive',
    'ets-ann': 'etsAnn',
    'ets-aaa': 'etsAaa',
    'nb-glm': 'nbGlm',
    'damped-trend': 'dampedTrend',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesForecastModelMethodEnum];
  @override
  final String wireName = 'SeriesForecastModelMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastModelMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesForecastModelMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesForecastModelMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesForecastModel extends SeriesForecastModel {
  @override
  final String ref;
  @override
  final SeriesForecastModelMethodEnum method;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final SeriesForecastModelBacktest backtest;
  @override
  final DateTime selectedAt;
  @override
  final DateTime? nextSelectionAt;
  @override
  final String version;
  @override
  final String? manifestId;

  factory _$SeriesForecastModel([
    void Function(SeriesForecastModelBuilder)? updates,
  ]) => (SeriesForecastModelBuilder()..update(updates))._build();

  _$SeriesForecastModel._({
    required this.ref,
    required this.method,
    this.params,
    required this.backtest,
    required this.selectedAt,
    this.nextSelectionAt,
    required this.version,
    this.manifestId,
  }) : super._();
  @override
  SeriesForecastModel rebuild(
    void Function(SeriesForecastModelBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SeriesForecastModelBuilder toBuilder() =>
      SeriesForecastModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesForecastModel &&
        ref == other.ref &&
        method == other.method &&
        params == other.params &&
        backtest == other.backtest &&
        selectedAt == other.selectedAt &&
        nextSelectionAt == other.nextSelectionAt &&
        version == other.version &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, backtest.hashCode);
    _$hash = $jc(_$hash, selectedAt.hashCode);
    _$hash = $jc(_$hash, nextSelectionAt.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesForecastModel')
          ..add('ref', ref)
          ..add('method', method)
          ..add('params', params)
          ..add('backtest', backtest)
          ..add('selectedAt', selectedAt)
          ..add('nextSelectionAt', nextSelectionAt)
          ..add('version', version)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class SeriesForecastModelBuilder
    implements Builder<SeriesForecastModel, SeriesForecastModelBuilder> {
  _$SeriesForecastModel? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  SeriesForecastModelMethodEnum? _method;
  SeriesForecastModelMethodEnum? get method => _$this._method;
  set method(SeriesForecastModelMethodEnum? method) => _$this._method = method;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  SeriesForecastModelBacktestBuilder? _backtest;
  SeriesForecastModelBacktestBuilder get backtest =>
      _$this._backtest ??= SeriesForecastModelBacktestBuilder();
  set backtest(SeriesForecastModelBacktestBuilder? backtest) =>
      _$this._backtest = backtest;

  DateTime? _selectedAt;
  DateTime? get selectedAt => _$this._selectedAt;
  set selectedAt(DateTime? selectedAt) => _$this._selectedAt = selectedAt;

  DateTime? _nextSelectionAt;
  DateTime? get nextSelectionAt => _$this._nextSelectionAt;
  set nextSelectionAt(DateTime? nextSelectionAt) =>
      _$this._nextSelectionAt = nextSelectionAt;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SeriesForecastModelBuilder() {
    SeriesForecastModel._defaults(this);
  }

  SeriesForecastModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _method = $v.method;
      _params = $v.params?.toBuilder();
      _backtest = $v.backtest.toBuilder();
      _selectedAt = $v.selectedAt;
      _nextSelectionAt = $v.nextSelectionAt;
      _version = $v.version;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesForecastModel other) {
    _$v = other as _$SeriesForecastModel;
  }

  @override
  void update(void Function(SeriesForecastModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesForecastModel build() => _build();

  _$SeriesForecastModel _build() {
    _$SeriesForecastModel _$result;
    try {
      _$result =
          _$v ??
          _$SeriesForecastModel._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'SeriesForecastModel',
              'ref',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'SeriesForecastModel',
              'method',
            ),
            params: _params?.build(),
            backtest: backtest.build(),
            selectedAt: BuiltValueNullFieldError.checkNotNull(
              selectedAt,
              r'SeriesForecastModel',
              'selectedAt',
            ),
            nextSelectionAt: nextSelectionAt,
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'SeriesForecastModel',
              'version',
            ),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
        _$failedField = 'backtest';
        backtest.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SeriesForecastModel',
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
