// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_ingest_writer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemInfoIngestWriterStateEnum
    _$systemInfoIngestWriterStateEnum_RUNNING =
    const SystemInfoIngestWriterStateEnum._('RUNNING');
const SystemInfoIngestWriterStateEnum
    _$systemInfoIngestWriterStateEnum_CLOCK_BEHIND =
    const SystemInfoIngestWriterStateEnum._('CLOCK_BEHIND');
const SystemInfoIngestWriterStateEnum
    _$systemInfoIngestWriterStateEnum_LOCK_LOST =
    const SystemInfoIngestWriterStateEnum._('LOCK_LOST');
const SystemInfoIngestWriterStateEnum
    _$systemInfoIngestWriterStateEnum_STOPPED =
    const SystemInfoIngestWriterStateEnum._('STOPPED');

SystemInfoIngestWriterStateEnum _$systemInfoIngestWriterStateEnumValueOf(
    String name) {
  switch (name) {
    case 'RUNNING':
      return _$systemInfoIngestWriterStateEnum_RUNNING;
    case 'CLOCK_BEHIND':
      return _$systemInfoIngestWriterStateEnum_CLOCK_BEHIND;
    case 'LOCK_LOST':
      return _$systemInfoIngestWriterStateEnum_LOCK_LOST;
    case 'STOPPED':
      return _$systemInfoIngestWriterStateEnum_STOPPED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SystemInfoIngestWriterStateEnum>
    _$systemInfoIngestWriterStateEnumValues = BuiltSet<
        SystemInfoIngestWriterStateEnum>(const <SystemInfoIngestWriterStateEnum>[
  _$systemInfoIngestWriterStateEnum_RUNNING,
  _$systemInfoIngestWriterStateEnum_CLOCK_BEHIND,
  _$systemInfoIngestWriterStateEnum_LOCK_LOST,
  _$systemInfoIngestWriterStateEnum_STOPPED,
]);

Serializer<SystemInfoIngestWriterStateEnum>
    _$systemInfoIngestWriterStateEnumSerializer =
    _$SystemInfoIngestWriterStateEnumSerializer();

class _$SystemInfoIngestWriterStateEnumSerializer
    implements PrimitiveSerializer<SystemInfoIngestWriterStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RUNNING': 'RUNNING',
    'CLOCK_BEHIND': 'CLOCK_BEHIND',
    'LOCK_LOST': 'LOCK_LOST',
    'STOPPED': 'STOPPED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RUNNING': 'RUNNING',
    'CLOCK_BEHIND': 'CLOCK_BEHIND',
    'LOCK_LOST': 'LOCK_LOST',
    'STOPPED': 'STOPPED',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemInfoIngestWriterStateEnum];
  @override
  final String wireName = 'SystemInfoIngestWriterStateEnum';

  @override
  Object serialize(
          Serializers serializers, SystemInfoIngestWriterStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SystemInfoIngestWriterStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SystemInfoIngestWriterStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SystemInfoIngestWriter extends SystemInfoIngestWriter {
  @override
  final SystemInfoIngestWriterStateEnum? state;
  @override
  final BuiltList<String>? warnings;
  @override
  final int? lastSeq;
  @override
  final DateTime? lastIngestedAt;
  @override
  final int? queueDepth;

  factory _$SystemInfoIngestWriter(
          [void Function(SystemInfoIngestWriterBuilder)? updates]) =>
      (SystemInfoIngestWriterBuilder()..update(updates))._build();

  _$SystemInfoIngestWriter._(
      {this.state,
      this.warnings,
      this.lastSeq,
      this.lastIngestedAt,
      this.queueDepth})
      : super._();
  @override
  SystemInfoIngestWriter rebuild(
          void Function(SystemInfoIngestWriterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoIngestWriterBuilder toBuilder() =>
      SystemInfoIngestWriterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoIngestWriter &&
        state == other.state &&
        warnings == other.warnings &&
        lastSeq == other.lastSeq &&
        lastIngestedAt == other.lastIngestedAt &&
        queueDepth == other.queueDepth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, lastIngestedAt.hashCode);
    _$hash = $jc(_$hash, queueDepth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoIngestWriter')
          ..add('state', state)
          ..add('warnings', warnings)
          ..add('lastSeq', lastSeq)
          ..add('lastIngestedAt', lastIngestedAt)
          ..add('queueDepth', queueDepth))
        .toString();
  }
}

class SystemInfoIngestWriterBuilder
    implements Builder<SystemInfoIngestWriter, SystemInfoIngestWriterBuilder> {
  _$SystemInfoIngestWriter? _$v;

  SystemInfoIngestWriterStateEnum? _state;
  SystemInfoIngestWriterStateEnum? get state => _$this._state;
  set state(SystemInfoIngestWriterStateEnum? state) => _$this._state = state;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  DateTime? _lastIngestedAt;
  DateTime? get lastIngestedAt => _$this._lastIngestedAt;
  set lastIngestedAt(DateTime? lastIngestedAt) =>
      _$this._lastIngestedAt = lastIngestedAt;

  int? _queueDepth;
  int? get queueDepth => _$this._queueDepth;
  set queueDepth(int? queueDepth) => _$this._queueDepth = queueDepth;

  SystemInfoIngestWriterBuilder() {
    SystemInfoIngestWriter._defaults(this);
  }

  SystemInfoIngestWriterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _warnings = $v.warnings?.toBuilder();
      _lastSeq = $v.lastSeq;
      _lastIngestedAt = $v.lastIngestedAt;
      _queueDepth = $v.queueDepth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoIngestWriter other) {
    _$v = other as _$SystemInfoIngestWriter;
  }

  @override
  void update(void Function(SystemInfoIngestWriterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoIngestWriter build() => _build();

  _$SystemInfoIngestWriter _build() {
    _$SystemInfoIngestWriter _$result;
    try {
      _$result = _$v ??
          _$SystemInfoIngestWriter._(
            state: state,
            warnings: _warnings?.build(),
            lastSeq: lastSeq,
            lastIngestedAt: lastIngestedAt,
            queueDepth: queueDepth,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SystemInfoIngestWriter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
