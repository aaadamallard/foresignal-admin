// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordReset extends PasswordReset {
  @override
  final String token;
  @override
  final String newPassword;

  factory _$PasswordReset([void Function(PasswordResetBuilder)? updates]) =>
      (PasswordResetBuilder()..update(updates))._build();

  _$PasswordReset._({required this.token, required this.newPassword})
    : super._();
  @override
  PasswordReset rebuild(void Function(PasswordResetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordResetBuilder toBuilder() => PasswordResetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordReset &&
        token == other.token &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PasswordReset')
          ..add('token', token)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class PasswordResetBuilder
    implements Builder<PasswordReset, PasswordResetBuilder> {
  _$PasswordReset? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  PasswordResetBuilder() {
    PasswordReset._defaults(this);
  }

  PasswordResetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordReset other) {
    _$v = other as _$PasswordReset;
  }

  @override
  void update(void Function(PasswordResetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordReset build() => _build();

  _$PasswordReset _build() {
    final _$result =
        _$v ??
        _$PasswordReset._(
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'PasswordReset',
            'token',
          ),
          newPassword: BuiltValueNullFieldError.checkNotNull(
            newPassword,
            r'PasswordReset',
            'newPassword',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
