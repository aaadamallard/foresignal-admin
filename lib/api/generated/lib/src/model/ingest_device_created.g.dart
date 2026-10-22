// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDeviceCreated extends IngestDeviceCreated {
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
  @override
  final String key;
  @override
  final IngestDeviceSetup setup;

  factory _$IngestDeviceCreated(
          [void Function(IngestDeviceCreatedBuilder)? updates]) =>
      (IngestDeviceCreatedBuilder()..update(updates))._build();

  _$IngestDeviceCreated._(
      {required this.id,
      required this.sourceId,
      required this.externalId,
      required this.name,
      required this.keyPrefix,
      required this.createdAt,
      this.lastSeenAt,
      this.revokedAt,
      required this.key,
      required this.setup})
      : super._();
  @override
  IngestDeviceCreated rebuild(
          void Function(IngestDeviceCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestDeviceCreatedBuilder toBuilder() =>
      IngestDeviceCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDeviceCreated &&
        id == other.id &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        name == other.name &&
        keyPrefix == other.keyPrefix &&
        createdAt == other.createdAt &&
        lastSeenAt == other.lastSeenAt &&
        revokedAt == other.revokedAt &&
        key == other.key &&
        setup == other.setup;
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
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, setup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDeviceCreated')
          ..add('id', id)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('name', name)
          ..add('keyPrefix', keyPrefix)
          ..add('createdAt', createdAt)
          ..add('lastSeenAt', lastSeenAt)
          ..add('revokedAt', revokedAt)
          ..add('key', key)
          ..add('setup', setup))
        .toString();
  }
}

class IngestDeviceCreatedBuilder
    implements Builder<IngestDeviceCreated, IngestDeviceCreatedBuilder> {
  _$IngestDeviceCreated? _$v;

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

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  IngestDeviceSetupBuilder? _setup;
  IngestDeviceSetupBuilder get setup =>
      _$this._setup ??= IngestDeviceSetupBuilder();
  set setup(IngestDeviceSetupBuilder? setup) => _$this._setup = setup;

  IngestDeviceCreatedBuilder() {
    IngestDeviceCreated._defaults(this);
  }

  IngestDeviceCreatedBuilder get _$this {
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
      _key = $v.key;
      _setup = $v.setup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDeviceCreated other) {
    _$v = other as _$IngestDeviceCreated;
  }

  @override
  void update(void Function(IngestDeviceCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDeviceCreated build() => _build();

  _$IngestDeviceCreated _build() {
    _$IngestDeviceCreated _$result;
    try {
      _$result = _$v ??
          _$IngestDeviceCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'IngestDeviceCreated', 'id'),
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'IngestDeviceCreated', 'sourceId'),
            externalId: BuiltValueNullFieldError.checkNotNull(
                externalId, r'IngestDeviceCreated', 'externalId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'IngestDeviceCreated', 'name'),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
                keyPrefix, r'IngestDeviceCreated', 'keyPrefix'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'IngestDeviceCreated', 'createdAt'),
            lastSeenAt: lastSeenAt,
            revokedAt: revokedAt,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'IngestDeviceCreated', 'key'),
            setup: setup.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setup';
        setup.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IngestDeviceCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
