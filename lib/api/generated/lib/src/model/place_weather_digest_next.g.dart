// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_next.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNext extends PlaceWeatherDigestNext {
  @override
  final PlaceWeatherDigestNextNws? nws;
  @override
  final PlaceWeatherDigestNextGfs? gfs;
  @override
  final PlaceWeatherDigestNextHrrr? hrrr;

  factory _$PlaceWeatherDigestNext(
          [void Function(PlaceWeatherDigestNextBuilder)? updates]) =>
      (PlaceWeatherDigestNextBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNext._({this.nws, this.gfs, this.hrrr}) : super._();
  @override
  PlaceWeatherDigestNext rebuild(
          void Function(PlaceWeatherDigestNextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNextBuilder toBuilder() =>
      PlaceWeatherDigestNextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNext &&
        nws == other.nws &&
        gfs == other.gfs &&
        hrrr == other.hrrr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nws.hashCode);
    _$hash = $jc(_$hash, gfs.hashCode);
    _$hash = $jc(_$hash, hrrr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNext')
          ..add('nws', nws)
          ..add('gfs', gfs)
          ..add('hrrr', hrrr))
        .toString();
  }
}

class PlaceWeatherDigestNextBuilder
    implements Builder<PlaceWeatherDigestNext, PlaceWeatherDigestNextBuilder> {
  _$PlaceWeatherDigestNext? _$v;

  PlaceWeatherDigestNextNwsBuilder? _nws;
  PlaceWeatherDigestNextNwsBuilder get nws =>
      _$this._nws ??= PlaceWeatherDigestNextNwsBuilder();
  set nws(PlaceWeatherDigestNextNwsBuilder? nws) => _$this._nws = nws;

  PlaceWeatherDigestNextGfsBuilder? _gfs;
  PlaceWeatherDigestNextGfsBuilder get gfs =>
      _$this._gfs ??= PlaceWeatherDigestNextGfsBuilder();
  set gfs(PlaceWeatherDigestNextGfsBuilder? gfs) => _$this._gfs = gfs;

  PlaceWeatherDigestNextHrrrBuilder? _hrrr;
  PlaceWeatherDigestNextHrrrBuilder get hrrr =>
      _$this._hrrr ??= PlaceWeatherDigestNextHrrrBuilder();
  set hrrr(PlaceWeatherDigestNextHrrrBuilder? hrrr) => _$this._hrrr = hrrr;

  PlaceWeatherDigestNextBuilder() {
    PlaceWeatherDigestNext._defaults(this);
  }

  PlaceWeatherDigestNextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nws = $v.nws?.toBuilder();
      _gfs = $v.gfs?.toBuilder();
      _hrrr = $v.hrrr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNext other) {
    _$v = other as _$PlaceWeatherDigestNext;
  }

  @override
  void update(void Function(PlaceWeatherDigestNextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNext build() => _build();

  _$PlaceWeatherDigestNext _build() {
    _$PlaceWeatherDigestNext _$result;
    try {
      _$result = _$v ??
          _$PlaceWeatherDigestNext._(
            nws: _nws?.build(),
            gfs: _gfs?.build(),
            hrrr: _hrrr?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nws';
        _nws?.build();
        _$failedField = 'gfs';
        _gfs?.build();
        _$failedField = 'hrrr';
        _hrrr?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlaceWeatherDigestNext', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
