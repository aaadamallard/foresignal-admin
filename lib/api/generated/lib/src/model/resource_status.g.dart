// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceStatus extends ResourceStatus {
  @override
  final String status;
  @override
  final ResourceGauge disk;
  @override
  final ResourceGauge? memory;
  @override
  final ResourceStatusDatabase? database;
  @override
  final BuiltList<String>? warnings;
  @override
  final DateTime checkedAt;

  factory _$ResourceStatus([void Function(ResourceStatusBuilder)? updates]) =>
      (ResourceStatusBuilder()..update(updates))._build();

  _$ResourceStatus._({
    required this.status,
    required this.disk,
    this.memory,
    this.database,
    this.warnings,
    required this.checkedAt,
  }) : super._();
  @override
  ResourceStatus rebuild(void Function(ResourceStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceStatusBuilder toBuilder() => ResourceStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceStatus &&
        status == other.status &&
        disk == other.disk &&
        memory == other.memory &&
        database == other.database &&
        warnings == other.warnings &&
        checkedAt == other.checkedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, disk.hashCode);
    _$hash = $jc(_$hash, memory.hashCode);
    _$hash = $jc(_$hash, database.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, checkedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceStatus')
          ..add('status', status)
          ..add('disk', disk)
          ..add('memory', memory)
          ..add('database', database)
          ..add('warnings', warnings)
          ..add('checkedAt', checkedAt))
        .toString();
  }
}

class ResourceStatusBuilder
    implements Builder<ResourceStatus, ResourceStatusBuilder> {
  _$ResourceStatus? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ResourceGaugeBuilder? _disk;
  ResourceGaugeBuilder get disk => _$this._disk ??= ResourceGaugeBuilder();
  set disk(ResourceGaugeBuilder? disk) => _$this._disk = disk;

  ResourceGaugeBuilder? _memory;
  ResourceGaugeBuilder get memory => _$this._memory ??= ResourceGaugeBuilder();
  set memory(ResourceGaugeBuilder? memory) => _$this._memory = memory;

  ResourceStatusDatabaseBuilder? _database;
  ResourceStatusDatabaseBuilder get database =>
      _$this._database ??= ResourceStatusDatabaseBuilder();
  set database(ResourceStatusDatabaseBuilder? database) =>
      _$this._database = database;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  DateTime? _checkedAt;
  DateTime? get checkedAt => _$this._checkedAt;
  set checkedAt(DateTime? checkedAt) => _$this._checkedAt = checkedAt;

  ResourceStatusBuilder() {
    ResourceStatus._defaults(this);
  }

  ResourceStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _disk = $v.disk.toBuilder();
      _memory = $v.memory?.toBuilder();
      _database = $v.database?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _checkedAt = $v.checkedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceStatus other) {
    _$v = other as _$ResourceStatus;
  }

  @override
  void update(void Function(ResourceStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceStatus build() => _build();

  _$ResourceStatus _build() {
    _$ResourceStatus _$result;
    try {
      _$result =
          _$v ??
          _$ResourceStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ResourceStatus',
              'status',
            ),
            disk: disk.build(),
            memory: _memory?.build(),
            database: _database?.build(),
            warnings: _warnings?.build(),
            checkedAt: BuiltValueNullFieldError.checkNotNull(
              checkedAt,
              r'ResourceStatus',
              'checkedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disk';
        disk.build();
        _$failedField = 'memory';
        _memory?.build();
        _$failedField = 'database';
        _database?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ResourceStatus',
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
