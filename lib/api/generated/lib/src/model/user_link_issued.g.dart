// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_link_issued.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLinkIssued extends UserLinkIssued {
  @override
  final String kind;
  @override
  final bool emailed;
  @override
  final String? token;
  @override
  final String tokenPrefix;
  @override
  final DateTime expiresAt;

  factory _$UserLinkIssued([void Function(UserLinkIssuedBuilder)? updates]) =>
      (UserLinkIssuedBuilder()..update(updates))._build();

  _$UserLinkIssued._({
    required this.kind,
    required this.emailed,
    this.token,
    required this.tokenPrefix,
    required this.expiresAt,
  }) : super._();
  @override
  UserLinkIssued rebuild(void Function(UserLinkIssuedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLinkIssuedBuilder toBuilder() => UserLinkIssuedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLinkIssued &&
        kind == other.kind &&
        emailed == other.emailed &&
        token == other.token &&
        tokenPrefix == other.tokenPrefix &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, emailed.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, tokenPrefix.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLinkIssued')
          ..add('kind', kind)
          ..add('emailed', emailed)
          ..add('token', token)
          ..add('tokenPrefix', tokenPrefix)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class UserLinkIssuedBuilder
    implements Builder<UserLinkIssued, UserLinkIssuedBuilder> {
  _$UserLinkIssued? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  bool? _emailed;
  bool? get emailed => _$this._emailed;
  set emailed(bool? emailed) => _$this._emailed = emailed;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _tokenPrefix;
  String? get tokenPrefix => _$this._tokenPrefix;
  set tokenPrefix(String? tokenPrefix) => _$this._tokenPrefix = tokenPrefix;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  UserLinkIssuedBuilder() {
    UserLinkIssued._defaults(this);
  }

  UserLinkIssuedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _emailed = $v.emailed;
      _token = $v.token;
      _tokenPrefix = $v.tokenPrefix;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLinkIssued other) {
    _$v = other as _$UserLinkIssued;
  }

  @override
  void update(void Function(UserLinkIssuedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLinkIssued build() => _build();

  _$UserLinkIssued _build() {
    final _$result =
        _$v ??
        _$UserLinkIssued._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'UserLinkIssued',
            'kind',
          ),
          emailed: BuiltValueNullFieldError.checkNotNull(
            emailed,
            r'UserLinkIssued',
            'emailed',
          ),
          token: token,
          tokenPrefix: BuiltValueNullFieldError.checkNotNull(
            tokenPrefix,
            r'UserLinkIssued',
            'tokenPrefix',
          ),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
            expiresAt,
            r'UserLinkIssued',
            'expiresAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
