// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchdog_settings_canary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchdogSettingsCanary extends WatchdogSettingsCanary {
  @override
  final bool? enabled;
  @override
  final String? interval;

  factory _$WatchdogSettingsCanary([
    void Function(WatchdogSettingsCanaryBuilder)? updates,
  ]) => (WatchdogSettingsCanaryBuilder()..update(updates))._build();

  _$WatchdogSettingsCanary._({this.enabled, this.interval}) : super._();
  @override
  WatchdogSettingsCanary rebuild(
    void Function(WatchdogSettingsCanaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WatchdogSettingsCanaryBuilder toBuilder() =>
      WatchdogSettingsCanaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchdogSettingsCanary &&
        enabled == other.enabled &&
        interval == other.interval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchdogSettingsCanary')
          ..add('enabled', enabled)
          ..add('interval', interval))
        .toString();
  }
}

class WatchdogSettingsCanaryBuilder
    implements Builder<WatchdogSettingsCanary, WatchdogSettingsCanaryBuilder> {
  _$WatchdogSettingsCanary? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  WatchdogSettingsCanaryBuilder() {
    WatchdogSettingsCanary._defaults(this);
  }

  WatchdogSettingsCanaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _interval = $v.interval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchdogSettingsCanary other) {
    _$v = other as _$WatchdogSettingsCanary;
  }

  @override
  void update(void Function(WatchdogSettingsCanaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchdogSettingsCanary build() => _build();

  _$WatchdogSettingsCanary _build() {
    final _$result =
        _$v ?? _$WatchdogSettingsCanary._(enabled: enabled, interval: interval);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
