// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_record_snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlertRecordSnapshot extends AlertRecordSnapshot {
  @override
  final String kind;
  @override
  final int version;
  @override
  final DateTime observedAt;
  @override
  final Geometry? geometry;
  @override
  final BuiltMap<String, JsonObject?>? payload;
  @override
  final bool? truncated;

  factory _$AlertRecordSnapshot(
          [void Function(AlertRecordSnapshotBuilder)? updates]) =>
      (AlertRecordSnapshotBuilder()..update(updates))._build();

  _$AlertRecordSnapshot._(
      {required this.kind,
      required this.version,
      required this.observedAt,
      this.geometry,
      this.payload,
      this.truncated})
      : super._();
  @override
  AlertRecordSnapshot rebuild(
          void Function(AlertRecordSnapshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertRecordSnapshotBuilder toBuilder() =>
      AlertRecordSnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertRecordSnapshot &&
        kind == other.kind &&
        version == other.version &&
        observedAt == other.observedAt &&
        geometry == other.geometry &&
        payload == other.payload &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertRecordSnapshot')
          ..add('kind', kind)
          ..add('version', version)
          ..add('observedAt', observedAt)
          ..add('geometry', geometry)
          ..add('payload', payload)
          ..add('truncated', truncated))
        .toString();
  }
}

class AlertRecordSnapshotBuilder
    implements Builder<AlertRecordSnapshot, AlertRecordSnapshotBuilder> {
  _$AlertRecordSnapshot? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  AlertRecordSnapshotBuilder() {
    AlertRecordSnapshot._defaults(this);
  }

  AlertRecordSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _version = $v.version;
      _observedAt = $v.observedAt;
      _geometry = $v.geometry?.toBuilder();
      _payload = $v.payload?.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertRecordSnapshot other) {
    _$v = other as _$AlertRecordSnapshot;
  }

  @override
  void update(void Function(AlertRecordSnapshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertRecordSnapshot build() => _build();

  _$AlertRecordSnapshot _build() {
    _$AlertRecordSnapshot _$result;
    try {
      _$result = _$v ??
          _$AlertRecordSnapshot._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'AlertRecordSnapshot', 'kind'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'AlertRecordSnapshot', 'version'),
            observedAt: BuiltValueNullFieldError.checkNotNull(
                observedAt, r'AlertRecordSnapshot', 'observedAt'),
            geometry: _geometry?.build(),
            payload: _payload?.build(),
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AlertRecordSnapshot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
