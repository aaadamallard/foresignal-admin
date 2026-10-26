// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreate extends UserCreate {
  @override
  final String email;
  @override
  final String fullName;
  @override
  final BuiltList<String> roles;
  @override
  final bool? sendInvite;

  factory _$UserCreate([void Function(UserCreateBuilder)? updates]) =>
      (UserCreateBuilder()..update(updates))._build();

  _$UserCreate._({
    required this.email,
    required this.fullName,
    required this.roles,
    this.sendInvite,
  }) : super._();
  @override
  UserCreate rebuild(void Function(UserCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreateBuilder toBuilder() => UserCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreate &&
        email == other.email &&
        fullName == other.fullName &&
        roles == other.roles &&
        sendInvite == other.sendInvite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, sendInvite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCreate')
          ..add('email', email)
          ..add('fullName', fullName)
          ..add('roles', roles)
          ..add('sendInvite', sendInvite))
        .toString();
  }
}

class UserCreateBuilder implements Builder<UserCreate, UserCreateBuilder> {
  _$UserCreate? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  bool? _sendInvite;
  bool? get sendInvite => _$this._sendInvite;
  set sendInvite(bool? sendInvite) => _$this._sendInvite = sendInvite;

  UserCreateBuilder() {
    UserCreate._defaults(this);
  }

  UserCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _fullName = $v.fullName;
      _roles = $v.roles.toBuilder();
      _sendInvite = $v.sendInvite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCreate other) {
    _$v = other as _$UserCreate;
  }

  @override
  void update(void Function(UserCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreate build() => _build();

  _$UserCreate _build() {
    _$UserCreate _$result;
    try {
      _$result =
          _$v ??
          _$UserCreate._(
            email: BuiltValueNullFieldError.checkNotNull(
              email,
              r'UserCreate',
              'email',
            ),
            fullName: BuiltValueNullFieldError.checkNotNull(
              fullName,
              r'UserCreate',
              'fullName',
            ),
            roles: roles.build(),
            sendInvite: sendInvite,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserCreate',
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
