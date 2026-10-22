// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedKey extends FeedKey {
  @override
  final String id;
  @override
  final String name;
  @override
  final String keyPrefix;
  @override
  final BuiltList<String> prefixes;
  @override
  final ReadRestriction restrictions;
  @override
  final bool? privateAccess;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final DateTime? lastUsedAt;
  @override
  final DateTime? revokedAt;

  factory _$FeedKey([void Function(FeedKeyBuilder)? updates]) =>
      (FeedKeyBuilder()..update(updates))._build();

  _$FeedKey._({
    required this.id,
    required this.name,
    required this.keyPrefix,
    required this.prefixes,
    required this.restrictions,
    this.privateAccess,
    required this.createdAt,
    required this.expiresAt,
    this.lastUsedAt,
    this.revokedAt,
  }) : super._();
  @override
  FeedKey rebuild(void Function(FeedKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedKeyBuilder toBuilder() => FeedKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedKey &&
        id == other.id &&
        name == other.name &&
        keyPrefix == other.keyPrefix &&
        prefixes == other.prefixes &&
        restrictions == other.restrictions &&
        privateAccess == other.privateAccess &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        lastUsedAt == other.lastUsedAt &&
        revokedAt == other.revokedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, keyPrefix.hashCode);
    _$hash = $jc(_$hash, prefixes.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedKey')
          ..add('id', id)
          ..add('name', name)
          ..add('keyPrefix', keyPrefix)
          ..add('prefixes', prefixes)
          ..add('restrictions', restrictions)
          ..add('privateAccess', privateAccess)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('lastUsedAt', lastUsedAt)
          ..add('revokedAt', revokedAt))
        .toString();
  }
}

class FeedKeyBuilder implements Builder<FeedKey, FeedKeyBuilder> {
  _$FeedKey? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _keyPrefix;
  String? get keyPrefix => _$this._keyPrefix;
  set keyPrefix(String? keyPrefix) => _$this._keyPrefix = keyPrefix;

  ListBuilder<String>? _prefixes;
  ListBuilder<String> get prefixes =>
      _$this._prefixes ??= ListBuilder<String>();
  set prefixes(ListBuilder<String>? prefixes) => _$this._prefixes = prefixes;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _lastUsedAt;
  DateTime? get lastUsedAt => _$this._lastUsedAt;
  set lastUsedAt(DateTime? lastUsedAt) => _$this._lastUsedAt = lastUsedAt;

  DateTime? _revokedAt;
  DateTime? get revokedAt => _$this._revokedAt;
  set revokedAt(DateTime? revokedAt) => _$this._revokedAt = revokedAt;

  FeedKeyBuilder() {
    FeedKey._defaults(this);
  }

  FeedKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _keyPrefix = $v.keyPrefix;
      _prefixes = $v.prefixes.toBuilder();
      _restrictions = $v.restrictions.toBuilder();
      _privateAccess = $v.privateAccess;
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _lastUsedAt = $v.lastUsedAt;
      _revokedAt = $v.revokedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedKey other) {
    _$v = other as _$FeedKey;
  }

  @override
  void update(void Function(FeedKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedKey build() => _build();

  _$FeedKey _build() {
    _$FeedKey _$result;
    try {
      _$result =
          _$v ??
          _$FeedKey._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'FeedKey', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'FeedKey',
              'name',
            ),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
              keyPrefix,
              r'FeedKey',
              'keyPrefix',
            ),
            prefixes: prefixes.build(),
            restrictions: restrictions.build(),
            privateAccess: privateAccess,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'FeedKey',
              'createdAt',
            ),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'FeedKey',
              'expiresAt',
            ),
            lastUsedAt: lastUsedAt,
            revokedAt: revokedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixes';
        prefixes.build();
        _$failedField = 'restrictions';
        restrictions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FeedKey',
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
