// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overland_batch_locations_inner_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OverlandBatchLocationsInnerProperties
    extends OverlandBatchLocationsInnerProperties {
  @override
  final DateTime? timestamp;
  @override
  final num? horizontalAccuracy;
  @override
  final num? altitude;
  @override
  final num? speed;
  @override
  final num? course;
  @override
  final BuiltList<String>? motion;
  @override
  final num? batteryLevel;
  @override
  final String? batteryState;
  @override
  final String? wifi;
  @override
  final String? deviceId;

  factory _$OverlandBatchLocationsInnerProperties(
          [void Function(OverlandBatchLocationsInnerPropertiesBuilder)?
              updates]) =>
      (OverlandBatchLocationsInnerPropertiesBuilder()..update(updates))
          ._build();

  _$OverlandBatchLocationsInnerProperties._(
      {this.timestamp,
      this.horizontalAccuracy,
      this.altitude,
      this.speed,
      this.course,
      this.motion,
      this.batteryLevel,
      this.batteryState,
      this.wifi,
      this.deviceId})
      : super._();
  @override
  OverlandBatchLocationsInnerProperties rebuild(
          void Function(OverlandBatchLocationsInnerPropertiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverlandBatchLocationsInnerPropertiesBuilder toBuilder() =>
      OverlandBatchLocationsInnerPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverlandBatchLocationsInnerProperties &&
        timestamp == other.timestamp &&
        horizontalAccuracy == other.horizontalAccuracy &&
        altitude == other.altitude &&
        speed == other.speed &&
        course == other.course &&
        motion == other.motion &&
        batteryLevel == other.batteryLevel &&
        batteryState == other.batteryState &&
        wifi == other.wifi &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, horizontalAccuracy.hashCode);
    _$hash = $jc(_$hash, altitude.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, course.hashCode);
    _$hash = $jc(_$hash, motion.hashCode);
    _$hash = $jc(_$hash, batteryLevel.hashCode);
    _$hash = $jc(_$hash, batteryState.hashCode);
    _$hash = $jc(_$hash, wifi.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OverlandBatchLocationsInnerProperties')
          ..add('timestamp', timestamp)
          ..add('horizontalAccuracy', horizontalAccuracy)
          ..add('altitude', altitude)
          ..add('speed', speed)
          ..add('course', course)
          ..add('motion', motion)
          ..add('batteryLevel', batteryLevel)
          ..add('batteryState', batteryState)
          ..add('wifi', wifi)
          ..add('deviceId', deviceId))
        .toString();
  }
}

class OverlandBatchLocationsInnerPropertiesBuilder
    implements
        Builder<OverlandBatchLocationsInnerProperties,
            OverlandBatchLocationsInnerPropertiesBuilder> {
  _$OverlandBatchLocationsInnerProperties? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  num? _horizontalAccuracy;
  num? get horizontalAccuracy => _$this._horizontalAccuracy;
  set horizontalAccuracy(num? horizontalAccuracy) =>
      _$this._horizontalAccuracy = horizontalAccuracy;

  num? _altitude;
  num? get altitude => _$this._altitude;
  set altitude(num? altitude) => _$this._altitude = altitude;

  num? _speed;
  num? get speed => _$this._speed;
  set speed(num? speed) => _$this._speed = speed;

  num? _course;
  num? get course => _$this._course;
  set course(num? course) => _$this._course = course;

  ListBuilder<String>? _motion;
  ListBuilder<String> get motion => _$this._motion ??= ListBuilder<String>();
  set motion(ListBuilder<String>? motion) => _$this._motion = motion;

  num? _batteryLevel;
  num? get batteryLevel => _$this._batteryLevel;
  set batteryLevel(num? batteryLevel) => _$this._batteryLevel = batteryLevel;

  String? _batteryState;
  String? get batteryState => _$this._batteryState;
  set batteryState(String? batteryState) => _$this._batteryState = batteryState;

  String? _wifi;
  String? get wifi => _$this._wifi;
  set wifi(String? wifi) => _$this._wifi = wifi;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  OverlandBatchLocationsInnerPropertiesBuilder() {
    OverlandBatchLocationsInnerProperties._defaults(this);
  }

  OverlandBatchLocationsInnerPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _horizontalAccuracy = $v.horizontalAccuracy;
      _altitude = $v.altitude;
      _speed = $v.speed;
      _course = $v.course;
      _motion = $v.motion?.toBuilder();
      _batteryLevel = $v.batteryLevel;
      _batteryState = $v.batteryState;
      _wifi = $v.wifi;
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverlandBatchLocationsInnerProperties other) {
    _$v = other as _$OverlandBatchLocationsInnerProperties;
  }

  @override
  void update(
      void Function(OverlandBatchLocationsInnerPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OverlandBatchLocationsInnerProperties build() => _build();

  _$OverlandBatchLocationsInnerProperties _build() {
    _$OverlandBatchLocationsInnerProperties _$result;
    try {
      _$result = _$v ??
          _$OverlandBatchLocationsInnerProperties._(
            timestamp: timestamp,
            horizontalAccuracy: horizontalAccuracy,
            altitude: altitude,
            speed: speed,
            course: course,
            motion: _motion?.build(),
            batteryLevel: batteryLevel,
            batteryState: batteryState,
            wifi: wifi,
            deviceId: deviceId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'motion';
        _motion?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OverlandBatchLocationsInnerProperties',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
