// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_key_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedKeyCreated extends FeedKeyCreated {
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
  @override
  final String key;
  @override
  final BuiltList<FeedKeyCreatedUrlsInner> urls;

  factory _$FeedKeyCreated([void Function(FeedKeyCreatedBuilder)? updates]) =>
      (FeedKeyCreatedBuilder()..update(updates))._build();

  _$FeedKeyCreated._({
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
    required this.key,
    required this.urls,
  }) : super._();
  @override
  FeedKeyCreated rebuild(void Function(FeedKeyCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedKeyCreatedBuilder toBuilder() => FeedKeyCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedKeyCreated &&
        id == other.id &&
        name == other.name &&
        keyPrefix == other.keyPrefix &&
        prefixes == other.prefixes &&
        restrictions == other.restrictions &&
        privateAccess == other.privateAccess &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        lastUsedAt == other.lastUsedAt &&
        revokedAt == other.revokedAt &&
        key == other.key &&
        urls == other.urls;
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
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedKeyCreated')
          ..add('id', id)
          ..add('name', name)
          ..add('keyPrefix', keyPrefix)
          ..add('prefixes', prefixes)
          ..add('restrictions', restrictions)
          ..add('privateAccess', privateAccess)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('lastUsedAt', lastUsedAt)
          ..add('revokedAt', revokedAt)
          ..add('key', key)
          ..add('urls', urls))
        .toString();
  }
}

class FeedKeyCreatedBuilder
    implements Builder<FeedKeyCreated, FeedKeyCreatedBuilder> {
  _$FeedKeyCreated? _$v;

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

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ListBuilder<FeedKeyCreatedUrlsInner>? _urls;
  ListBuilder<FeedKeyCreatedUrlsInner> get urls =>
      _$this._urls ??= ListBuilder<FeedKeyCreatedUrlsInner>();
  set urls(ListBuilder<FeedKeyCreatedUrlsInner>? urls) => _$this._urls = urls;

  FeedKeyCreatedBuilder() {
    FeedKeyCreated._defaults(this);
  }

  FeedKeyCreatedBuilder get _$this {
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
      _key = $v.key;
      _urls = $v.urls.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedKeyCreated other) {
    _$v = other as _$FeedKeyCreated;
  }

  @override
  void update(void Function(FeedKeyCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedKeyCreated build() => _build();

  _$FeedKeyCreated _build() {
    _$FeedKeyCreated _$result;
    try {
      _$result =
          _$v ??
          _$FeedKeyCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'FeedKeyCreated',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'FeedKeyCreated',
              'name',
            ),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
              keyPrefix,
              r'FeedKeyCreated',
              'keyPrefix',
            ),
            prefixes: prefixes.build(),
            restrictions: restrictions.build(),
            privateAccess: privateAccess,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'FeedKeyCreated',
              'createdAt',
            ),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'FeedKeyCreated',
              'expiresAt',
            ),
            lastUsedAt: lastUsedAt,
            revokedAt: revokedAt,
            key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'FeedKeyCreated',
              'key',
            ),
            urls: urls.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixes';
        prefixes.build();
        _$failedField = 'restrictions';
        restrictions.build();

        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FeedKeyCreated',
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
