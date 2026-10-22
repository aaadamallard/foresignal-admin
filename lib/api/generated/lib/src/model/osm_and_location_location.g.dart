// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_and_location_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OsmAndLocationLocation extends OsmAndLocationLocation {
  @override
  final String? timestamp;
  @override
  final OsmAndLocationLocationCoords coords;
  @override
  final OsmAndLocationLocationBattery? battery;
  @override
  final bool? isMoving;
  @override
  final String? event;

  factory _$OsmAndLocationLocation([
    void Function(OsmAndLocationLocationBuilder)? updates,
  ]) => (OsmAndLocationLocationBuilder()..update(updates))._build();

  _$OsmAndLocationLocation._({
    this.timestamp,
    required this.coords,
    this.battery,
    this.isMoving,
    this.event,
  }) : super._();
  @override
  OsmAndLocationLocation rebuild(
    void Function(OsmAndLocationLocationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OsmAndLocationLocationBuilder toBuilder() =>
      OsmAndLocationLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OsmAndLocationLocation &&
        timestamp == other.timestamp &&
        coords == other.coords &&
        battery == other.battery &&
        isMoving == other.isMoving &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, coords.hashCode);
    _$hash = $jc(_$hash, battery.hashCode);
    _$hash = $jc(_$hash, isMoving.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OsmAndLocationLocation')
          ..add('timestamp', timestamp)
          ..add('coords', coords)
          ..add('battery', battery)
          ..add('isMoving', isMoving)
          ..add('event', event))
        .toString();
  }
}

class OsmAndLocationLocationBuilder
    implements Builder<OsmAndLocationLocation, OsmAndLocationLocationBuilder> {
  _$OsmAndLocationLocation? _$v;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  OsmAndLocationLocationCoordsBuilder? _coords;
  OsmAndLocationLocationCoordsBuilder get coords =>
      _$this._coords ??= OsmAndLocationLocationCoordsBuilder();
  set coords(OsmAndLocationLocationCoordsBuilder? coords) =>
      _$this._coords = coords;

  OsmAndLocationLocationBatteryBuilder? _battery;
  OsmAndLocationLocationBatteryBuilder get battery =>
      _$this._battery ??= OsmAndLocationLocationBatteryBuilder();
  set battery(OsmAndLocationLocationBatteryBuilder? battery) =>
      _$this._battery = battery;

  bool? _isMoving;
  bool? get isMoving => _$this._isMoving;
  set isMoving(bool? isMoving) => _$this._isMoving = isMoving;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  OsmAndLocationLocationBuilder() {
    OsmAndLocationLocation._defaults(this);
  }

  OsmAndLocationLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _coords = $v.coords.toBuilder();
      _battery = $v.battery?.toBuilder();
      _isMoving = $v.isMoving;
      _event = $v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OsmAndLocationLocation other) {
    _$v = other as _$OsmAndLocationLocation;
  }

  @override
  void update(void Function(OsmAndLocationLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OsmAndLocationLocation build() => _build();

  _$OsmAndLocationLocation _build() {
    _$OsmAndLocationLocation _$result;
    try {
      _$result =
          _$v ??
          _$OsmAndLocationLocation._(
            timestamp: timestamp,
            coords: coords.build(),
            battery: _battery?.build(),
            isMoving: isMoving,
            event: event,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coords';
        coords.build();
        _$failedField = 'battery';
        _battery?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OsmAndLocationLocation',
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
