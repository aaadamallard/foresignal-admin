// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_activation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountActivation extends AccountActivation {
  @override
  final String token;
  @override
  final String password;

  factory _$AccountActivation([
    void Function(AccountActivationBuilder)? updates,
  ]) => (AccountActivationBuilder()..update(updates))._build();

  _$AccountActivation._({required this.token, required this.password})
    : super._();
  @override
  AccountActivation rebuild(void Function(AccountActivationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountActivationBuilder toBuilder() =>
      AccountActivationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountActivation &&
        token == other.token &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountActivation')
          ..add('token', token)
          ..add('password', password))
        .toString();
  }
}

class AccountActivationBuilder
    implements Builder<AccountActivation, AccountActivationBuilder> {
  _$AccountActivation? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AccountActivationBuilder() {
    AccountActivation._defaults(this);
  }

  AccountActivationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountActivation other) {
    _$v = other as _$AccountActivation;
  }

  @override
  void update(void Function(AccountActivationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountActivation build() => _build();

  _$AccountActivation _build() {
    final _$result =
        _$v ??
        _$AccountActivation._(
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'AccountActivation',
            'token',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'AccountActivation',
            'password',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
