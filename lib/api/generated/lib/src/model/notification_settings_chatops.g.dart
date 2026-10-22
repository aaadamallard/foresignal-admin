// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_chatops.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationSettingsChatops extends NotificationSettingsChatops {
  @override
  final bool? enabled;

  factory _$NotificationSettingsChatops([
    void Function(NotificationSettingsChatopsBuilder)? updates,
  ]) => (NotificationSettingsChatopsBuilder()..update(updates))._build();

  _$NotificationSettingsChatops._({this.enabled}) : super._();
  @override
  NotificationSettingsChatops rebuild(
    void Function(NotificationSettingsChatopsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationSettingsChatopsBuilder toBuilder() =>
      NotificationSettingsChatopsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationSettingsChatops && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'NotificationSettingsChatops',
    )..add('enabled', enabled)).toString();
  }
}

class NotificationSettingsChatopsBuilder
    implements
        Builder<
          NotificationSettingsChatops,
          NotificationSettingsChatopsBuilder
        > {
  _$NotificationSettingsChatops? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  NotificationSettingsChatopsBuilder() {
    NotificationSettingsChatops._defaults(this);
  }

  NotificationSettingsChatopsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationSettingsChatops other) {
    _$v = other as _$NotificationSettingsChatops;
  }

  @override
  void update(void Function(NotificationSettingsChatopsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationSettingsChatops build() => _build();

  _$NotificationSettingsChatops _build() {
    final _$result = _$v ?? _$NotificationSettingsChatops._(enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
