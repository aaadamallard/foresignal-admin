// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smtp_settings_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmtpSettingsInput extends SmtpSettingsInput {
  @override
  final bool enabled;
  @override
  final String? host;
  @override
  final int? port;
  @override
  final String? security;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? fromAddress;
  @override
  final String? fromName;

  factory _$SmtpSettingsInput([
    void Function(SmtpSettingsInputBuilder)? updates,
  ]) => (SmtpSettingsInputBuilder()..update(updates))._build();

  _$SmtpSettingsInput._({
    required this.enabled,
    this.host,
    this.port,
    this.security,
    this.username,
    this.password,
    this.fromAddress,
    this.fromName,
  }) : super._();
  @override
  SmtpSettingsInput rebuild(void Function(SmtpSettingsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmtpSettingsInputBuilder toBuilder() =>
      SmtpSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmtpSettingsInput &&
        enabled == other.enabled &&
        host == other.host &&
        port == other.port &&
        security == other.security &&
        username == other.username &&
        password == other.password &&
        fromAddress == other.fromAddress &&
        fromName == other.fromName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, security.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fromAddress.hashCode);
    _$hash = $jc(_$hash, fromName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmtpSettingsInput')
          ..add('enabled', enabled)
          ..add('host', host)
          ..add('port', port)
          ..add('security', security)
          ..add('username', username)
          ..add('password', password)
          ..add('fromAddress', fromAddress)
          ..add('fromName', fromName))
        .toString();
  }
}

class SmtpSettingsInputBuilder
    implements Builder<SmtpSettingsInput, SmtpSettingsInputBuilder> {
  _$SmtpSettingsInput? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  String? _security;
  String? get security => _$this._security;
  set security(String? security) => _$this._security = security;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _fromAddress;
  String? get fromAddress => _$this._fromAddress;
  set fromAddress(String? fromAddress) => _$this._fromAddress = fromAddress;

  String? _fromName;
  String? get fromName => _$this._fromName;
  set fromName(String? fromName) => _$this._fromName = fromName;

  SmtpSettingsInputBuilder() {
    SmtpSettingsInput._defaults(this);
  }

  SmtpSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _host = $v.host;
      _port = $v.port;
      _security = $v.security;
      _username = $v.username;
      _password = $v.password;
      _fromAddress = $v.fromAddress;
      _fromName = $v.fromName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmtpSettingsInput other) {
    _$v = other as _$SmtpSettingsInput;
  }

  @override
  void update(void Function(SmtpSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmtpSettingsInput build() => _build();

  _$SmtpSettingsInput _build() {
    final _$result =
        _$v ??
        _$SmtpSettingsInput._(
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'SmtpSettingsInput',
            'enabled',
          ),
          host: host,
          port: port,
          security: security,
          username: username,
          password: password,
          fromAddress: fromAddress,
          fromName: fromName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
