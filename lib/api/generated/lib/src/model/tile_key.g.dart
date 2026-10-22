// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TileKey extends TileKey {
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

  factory _$TileKey([void Function(TileKeyBuilder)? updates]) =>
      (TileKeyBuilder()..update(updates))._build();

  _$TileKey._({
    required this.id,
    required this.name,
    required this.keyPrefix,
    required this.prefixes,
    this.restrictions,
    required this.createdAt,
    required this.expiresAt,
    this.lastUsedAt,
    this.revokedAt,
  }) : super._();
  @override
  TileKey rebuild(void Function(TileKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileKeyBuilder toBuilder() => TileKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileKey &&
        id == other.id &&
        name == other.name &&
        keyPrefix == other.keyPrefix &&
        prefixes == other.prefixes &&
        restrictions == other.restrictions &&
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
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileKey')
          ..add('id', id)
          ..add('name', name)
          ..add('keyPrefix', keyPrefix)
          ..add('prefixes', prefixes)
          ..add('restrictions', restrictions)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('lastUsedAt', lastUsedAt)
          ..add('revokedAt', revokedAt))
        .toString();
  }
}

class TileKeyBuilder implements Builder<TileKey, TileKeyBuilder> {
  _$TileKey? _$v;

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

  TileKeyBuilder() {
    TileKey._defaults(this);
  }

  TileKeyBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileKey other) {
    _$v = other as _$TileKey;
  }

  @override
  void update(void Function(TileKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileKey build() => _build();

  _$TileKey _build() {
    _$TileKey _$result;
    try {
      _$result =
          _$v ??
          _$TileKey._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TileKey', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'TileKey',
              'name',
            ),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
              keyPrefix,
              r'TileKey',
              'keyPrefix',
            ),
            prefixes: prefixes.build(),
            restrictions: _restrictions?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'TileKey',
              'createdAt',
            ),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'TileKey',
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
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TileKey',
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
