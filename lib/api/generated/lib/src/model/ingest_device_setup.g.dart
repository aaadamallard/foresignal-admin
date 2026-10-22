// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device_setup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDeviceSetup extends IngestDeviceSetup {
  @override
  final BuiltMap<String, JsonObject?>? owntracks;
  @override
  final IngestDeviceSetupOverland? overland;
  @override
  final IngestDeviceSetupTraccar? traccar;
  @override
  final IngestDeviceSetupGpslogger? gpslogger;

  factory _$IngestDeviceSetup([
    void Function(IngestDeviceSetupBuilder)? updates,
  ]) => (IngestDeviceSetupBuilder()..update(updates))._build();

  _$IngestDeviceSetup._({
    this.owntracks,
    this.overland,
    this.traccar,
    this.gpslogger,
  }) : super._();
  @override
  IngestDeviceSetup rebuild(void Function(IngestDeviceSetupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestDeviceSetupBuilder toBuilder() =>
      IngestDeviceSetupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDeviceSetup &&
        owntracks == other.owntracks &&
        overland == other.overland &&
        traccar == other.traccar &&
        gpslogger == other.gpslogger;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owntracks.hashCode);
    _$hash = $jc(_$hash, overland.hashCode);
    _$hash = $jc(_$hash, traccar.hashCode);
    _$hash = $jc(_$hash, gpslogger.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDeviceSetup')
          ..add('owntracks', owntracks)
          ..add('overland', overland)
          ..add('traccar', traccar)
          ..add('gpslogger', gpslogger))
        .toString();
  }
}

class IngestDeviceSetupBuilder
    implements Builder<IngestDeviceSetup, IngestDeviceSetupBuilder> {
  _$IngestDeviceSetup? _$v;

  MapBuilder<String, JsonObject?>? _owntracks;
  MapBuilder<String, JsonObject?> get owntracks =>
      _$this._owntracks ??= MapBuilder<String, JsonObject?>();
  set owntracks(MapBuilder<String, JsonObject?>? owntracks) =>
      _$this._owntracks = owntracks;

  IngestDeviceSetupOverlandBuilder? _overland;
  IngestDeviceSetupOverlandBuilder get overland =>
      _$this._overland ??= IngestDeviceSetupOverlandBuilder();
  set overland(IngestDeviceSetupOverlandBuilder? overland) =>
      _$this._overland = overland;

  IngestDeviceSetupTraccarBuilder? _traccar;
  IngestDeviceSetupTraccarBuilder get traccar =>
      _$this._traccar ??= IngestDeviceSetupTraccarBuilder();
  set traccar(IngestDeviceSetupTraccarBuilder? traccar) =>
      _$this._traccar = traccar;

  IngestDeviceSetupGpsloggerBuilder? _gpslogger;
  IngestDeviceSetupGpsloggerBuilder get gpslogger =>
      _$this._gpslogger ??= IngestDeviceSetupGpsloggerBuilder();
  set gpslogger(IngestDeviceSetupGpsloggerBuilder? gpslogger) =>
      _$this._gpslogger = gpslogger;

  IngestDeviceSetupBuilder() {
    IngestDeviceSetup._defaults(this);
  }

  IngestDeviceSetupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owntracks = $v.owntracks?.toBuilder();
      _overland = $v.overland?.toBuilder();
      _traccar = $v.traccar?.toBuilder();
      _gpslogger = $v.gpslogger?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDeviceSetup other) {
    _$v = other as _$IngestDeviceSetup;
  }

  @override
  void update(void Function(IngestDeviceSetupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDeviceSetup build() => _build();

  _$IngestDeviceSetup _build() {
    _$IngestDeviceSetup _$result;
    try {
      _$result =
          _$v ??
          _$IngestDeviceSetup._(
            owntracks: _owntracks?.build(),
            overland: _overland?.build(),
            traccar: _traccar?.build(),
            gpslogger: _gpslogger?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owntracks';
        _owntracks?.build();
        _$failedField = 'overland';
        _overland?.build();
        _$failedField = 'traccar';
        _traccar?.build();
        _$failedField = 'gpslogger';
        _gpslogger?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IngestDeviceSetup',
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
