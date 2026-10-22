// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_badge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationBadge extends NotificationBadge {
  @override
  final int unread;
  @override
  final int unreadCritical;
  @override
  final int? latestId;

  factory _$NotificationBadge([
    void Function(NotificationBadgeBuilder)? updates,
  ]) => (NotificationBadgeBuilder()..update(updates))._build();

  _$NotificationBadge._({
    required this.unread,
    required this.unreadCritical,
    this.latestId,
  }) : super._();
  @override
  NotificationBadge rebuild(void Function(NotificationBadgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBadgeBuilder toBuilder() =>
      NotificationBadgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationBadge &&
        unread == other.unread &&
        unreadCritical == other.unreadCritical &&
        latestId == other.latestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unread.hashCode);
    _$hash = $jc(_$hash, unreadCritical.hashCode);
    _$hash = $jc(_$hash, latestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationBadge')
          ..add('unread', unread)
          ..add('unreadCritical', unreadCritical)
          ..add('latestId', latestId))
        .toString();
  }
}

class NotificationBadgeBuilder
    implements Builder<NotificationBadge, NotificationBadgeBuilder> {
  _$NotificationBadge? _$v;

  int? _unread;
  int? get unread => _$this._unread;
  set unread(int? unread) => _$this._unread = unread;

  int? _unreadCritical;
  int? get unreadCritical => _$this._unreadCritical;
  set unreadCritical(int? unreadCritical) =>
      _$this._unreadCritical = unreadCritical;

  int? _latestId;
  int? get latestId => _$this._latestId;
  set latestId(int? latestId) => _$this._latestId = latestId;

  NotificationBadgeBuilder() {
    NotificationBadge._defaults(this);
  }

  NotificationBadgeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unread = $v.unread;
      _unreadCritical = $v.unreadCritical;
      _latestId = $v.latestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationBadge other) {
    _$v = other as _$NotificationBadge;
  }

  @override
  void update(void Function(NotificationBadgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationBadge build() => _build();

  _$NotificationBadge _build() {
    final _$result =
        _$v ??
        _$NotificationBadge._(
          unread: BuiltValueNullFieldError.checkNotNull(
            unread,
            r'NotificationBadge',
            'unread',
          ),
          unreadCritical: BuiltValueNullFieldError.checkNotNull(
            unreadCritical,
            r'NotificationBadge',
            'unreadCritical',
          ),
          latestId: latestId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
