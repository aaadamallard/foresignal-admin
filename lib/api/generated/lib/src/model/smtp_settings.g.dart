// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smtp_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmtpSettings extends SmtpSettings {
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
  final String? fromAddress;
  @override
  final String? fromName;
  @override
  final BuiltList<String>? secretsSet;

  factory _$SmtpSettings([void Function(SmtpSettingsBuilder)? updates]) =>
      (SmtpSettingsBuilder()..update(updates))._build();

  _$SmtpSettings._({
    required this.enabled,
    this.host,
    this.port,
    this.security,
    this.username,
    this.fromAddress,
    this.fromName,
    this.secretsSet,
  }) : super._();
  @override
  SmtpSettings rebuild(void Function(SmtpSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmtpSettingsBuilder toBuilder() => SmtpSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmtpSettings &&
        enabled == other.enabled &&
        host == other.host &&
        port == other.port &&
        security == other.security &&
        username == other.username &&
        fromAddress == other.fromAddress &&
        fromName == other.fromName &&
        secretsSet == other.secretsSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, security.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, fromAddress.hashCode);
    _$hash = $jc(_$hash, fromName.hashCode);
    _$hash = $jc(_$hash, secretsSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmtpSettings')
          ..add('enabled', enabled)
          ..add('host', host)
          ..add('port', port)
          ..add('security', security)
          ..add('username', username)
          ..add('fromAddress', fromAddress)
          ..add('fromName', fromName)
          ..add('secretsSet', secretsSet))
        .toString();
  }
}

class SmtpSettingsBuilder
    implements Builder<SmtpSettings, SmtpSettingsBuilder> {
  _$SmtpSettings? _$v;

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

  String? _fromAddress;
  String? get fromAddress => _$this._fromAddress;
  set fromAddress(String? fromAddress) => _$this._fromAddress = fromAddress;

  String? _fromName;
  String? get fromName => _$this._fromName;
  set fromName(String? fromName) => _$this._fromName = fromName;

  ListBuilder<String>? _secretsSet;
  ListBuilder<String> get secretsSet =>
      _$this._secretsSet ??= ListBuilder<String>();
  set secretsSet(ListBuilder<String>? secretsSet) =>
      _$this._secretsSet = secretsSet;

  SmtpSettingsBuilder() {
    SmtpSettings._defaults(this);
  }

  SmtpSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _host = $v.host;
      _port = $v.port;
      _security = $v.security;
      _username = $v.username;
      _fromAddress = $v.fromAddress;
      _fromName = $v.fromName;
      _secretsSet = $v.secretsSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmtpSettings other) {
    _$v = other as _$SmtpSettings;
  }

  @override
  void update(void Function(SmtpSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmtpSettings build() => _build();

  _$SmtpSettings _build() {
    _$SmtpSettings _$result;
    try {
      _$result =
          _$v ??
          _$SmtpSettings._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'SmtpSettings',
              'enabled',
            ),
            host: host,
            port: port,
            security: security,
            username: username,
            fromAddress: fromAddress,
            fromName: fromName,
            secretsSet: _secretsSet?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'secretsSet';
        _secretsSet?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SmtpSettings',
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
