// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_and_location_location_coords.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OsmAndLocationLocationCoords extends OsmAndLocationLocationCoords {
  @override
  final num latitude;
  @override
  final num longitude;
  @override
  final num? speed;
  @override
  final num? heading;
  @override
  final num? accuracy;
  @override
  final num? altitude;

  factory _$OsmAndLocationLocationCoords([
    void Function(OsmAndLocationLocationCoordsBuilder)? updates,
  ]) => (OsmAndLocationLocationCoordsBuilder()..update(updates))._build();

  _$OsmAndLocationLocationCoords._({
    required this.latitude,
    required this.longitude,
    this.speed,
    this.heading,
    this.accuracy,
    this.altitude,
  }) : super._();
  @override
  OsmAndLocationLocationCoords rebuild(
    void Function(OsmAndLocationLocationCoordsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OsmAndLocationLocationCoordsBuilder toBuilder() =>
      OsmAndLocationLocationCoordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OsmAndLocationLocationCoords &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        speed == other.speed &&
        heading == other.heading &&
        accuracy == other.accuracy &&
        altitude == other.altitude;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, heading.hashCode);
    _$hash = $jc(_$hash, accuracy.hashCode);
    _$hash = $jc(_$hash, altitude.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OsmAndLocationLocationCoords')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('speed', speed)
          ..add('heading', heading)
          ..add('accuracy', accuracy)
          ..add('altitude', altitude))
        .toString();
  }
}

class OsmAndLocationLocationCoordsBuilder
    implements
        Builder<
          OsmAndLocationLocationCoords,
          OsmAndLocationLocationCoordsBuilder
        > {
  _$OsmAndLocationLocationCoords? _$v;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  num? _speed;
  num? get speed => _$this._speed;
  set speed(num? speed) => _$this._speed = speed;

  num? _heading;
  num? get heading => _$this._heading;
  set heading(num? heading) => _$this._heading = heading;

  num? _accuracy;
  num? get accuracy => _$this._accuracy;
  set accuracy(num? accuracy) => _$this._accuracy = accuracy;

  num? _altitude;
  num? get altitude => _$this._altitude;
  set altitude(num? altitude) => _$this._altitude = altitude;

  OsmAndLocationLocationCoordsBuilder() {
    OsmAndLocationLocationCoords._defaults(this);
  }

  OsmAndLocationLocationCoordsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _speed = $v.speed;
      _heading = $v.heading;
      _accuracy = $v.accuracy;
      _altitude = $v.altitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OsmAndLocationLocationCoords other) {
    _$v = other as _$OsmAndLocationLocationCoords;
  }

  @override
  void update(void Function(OsmAndLocationLocationCoordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OsmAndLocationLocationCoords build() => _build();

  _$OsmAndLocationLocationCoords _build() {
    final _$result =
        _$v ??
        _$OsmAndLocationLocationCoords._(
          latitude: BuiltValueNullFieldError.checkNotNull(
            latitude,
            r'OsmAndLocationLocationCoords',
            'latitude',
          ),
          longitude: BuiltValueNullFieldError.checkNotNull(
            longitude,
            r'OsmAndLocationLocationCoords',
            'longitude',
          ),
          speed: speed,
          heading: heading,
          accuracy: accuracy,
          altitude: altitude,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
