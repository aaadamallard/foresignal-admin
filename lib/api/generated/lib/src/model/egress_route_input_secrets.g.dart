// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_route_input_secrets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressRouteInputSecrets extends EgressRouteInputSecrets {
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? wireguardConfig;

  factory _$EgressRouteInputSecrets([
    void Function(EgressRouteInputSecretsBuilder)? updates,
  ]) => (EgressRouteInputSecretsBuilder()..update(updates))._build();

  _$EgressRouteInputSecrets._({
    this.username,
    this.password,
    this.wireguardConfig,
  }) : super._();
  @override
  EgressRouteInputSecrets rebuild(
    void Function(EgressRouteInputSecretsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EgressRouteInputSecretsBuilder toBuilder() =>
      EgressRouteInputSecretsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressRouteInputSecrets &&
        username == other.username &&
        password == other.password &&
        wireguardConfig == other.wireguardConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, wireguardConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressRouteInputSecrets')
          ..add('username', username)
          ..add('password', password)
          ..add('wireguardConfig', wireguardConfig))
        .toString();
  }
}

class EgressRouteInputSecretsBuilder
    implements
        Builder<EgressRouteInputSecrets, EgressRouteInputSecretsBuilder> {
  _$EgressRouteInputSecrets? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _wireguardConfig;
  String? get wireguardConfig => _$this._wireguardConfig;
  set wireguardConfig(String? wireguardConfig) =>
      _$this._wireguardConfig = wireguardConfig;

  EgressRouteInputSecretsBuilder() {
    EgressRouteInputSecrets._defaults(this);
  }

  EgressRouteInputSecretsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _wireguardConfig = $v.wireguardConfig;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressRouteInputSecrets other) {
    _$v = other as _$EgressRouteInputSecrets;
  }

  @override
  void update(void Function(EgressRouteInputSecretsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressRouteInputSecrets build() => _build();

  _$EgressRouteInputSecrets _build() {
    final _$result =
        _$v ??
        _$EgressRouteInputSecrets._(
          username: username,
          password: password,
          wireguardConfig: wireguardConfig,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
