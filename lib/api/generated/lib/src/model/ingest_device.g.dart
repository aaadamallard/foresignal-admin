// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDevice extends IngestDevice {
  @override
  final String id;
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String name;
  @override
  final String keyPrefix;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastSeenAt;
  @override
  final DateTime? revokedAt;

  factory _$IngestDevice([void Function(IngestDeviceBuilder)? updates]) =>
      (IngestDeviceBuilder()..update(updates))._build();

  _$IngestDevice._(
      {required this.id,
      required this.sourceId,
      required this.externalId,
      required this.name,
      required this.keyPrefix,
      required this.createdAt,
      this.lastSeenAt,
      this.revokedAt})
      : super._();
  @override
  IngestDevice rebuild(void Function(IngestDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestDeviceBuilder toBuilder() => IngestDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDevice &&
        id == other.id &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        name == other.name &&
        keyPrefix == other.keyPrefix &&
        createdAt == other.createdAt &&
        lastSeenAt == other.lastSeenAt &&
        revokedAt == other.revokedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, keyPrefix.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDevice')
          ..add('id', id)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('name', name)
          ..add('keyPrefix', keyPrefix)
          ..add('createdAt', createdAt)
          ..add('lastSeenAt', lastSeenAt)
          ..add('revokedAt', revokedAt))
        .toString();
  }
}

class IngestDeviceBuilder
    implements Builder<IngestDevice, IngestDeviceBuilder> {
  _$IngestDevice? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _keyPrefix;
  String? get keyPrefix => _$this._keyPrefix;
  set keyPrefix(String? keyPrefix) => _$this._keyPrefix = keyPrefix;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  DateTime? _revokedAt;
  DateTime? get revokedAt => _$this._revokedAt;
  set revokedAt(DateTime? revokedAt) => _$this._revokedAt = revokedAt;

  IngestDeviceBuilder() {
    IngestDevice._defaults(this);
  }

  IngestDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _name = $v.name;
      _keyPrefix = $v.keyPrefix;
      _createdAt = $v.createdAt;
      _lastSeenAt = $v.lastSeenAt;
      _revokedAt = $v.revokedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDevice other) {
    _$v = other as _$IngestDevice;
  }

  @override
  void update(void Function(IngestDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDevice build() => _build();

  _$IngestDevice _build() {
    final _$result = _$v ??
        _$IngestDevice._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'IngestDevice', 'id'),
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'IngestDevice', 'sourceId'),
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'IngestDevice', 'externalId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'IngestDevice', 'name'),
          keyPrefix: BuiltValueNullFieldError.checkNotNull(
              keyPrefix, r'IngestDevice', 'keyPrefix'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'IngestDevice', 'createdAt'),
          lastSeenAt: lastSeenAt,
          revokedAt: revokedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
