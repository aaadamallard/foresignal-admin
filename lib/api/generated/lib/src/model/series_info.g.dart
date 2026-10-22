// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_PT15S =
    const SeriesInfoFrequencyEnum._('PT15S');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_PT15M =
    const SeriesInfoFrequencyEnum._('PT15M');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_PT30M =
    const SeriesInfoFrequencyEnum._('PT30M');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_PT1H =
    const SeriesInfoFrequencyEnum._('PT1H');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_P1D =
    const SeriesInfoFrequencyEnum._('P1D');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_P1W =
    const SeriesInfoFrequencyEnum._('P1W');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_P1M =
    const SeriesInfoFrequencyEnum._('P1M');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_P3M =
    const SeriesInfoFrequencyEnum._('P3M');
const SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnum_P1Y =
    const SeriesInfoFrequencyEnum._('P1Y');

SeriesInfoFrequencyEnum _$seriesInfoFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'PT15S':
      return _$seriesInfoFrequencyEnum_PT15S;
    case 'PT15M':
      return _$seriesInfoFrequencyEnum_PT15M;
    case 'PT30M':
      return _$seriesInfoFrequencyEnum_PT30M;
    case 'PT1H':
      return _$seriesInfoFrequencyEnum_PT1H;
    case 'P1D':
      return _$seriesInfoFrequencyEnum_P1D;
    case 'P1W':
      return _$seriesInfoFrequencyEnum_P1W;
    case 'P1M':
      return _$seriesInfoFrequencyEnum_P1M;
    case 'P3M':
      return _$seriesInfoFrequencyEnum_P3M;
    case 'P1Y':
      return _$seriesInfoFrequencyEnum_P1Y;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesInfoFrequencyEnum> _$seriesInfoFrequencyEnumValues =
    BuiltSet<SeriesInfoFrequencyEnum>(const <SeriesInfoFrequencyEnum>[
  _$seriesInfoFrequencyEnum_PT15S,
  _$seriesInfoFrequencyEnum_PT15M,
  _$seriesInfoFrequencyEnum_PT30M,
  _$seriesInfoFrequencyEnum_PT1H,
  _$seriesInfoFrequencyEnum_P1D,
  _$seriesInfoFrequencyEnum_P1W,
  _$seriesInfoFrequencyEnum_P1M,
  _$seriesInfoFrequencyEnum_P3M,
  _$seriesInfoFrequencyEnum_P1Y,
]);

const SeriesInfoStatusEnum _$seriesInfoStatusEnum_final_ =
    const SeriesInfoStatusEnum._('final_');
const SeriesInfoStatusEnum _$seriesInfoStatusEnum_preliminary =
    const SeriesInfoStatusEnum._('preliminary');
const SeriesInfoStatusEnum _$seriesInfoStatusEnum_estimated =
    const SeriesInfoStatusEnum._('estimated');
const SeriesInfoStatusEnum _$seriesInfoStatusEnum_forecast =
    const SeriesInfoStatusEnum._('forecast');

SeriesInfoStatusEnum _$seriesInfoStatusEnumValueOf(String name) {
  switch (name) {
    case 'final_':
      return _$seriesInfoStatusEnum_final_;
    case 'preliminary':
      return _$seriesInfoStatusEnum_preliminary;
    case 'estimated':
      return _$seriesInfoStatusEnum_estimated;
    case 'forecast':
      return _$seriesInfoStatusEnum_forecast;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesInfoStatusEnum> _$seriesInfoStatusEnumValues =
    BuiltSet<SeriesInfoStatusEnum>(const <SeriesInfoStatusEnum>[
  _$seriesInfoStatusEnum_final_,
  _$seriesInfoStatusEnum_preliminary,
  _$seriesInfoStatusEnum_estimated,
  _$seriesInfoStatusEnum_forecast,
]);

Serializer<SeriesInfoFrequencyEnum> _$seriesInfoFrequencyEnumSerializer =
    _$SeriesInfoFrequencyEnumSerializer();
Serializer<SeriesInfoStatusEnum> _$seriesInfoStatusEnumSerializer =
    _$SeriesInfoStatusEnumSerializer();

class _$SeriesInfoFrequencyEnumSerializer
    implements PrimitiveSerializer<SeriesInfoFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PT15S': 'PT15S',
    'PT15M': 'PT15M',
    'PT30M': 'PT30M',
    'PT1H': 'PT1H',
    'P1D': 'P1D',
    'P1W': 'P1W',
    'P1M': 'P1M',
    'P3M': 'P3M',
    'P1Y': 'P1Y',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PT15S': 'PT15S',
    'PT15M': 'PT15M',
    'PT30M': 'PT30M',
    'PT1H': 'PT1H',
    'P1D': 'P1D',
    'P1W': 'P1W',
    'P1M': 'P1M',
    'P3M': 'P3M',
    'P1Y': 'P1Y',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesInfoFrequencyEnum];
  @override
  final String wireName = 'SeriesInfoFrequencyEnum';

  @override
  Object serialize(Serializers serializers, SeriesInfoFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SeriesInfoFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SeriesInfoFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SeriesInfoStatusEnumSerializer
    implements PrimitiveSerializer<SeriesInfoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'final_': 'final',
    'preliminary': 'preliminary',
    'estimated': 'estimated',
    'forecast': 'forecast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'final': 'final_',
    'preliminary': 'preliminary',
    'estimated': 'estimated',
    'forecast': 'forecast',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesInfoStatusEnum];
  @override
  final String wireName = 'SeriesInfoStatusEnum';

  @override
  Object serialize(Serializers serializers, SeriesInfoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SeriesInfoStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SeriesInfoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SeriesInfo extends SeriesInfo {
  @override
  final String sourceId;
  @override
  final String series;
  @override
  final String seriesName;
  @override
  final String? dataset;
  @override
  final String unit;
  @override
  final SeriesInfoFrequencyEnum frequency;
  @override
  final String? area;
  @override
  final String? latestPeriod;
  @override
  final num? latestValue;
  @override
  final SeriesInfoStatusEnum? status;

  factory _$SeriesInfo([void Function(SeriesInfoBuilder)? updates]) =>
      (SeriesInfoBuilder()..update(updates))._build();

  _$SeriesInfo._(
      {required this.sourceId,
      required this.series,
      required this.seriesName,
      this.dataset,
      required this.unit,
      required this.frequency,
      this.area,
      this.latestPeriod,
      this.latestValue,
      this.status})
      : super._();
  @override
  SeriesInfo rebuild(void Function(SeriesInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesInfoBuilder toBuilder() => SeriesInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesInfo &&
        sourceId == other.sourceId &&
        series == other.series &&
        seriesName == other.seriesName &&
        dataset == other.dataset &&
        unit == other.unit &&
        frequency == other.frequency &&
        area == other.area &&
        latestPeriod == other.latestPeriod &&
        latestValue == other.latestValue &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, seriesName.hashCode);
    _$hash = $jc(_$hash, dataset.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, latestPeriod.hashCode);
    _$hash = $jc(_$hash, latestValue.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesInfo')
          ..add('sourceId', sourceId)
          ..add('series', series)
          ..add('seriesName', seriesName)
          ..add('dataset', dataset)
          ..add('unit', unit)
          ..add('frequency', frequency)
          ..add('area', area)
          ..add('latestPeriod', latestPeriod)
          ..add('latestValue', latestValue)
          ..add('status', status))
        .toString();
  }
}

class SeriesInfoBuilder implements Builder<SeriesInfo, SeriesInfoBuilder> {
  _$SeriesInfo? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _series;
  String? get series => _$this._series;
  set series(String? series) => _$this._series = series;

  String? _seriesName;
  String? get seriesName => _$this._seriesName;
  set seriesName(String? seriesName) => _$this._seriesName = seriesName;

  String? _dataset;
  String? get dataset => _$this._dataset;
  set dataset(String? dataset) => _$this._dataset = dataset;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  SeriesInfoFrequencyEnum? _frequency;
  SeriesInfoFrequencyEnum? get frequency => _$this._frequency;
  set frequency(SeriesInfoFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _latestPeriod;
  String? get latestPeriod => _$this._latestPeriod;
  set latestPeriod(String? latestPeriod) => _$this._latestPeriod = latestPeriod;

  num? _latestValue;
  num? get latestValue => _$this._latestValue;
  set latestValue(num? latestValue) => _$this._latestValue = latestValue;

  SeriesInfoStatusEnum? _status;
  SeriesInfoStatusEnum? get status => _$this._status;
  set status(SeriesInfoStatusEnum? status) => _$this._status = status;

  SeriesInfoBuilder() {
    SeriesInfo._defaults(this);
  }

  SeriesInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _series = $v.series;
      _seriesName = $v.seriesName;
      _dataset = $v.dataset;
      _unit = $v.unit;
      _frequency = $v.frequency;
      _area = $v.area;
      _latestPeriod = $v.latestPeriod;
      _latestValue = $v.latestValue;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesInfo other) {
    _$v = other as _$SeriesInfo;
  }

  @override
  void update(void Function(SeriesInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesInfo build() => _build();

  _$SeriesInfo _build() {
    final _$result = _$v ??
        _$SeriesInfo._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'SeriesInfo', 'sourceId'),
          series: BuiltValueNullFieldError.checkNotNull(
              series, r'SeriesInfo', 'series'),
          seriesName: BuiltValueNullFieldError.checkNotNull(
              seriesName, r'SeriesInfo', 'seriesName'),
          dataset: dataset,
          unit: BuiltValueNullFieldError.checkNotNull(
              unit, r'SeriesInfo', 'unit'),
          frequency: BuiltValueNullFieldError.checkNotNull(
              frequency, r'SeriesInfo', 'frequency'),
          area: area,
          latestPeriod: latestPeriod,
          latestValue: latestValue,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
