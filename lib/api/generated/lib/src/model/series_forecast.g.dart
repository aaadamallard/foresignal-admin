// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesForecastMethodEnum _$seriesForecastMethodEnum_seasonalNaive =
    const SeriesForecastMethodEnum._('seasonalNaive');
const SeriesForecastMethodEnum _$seriesForecastMethodEnum_etsAnn =
    const SeriesForecastMethodEnum._('etsAnn');
const SeriesForecastMethodEnum _$seriesForecastMethodEnum_etsAaa =
    const SeriesForecastMethodEnum._('etsAaa');
const SeriesForecastMethodEnum _$seriesForecastMethodEnum_nbGlm =
    const SeriesForecastMethodEnum._('nbGlm');
const SeriesForecastMethodEnum _$seriesForecastMethodEnum_dampedTrend =
    const SeriesForecastMethodEnum._('dampedTrend');
const SeriesForecastMethodEnum
_$seriesForecastMethodEnum_unknownDefaultOpenApi =
    const SeriesForecastMethodEnum._('unknownDefaultOpenApi');

SeriesForecastMethodEnum _$seriesForecastMethodEnumValueOf(String name) {
  switch (name) {
    case 'seasonalNaive':
      return _$seriesForecastMethodEnum_seasonalNaive;
    case 'etsAnn':
      return _$seriesForecastMethodEnum_etsAnn;
    case 'etsAaa':
      return _$seriesForecastMethodEnum_etsAaa;
    case 'nbGlm':
      return _$seriesForecastMethodEnum_nbGlm;
    case 'dampedTrend':
      return _$seriesForecastMethodEnum_dampedTrend;
    case 'unknownDefaultOpenApi':
      return _$seriesForecastMethodEnum_unknownDefaultOpenApi;
    default:
      return _$seriesForecastMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SeriesForecastMethodEnum> _$seriesForecastMethodEnumValues =
    BuiltSet<SeriesForecastMethodEnum>(const <SeriesForecastMethodEnum>[
      _$seriesForecastMethodEnum_seasonalNaive,
      _$seriesForecastMethodEnum_etsAnn,
      _$seriesForecastMethodEnum_etsAaa,
      _$seriesForecastMethodEnum_nbGlm,
      _$seriesForecastMethodEnum_dampedTrend,
      _$seriesForecastMethodEnum_unknownDefaultOpenApi,
    ]);

const SeriesForecastUnitsEnum _$seriesForecastUnitsEnum_native_ =
    const SeriesForecastUnitsEnum._('native_');
const SeriesForecastUnitsEnum _$seriesForecastUnitsEnum_standardised =
    const SeriesForecastUnitsEnum._('standardised');
const SeriesForecastUnitsEnum _$seriesForecastUnitsEnum_unknownDefaultOpenApi =
    const SeriesForecastUnitsEnum._('unknownDefaultOpenApi');

SeriesForecastUnitsEnum _$seriesForecastUnitsEnumValueOf(String name) {
  switch (name) {
    case 'native_':
      return _$seriesForecastUnitsEnum_native_;
    case 'standardised':
      return _$seriesForecastUnitsEnum_standardised;
    case 'unknownDefaultOpenApi':
      return _$seriesForecastUnitsEnum_unknownDefaultOpenApi;
    default:
      return _$seriesForecastUnitsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SeriesForecastUnitsEnum> _$seriesForecastUnitsEnumValues =
    BuiltSet<SeriesForecastUnitsEnum>(const <SeriesForecastUnitsEnum>[
      _$seriesForecastUnitsEnum_native_,
      _$seriesForecastUnitsEnum_standardised,
      _$seriesForecastUnitsEnum_unknownDefaultOpenApi,
    ]);

Serializer<SeriesForecastMethodEnum> _$seriesForecastMethodEnumSerializer =
    _$SeriesForecastMethodEnumSerializer();
Serializer<SeriesForecastUnitsEnum> _$seriesForecastUnitsEnumSerializer =
    _$SeriesForecastUnitsEnumSerializer();

class _$SeriesForecastMethodEnumSerializer
    implements PrimitiveSerializer<SeriesForecastMethodEnum> {
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
  final Iterable<Type> types = const <Type>[SeriesForecastMethodEnum];
  @override
  final String wireName = 'SeriesForecastMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesForecastMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesForecastMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesForecastUnitsEnumSerializer
    implements PrimitiveSerializer<SeriesForecastUnitsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'native_': 'native',
    'standardised': 'standardised',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'native': 'native_',
    'standardised': 'standardised',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesForecastUnitsEnum];
  @override
  final String wireName = 'SeriesForecastUnitsEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastUnitsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesForecastUnitsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesForecastUnitsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesForecast extends SeriesForecast {
  @override
  final String ref;
  @override
  final SeriesForecastMethodEnum method;
  @override
  final String version;
  @override
  final DateTime madeAt;
  @override
  final int asOfSeq;
  @override
  final String? manifestId;
  @override
  final SeriesForecastUnitsEnum units;
  @override
  final String? unit;
  @override
  final BuiltList<SeriesForecastForecastsInner> forecasts;
  @override
  final BuiltList<String>? questionIds;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$SeriesForecast([void Function(SeriesForecastBuilder)? updates]) =>
      (SeriesForecastBuilder()..update(updates))._build();

  _$SeriesForecast._({
    required this.ref,
    required this.method,
    required this.version,
    required this.madeAt,
    required this.asOfSeq,
    this.manifestId,
    required this.units,
    this.unit,
    required this.forecasts,
    this.questionIds,
    this.caveats,
  }) : super._();
  @override
  SeriesForecast rebuild(void Function(SeriesForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesForecastBuilder toBuilder() => SeriesForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesForecast &&
        ref == other.ref &&
        method == other.method &&
        version == other.version &&
        madeAt == other.madeAt &&
        asOfSeq == other.asOfSeq &&
        manifestId == other.manifestId &&
        units == other.units &&
        unit == other.unit &&
        forecasts == other.forecasts &&
        questionIds == other.questionIds &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, madeAt.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, forecasts.hashCode);
    _$hash = $jc(_$hash, questionIds.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesForecast')
          ..add('ref', ref)
          ..add('method', method)
          ..add('version', version)
          ..add('madeAt', madeAt)
          ..add('asOfSeq', asOfSeq)
          ..add('manifestId', manifestId)
          ..add('units', units)
          ..add('unit', unit)
          ..add('forecasts', forecasts)
          ..add('questionIds', questionIds)
          ..add('caveats', caveats))
        .toString();
  }
}

class SeriesForecastBuilder
    implements Builder<SeriesForecast, SeriesForecastBuilder> {
  _$SeriesForecast? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  SeriesForecastMethodEnum? _method;
  SeriesForecastMethodEnum? get method => _$this._method;
  set method(SeriesForecastMethodEnum? method) => _$this._method = method;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  DateTime? _madeAt;
  DateTime? get madeAt => _$this._madeAt;
  set madeAt(DateTime? madeAt) => _$this._madeAt = madeAt;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SeriesForecastUnitsEnum? _units;
  SeriesForecastUnitsEnum? get units => _$this._units;
  set units(SeriesForecastUnitsEnum? units) => _$this._units = units;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  ListBuilder<SeriesForecastForecastsInner>? _forecasts;
  ListBuilder<SeriesForecastForecastsInner> get forecasts =>
      _$this._forecasts ??= ListBuilder<SeriesForecastForecastsInner>();
  set forecasts(ListBuilder<SeriesForecastForecastsInner>? forecasts) =>
      _$this._forecasts = forecasts;

  ListBuilder<String>? _questionIds;
  ListBuilder<String> get questionIds =>
      _$this._questionIds ??= ListBuilder<String>();
  set questionIds(ListBuilder<String>? questionIds) =>
      _$this._questionIds = questionIds;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  SeriesForecastBuilder() {
    SeriesForecast._defaults(this);
  }

  SeriesForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _method = $v.method;
      _version = $v.version;
      _madeAt = $v.madeAt;
      _asOfSeq = $v.asOfSeq;
      _manifestId = $v.manifestId;
      _units = $v.units;
      _unit = $v.unit;
      _forecasts = $v.forecasts.toBuilder();
      _questionIds = $v.questionIds?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesForecast other) {
    _$v = other as _$SeriesForecast;
  }

  @override
  void update(void Function(SeriesForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesForecast build() => _build();

  _$SeriesForecast _build() {
    _$SeriesForecast _$result;
    try {
      _$result =
          _$v ??
          _$SeriesForecast._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'SeriesForecast',
              'ref',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'SeriesForecast',
              'method',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'SeriesForecast',
              'version',
            ),
            madeAt: BuiltValueNullFieldError.checkNotNull(
              madeAt,
              r'SeriesForecast',
              'madeAt',
            ),
            asOfSeq: BuiltValueNullFieldError.checkNotNull(
              asOfSeq,
              r'SeriesForecast',
              'asOfSeq',
            ),
            manifestId: manifestId,
            units: BuiltValueNullFieldError.checkNotNull(
              units,
              r'SeriesForecast',
              'units',
            ),
            unit: unit,
            forecasts: forecasts.build(),
            questionIds: _questionIds?.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecasts';
        forecasts.build();
        _$failedField = 'questionIds';
        _questionIds?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SeriesForecast',
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
