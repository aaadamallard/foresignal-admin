// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_settings_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupSettingsInput extends BackupSettingsInput {
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
  final ArchiveSettingsSecrets? secrets;

  factory _$BackupSettingsInput([
    void Function(BackupSettingsInputBuilder)? updates,
  ]) => (BackupSettingsInputBuilder()..update(updates))._build();

  _$BackupSettingsInput._({
    required this.enabled,
    this.schedule,
    required this.target,
    this.root,
    this.s3,
    this.keepBackups,
    this.secrets,
  }) : super._();
  @override
  BackupSettingsInput rebuild(
    void Function(BackupSettingsInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BackupSettingsInputBuilder toBuilder() =>
      BackupSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupSettingsInput &&
        enabled == other.enabled &&
        schedule == other.schedule &&
        target == other.target &&
        root == other.root &&
        s3 == other.s3 &&
        keepBackups == other.keepBackups &&
        secrets == other.secrets;
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
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupSettingsInput')
          ..add('enabled', enabled)
          ..add('schedule', schedule)
          ..add('target', target)
          ..add('root', root)
          ..add('s3', s3)
          ..add('keepBackups', keepBackups)
          ..add('secrets', secrets))
        .toString();
  }
}

class BackupSettingsInputBuilder
    implements Builder<BackupSettingsInput, BackupSettingsInputBuilder> {
  _$BackupSettingsInput? _$v;

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

  ArchiveSettingsSecretsBuilder? _secrets;
  ArchiveSettingsSecretsBuilder get secrets =>
      _$this._secrets ??= ArchiveSettingsSecretsBuilder();
  set secrets(ArchiveSettingsSecretsBuilder? secrets) =>
      _$this._secrets = secrets;

  BackupSettingsInputBuilder() {
    BackupSettingsInput._defaults(this);
  }

  BackupSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _schedule = $v.schedule;
      _target = $v.target;
      _root = $v.root;
      _s3 = $v.s3?.toBuilder();
      _keepBackups = $v.keepBackups;
      _secrets = $v.secrets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupSettingsInput other) {
    _$v = other as _$BackupSettingsInput;
  }

  @override
  void update(void Function(BackupSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupSettingsInput build() => _build();

  _$BackupSettingsInput _build() {
    _$BackupSettingsInput _$result;
    try {
      _$result =
          _$v ??
          _$BackupSettingsInput._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'BackupSettingsInput',
              'enabled',
            ),
            schedule: schedule,
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'BackupSettingsInput',
              'target',
            ),
            root: root,
            s3: _s3?.build(),
            keepBackups: keepBackups,
            secrets: _secrets?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();

        _$failedField = 'secrets';
        _secrets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackupSettingsInput',
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
