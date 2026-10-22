// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherResponse extends PlaceWeatherResponse {
  @override
  final String placeId;
  @override
  final String? place;
  @override
  final String? timezone;
  @override
  final Record? record;
  @override
  final PlaceWeather? weather;
  @override
  final BuiltList<ForecastSeries> forecastSeries;
  @override
  final DateTime serverTime;

  factory _$PlaceWeatherResponse([
    void Function(PlaceWeatherResponseBuilder)? updates,
  ]) => (PlaceWeatherResponseBuilder()..update(updates))._build();

  _$PlaceWeatherResponse._({
    required this.placeId,
    this.place,
    this.timezone,
    this.record,
    this.weather,
    required this.forecastSeries,
    required this.serverTime,
  }) : super._();
  @override
  PlaceWeatherResponse rebuild(
    void Function(PlaceWeatherResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherResponseBuilder toBuilder() =>
      PlaceWeatherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherResponse &&
        placeId == other.placeId &&
        place == other.place &&
        timezone == other.timezone &&
        record == other.record &&
        weather == other.weather &&
        forecastSeries == other.forecastSeries &&
        serverTime == other.serverTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, forecastSeries.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherResponse')
          ..add('placeId', placeId)
          ..add('place', place)
          ..add('timezone', timezone)
          ..add('record', record)
          ..add('weather', weather)
          ..add('forecastSeries', forecastSeries)
          ..add('serverTime', serverTime))
        .toString();
  }
}

class PlaceWeatherResponseBuilder
    implements Builder<PlaceWeatherResponse, PlaceWeatherResponseBuilder> {
  _$PlaceWeatherResponse? _$v;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  RecordBuilder? _record;
  RecordBuilder get record => _$this._record ??= RecordBuilder();
  set record(RecordBuilder? record) => _$this._record = record;

  PlaceWeatherBuilder? _weather;
  PlaceWeatherBuilder get weather => _$this._weather ??= PlaceWeatherBuilder();
  set weather(PlaceWeatherBuilder? weather) => _$this._weather = weather;

  ListBuilder<ForecastSeries>? _forecastSeries;
  ListBuilder<ForecastSeries> get forecastSeries =>
      _$this._forecastSeries ??= ListBuilder<ForecastSeries>();
  set forecastSeries(ListBuilder<ForecastSeries>? forecastSeries) =>
      _$this._forecastSeries = forecastSeries;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  PlaceWeatherResponseBuilder() {
    PlaceWeatherResponse._defaults(this);
  }

  PlaceWeatherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeId = $v.placeId;
      _place = $v.place;
      _timezone = $v.timezone;
      _record = $v.record?.toBuilder();
      _weather = $v.weather?.toBuilder();
      _forecastSeries = $v.forecastSeries.toBuilder();
      _serverTime = $v.serverTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherResponse other) {
    _$v = other as _$PlaceWeatherResponse;
  }

  @override
  void update(void Function(PlaceWeatherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherResponse build() => _build();

  _$PlaceWeatherResponse _build() {
    _$PlaceWeatherResponse _$result;
    try {
      _$result =
          _$v ??
          _$PlaceWeatherResponse._(
            placeId: BuiltValueNullFieldError.checkNotNull(
              placeId,
              r'PlaceWeatherResponse',
              'placeId',
            ),
            place: place,
            timezone: timezone,
            record: _record?.build(),
            weather: _weather?.build(),
            forecastSeries: forecastSeries.build(),
            serverTime: BuiltValueNullFieldError.checkNotNull(
              serverTime,
              r'PlaceWeatherResponse',
              'serverTime',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'record';
        _record?.build();
        _$failedField = 'weather';
        _weather?.build();
        _$failedField = 'forecastSeries';
        forecastSeries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlaceWeatherResponse',
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
