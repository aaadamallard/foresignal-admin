// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_request_admin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetupRequestAdmin extends SetupRequestAdmin {
  @override
  final String email;
  @override
  final String fullName;
  @override
  final String password;

  factory _$SetupRequestAdmin([
    void Function(SetupRequestAdminBuilder)? updates,
  ]) => (SetupRequestAdminBuilder()..update(updates))._build();

  _$SetupRequestAdmin._({
    required this.email,
    required this.fullName,
    required this.password,
  }) : super._();
  @override
  SetupRequestAdmin rebuild(void Function(SetupRequestAdminBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetupRequestAdminBuilder toBuilder() =>
      SetupRequestAdminBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetupRequestAdmin &&
        email == other.email &&
        fullName == other.fullName &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetupRequestAdmin')
          ..add('email', email)
          ..add('fullName', fullName)
          ..add('password', password))
        .toString();
  }
}

class SetupRequestAdminBuilder
    implements Builder<SetupRequestAdmin, SetupRequestAdminBuilder> {
  _$SetupRequestAdmin? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SetupRequestAdminBuilder() {
    SetupRequestAdmin._defaults(this);
  }

  SetupRequestAdminBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _fullName = $v.fullName;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetupRequestAdmin other) {
    _$v = other as _$SetupRequestAdmin;
  }

  @override
  void update(void Function(SetupRequestAdminBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetupRequestAdmin build() => _build();

  _$SetupRequestAdmin _build() {
    final _$result =
        _$v ??
        _$SetupRequestAdmin._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'SetupRequestAdmin',
            'email',
          ),
          fullName: BuiltValueNullFieldError.checkNotNull(
            fullName,
            r'SetupRequestAdmin',
            'fullName',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'SetupRequestAdmin',
            'password',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
