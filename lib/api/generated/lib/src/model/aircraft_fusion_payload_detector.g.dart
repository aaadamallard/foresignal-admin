// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft_fusion_payload_detector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AircraftFusionPayloadDetector extends AircraftFusionPayloadDetector {
  @override
  final String id;
  @override
  final String version;

  factory _$AircraftFusionPayloadDetector(
          [void Function(AircraftFusionPayloadDetectorBuilder)? updates]) =>
      (AircraftFusionPayloadDetectorBuilder()..update(updates))._build();

  _$AircraftFusionPayloadDetector._({required this.id, required this.version})
      : super._();
  @override
  AircraftFusionPayloadDetector rebuild(
          void Function(AircraftFusionPayloadDetectorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AircraftFusionPayloadDetectorBuilder toBuilder() =>
      AircraftFusionPayloadDetectorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AircraftFusionPayloadDetector &&
        id == other.id &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AircraftFusionPayloadDetector')
          ..add('id', id)
          ..add('version', version))
        .toString();
  }
}

class AircraftFusionPayloadDetectorBuilder
    implements
        Builder<AircraftFusionPayloadDetector,
            AircraftFusionPayloadDetectorBuilder> {
  _$AircraftFusionPayloadDetector? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  AircraftFusionPayloadDetectorBuilder() {
    AircraftFusionPayloadDetector._defaults(this);
  }

  AircraftFusionPayloadDetectorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AircraftFusionPayloadDetector other) {
    _$v = other as _$AircraftFusionPayloadDetector;
  }

  @override
  void update(void Function(AircraftFusionPayloadDetectorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AircraftFusionPayloadDetector build() => _build();

  _$AircraftFusionPayloadDetector _build() {
    final _$result = _$v ??
        _$AircraftFusionPayloadDetector._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AircraftFusionPayloadDetector', 'id'),
          version: BuiltValueNullFieldError.checkNotNull(
              version, r'AircraftFusionPayloadDetector', 'version'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
