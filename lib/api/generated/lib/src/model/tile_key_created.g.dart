// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_key_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TileKeyCreated extends TileKeyCreated {
  @override
  final String id;
  @override
  final String name;
  @override
  final String keyPrefix;
  @override
  final BuiltList<String> prefixes;
  @override
  final ReadRestriction? restrictions;
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
  final String urlBase;

  factory _$TileKeyCreated([void Function(TileKeyCreatedBuilder)? updates]) =>
      (TileKeyCreatedBuilder()..update(updates))._build();

  _$TileKeyCreated._(
      {required this.id,
      required this.name,
      required this.keyPrefix,
      required this.prefixes,
      this.restrictions,
      required this.createdAt,
      required this.expiresAt,
      this.lastUsedAt,
      this.revokedAt,
      required this.key,
      required this.urlBase})
      : super._();
  @override
  TileKeyCreated rebuild(void Function(TileKeyCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileKeyCreatedBuilder toBuilder() => TileKeyCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileKeyCreated &&
        id == other.id &&
        name == other.name &&
        keyPrefix == other.keyPrefix &&
        prefixes == other.prefixes &&
        restrictions == other.restrictions &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        lastUsedAt == other.lastUsedAt &&
        revokedAt == other.revokedAt &&
        key == other.key &&
        urlBase == other.urlBase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, keyPrefix.hashCode);
    _$hash = $jc(_$hash, prefixes.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, urlBase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileKeyCreated')
          ..add('id', id)
          ..add('name', name)
          ..add('keyPrefix', keyPrefix)
          ..add('prefixes', prefixes)
          ..add('restrictions', restrictions)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('lastUsedAt', lastUsedAt)
          ..add('revokedAt', revokedAt)
          ..add('key', key)
          ..add('urlBase', urlBase))
        .toString();
  }
}

class TileKeyCreatedBuilder
    implements Builder<TileKeyCreated, TileKeyCreatedBuilder> {
  _$TileKeyCreated? _$v;

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

  String? _urlBase;
  String? get urlBase => _$this._urlBase;
  set urlBase(String? urlBase) => _$this._urlBase = urlBase;

  TileKeyCreatedBuilder() {
    TileKeyCreated._defaults(this);
  }

  TileKeyCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _keyPrefix = $v.keyPrefix;
      _prefixes = $v.prefixes.toBuilder();
      _restrictions = $v.restrictions?.toBuilder();
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _lastUsedAt = $v.lastUsedAt;
      _revokedAt = $v.revokedAt;
      _key = $v.key;
      _urlBase = $v.urlBase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileKeyCreated other) {
    _$v = other as _$TileKeyCreated;
  }

  @override
  void update(void Function(TileKeyCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileKeyCreated build() => _build();

  _$TileKeyCreated _build() {
    _$TileKeyCreated _$result;
    try {
      _$result = _$v ??
          _$TileKeyCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TileKeyCreated', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'TileKeyCreated', 'name'),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
                keyPrefix, r'TileKeyCreated', 'keyPrefix'),
            prefixes: prefixes.build(),
            restrictions: _restrictions?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'TileKeyCreated', 'createdAt'),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
                expiresAt, r'TileKeyCreated', 'expiresAt'),
            lastUsedAt: lastUsedAt,
            revokedAt: revokedAt,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'TileKeyCreated', 'key'),
            urlBase: BuiltValueNullFieldError.checkNotNull(
                urlBase, r'TileKeyCreated', 'urlBase'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixes';
        prefixes.build();
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TileKeyCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
