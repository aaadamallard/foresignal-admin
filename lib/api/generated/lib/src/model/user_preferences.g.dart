// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPreferences extends UserPreferences {
  @override
  final String? timezone;
  @override
  final String? locale;
  @override
  final String? theme;
  @override
  final UserPreferencesNotifications? notifications;
  @override
  final BuiltMap<String, JsonObject?>? ui;

  factory _$UserPreferences([void Function(UserPreferencesBuilder)? updates]) =>
      (UserPreferencesBuilder()..update(updates))._build();

  _$UserPreferences._({
    this.timezone,
    this.locale,
    this.theme,
    this.notifications,
    this.ui,
  }) : super._();
  @override
  UserPreferences rebuild(void Function(UserPreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPreferencesBuilder toBuilder() => UserPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPreferences &&
        timezone == other.timezone &&
        locale == other.locale &&
        theme == other.theme &&
        notifications == other.notifications &&
        ui == other.ui;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jc(_$hash, ui.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPreferences')
          ..add('timezone', timezone)
          ..add('locale', locale)
          ..add('theme', theme)
          ..add('notifications', notifications)
          ..add('ui', ui))
        .toString();
  }
}

class UserPreferencesBuilder
    implements Builder<UserPreferences, UserPreferencesBuilder> {
  _$UserPreferences? _$v;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  UserPreferencesNotificationsBuilder? _notifications;
  UserPreferencesNotificationsBuilder get notifications =>
      _$this._notifications ??= UserPreferencesNotificationsBuilder();
  set notifications(UserPreferencesNotificationsBuilder? notifications) =>
      _$this._notifications = notifications;

  MapBuilder<String, JsonObject?>? _ui;
  MapBuilder<String, JsonObject?> get ui =>
      _$this._ui ??= MapBuilder<String, JsonObject?>();
  set ui(MapBuilder<String, JsonObject?>? ui) => _$this._ui = ui;

  UserPreferencesBuilder() {
    UserPreferences._defaults(this);
  }

  UserPreferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timezone = $v.timezone;
      _locale = $v.locale;
      _theme = $v.theme;
      _notifications = $v.notifications?.toBuilder();
      _ui = $v.ui?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPreferences other) {
    _$v = other as _$UserPreferences;
  }

  @override
  void update(void Function(UserPreferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPreferences build() => _build();

  _$UserPreferences _build() {
    _$UserPreferences _$result;
    try {
      _$result =
          _$v ??
          _$UserPreferences._(
            timezone: timezone,
            locale: locale,
            theme: theme,
            notifications: _notifications?.build(),
            ui: _ui?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifications';
        _notifications?.build();
        _$failedField = 'ui';
        _ui?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserPreferences',
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
