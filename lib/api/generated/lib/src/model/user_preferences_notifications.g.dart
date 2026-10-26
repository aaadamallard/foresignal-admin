// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_notifications.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPreferencesNotifications extends UserPreferencesNotifications {
  @override
  final bool? emailEnabled;
  @override
  final bool? pushEnabled;
  @override
  final String? quietHours;

  factory _$UserPreferencesNotifications([
    void Function(UserPreferencesNotificationsBuilder)? updates,
  ]) => (UserPreferencesNotificationsBuilder()..update(updates))._build();

  _$UserPreferencesNotifications._({
    this.emailEnabled,
    this.pushEnabled,
    this.quietHours,
  }) : super._();
  @override
  UserPreferencesNotifications rebuild(
    void Function(UserPreferencesNotificationsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserPreferencesNotificationsBuilder toBuilder() =>
      UserPreferencesNotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPreferencesNotifications &&
        emailEnabled == other.emailEnabled &&
        pushEnabled == other.pushEnabled &&
        quietHours == other.quietHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, emailEnabled.hashCode);
    _$hash = $jc(_$hash, pushEnabled.hashCode);
    _$hash = $jc(_$hash, quietHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPreferencesNotifications')
          ..add('emailEnabled', emailEnabled)
          ..add('pushEnabled', pushEnabled)
          ..add('quietHours', quietHours))
        .toString();
  }
}

class UserPreferencesNotificationsBuilder
    implements
        Builder<
          UserPreferencesNotifications,
          UserPreferencesNotificationsBuilder
        > {
  _$UserPreferencesNotifications? _$v;

  bool? _emailEnabled;
  bool? get emailEnabled => _$this._emailEnabled;
  set emailEnabled(bool? emailEnabled) => _$this._emailEnabled = emailEnabled;

  bool? _pushEnabled;
  bool? get pushEnabled => _$this._pushEnabled;
  set pushEnabled(bool? pushEnabled) => _$this._pushEnabled = pushEnabled;

  String? _quietHours;
  String? get quietHours => _$this._quietHours;
  set quietHours(String? quietHours) => _$this._quietHours = quietHours;

  UserPreferencesNotificationsBuilder() {
    UserPreferencesNotifications._defaults(this);
  }

  UserPreferencesNotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emailEnabled = $v.emailEnabled;
      _pushEnabled = $v.pushEnabled;
      _quietHours = $v.quietHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPreferencesNotifications other) {
    _$v = other as _$UserPreferencesNotifications;
  }

  @override
  void update(void Function(UserPreferencesNotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPreferencesNotifications build() => _build();

  _$UserPreferencesNotifications _build() {
    final _$result =
        _$v ??
        _$UserPreferencesNotifications._(
          emailEnabled: emailEnabled,
          pushEnabled: pushEnabled,
          quietHours: quietHours,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
