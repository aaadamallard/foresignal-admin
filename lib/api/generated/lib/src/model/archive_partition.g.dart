// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_partition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ArchivePartitionTierEnum _$archivePartitionTierEnum_std =
    const ArchivePartitionTierEnum._('std');
const ArchivePartitionTierEnum _$archivePartitionTierEnum_trk =
    const ArchivePartitionTierEnum._('trk');

ArchivePartitionTierEnum _$archivePartitionTierEnumValueOf(String name) {
  switch (name) {
    case 'std':
      return _$archivePartitionTierEnum_std;
    case 'trk':
      return _$archivePartitionTierEnum_trk;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ArchivePartitionTierEnum> _$archivePartitionTierEnumValues =
    BuiltSet<ArchivePartitionTierEnum>(const <ArchivePartitionTierEnum>[
  _$archivePartitionTierEnum_std,
  _$archivePartitionTierEnum_trk,
]);

Serializer<ArchivePartitionTierEnum> _$archivePartitionTierEnumSerializer =
    _$ArchivePartitionTierEnumSerializer();

class _$ArchivePartitionTierEnumSerializer
    implements PrimitiveSerializer<ArchivePartitionTierEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'std': 'std',
    'trk': 'trk',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'std': 'std',
    'trk': 'trk',
  };

  @override
  final Iterable<Type> types = const <Type>[ArchivePartitionTierEnum];
  @override
  final String wireName = 'ArchivePartitionTierEnum';

  @override
  Object serialize(Serializers serializers, ArchivePartitionTierEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ArchivePartitionTierEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ArchivePartitionTierEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ArchivePartition extends ArchivePartition {
  @override
  final ArchivePartitionTierEnum tier;
  @override
  final String sourceId;
  @override
  final Date date;
  @override
  final String path;
  @override
  final BuiltList<ArchivePartitionFilesInner> files;
  @override
  final ExportLicenceSummary? licence;

  factory _$ArchivePartition(
          [void Function(ArchivePartitionBuilder)? updates]) =>
      (ArchivePartitionBuilder()..update(updates))._build();

  _$ArchivePartition._(
      {required this.tier,
      required this.sourceId,
      required this.date,
      required this.path,
      required this.files,
      this.licence})
      : super._();
  @override
  ArchivePartition rebuild(void Function(ArchivePartitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchivePartitionBuilder toBuilder() =>
      ArchivePartitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchivePartition &&
        tier == other.tier &&
        sourceId == other.sourceId &&
        date == other.date &&
        path == other.path &&
        files == other.files &&
        licence == other.licence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchivePartition')
          ..add('tier', tier)
          ..add('sourceId', sourceId)
          ..add('date', date)
          ..add('path', path)
          ..add('files', files)
          ..add('licence', licence))
        .toString();
  }
}

class ArchivePartitionBuilder
    implements Builder<ArchivePartition, ArchivePartitionBuilder> {
  _$ArchivePartition? _$v;

  ArchivePartitionTierEnum? _tier;
  ArchivePartitionTierEnum? get tier => _$this._tier;
  set tier(ArchivePartitionTierEnum? tier) => _$this._tier = tier;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ListBuilder<ArchivePartitionFilesInner>? _files;
  ListBuilder<ArchivePartitionFilesInner> get files =>
      _$this._files ??= ListBuilder<ArchivePartitionFilesInner>();
  set files(ListBuilder<ArchivePartitionFilesInner>? files) =>
      _$this._files = files;

  ExportLicenceSummaryBuilder? _licence;
  ExportLicenceSummaryBuilder get licence =>
      _$this._licence ??= ExportLicenceSummaryBuilder();
  set licence(ExportLicenceSummaryBuilder? licence) =>
      _$this._licence = licence;

  ArchivePartitionBuilder() {
    ArchivePartition._defaults(this);
  }

  ArchivePartitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tier = $v.tier;
      _sourceId = $v.sourceId;
      _date = $v.date;
      _path = $v.path;
      _files = $v.files.toBuilder();
      _licence = $v.licence?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchivePartition other) {
    _$v = other as _$ArchivePartition;
  }

  @override
  void update(void Function(ArchivePartitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchivePartition build() => _build();

  _$ArchivePartition _build() {
    _$ArchivePartition _$result;
    try {
      _$result = _$v ??
          _$ArchivePartition._(
            tier: BuiltValueNullFieldError.checkNotNull(
                tier, r'ArchivePartition', 'tier'),
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'ArchivePartition', 'sourceId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'ArchivePartition', 'date'),
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'ArchivePartition', 'path'),
            files: files.build(),
            licence: _licence?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
        _$failedField = 'licence';
        _licence?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ArchivePartition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
