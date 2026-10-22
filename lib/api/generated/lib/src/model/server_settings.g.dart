// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSettings extends ServerSettings {
  @override
  final String publicBaseUrl;
  @override
  final String? timezone;
  @override
  final ClientLinks? clientLinks;
  @override
  final BuiltList<SettingsWarning>? warnings;
  @override
  final PushSettings? push;
  @override
  final String? contactEmail;

  factory _$ServerSettings([void Function(ServerSettingsBuilder)? updates]) =>
      (ServerSettingsBuilder()..update(updates))._build();

  _$ServerSettings._({
    required this.publicBaseUrl,
    this.timezone,
    this.clientLinks,
    this.warnings,
    this.push,
    this.contactEmail,
  }) : super._();
  @override
  ServerSettings rebuild(void Function(ServerSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSettingsBuilder toBuilder() => ServerSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSettings &&
        publicBaseUrl == other.publicBaseUrl &&
        timezone == other.timezone &&
        clientLinks == other.clientLinks &&
        warnings == other.warnings &&
        push == other.push &&
        contactEmail == other.contactEmail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicBaseUrl.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, clientLinks.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, push.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServerSettings')
          ..add('publicBaseUrl', publicBaseUrl)
          ..add('timezone', timezone)
          ..add('clientLinks', clientLinks)
          ..add('warnings', warnings)
          ..add('push', push)
          ..add('contactEmail', contactEmail))
        .toString();
  }
}

class ServerSettingsBuilder
    implements Builder<ServerSettings, ServerSettingsBuilder> {
  _$ServerSettings? _$v;

  String? _publicBaseUrl;
  String? get publicBaseUrl => _$this._publicBaseUrl;
  set publicBaseUrl(String? publicBaseUrl) =>
      _$this._publicBaseUrl = publicBaseUrl;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  ClientLinksBuilder? _clientLinks;
  ClientLinksBuilder get clientLinks =>
      _$this._clientLinks ??= ClientLinksBuilder();
  set clientLinks(ClientLinksBuilder? clientLinks) =>
      _$this._clientLinks = clientLinks;

  ListBuilder<SettingsWarning>? _warnings;
  ListBuilder<SettingsWarning> get warnings =>
      _$this._warnings ??= ListBuilder<SettingsWarning>();
  set warnings(ListBuilder<SettingsWarning>? warnings) =>
      _$this._warnings = warnings;

  PushSettingsBuilder? _push;
  PushSettingsBuilder get push => _$this._push ??= PushSettingsBuilder();
  set push(PushSettingsBuilder? push) => _$this._push = push;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  ServerSettingsBuilder() {
    ServerSettings._defaults(this);
  }

  ServerSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicBaseUrl = $v.publicBaseUrl;
      _timezone = $v.timezone;
      _clientLinks = $v.clientLinks?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _push = $v.push?.toBuilder();
      _contactEmail = $v.contactEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSettings other) {
    _$v = other as _$ServerSettings;
  }

  @override
  void update(void Function(ServerSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSettings build() => _build();

  _$ServerSettings _build() {
    _$ServerSettings _$result;
    try {
      _$result =
          _$v ??
          _$ServerSettings._(
            publicBaseUrl: BuiltValueNullFieldError.checkNotNull(
              publicBaseUrl,
              r'ServerSettings',
              'publicBaseUrl',
            ),
            timezone: timezone,
            clientLinks: _clientLinks?.build(),
            warnings: _warnings?.build(),
            push: _push?.build(),
            contactEmail: contactEmail,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientLinks';
        _clientLinks?.build();
        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'push';
        _push?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ServerSettings',
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
