// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_and_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OsmAndQuery extends OsmAndQuery {
  @override
  final String? id;
  @override
  final String? deviceid;
  @override
  final num? lat;
  @override
  final num? lon;
  @override
  final String? location;
  @override
  final String? timestamp;
  @override
  final num? speed;
  @override
  final num? bearing;
  @override
  final num? heading;
  @override
  final num? altitude;
  @override
  final num? accuracy;
  @override
  final num? batt;
  @override
  final bool? charge;
  @override
  final bool? valid;

  factory _$OsmAndQuery([void Function(OsmAndQueryBuilder)? updates]) =>
      (OsmAndQueryBuilder()..update(updates))._build();

  _$OsmAndQuery._({
    this.id,
    this.deviceid,
    this.lat,
    this.lon,
    this.location,
    this.timestamp,
    this.speed,
    this.bearing,
    this.heading,
    this.altitude,
    this.accuracy,
    this.batt,
    this.charge,
    this.valid,
  }) : super._();
  @override
  OsmAndQuery rebuild(void Function(OsmAndQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OsmAndQueryBuilder toBuilder() => OsmAndQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OsmAndQuery &&
        id == other.id &&
        deviceid == other.deviceid &&
        lat == other.lat &&
        lon == other.lon &&
        location == other.location &&
        timestamp == other.timestamp &&
        speed == other.speed &&
        bearing == other.bearing &&
        heading == other.heading &&
        altitude == other.altitude &&
        accuracy == other.accuracy &&
        batt == other.batt &&
        charge == other.charge &&
        valid == other.valid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, deviceid.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, bearing.hashCode);
    _$hash = $jc(_$hash, heading.hashCode);
    _$hash = $jc(_$hash, altitude.hashCode);
    _$hash = $jc(_$hash, accuracy.hashCode);
    _$hash = $jc(_$hash, batt.hashCode);
    _$hash = $jc(_$hash, charge.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OsmAndQuery')
          ..add('id', id)
          ..add('deviceid', deviceid)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('location', location)
          ..add('timestamp', timestamp)
          ..add('speed', speed)
          ..add('bearing', bearing)
          ..add('heading', heading)
          ..add('altitude', altitude)
          ..add('accuracy', accuracy)
          ..add('batt', batt)
          ..add('charge', charge)
          ..add('valid', valid))
        .toString();
  }
}

class OsmAndQueryBuilder implements Builder<OsmAndQuery, OsmAndQueryBuilder> {
  _$OsmAndQuery? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _deviceid;
  String? get deviceid => _$this._deviceid;
  set deviceid(String? deviceid) => _$this._deviceid = deviceid;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  num? _speed;
  num? get speed => _$this._speed;
  set speed(num? speed) => _$this._speed = speed;

  num? _bearing;
  num? get bearing => _$this._bearing;
  set bearing(num? bearing) => _$this._bearing = bearing;

  num? _heading;
  num? get heading => _$this._heading;
  set heading(num? heading) => _$this._heading = heading;

  num? _altitude;
  num? get altitude => _$this._altitude;
  set altitude(num? altitude) => _$this._altitude = altitude;

  num? _accuracy;
  num? get accuracy => _$this._accuracy;
  set accuracy(num? accuracy) => _$this._accuracy = accuracy;

  num? _batt;
  num? get batt => _$this._batt;
  set batt(num? batt) => _$this._batt = batt;

  bool? _charge;
  bool? get charge => _$this._charge;
  set charge(bool? charge) => _$this._charge = charge;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  OsmAndQueryBuilder() {
    OsmAndQuery._defaults(this);
  }

  OsmAndQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _deviceid = $v.deviceid;
      _lat = $v.lat;
      _lon = $v.lon;
      _location = $v.location;
      _timestamp = $v.timestamp;
      _speed = $v.speed;
      _bearing = $v.bearing;
      _heading = $v.heading;
      _altitude = $v.altitude;
      _accuracy = $v.accuracy;
      _batt = $v.batt;
      _charge = $v.charge;
      _valid = $v.valid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OsmAndQuery other) {
    _$v = other as _$OsmAndQuery;
  }

  @override
  void update(void Function(OsmAndQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OsmAndQuery build() => _build();

  _$OsmAndQuery _build() {
    final _$result =
        _$v ??
        _$OsmAndQuery._(
          id: id,
          deviceid: deviceid,
          lat: lat,
          lon: lon,
          location: location,
          timestamp: timestamp,
          speed: speed,
          bearing: bearing,
          heading: heading,
          altitude: altitude,
          accuracy: accuracy,
          batt: batt,
          charge: charge,
          valid: valid,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
