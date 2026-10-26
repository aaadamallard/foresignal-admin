// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_files_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ArchiveFilesInnerTierEnum _$archiveFilesInnerTierEnum_standard =
    const ArchiveFilesInnerTierEnum._('standard');
const ArchiveFilesInnerTierEnum _$archiveFilesInnerTierEnum_track =
    const ArchiveFilesInnerTierEnum._('track');
const ArchiveFilesInnerTierEnum
_$archiveFilesInnerTierEnum_unknownDefaultOpenApi =
    const ArchiveFilesInnerTierEnum._('unknownDefaultOpenApi');

ArchiveFilesInnerTierEnum _$archiveFilesInnerTierEnumValueOf(String name) {
  switch (name) {
    case 'standard':
      return _$archiveFilesInnerTierEnum_standard;
    case 'track':
      return _$archiveFilesInnerTierEnum_track;
    case 'unknownDefaultOpenApi':
      return _$archiveFilesInnerTierEnum_unknownDefaultOpenApi;
    default:
      return _$archiveFilesInnerTierEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ArchiveFilesInnerTierEnum> _$archiveFilesInnerTierEnumValues =
    BuiltSet<ArchiveFilesInnerTierEnum>(const <ArchiveFilesInnerTierEnum>[
      _$archiveFilesInnerTierEnum_standard,
      _$archiveFilesInnerTierEnum_track,
      _$archiveFilesInnerTierEnum_unknownDefaultOpenApi,
    ]);

Serializer<ArchiveFilesInnerTierEnum> _$archiveFilesInnerTierEnumSerializer =
    _$ArchiveFilesInnerTierEnumSerializer();

class _$ArchiveFilesInnerTierEnumSerializer
    implements PrimitiveSerializer<ArchiveFilesInnerTierEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'standard': 'standard',
    'track': 'track',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'standard': 'standard',
    'track': 'track',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ArchiveFilesInnerTierEnum];
  @override
  final String wireName = 'ArchiveFilesInnerTierEnum';

  @override
  Object serialize(
    Serializers serializers,
    ArchiveFilesInnerTierEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ArchiveFilesInnerTierEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ArchiveFilesInnerTierEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ArchiveFilesInner extends ArchiveFilesInner {
  @override
  final String? name;
  @override
  final String? sourceId;
  @override
  final ArchiveFilesInnerTierEnum? tier;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final DateTime? fromTime;
  @override
  final DateTime? toTime;
  @override
  final int? rows;
  @override
  final int? bytes;
  @override
  final String? sha256;
  @override
  final String? location;

  factory _$ArchiveFilesInner([
    void Function(ArchiveFilesInnerBuilder)? updates,
  ]) => (ArchiveFilesInnerBuilder()..update(updates))._build();

  _$ArchiveFilesInner._({
    this.name,
    this.sourceId,
    this.tier,
    this.fromSeq,
    this.toSeq,
    this.fromTime,
    this.toTime,
    this.rows,
    this.bytes,
    this.sha256,
    this.location,
  }) : super._();
  @override
  ArchiveFilesInner rebuild(void Function(ArchiveFilesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveFilesInnerBuilder toBuilder() =>
      ArchiveFilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveFilesInner &&
        name == other.name &&
        sourceId == other.sourceId &&
        tier == other.tier &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        fromTime == other.fromTime &&
        toTime == other.toTime &&
        rows == other.rows &&
        bytes == other.bytes &&
        sha256 == other.sha256 &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, fromTime.hashCode);
    _$hash = $jc(_$hash, toTime.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchiveFilesInner')
          ..add('name', name)
          ..add('sourceId', sourceId)
          ..add('tier', tier)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('fromTime', fromTime)
          ..add('toTime', toTime)
          ..add('rows', rows)
          ..add('bytes', bytes)
          ..add('sha256', sha256)
          ..add('location', location))
        .toString();
  }
}

class ArchiveFilesInnerBuilder
    implements Builder<ArchiveFilesInner, ArchiveFilesInnerBuilder> {
  _$ArchiveFilesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  ArchiveFilesInnerTierEnum? _tier;
  ArchiveFilesInnerTierEnum? get tier => _$this._tier;
  set tier(ArchiveFilesInnerTierEnum? tier) => _$this._tier = tier;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  DateTime? _fromTime;
  DateTime? get fromTime => _$this._fromTime;
  set fromTime(DateTime? fromTime) => _$this._fromTime = fromTime;

  DateTime? _toTime;
  DateTime? get toTime => _$this._toTime;
  set toTime(DateTime? toTime) => _$this._toTime = toTime;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ArchiveFilesInnerBuilder() {
    ArchiveFilesInner._defaults(this);
  }

  ArchiveFilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _sourceId = $v.sourceId;
      _tier = $v.tier;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _fromTime = $v.fromTime;
      _toTime = $v.toTime;
      _rows = $v.rows;
      _bytes = $v.bytes;
      _sha256 = $v.sha256;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveFilesInner other) {
    _$v = other as _$ArchiveFilesInner;
  }

  @override
  void update(void Function(ArchiveFilesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveFilesInner build() => _build();

  _$ArchiveFilesInner _build() {
    final _$result =
        _$v ??
        _$ArchiveFilesInner._(
          name: name,
          sourceId: sourceId,
          tier: tier,
          fromSeq: fromSeq,
          toSeq: toSeq,
          fromTime: fromTime,
          toTime: toTime,
          rows: rows,
          bytes: bytes,
          sha256: sha256,
          location: location,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
