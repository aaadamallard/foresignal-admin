// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastSeriesProviderEnum _$forecastSeriesProviderEnum_gfs =
    const ForecastSeriesProviderEnum._('gfs');
const ForecastSeriesProviderEnum _$forecastSeriesProviderEnum_hrrr =
    const ForecastSeriesProviderEnum._('hrrr');
const ForecastSeriesProviderEnum _$forecastSeriesProviderEnum_ifs =
    const ForecastSeriesProviderEnum._('ifs');
const ForecastSeriesProviderEnum _$forecastSeriesProviderEnum_aifs =
    const ForecastSeriesProviderEnum._('aifs');
const ForecastSeriesProviderEnum _$forecastSeriesProviderEnum_nws =
    const ForecastSeriesProviderEnum._('nws');
const ForecastSeriesProviderEnum
_$forecastSeriesProviderEnum_unknownDefaultOpenApi =
    const ForecastSeriesProviderEnum._('unknownDefaultOpenApi');

ForecastSeriesProviderEnum _$forecastSeriesProviderEnumValueOf(String name) {
  switch (name) {
    case 'gfs':
      return _$forecastSeriesProviderEnum_gfs;
    case 'hrrr':
      return _$forecastSeriesProviderEnum_hrrr;
    case 'ifs':
      return _$forecastSeriesProviderEnum_ifs;
    case 'aifs':
      return _$forecastSeriesProviderEnum_aifs;
    case 'nws':
      return _$forecastSeriesProviderEnum_nws;
    case 'unknownDefaultOpenApi':
      return _$forecastSeriesProviderEnum_unknownDefaultOpenApi;
    default:
      return _$forecastSeriesProviderEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecastSeriesProviderEnum> _$forecastSeriesProviderEnumValues =
    BuiltSet<ForecastSeriesProviderEnum>(const <ForecastSeriesProviderEnum>[
      _$forecastSeriesProviderEnum_gfs,
      _$forecastSeriesProviderEnum_hrrr,
      _$forecastSeriesProviderEnum_ifs,
      _$forecastSeriesProviderEnum_aifs,
      _$forecastSeriesProviderEnum_nws,
      _$forecastSeriesProviderEnum_unknownDefaultOpenApi,
    ]);

Serializer<ForecastSeriesProviderEnum> _$forecastSeriesProviderEnumSerializer =
    _$ForecastSeriesProviderEnumSerializer();

class _$ForecastSeriesProviderEnumSerializer
    implements PrimitiveSerializer<ForecastSeriesProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gfs': 'gfs',
    'hrrr': 'hrrr',
    'ifs': 'ifs',
    'aifs': 'aifs',
    'nws': 'nws',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gfs': 'gfs',
    'hrrr': 'hrrr',
    'ifs': 'ifs',
    'aifs': 'aifs',
    'nws': 'nws',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastSeriesProviderEnum];
  @override
  final String wireName = 'ForecastSeriesProviderEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastSeriesProviderEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastSeriesProviderEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastSeriesProviderEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastSeries extends ForecastSeries {
  @override
  final ForecastSeriesProviderEnum provider;
  @override
  final String? run;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? validFrom;
  @override
  final WeatherSectionStatus? status;
  @override
  final BuiltList<ForecastSeriesPoint> items;

  factory _$ForecastSeries([void Function(ForecastSeriesBuilder)? updates]) =>
      (ForecastSeriesBuilder()..update(updates))._build();

  _$ForecastSeries._({
    required this.provider,
    this.run,
    required this.updatedAt,
    this.validFrom,
    this.status,
    required this.items,
  }) : super._();
  @override
  ForecastSeries rebuild(void Function(ForecastSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastSeriesBuilder toBuilder() => ForecastSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastSeries &&
        provider == other.provider &&
        run == other.run &&
        updatedAt == other.updatedAt &&
        validFrom == other.validFrom &&
        status == other.status &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastSeries')
          ..add('provider', provider)
          ..add('run', run)
          ..add('updatedAt', updatedAt)
          ..add('validFrom', validFrom)
          ..add('status', status)
          ..add('items', items))
        .toString();
  }
}

class ForecastSeriesBuilder
    implements Builder<ForecastSeries, ForecastSeriesBuilder> {
  _$ForecastSeries? _$v;

  ForecastSeriesProviderEnum? _provider;
  ForecastSeriesProviderEnum? get provider => _$this._provider;
  set provider(ForecastSeriesProviderEnum? provider) =>
      _$this._provider = provider;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  ListBuilder<ForecastSeriesPoint>? _items;
  ListBuilder<ForecastSeriesPoint> get items =>
      _$this._items ??= ListBuilder<ForecastSeriesPoint>();
  set items(ListBuilder<ForecastSeriesPoint>? items) => _$this._items = items;

  ForecastSeriesBuilder() {
    ForecastSeries._defaults(this);
  }

  ForecastSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _run = $v.run;
      _updatedAt = $v.updatedAt;
      _validFrom = $v.validFrom;
      _status = $v.status;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastSeries other) {
    _$v = other as _$ForecastSeries;
  }

  @override
  void update(void Function(ForecastSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastSeries build() => _build();

  _$ForecastSeries _build() {
    _$ForecastSeries _$result;
    try {
      _$result =
          _$v ??
          _$ForecastSeries._(
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'ForecastSeries',
              'provider',
            ),
            run: run,
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'ForecastSeries',
              'updatedAt',
            ),
            validFrom: validFrom,
            status: status,
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastSeries',
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
