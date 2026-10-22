// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_archive.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemInfoArchiveTargetEnum _$systemInfoArchiveTargetEnum_local =
    const SystemInfoArchiveTargetEnum._('local');
const SystemInfoArchiveTargetEnum _$systemInfoArchiveTargetEnum_s3 =
    const SystemInfoArchiveTargetEnum._('s3');

SystemInfoArchiveTargetEnum _$systemInfoArchiveTargetEnumValueOf(String name) {
  switch (name) {
    case 'local':
      return _$systemInfoArchiveTargetEnum_local;
    case 's3':
      return _$systemInfoArchiveTargetEnum_s3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SystemInfoArchiveTargetEnum>
_$systemInfoArchiveTargetEnumValues = BuiltSet<SystemInfoArchiveTargetEnum>(
  const <SystemInfoArchiveTargetEnum>[
    _$systemInfoArchiveTargetEnum_local,
    _$systemInfoArchiveTargetEnum_s3,
  ],
);

Serializer<SystemInfoArchiveTargetEnum>
_$systemInfoArchiveTargetEnumSerializer =
    _$SystemInfoArchiveTargetEnumSerializer();

class _$SystemInfoArchiveTargetEnumSerializer
    implements PrimitiveSerializer<SystemInfoArchiveTargetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'local': 'local',
    's3': 's3',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'local': 'local',
    's3': 's3',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemInfoArchiveTargetEnum];
  @override
  final String wireName = 'SystemInfoArchiveTargetEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoArchiveTargetEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemInfoArchiveTargetEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemInfoArchiveTargetEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemInfoArchive extends SystemInfoArchive {
  @override
  final bool? enabled;
  @override
  final DateTime? lastRunAt;
  @override
  final int? bytes;
  @override
  final int? failures;
  @override
  final SystemInfoArchiveTargetEnum? target;
  @override
  final int? lastRunBytes;
  @override
  final int? lastRunFailures;
  @override
  final DateTime? lastFailureAt;

  factory _$SystemInfoArchive([
    void Function(SystemInfoArchiveBuilder)? updates,
  ]) => (SystemInfoArchiveBuilder()..update(updates))._build();

  _$SystemInfoArchive._({
    this.enabled,
    this.lastRunAt,
    this.bytes,
    this.failures,
    this.target,
    this.lastRunBytes,
    this.lastRunFailures,
    this.lastFailureAt,
  }) : super._();
  @override
  SystemInfoArchive rebuild(void Function(SystemInfoArchiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoArchiveBuilder toBuilder() =>
      SystemInfoArchiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoArchive &&
        enabled == other.enabled &&
        lastRunAt == other.lastRunAt &&
        bytes == other.bytes &&
        failures == other.failures &&
        target == other.target &&
        lastRunBytes == other.lastRunBytes &&
        lastRunFailures == other.lastRunFailures &&
        lastFailureAt == other.lastFailureAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, failures.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, lastRunBytes.hashCode);
    _$hash = $jc(_$hash, lastRunFailures.hashCode);
    _$hash = $jc(_$hash, lastFailureAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoArchive')
          ..add('enabled', enabled)
          ..add('lastRunAt', lastRunAt)
          ..add('bytes', bytes)
          ..add('failures', failures)
          ..add('target', target)
          ..add('lastRunBytes', lastRunBytes)
          ..add('lastRunFailures', lastRunFailures)
          ..add('lastFailureAt', lastFailureAt))
        .toString();
  }
}

class SystemInfoArchiveBuilder
    implements Builder<SystemInfoArchive, SystemInfoArchiveBuilder> {
  _$SystemInfoArchive? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  int? _failures;
  int? get failures => _$this._failures;
  set failures(int? failures) => _$this._failures = failures;

  SystemInfoArchiveTargetEnum? _target;
  SystemInfoArchiveTargetEnum? get target => _$this._target;
  set target(SystemInfoArchiveTargetEnum? target) => _$this._target = target;

  int? _lastRunBytes;
  int? get lastRunBytes => _$this._lastRunBytes;
  set lastRunBytes(int? lastRunBytes) => _$this._lastRunBytes = lastRunBytes;

  int? _lastRunFailures;
  int? get lastRunFailures => _$this._lastRunFailures;
  set lastRunFailures(int? lastRunFailures) =>
      _$this._lastRunFailures = lastRunFailures;

  DateTime? _lastFailureAt;
  DateTime? get lastFailureAt => _$this._lastFailureAt;
  set lastFailureAt(DateTime? lastFailureAt) =>
      _$this._lastFailureAt = lastFailureAt;

  SystemInfoArchiveBuilder() {
    SystemInfoArchive._defaults(this);
  }

  SystemInfoArchiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _lastRunAt = $v.lastRunAt;
      _bytes = $v.bytes;
      _failures = $v.failures;
      _target = $v.target;
      _lastRunBytes = $v.lastRunBytes;
      _lastRunFailures = $v.lastRunFailures;
      _lastFailureAt = $v.lastFailureAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoArchive other) {
    _$v = other as _$SystemInfoArchive;
  }

  @override
  void update(void Function(SystemInfoArchiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoArchive build() => _build();

  _$SystemInfoArchive _build() {
    final _$result =
        _$v ??
        _$SystemInfoArchive._(
          enabled: enabled,
          lastRunAt: lastRunAt,
          bytes: bytes,
          failures: failures,
          target: target,
          lastRunBytes: lastRunBytes,
          lastRunFailures: lastRunFailures,
          lastFailureAt: lastFailureAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
