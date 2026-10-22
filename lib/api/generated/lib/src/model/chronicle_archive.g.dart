// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_archive.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleArchiveStateEnum _$chronicleArchiveStateEnum_pending =
    const ChronicleArchiveStateEnum._('pending');
const ChronicleArchiveStateEnum _$chronicleArchiveStateEnum_archived =
    const ChronicleArchiveStateEnum._('archived');
const ChronicleArchiveStateEnum _$chronicleArchiveStateEnum_restoring =
    const ChronicleArchiveStateEnum._('restoring');
const ChronicleArchiveStateEnum _$chronicleArchiveStateEnum_failed =
    const ChronicleArchiveStateEnum._('failed');

ChronicleArchiveStateEnum _$chronicleArchiveStateEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$chronicleArchiveStateEnum_pending;
    case 'archived':
      return _$chronicleArchiveStateEnum_archived;
    case 'restoring':
      return _$chronicleArchiveStateEnum_restoring;
    case 'failed':
      return _$chronicleArchiveStateEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleArchiveStateEnum> _$chronicleArchiveStateEnumValues =
    BuiltSet<ChronicleArchiveStateEnum>(const <ChronicleArchiveStateEnum>[
  _$chronicleArchiveStateEnum_pending,
  _$chronicleArchiveStateEnum_archived,
  _$chronicleArchiveStateEnum_restoring,
  _$chronicleArchiveStateEnum_failed,
]);

Serializer<ChronicleArchiveStateEnum> _$chronicleArchiveStateEnumSerializer =
    _$ChronicleArchiveStateEnumSerializer();

class _$ChronicleArchiveStateEnumSerializer
    implements PrimitiveSerializer<ChronicleArchiveStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'archived': 'archived',
    'restoring': 'restoring',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'archived': 'archived',
    'restoring': 'restoring',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleArchiveStateEnum];
  @override
  final String wireName = 'ChronicleArchiveStateEnum';

  @override
  Object serialize(Serializers serializers, ChronicleArchiveStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleArchiveStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleArchiveStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleArchive extends ChronicleArchive {
  @override
  final ChronicleArchiveStateEnum state;
  @override
  final String? exportId;
  @override
  final DateTime? archivedAt;
  @override
  final int? bytes;
  @override
  final String? error;

  factory _$ChronicleArchive(
          [void Function(ChronicleArchiveBuilder)? updates]) =>
      (ChronicleArchiveBuilder()..update(updates))._build();

  _$ChronicleArchive._(
      {required this.state,
      this.exportId,
      this.archivedAt,
      this.bytes,
      this.error})
      : super._();
  @override
  ChronicleArchive rebuild(void Function(ChronicleArchiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleArchiveBuilder toBuilder() =>
      ChronicleArchiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleArchive &&
        state == other.state &&
        exportId == other.exportId &&
        archivedAt == other.archivedAt &&
        bytes == other.bytes &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, exportId.hashCode);
    _$hash = $jc(_$hash, archivedAt.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleArchive')
          ..add('state', state)
          ..add('exportId', exportId)
          ..add('archivedAt', archivedAt)
          ..add('bytes', bytes)
          ..add('error', error))
        .toString();
  }
}

class ChronicleArchiveBuilder
    implements Builder<ChronicleArchive, ChronicleArchiveBuilder> {
  _$ChronicleArchive? _$v;

  ChronicleArchiveStateEnum? _state;
  ChronicleArchiveStateEnum? get state => _$this._state;
  set state(ChronicleArchiveStateEnum? state) => _$this._state = state;

  String? _exportId;
  String? get exportId => _$this._exportId;
  set exportId(String? exportId) => _$this._exportId = exportId;

  DateTime? _archivedAt;
  DateTime? get archivedAt => _$this._archivedAt;
  set archivedAt(DateTime? archivedAt) => _$this._archivedAt = archivedAt;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ChronicleArchiveBuilder() {
    ChronicleArchive._defaults(this);
  }

  ChronicleArchiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _exportId = $v.exportId;
      _archivedAt = $v.archivedAt;
      _bytes = $v.bytes;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleArchive other) {
    _$v = other as _$ChronicleArchive;
  }

  @override
  void update(void Function(ChronicleArchiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleArchive build() => _build();

  _$ChronicleArchive _build() {
    final _$result = _$v ??
        _$ChronicleArchive._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'ChronicleArchive', 'state'),
          exportId: exportId,
          archivedAt: archivedAt,
          bytes: bytes,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
