// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_and_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OsmAndLocation extends OsmAndLocation {
  @override
  final String deviceId;
  @override
  final OsmAndLocationLocation location;

  factory _$OsmAndLocation([void Function(OsmAndLocationBuilder)? updates]) =>
      (OsmAndLocationBuilder()..update(updates))._build();

  _$OsmAndLocation._({required this.deviceId, required this.location})
    : super._();
  @override
  OsmAndLocation rebuild(void Function(OsmAndLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OsmAndLocationBuilder toBuilder() => OsmAndLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OsmAndLocation &&
        deviceId == other.deviceId &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OsmAndLocation')
          ..add('deviceId', deviceId)
          ..add('location', location))
        .toString();
  }
}

class OsmAndLocationBuilder
    implements Builder<OsmAndLocation, OsmAndLocationBuilder> {
  _$OsmAndLocation? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  OsmAndLocationLocationBuilder? _location;
  OsmAndLocationLocationBuilder get location =>
      _$this._location ??= OsmAndLocationLocationBuilder();
  set location(OsmAndLocationLocationBuilder? location) =>
      _$this._location = location;

  OsmAndLocationBuilder() {
    OsmAndLocation._defaults(this);
  }

  OsmAndLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _location = $v.location.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OsmAndLocation other) {
    _$v = other as _$OsmAndLocation;
  }

  @override
  void update(void Function(OsmAndLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OsmAndLocation build() => _build();

  _$OsmAndLocation _build() {
    _$OsmAndLocation _$result;
    try {
      _$result =
          _$v ??
          _$OsmAndLocation._(
            deviceId: BuiltValueNullFieldError.checkNotNull(
              deviceId,
              r'OsmAndLocation',
              'deviceId',
            ),
            location: location.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OsmAndLocation',
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
