// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeather extends PlaceWeather {
  @override
  final String place;
  @override
  final num radiusKm;
  @override
  final PlaceWeatherRadar? radar;
  @override
  final PlaceWeatherHail? hail;
  @override
  final PlaceWeatherPrecip? precip;
  @override
  final PlaceWeatherLightning? lightning;
  @override
  final PlaceWeatherCell? cell;
  @override
  final PlaceWeatherSmoke? smoke;
  @override
  final PlaceWeatherForecast? forecast;
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final PlaceWeatherMarine? marine;
  @override
  final PlaceWeatherAurora? aurora;
  @override
  final PlaceWeatherHeat? heat;
  @override
  final PlaceWeatherUv? uv;

  factory _$PlaceWeather([void Function(PlaceWeatherBuilder)? updates]) =>
      (PlaceWeatherBuilder()..update(updates))._build();

  _$PlaceWeather._({
    required this.place,
    required this.radiusKm,
    this.radar,
    this.hail,
    this.precip,
    this.lightning,
    this.cell,
    this.smoke,
    this.forecast,
    required this.automated,
    required this.notAWarning,
    this.marine,
    this.aurora,
    this.heat,
    this.uv,
  }) : super._();
  @override
  PlaceWeather rebuild(void Function(PlaceWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherBuilder toBuilder() => PlaceWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeather &&
        place == other.place &&
        radiusKm == other.radiusKm &&
        radar == other.radar &&
        hail == other.hail &&
        precip == other.precip &&
        lightning == other.lightning &&
        cell == other.cell &&
        smoke == other.smoke &&
        forecast == other.forecast &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        marine == other.marine &&
        aurora == other.aurora &&
        heat == other.heat &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, radar.hashCode);
    _$hash = $jc(_$hash, hail.hashCode);
    _$hash = $jc(_$hash, precip.hashCode);
    _$hash = $jc(_$hash, lightning.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, smoke.hashCode);
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jc(_$hash, marine.hashCode);
    _$hash = $jc(_$hash, aurora.hashCode);
    _$hash = $jc(_$hash, heat.hashCode);
    _$hash = $jc(_$hash, uv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeather')
          ..add('place', place)
          ..add('radiusKm', radiusKm)
          ..add('radar', radar)
          ..add('hail', hail)
          ..add('precip', precip)
          ..add('lightning', lightning)
          ..add('cell', cell)
          ..add('smoke', smoke)
          ..add('forecast', forecast)
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('marine', marine)
          ..add('aurora', aurora)
          ..add('heat', heat)
          ..add('uv', uv))
        .toString();
  }
}

class PlaceWeatherBuilder
    implements Builder<PlaceWeather, PlaceWeatherBuilder> {
  _$PlaceWeather? _$v;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  PlaceWeatherRadarBuilder? _radar;
  PlaceWeatherRadarBuilder get radar =>
      _$this._radar ??= PlaceWeatherRadarBuilder();
  set radar(PlaceWeatherRadarBuilder? radar) => _$this._radar = radar;

  PlaceWeatherHailBuilder? _hail;
  PlaceWeatherHailBuilder get hail =>
      _$this._hail ??= PlaceWeatherHailBuilder();
  set hail(PlaceWeatherHailBuilder? hail) => _$this._hail = hail;

  PlaceWeatherPrecipBuilder? _precip;
  PlaceWeatherPrecipBuilder get precip =>
      _$this._precip ??= PlaceWeatherPrecipBuilder();
  set precip(PlaceWeatherPrecipBuilder? precip) => _$this._precip = precip;

  PlaceWeatherLightningBuilder? _lightning;
  PlaceWeatherLightningBuilder get lightning =>
      _$this._lightning ??= PlaceWeatherLightningBuilder();
  set lightning(PlaceWeatherLightningBuilder? lightning) =>
      _$this._lightning = lightning;

  PlaceWeatherCellBuilder? _cell;
  PlaceWeatherCellBuilder get cell =>
      _$this._cell ??= PlaceWeatherCellBuilder();
  set cell(PlaceWeatherCellBuilder? cell) => _$this._cell = cell;

  PlaceWeatherSmokeBuilder? _smoke;
  PlaceWeatherSmokeBuilder get smoke =>
      _$this._smoke ??= PlaceWeatherSmokeBuilder();
  set smoke(PlaceWeatherSmokeBuilder? smoke) => _$this._smoke = smoke;

  PlaceWeatherForecastBuilder? _forecast;
  PlaceWeatherForecastBuilder get forecast =>
      _$this._forecast ??= PlaceWeatherForecastBuilder();
  set forecast(PlaceWeatherForecastBuilder? forecast) =>
      _$this._forecast = forecast;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  PlaceWeatherMarineBuilder? _marine;
  PlaceWeatherMarineBuilder get marine =>
      _$this._marine ??= PlaceWeatherMarineBuilder();
  set marine(PlaceWeatherMarineBuilder? marine) => _$this._marine = marine;

  PlaceWeatherAuroraBuilder? _aurora;
  PlaceWeatherAuroraBuilder get aurora =>
      _$this._aurora ??= PlaceWeatherAuroraBuilder();
  set aurora(PlaceWeatherAuroraBuilder? aurora) => _$this._aurora = aurora;

  PlaceWeatherHeatBuilder? _heat;
  PlaceWeatherHeatBuilder get heat =>
      _$this._heat ??= PlaceWeatherHeatBuilder();
  set heat(PlaceWeatherHeatBuilder? heat) => _$this._heat = heat;

  PlaceWeatherUvBuilder? _uv;
  PlaceWeatherUvBuilder get uv => _$this._uv ??= PlaceWeatherUvBuilder();
  set uv(PlaceWeatherUvBuilder? uv) => _$this._uv = uv;

  PlaceWeatherBuilder() {
    PlaceWeather._defaults(this);
  }

  PlaceWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _place = $v.place;
      _radiusKm = $v.radiusKm;
      _radar = $v.radar?.toBuilder();
      _hail = $v.hail?.toBuilder();
      _precip = $v.precip?.toBuilder();
      _lightning = $v.lightning?.toBuilder();
      _cell = $v.cell?.toBuilder();
      _smoke = $v.smoke?.toBuilder();
      _forecast = $v.forecast?.toBuilder();
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _marine = $v.marine?.toBuilder();
      _aurora = $v.aurora?.toBuilder();
      _heat = $v.heat?.toBuilder();
      _uv = $v.uv?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeather other) {
    _$v = other as _$PlaceWeather;
  }

  @override
  void update(void Function(PlaceWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeather build() => _build();

  _$PlaceWeather _build() {
    _$PlaceWeather _$result;
    try {
      _$result =
          _$v ??
          _$PlaceWeather._(
            place: BuiltValueNullFieldError.checkNotNull(
              place,
              r'PlaceWeather',
              'place',
            ),
            radiusKm: BuiltValueNullFieldError.checkNotNull(
              radiusKm,
              r'PlaceWeather',
              'radiusKm',
            ),
            radar: _radar?.build(),
            hail: _hail?.build(),
            precip: _precip?.build(),
            lightning: _lightning?.build(),
            cell: _cell?.build(),
            smoke: _smoke?.build(),
            forecast: _forecast?.build(),
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'PlaceWeather',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'PlaceWeather',
              'notAWarning',
            ),
            marine: _marine?.build(),
            aurora: _aurora?.build(),
            heat: _heat?.build(),
            uv: _uv?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'radar';
        _radar?.build();
        _$failedField = 'hail';
        _hail?.build();
        _$failedField = 'precip';
        _precip?.build();
        _$failedField = 'lightning';
        _lightning?.build();
        _$failedField = 'cell';
        _cell?.build();
        _$failedField = 'smoke';
        _smoke?.build();
        _$failedField = 'forecast';
        _forecast?.build();

        _$failedField = 'marine';
        _marine?.build();
        _$failedField = 'aurora';
        _aurora?.build();
        _$failedField = 'heat';
        _heat?.build();
        _$failedField = 'uv';
        _uv?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlaceWeather',
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
