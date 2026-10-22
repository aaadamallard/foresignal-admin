// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_ingest_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeerIngestKey extends PeerIngestKey {
  @override
  final String peerId;
  @override
  final String key;
  @override
  final String keyPrefix;
  @override
  final DateTime createdAt;

  factory _$PeerIngestKey([void Function(PeerIngestKeyBuilder)? updates]) =>
      (PeerIngestKeyBuilder()..update(updates))._build();

  _$PeerIngestKey._({
    required this.peerId,
    required this.key,
    required this.keyPrefix,
    required this.createdAt,
  }) : super._();
  @override
  PeerIngestKey rebuild(void Function(PeerIngestKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerIngestKeyBuilder toBuilder() => PeerIngestKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeerIngestKey &&
        peerId == other.peerId &&
        key == other.key &&
        keyPrefix == other.keyPrefix &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, peerId.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, keyPrefix.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeerIngestKey')
          ..add('peerId', peerId)
          ..add('key', key)
          ..add('keyPrefix', keyPrefix)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PeerIngestKeyBuilder
    implements Builder<PeerIngestKey, PeerIngestKeyBuilder> {
  _$PeerIngestKey? _$v;

  String? _peerId;
  String? get peerId => _$this._peerId;
  set peerId(String? peerId) => _$this._peerId = peerId;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _keyPrefix;
  String? get keyPrefix => _$this._keyPrefix;
  set keyPrefix(String? keyPrefix) => _$this._keyPrefix = keyPrefix;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  PeerIngestKeyBuilder() {
    PeerIngestKey._defaults(this);
  }

  PeerIngestKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _peerId = $v.peerId;
      _key = $v.key;
      _keyPrefix = $v.keyPrefix;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeerIngestKey other) {
    _$v = other as _$PeerIngestKey;
  }

  @override
  void update(void Function(PeerIngestKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeerIngestKey build() => _build();

  _$PeerIngestKey _build() {
    final _$result =
        _$v ??
        _$PeerIngestKey._(
          peerId: BuiltValueNullFieldError.checkNotNull(
            peerId,
            r'PeerIngestKey',
            'peerId',
          ),
          key: BuiltValueNullFieldError.checkNotNull(
            key,
            r'PeerIngestKey',
            'key',
          ),
          keyPrefix: BuiltValueNullFieldError.checkNotNull(
            keyPrefix,
            r'PeerIngestKey',
            'keyPrefix',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'PeerIngestKey',
            'createdAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
