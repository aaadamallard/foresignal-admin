// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PluginSettings extends PluginSettings {
  @override
  final bool enabled;

  factory _$PluginSettings([void Function(PluginSettingsBuilder)? updates]) =>
      (PluginSettingsBuilder()..update(updates))._build();

  _$PluginSettings._({required this.enabled}) : super._();
  @override
  PluginSettings rebuild(void Function(PluginSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PluginSettingsBuilder toBuilder() => PluginSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PluginSettings && enabled == other.enabled;
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
      r'PluginSettings',
    )..add('enabled', enabled)).toString();
  }
}

class PluginSettingsBuilder
    implements Builder<PluginSettings, PluginSettingsBuilder> {
  _$PluginSettings? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  PluginSettingsBuilder() {
    PluginSettings._defaults(this);
  }

  PluginSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PluginSettings other) {
    _$v = other as _$PluginSettings;
  }

  @override
  void update(void Function(PluginSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PluginSettings build() => _build();

  _$PluginSettings _build() {
    final _$result =
        _$v ??
        _$PluginSettings._(
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'PluginSettings',
            'enabled',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
