// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionToken extends SessionToken {
  @override
  final String token;
  @override
  final String? tokenPrefix;
  @override
  final String userId;
  @override
  final DateTime? issuedAt;
  @override
  final DateTime expiresAt;
  @override
  final DateTime? idleExpiresAt;
  @override
  final bool? mfaRequired;
  @override
  final BuiltList<String>? scopes;
  @override
  final BuiltList<String>? permissions;

  factory _$SessionToken([void Function(SessionTokenBuilder)? updates]) =>
      (SessionTokenBuilder()..update(updates))._build();

  _$SessionToken._({
    required this.token,
    this.tokenPrefix,
    required this.userId,
    this.issuedAt,
    required this.expiresAt,
    this.idleExpiresAt,
    this.mfaRequired,
    this.scopes,
    this.permissions,
  }) : super._();
  @override
  SessionToken rebuild(void Function(SessionTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionTokenBuilder toBuilder() => SessionTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionToken &&
        token == other.token &&
        tokenPrefix == other.tokenPrefix &&
        userId == other.userId &&
        issuedAt == other.issuedAt &&
        expiresAt == other.expiresAt &&
        idleExpiresAt == other.idleExpiresAt &&
        mfaRequired == other.mfaRequired &&
        scopes == other.scopes &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, tokenPrefix.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, issuedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, idleExpiresAt.hashCode);
    _$hash = $jc(_$hash, mfaRequired.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionToken')
          ..add('token', token)
          ..add('tokenPrefix', tokenPrefix)
          ..add('userId', userId)
          ..add('issuedAt', issuedAt)
          ..add('expiresAt', expiresAt)
          ..add('idleExpiresAt', idleExpiresAt)
          ..add('mfaRequired', mfaRequired)
          ..add('scopes', scopes)
          ..add('permissions', permissions))
        .toString();
  }
}

class SessionTokenBuilder
    implements Builder<SessionToken, SessionTokenBuilder> {
  _$SessionToken? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _tokenPrefix;
  String? get tokenPrefix => _$this._tokenPrefix;
  set tokenPrefix(String? tokenPrefix) => _$this._tokenPrefix = tokenPrefix;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DateTime? _issuedAt;
  DateTime? get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime? issuedAt) => _$this._issuedAt = issuedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _idleExpiresAt;
  DateTime? get idleExpiresAt => _$this._idleExpiresAt;
  set idleExpiresAt(DateTime? idleExpiresAt) =>
      _$this._idleExpiresAt = idleExpiresAt;

  bool? _mfaRequired;
  bool? get mfaRequired => _$this._mfaRequired;
  set mfaRequired(bool? mfaRequired) => _$this._mfaRequired = mfaRequired;

  ListBuilder<String>? _scopes;
  ListBuilder<String> get scopes => _$this._scopes ??= ListBuilder<String>();
  set scopes(ListBuilder<String>? scopes) => _$this._scopes = scopes;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  SessionTokenBuilder() {
    SessionToken._defaults(this);
  }

  SessionTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _tokenPrefix = $v.tokenPrefix;
      _userId = $v.userId;
      _issuedAt = $v.issuedAt;
      _expiresAt = $v.expiresAt;
      _idleExpiresAt = $v.idleExpiresAt;
      _mfaRequired = $v.mfaRequired;
      _scopes = $v.scopes?.toBuilder();
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionToken other) {
    _$v = other as _$SessionToken;
  }

  @override
  void update(void Function(SessionTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionToken build() => _build();

  _$SessionToken _build() {
    _$SessionToken _$result;
    try {
      _$result =
          _$v ??
          _$SessionToken._(
            token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'SessionToken',
              'token',
            ),
            tokenPrefix: tokenPrefix,
            userId: BuiltValueNullFieldError.checkNotNull(
              userId,
              r'SessionToken',
              'userId',
            ),
            issuedAt: issuedAt,
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'SessionToken',
              'expiresAt',
            ),
            idleExpiresAt: idleExpiresAt,
            mfaRequired: mfaRequired,
            scopes: _scopes?.build(),
            permissions: _permissions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scopes';
        _scopes?.build();
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SessionToken',
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
