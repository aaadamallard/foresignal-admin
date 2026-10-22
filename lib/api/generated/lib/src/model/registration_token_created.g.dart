// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_token_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationTokenCreated extends RegistrationTokenCreated {
  @override
  final String id;
  @override
  final String name;
  @override
  final String prefix;
  @override
  final DateTime? expiresAt;
  @override
  final int maxUses;
  @override
  final int uses;
  @override
  final String? sourceIdPrefix;
  @override
  final DateTime createdAt;
  @override
  final String token;

  factory _$RegistrationTokenCreated([
    void Function(RegistrationTokenCreatedBuilder)? updates,
  ]) => (RegistrationTokenCreatedBuilder()..update(updates))._build();

  _$RegistrationTokenCreated._({
    required this.id,
    required this.name,
    required this.prefix,
    this.expiresAt,
    required this.maxUses,
    required this.uses,
    this.sourceIdPrefix,
    required this.createdAt,
    required this.token,
  }) : super._();
  @override
  RegistrationTokenCreated rebuild(
    void Function(RegistrationTokenCreatedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegistrationTokenCreatedBuilder toBuilder() =>
      RegistrationTokenCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationTokenCreated &&
        id == other.id &&
        name == other.name &&
        prefix == other.prefix &&
        expiresAt == other.expiresAt &&
        maxUses == other.maxUses &&
        uses == other.uses &&
        sourceIdPrefix == other.sourceIdPrefix &&
        createdAt == other.createdAt &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, maxUses.hashCode);
    _$hash = $jc(_$hash, uses.hashCode);
    _$hash = $jc(_$hash, sourceIdPrefix.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationTokenCreated')
          ..add('id', id)
          ..add('name', name)
          ..add('prefix', prefix)
          ..add('expiresAt', expiresAt)
          ..add('maxUses', maxUses)
          ..add('uses', uses)
          ..add('sourceIdPrefix', sourceIdPrefix)
          ..add('createdAt', createdAt)
          ..add('token', token))
        .toString();
  }
}

class RegistrationTokenCreatedBuilder
    implements
        Builder<RegistrationTokenCreated, RegistrationTokenCreatedBuilder> {
  _$RegistrationTokenCreated? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  int? _maxUses;
  int? get maxUses => _$this._maxUses;
  set maxUses(int? maxUses) => _$this._maxUses = maxUses;

  int? _uses;
  int? get uses => _$this._uses;
  set uses(int? uses) => _$this._uses = uses;

  String? _sourceIdPrefix;
  String? get sourceIdPrefix => _$this._sourceIdPrefix;
  set sourceIdPrefix(String? sourceIdPrefix) =>
      _$this._sourceIdPrefix = sourceIdPrefix;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  RegistrationTokenCreatedBuilder() {
    RegistrationTokenCreated._defaults(this);
  }

  RegistrationTokenCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _prefix = $v.prefix;
      _expiresAt = $v.expiresAt;
      _maxUses = $v.maxUses;
      _uses = $v.uses;
      _sourceIdPrefix = $v.sourceIdPrefix;
      _createdAt = $v.createdAt;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationTokenCreated other) {
    _$v = other as _$RegistrationTokenCreated;
  }

  @override
  void update(void Function(RegistrationTokenCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationTokenCreated build() => _build();

  _$RegistrationTokenCreated _build() {
    final _$result =
        _$v ??
        _$RegistrationTokenCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'RegistrationTokenCreated',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'RegistrationTokenCreated',
            'name',
          ),
          prefix: BuiltValueNullFieldError.checkNotNull(
            prefix,
            r'RegistrationTokenCreated',
            'prefix',
          ),
          expiresAt: expiresAt,
          maxUses: BuiltValueNullFieldError.checkNotNull(
            maxUses,
            r'RegistrationTokenCreated',
            'maxUses',
          ),
          uses: BuiltValueNullFieldError.checkNotNull(
            uses,
            r'RegistrationTokenCreated',
            'uses',
          ),
          sourceIdPrefix: sourceIdPrefix,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'RegistrationTokenCreated',
            'createdAt',
          ),
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'RegistrationTokenCreated',
            'token',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
