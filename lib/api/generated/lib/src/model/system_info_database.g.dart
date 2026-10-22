// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_database.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemInfoDatabaseStatusEnum _$systemInfoDatabaseStatusEnum_up =
    const SystemInfoDatabaseStatusEnum._('up');
const SystemInfoDatabaseStatusEnum _$systemInfoDatabaseStatusEnum_down =
    const SystemInfoDatabaseStatusEnum._('down');

SystemInfoDatabaseStatusEnum _$systemInfoDatabaseStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'up':
      return _$systemInfoDatabaseStatusEnum_up;
    case 'down':
      return _$systemInfoDatabaseStatusEnum_down;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SystemInfoDatabaseStatusEnum>
    _$systemInfoDatabaseStatusEnumValues =
    BuiltSet<SystemInfoDatabaseStatusEnum>(const <SystemInfoDatabaseStatusEnum>[
  _$systemInfoDatabaseStatusEnum_up,
  _$systemInfoDatabaseStatusEnum_down,
]);

Serializer<SystemInfoDatabaseStatusEnum>
    _$systemInfoDatabaseStatusEnumSerializer =
    _$SystemInfoDatabaseStatusEnumSerializer();

class _$SystemInfoDatabaseStatusEnumSerializer
    implements PrimitiveSerializer<SystemInfoDatabaseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'up': 'up',
    'down': 'down',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'up': 'up',
    'down': 'down',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemInfoDatabaseStatusEnum];
  @override
  final String wireName = 'SystemInfoDatabaseStatusEnum';

  @override
  Object serialize(Serializers serializers, SystemInfoDatabaseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SystemInfoDatabaseStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SystemInfoDatabaseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SystemInfoDatabase extends SystemInfoDatabase {
  @override
  final SystemInfoDatabaseStatusEnum? status;
  @override
  final int? sizeBytes;
  @override
  final String? postgisVersion;

  factory _$SystemInfoDatabase(
          [void Function(SystemInfoDatabaseBuilder)? updates]) =>
      (SystemInfoDatabaseBuilder()..update(updates))._build();

  _$SystemInfoDatabase._({this.status, this.sizeBytes, this.postgisVersion})
      : super._();
  @override
  SystemInfoDatabase rebuild(
          void Function(SystemInfoDatabaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoDatabaseBuilder toBuilder() =>
      SystemInfoDatabaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoDatabase &&
        status == other.status &&
        sizeBytes == other.sizeBytes &&
        postgisVersion == other.postgisVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, postgisVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoDatabase')
          ..add('status', status)
          ..add('sizeBytes', sizeBytes)
          ..add('postgisVersion', postgisVersion))
        .toString();
  }
}

class SystemInfoDatabaseBuilder
    implements Builder<SystemInfoDatabase, SystemInfoDatabaseBuilder> {
  _$SystemInfoDatabase? _$v;

  SystemInfoDatabaseStatusEnum? _status;
  SystemInfoDatabaseStatusEnum? get status => _$this._status;
  set status(SystemInfoDatabaseStatusEnum? status) => _$this._status = status;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  String? _postgisVersion;
  String? get postgisVersion => _$this._postgisVersion;
  set postgisVersion(String? postgisVersion) =>
      _$this._postgisVersion = postgisVersion;

  SystemInfoDatabaseBuilder() {
    SystemInfoDatabase._defaults(this);
  }

  SystemInfoDatabaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _sizeBytes = $v.sizeBytes;
      _postgisVersion = $v.postgisVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoDatabase other) {
    _$v = other as _$SystemInfoDatabase;
  }

  @override
  void update(void Function(SystemInfoDatabaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoDatabase build() => _build();

  _$SystemInfoDatabase _build() {
    final _$result = _$v ??
        _$SystemInfoDatabase._(
          status: status,
          sizeBytes: sizeBytes,
          postgisVersion: postgisVersion,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
