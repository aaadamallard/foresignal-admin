// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_deletion_sync.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformDeletionSync extends SocialPlatformDeletionSync {
  @override
  final bool enabled;
  @override
  final DateTime? lastRunAt;
  @override
  final int? tombstonedLast30d;

  factory _$SocialPlatformDeletionSync([
    void Function(SocialPlatformDeletionSyncBuilder)? updates,
  ]) => (SocialPlatformDeletionSyncBuilder()..update(updates))._build();

  _$SocialPlatformDeletionSync._({
    required this.enabled,
    this.lastRunAt,
    this.tombstonedLast30d,
  }) : super._();
  @override
  SocialPlatformDeletionSync rebuild(
    void Function(SocialPlatformDeletionSyncBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialPlatformDeletionSyncBuilder toBuilder() =>
      SocialPlatformDeletionSyncBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformDeletionSync &&
        enabled == other.enabled &&
        lastRunAt == other.lastRunAt &&
        tombstonedLast30d == other.tombstonedLast30d;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, tombstonedLast30d.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformDeletionSync')
          ..add('enabled', enabled)
          ..add('lastRunAt', lastRunAt)
          ..add('tombstonedLast30d', tombstonedLast30d))
        .toString();
  }
}

class SocialPlatformDeletionSyncBuilder
    implements
        Builder<SocialPlatformDeletionSync, SocialPlatformDeletionSyncBuilder> {
  _$SocialPlatformDeletionSync? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  int? _tombstonedLast30d;
  int? get tombstonedLast30d => _$this._tombstonedLast30d;
  set tombstonedLast30d(int? tombstonedLast30d) =>
      _$this._tombstonedLast30d = tombstonedLast30d;

  SocialPlatformDeletionSyncBuilder() {
    SocialPlatformDeletionSync._defaults(this);
  }

  SocialPlatformDeletionSyncBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _lastRunAt = $v.lastRunAt;
      _tombstonedLast30d = $v.tombstonedLast30d;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformDeletionSync other) {
    _$v = other as _$SocialPlatformDeletionSync;
  }

  @override
  void update(void Function(SocialPlatformDeletionSyncBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformDeletionSync build() => _build();

  _$SocialPlatformDeletionSync _build() {
    final _$result =
        _$v ??
        _$SocialPlatformDeletionSync._(
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'SocialPlatformDeletionSync',
            'enabled',
          ),
          lastRunAt: lastRunAt,
          tombstonedLast30d: tombstonedLast30d,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
