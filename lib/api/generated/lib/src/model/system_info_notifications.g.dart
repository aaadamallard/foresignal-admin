// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_notifications.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoNotifications extends SystemInfoNotifications {
  @override
  final int? channels;
  @override
  final int? pendingDeliveries;
  @override
  final int? failedLast24h;

  factory _$SystemInfoNotifications([
    void Function(SystemInfoNotificationsBuilder)? updates,
  ]) => (SystemInfoNotificationsBuilder()..update(updates))._build();

  _$SystemInfoNotifications._({
    this.channels,
    this.pendingDeliveries,
    this.failedLast24h,
  }) : super._();
  @override
  SystemInfoNotifications rebuild(
    void Function(SystemInfoNotificationsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemInfoNotificationsBuilder toBuilder() =>
      SystemInfoNotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoNotifications &&
        channels == other.channels &&
        pendingDeliveries == other.pendingDeliveries &&
        failedLast24h == other.failedLast24h;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, pendingDeliveries.hashCode);
    _$hash = $jc(_$hash, failedLast24h.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoNotifications')
          ..add('channels', channels)
          ..add('pendingDeliveries', pendingDeliveries)
          ..add('failedLast24h', failedLast24h))
        .toString();
  }
}

class SystemInfoNotificationsBuilder
    implements
        Builder<SystemInfoNotifications, SystemInfoNotificationsBuilder> {
  _$SystemInfoNotifications? _$v;

  int? _channels;
  int? get channels => _$this._channels;
  set channels(int? channels) => _$this._channels = channels;

  int? _pendingDeliveries;
  int? get pendingDeliveries => _$this._pendingDeliveries;
  set pendingDeliveries(int? pendingDeliveries) =>
      _$this._pendingDeliveries = pendingDeliveries;

  int? _failedLast24h;
  int? get failedLast24h => _$this._failedLast24h;
  set failedLast24h(int? failedLast24h) =>
      _$this._failedLast24h = failedLast24h;

  SystemInfoNotificationsBuilder() {
    SystemInfoNotifications._defaults(this);
  }

  SystemInfoNotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _channels = $v.channels;
      _pendingDeliveries = $v.pendingDeliveries;
      _failedLast24h = $v.failedLast24h;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoNotifications other) {
    _$v = other as _$SystemInfoNotifications;
  }

  @override
  void update(void Function(SystemInfoNotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoNotifications build() => _build();

  _$SystemInfoNotifications _build() {
    final _$result =
        _$v ??
        _$SystemInfoNotifications._(
          channels: channels,
          pendingDeliveries: pendingDeliveries,
          failedLast24h: failedLast24h,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
