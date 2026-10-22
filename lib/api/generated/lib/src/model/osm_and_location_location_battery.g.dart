// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_and_location_location_battery.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OsmAndLocationLocationBattery extends OsmAndLocationLocationBattery {
  @override
  final num? level;
  @override
  final bool? isCharging;

  factory _$OsmAndLocationLocationBattery([
    void Function(OsmAndLocationLocationBatteryBuilder)? updates,
  ]) => (OsmAndLocationLocationBatteryBuilder()..update(updates))._build();

  _$OsmAndLocationLocationBattery._({this.level, this.isCharging}) : super._();
  @override
  OsmAndLocationLocationBattery rebuild(
    void Function(OsmAndLocationLocationBatteryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OsmAndLocationLocationBatteryBuilder toBuilder() =>
      OsmAndLocationLocationBatteryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OsmAndLocationLocationBattery &&
        level == other.level &&
        isCharging == other.isCharging;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, isCharging.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OsmAndLocationLocationBattery')
          ..add('level', level)
          ..add('isCharging', isCharging))
        .toString();
  }
}

class OsmAndLocationLocationBatteryBuilder
    implements
        Builder<
          OsmAndLocationLocationBattery,
          OsmAndLocationLocationBatteryBuilder
        > {
  _$OsmAndLocationLocationBattery? _$v;

  num? _level;
  num? get level => _$this._level;
  set level(num? level) => _$this._level = level;

  bool? _isCharging;
  bool? get isCharging => _$this._isCharging;
  set isCharging(bool? isCharging) => _$this._isCharging = isCharging;

  OsmAndLocationLocationBatteryBuilder() {
    OsmAndLocationLocationBattery._defaults(this);
  }

  OsmAndLocationLocationBatteryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _level = $v.level;
      _isCharging = $v.isCharging;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OsmAndLocationLocationBattery other) {
    _$v = other as _$OsmAndLocationLocationBattery;
  }

  @override
  void update(void Function(OsmAndLocationLocationBatteryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OsmAndLocationLocationBattery build() => _build();

  _$OsmAndLocationLocationBattery _build() {
    final _$result =
        _$v ??
        _$OsmAndLocationLocationBattery._(level: level, isCharging: isCharging);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
