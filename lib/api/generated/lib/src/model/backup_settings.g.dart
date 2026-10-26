// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupSettings extends BackupSettings {
  @override
  final bool enabled;
  @override
  final String? schedule;
  @override
  final String target;
  @override
  final String? root;
  @override
  final S3Target? s3;
  @override
  final int? keepBackups;
  @override
  final bool? includeConfig;
  @override
  final BuiltList<String>? secretsSet;
  @override
  final DateTime? lastRunAt;

  factory _$BackupSettings([void Function(BackupSettingsBuilder)? updates]) =>
      (BackupSettingsBuilder()..update(updates))._build();

  _$BackupSettings._({
    required this.enabled,
    this.schedule,
    required this.target,
    this.root,
    this.s3,
    this.keepBackups,
    this.includeConfig,
    this.secretsSet,
    this.lastRunAt,
  }) : super._();
  @override
  BackupSettings rebuild(void Function(BackupSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupSettingsBuilder toBuilder() => BackupSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupSettings &&
        enabled == other.enabled &&
        schedule == other.schedule &&
        target == other.target &&
        root == other.root &&
        s3 == other.s3 &&
        keepBackups == other.keepBackups &&
        includeConfig == other.includeConfig &&
        secretsSet == other.secretsSet &&
        lastRunAt == other.lastRunAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, root.hashCode);
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jc(_$hash, keepBackups.hashCode);
    _$hash = $jc(_$hash, includeConfig.hashCode);
    _$hash = $jc(_$hash, secretsSet.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupSettings')
          ..add('enabled', enabled)
          ..add('schedule', schedule)
          ..add('target', target)
          ..add('root', root)
          ..add('s3', s3)
          ..add('keepBackups', keepBackups)
          ..add('includeConfig', includeConfig)
          ..add('secretsSet', secretsSet)
          ..add('lastRunAt', lastRunAt))
        .toString();
  }
}

class BackupSettingsBuilder
    implements Builder<BackupSettings, BackupSettingsBuilder> {
  _$BackupSettings? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _schedule;
  String? get schedule => _$this._schedule;
  set schedule(String? schedule) => _$this._schedule = schedule;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  String? _root;
  String? get root => _$this._root;
  set root(String? root) => _$this._root = root;

  S3TargetBuilder? _s3;
  S3TargetBuilder get s3 => _$this._s3 ??= S3TargetBuilder();
  set s3(S3TargetBuilder? s3) => _$this._s3 = s3;

  int? _keepBackups;
  int? get keepBackups => _$this._keepBackups;
  set keepBackups(int? keepBackups) => _$this._keepBackups = keepBackups;

  bool? _includeConfig;
  bool? get includeConfig => _$this._includeConfig;
  set includeConfig(bool? includeConfig) =>
      _$this._includeConfig = includeConfig;

  ListBuilder<String>? _secretsSet;
  ListBuilder<String> get secretsSet =>
      _$this._secretsSet ??= ListBuilder<String>();
  set secretsSet(ListBuilder<String>? secretsSet) =>
      _$this._secretsSet = secretsSet;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  BackupSettingsBuilder() {
    BackupSettings._defaults(this);
  }

  BackupSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _schedule = $v.schedule;
      _target = $v.target;
      _root = $v.root;
      _s3 = $v.s3?.toBuilder();
      _keepBackups = $v.keepBackups;
      _includeConfig = $v.includeConfig;
      _secretsSet = $v.secretsSet?.toBuilder();
      _lastRunAt = $v.lastRunAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupSettings other) {
    _$v = other as _$BackupSettings;
  }

  @override
  void update(void Function(BackupSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupSettings build() => _build();

  _$BackupSettings _build() {
    _$BackupSettings _$result;
    try {
      _$result =
          _$v ??
          _$BackupSettings._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'BackupSettings',
              'enabled',
            ),
            schedule: schedule,
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'BackupSettings',
              'target',
            ),
            root: root,
            s3: _s3?.build(),
            keepBackups: keepBackups,
            includeConfig: includeConfig,
            secretsSet: _secretsSet?.build(),
            lastRunAt: lastRunAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();

        _$failedField = 'secretsSet';
        _secretsSet?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackupSettings',
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
