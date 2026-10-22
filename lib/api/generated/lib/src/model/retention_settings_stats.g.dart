// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_settings_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionSettingsStats extends RetentionSettingsStats {
  @override
  final String? hourly;
  @override
  final String? daily;
  @override
  final String? regionHourly;
  @override
  final String? regionDaily;

  factory _$RetentionSettingsStats([
    void Function(RetentionSettingsStatsBuilder)? updates,
  ]) => (RetentionSettingsStatsBuilder()..update(updates))._build();

  _$RetentionSettingsStats._({
    this.hourly,
    this.daily,
    this.regionHourly,
    this.regionDaily,
  }) : super._();
  @override
  RetentionSettingsStats rebuild(
    void Function(RetentionSettingsStatsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RetentionSettingsStatsBuilder toBuilder() =>
      RetentionSettingsStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionSettingsStats &&
        hourly == other.hourly &&
        daily == other.daily &&
        regionHourly == other.regionHourly &&
        regionDaily == other.regionDaily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hourly.hashCode);
    _$hash = $jc(_$hash, daily.hashCode);
    _$hash = $jc(_$hash, regionHourly.hashCode);
    _$hash = $jc(_$hash, regionDaily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionSettingsStats')
          ..add('hourly', hourly)
          ..add('daily', daily)
          ..add('regionHourly', regionHourly)
          ..add('regionDaily', regionDaily))
        .toString();
  }
}

class RetentionSettingsStatsBuilder
    implements Builder<RetentionSettingsStats, RetentionSettingsStatsBuilder> {
  _$RetentionSettingsStats? _$v;

  String? _hourly;
  String? get hourly => _$this._hourly;
  set hourly(String? hourly) => _$this._hourly = hourly;

  String? _daily;
  String? get daily => _$this._daily;
  set daily(String? daily) => _$this._daily = daily;

  String? _regionHourly;
  String? get regionHourly => _$this._regionHourly;
  set regionHourly(String? regionHourly) => _$this._regionHourly = regionHourly;

  String? _regionDaily;
  String? get regionDaily => _$this._regionDaily;
  set regionDaily(String? regionDaily) => _$this._regionDaily = regionDaily;

  RetentionSettingsStatsBuilder() {
    RetentionSettingsStats._defaults(this);
  }

  RetentionSettingsStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hourly = $v.hourly;
      _daily = $v.daily;
      _regionHourly = $v.regionHourly;
      _regionDaily = $v.regionDaily;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionSettingsStats other) {
    _$v = other as _$RetentionSettingsStats;
  }

  @override
  void update(void Function(RetentionSettingsStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionSettingsStats build() => _build();

  _$RetentionSettingsStats _build() {
    final _$result =
        _$v ??
        _$RetentionSettingsStats._(
          hourly: hourly,
          daily: daily,
          regionHourly: regionHourly,
          regionDaily: regionDaily,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
