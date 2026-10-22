// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SnapshotKindEnum _$snapshotKindEnum_EXPORT =
    const SnapshotKindEnum._('EXPORT');
const SnapshotKindEnum _$snapshotKindEnum_SNAPSHOT =
    const SnapshotKindEnum._('SNAPSHOT');
const SnapshotKindEnum _$snapshotKindEnum_PACK =
    const SnapshotKindEnum._('PACK');
const SnapshotKindEnum _$snapshotKindEnum_RASTER =
    const SnapshotKindEnum._('RASTER');
const SnapshotKindEnum _$snapshotKindEnum_PLACE_PACK =
    const SnapshotKindEnum._('PLACE_PACK');

SnapshotKindEnum _$snapshotKindEnumValueOf(String name) {
  switch (name) {
    case 'EXPORT':
      return _$snapshotKindEnum_EXPORT;
    case 'SNAPSHOT':
      return _$snapshotKindEnum_SNAPSHOT;
    case 'PACK':
      return _$snapshotKindEnum_PACK;
    case 'RASTER':
      return _$snapshotKindEnum_RASTER;
    case 'PLACE_PACK':
      return _$snapshotKindEnum_PLACE_PACK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SnapshotKindEnum> _$snapshotKindEnumValues =
    BuiltSet<SnapshotKindEnum>(const <SnapshotKindEnum>[
  _$snapshotKindEnum_EXPORT,
  _$snapshotKindEnum_SNAPSHOT,
  _$snapshotKindEnum_PACK,
  _$snapshotKindEnum_RASTER,
  _$snapshotKindEnum_PLACE_PACK,
]);

const SnapshotFormatEnum _$snapshotFormatEnum_geoparquet =
    const SnapshotFormatEnum._('geoparquet');
const SnapshotFormatEnum _$snapshotFormatEnum_geopackage =
    const SnapshotFormatEnum._('geopackage');
const SnapshotFormatEnum _$snapshotFormatEnum_flatgeobuf =
    const SnapshotFormatEnum._('flatgeobuf');
const SnapshotFormatEnum _$snapshotFormatEnum_gpx =
    const SnapshotFormatEnum._('gpx');
const SnapshotFormatEnum _$snapshotFormatEnum_pmtiles =
    const SnapshotFormatEnum._('pmtiles');
const SnapshotFormatEnum _$snapshotFormatEnum_mbtiles =
    const SnapshotFormatEnum._('mbtiles');
const SnapshotFormatEnum _$snapshotFormatEnum_cog =
    const SnapshotFormatEnum._('cog');
const SnapshotFormatEnum _$snapshotFormatEnum_zip =
    const SnapshotFormatEnum._('zip');
const SnapshotFormatEnum _$snapshotFormatEnum_jsonBundle =
    const SnapshotFormatEnum._('jsonBundle');

SnapshotFormatEnum _$snapshotFormatEnumValueOf(String name) {
  switch (name) {
    case 'geoparquet':
      return _$snapshotFormatEnum_geoparquet;
    case 'geopackage':
      return _$snapshotFormatEnum_geopackage;
    case 'flatgeobuf':
      return _$snapshotFormatEnum_flatgeobuf;
    case 'gpx':
      return _$snapshotFormatEnum_gpx;
    case 'pmtiles':
      return _$snapshotFormatEnum_pmtiles;
    case 'mbtiles':
      return _$snapshotFormatEnum_mbtiles;
    case 'cog':
      return _$snapshotFormatEnum_cog;
    case 'zip':
      return _$snapshotFormatEnum_zip;
    case 'jsonBundle':
      return _$snapshotFormatEnum_jsonBundle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SnapshotFormatEnum> _$snapshotFormatEnumValues =
    BuiltSet<SnapshotFormatEnum>(const <SnapshotFormatEnum>[
  _$snapshotFormatEnum_geoparquet,
  _$snapshotFormatEnum_geopackage,
  _$snapshotFormatEnum_flatgeobuf,
  _$snapshotFormatEnum_gpx,
  _$snapshotFormatEnum_pmtiles,
  _$snapshotFormatEnum_mbtiles,
  _$snapshotFormatEnum_cog,
  _$snapshotFormatEnum_zip,
  _$snapshotFormatEnum_jsonBundle,
]);

const SnapshotStatusEnum _$snapshotStatusEnum_QUEUED =
    const SnapshotStatusEnum._('QUEUED');
const SnapshotStatusEnum _$snapshotStatusEnum_RUNNING =
    const SnapshotStatusEnum._('RUNNING');
const SnapshotStatusEnum _$snapshotStatusEnum_DONE =
    const SnapshotStatusEnum._('DONE');
const SnapshotStatusEnum _$snapshotStatusEnum_FAILED =
    const SnapshotStatusEnum._('FAILED');
const SnapshotStatusEnum _$snapshotStatusEnum_CANCELLED =
    const SnapshotStatusEnum._('CANCELLED');
const SnapshotStatusEnum _$snapshotStatusEnum_EXPIRED =
    const SnapshotStatusEnum._('EXPIRED');

SnapshotStatusEnum _$snapshotStatusEnumValueOf(String name) {
  switch (name) {
    case 'QUEUED':
      return _$snapshotStatusEnum_QUEUED;
    case 'RUNNING':
      return _$snapshotStatusEnum_RUNNING;
    case 'DONE':
      return _$snapshotStatusEnum_DONE;
    case 'FAILED':
      return _$snapshotStatusEnum_FAILED;
    case 'CANCELLED':
      return _$snapshotStatusEnum_CANCELLED;
    case 'EXPIRED':
      return _$snapshotStatusEnum_EXPIRED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SnapshotStatusEnum> _$snapshotStatusEnumValues =
    BuiltSet<SnapshotStatusEnum>(const <SnapshotStatusEnum>[
  _$snapshotStatusEnum_QUEUED,
  _$snapshotStatusEnum_RUNNING,
  _$snapshotStatusEnum_DONE,
  _$snapshotStatusEnum_FAILED,
  _$snapshotStatusEnum_CANCELLED,
  _$snapshotStatusEnum_EXPIRED,
]);

Serializer<SnapshotKindEnum> _$snapshotKindEnumSerializer =
    _$SnapshotKindEnumSerializer();
Serializer<SnapshotFormatEnum> _$snapshotFormatEnumSerializer =
    _$SnapshotFormatEnumSerializer();
Serializer<SnapshotStatusEnum> _$snapshotStatusEnumSerializer =
    _$SnapshotStatusEnumSerializer();

class _$SnapshotKindEnumSerializer
    implements PrimitiveSerializer<SnapshotKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EXPORT': 'EXPORT',
    'SNAPSHOT': 'SNAPSHOT',
    'PACK': 'PACK',
    'RASTER': 'RASTER',
    'PLACE_PACK': 'PLACE_PACK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EXPORT': 'EXPORT',
    'SNAPSHOT': 'SNAPSHOT',
    'PACK': 'PACK',
    'RASTER': 'RASTER',
    'PLACE_PACK': 'PLACE_PACK',
  };

  @override
  final Iterable<Type> types = const <Type>[SnapshotKindEnum];
  @override
  final String wireName = 'SnapshotKindEnum';

  @override
  Object serialize(Serializers serializers, SnapshotKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SnapshotKindEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SnapshotKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SnapshotFormatEnumSerializer
    implements PrimitiveSerializer<SnapshotFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'geoparquet': 'geoparquet',
    'geopackage': 'geopackage',
    'flatgeobuf': 'flatgeobuf',
    'gpx': 'gpx',
    'pmtiles': 'pmtiles',
    'mbtiles': 'mbtiles',
    'cog': 'cog',
    'zip': 'zip',
    'jsonBundle': 'json-bundle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'geoparquet': 'geoparquet',
    'geopackage': 'geopackage',
    'flatgeobuf': 'flatgeobuf',
    'gpx': 'gpx',
    'pmtiles': 'pmtiles',
    'mbtiles': 'mbtiles',
    'cog': 'cog',
    'zip': 'zip',
    'json-bundle': 'jsonBundle',
  };

  @override
  final Iterable<Type> types = const <Type>[SnapshotFormatEnum];
  @override
  final String wireName = 'SnapshotFormatEnum';

  @override
  Object serialize(Serializers serializers, SnapshotFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SnapshotFormatEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SnapshotFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SnapshotStatusEnumSerializer
    implements PrimitiveSerializer<SnapshotStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'QUEUED': 'QUEUED',
    'RUNNING': 'RUNNING',
    'DONE': 'DONE',
    'FAILED': 'FAILED',
    'CANCELLED': 'CANCELLED',
    'EXPIRED': 'EXPIRED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'QUEUED': 'QUEUED',
    'RUNNING': 'RUNNING',
    'DONE': 'DONE',
    'FAILED': 'FAILED',
    'CANCELLED': 'CANCELLED',
    'EXPIRED': 'EXPIRED',
  };

  @override
  final Iterable<Type> types = const <Type>[SnapshotStatusEnum];
  @override
  final String wireName = 'SnapshotStatusEnum';

  @override
  Object serialize(Serializers serializers, SnapshotStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SnapshotStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SnapshotStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Snapshot extends Snapshot {
  @override
  final String id;
  @override
  final SnapshotKindEnum kind;
  @override
  final SnapshotFormatEnum format;
  @override
  final BuiltMap<String, JsonObject?>? spec;
  @override
  final SnapshotStatusEnum status;
  @override
  final int progress;
  @override
  final String? principal;
  @override
  final int? rowCount;
  @override
  final int? bytes;
  @override
  final String? manifestSha256;
  @override
  final ExportLicenceSummary? licenceSummary;
  @override
  final int? watermarkSeq;
  @override
  final bool? personalUse;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final DateTime? expiresAt;
  @override
  final String? error;
  @override
  final String? downloadUrl;
  @override
  final String? manifestUrl;
  @override
  final BuiltList<ExportFile>? files;
  @override
  final String? productId;
  @override
  final int atSeq;
  @override
  final DateTime? asOf;
  @override
  final String? name;
  @override
  final BuiltList<String>? heldSources;

  factory _$Snapshot([void Function(SnapshotBuilder)? updates]) =>
      (SnapshotBuilder()..update(updates))._build();

  _$Snapshot._(
      {required this.id,
      required this.kind,
      required this.format,
      this.spec,
      required this.status,
      required this.progress,
      this.principal,
      this.rowCount,
      this.bytes,
      this.manifestSha256,
      this.licenceSummary,
      this.watermarkSeq,
      this.personalUse,
      required this.createdAt,
      this.startedAt,
      this.finishedAt,
      this.expiresAt,
      this.error,
      this.downloadUrl,
      this.manifestUrl,
      this.files,
      this.productId,
      required this.atSeq,
      this.asOf,
      this.name,
      this.heldSources})
      : super._();
  @override
  Snapshot rebuild(void Function(SnapshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotBuilder toBuilder() => SnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Snapshot &&
        id == other.id &&
        kind == other.kind &&
        format == other.format &&
        spec == other.spec &&
        status == other.status &&
        progress == other.progress &&
        principal == other.principal &&
        rowCount == other.rowCount &&
        bytes == other.bytes &&
        manifestSha256 == other.manifestSha256 &&
        licenceSummary == other.licenceSummary &&
        watermarkSeq == other.watermarkSeq &&
        personalUse == other.personalUse &&
        createdAt == other.createdAt &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        expiresAt == other.expiresAt &&
        error == other.error &&
        downloadUrl == other.downloadUrl &&
        manifestUrl == other.manifestUrl &&
        files == other.files &&
        productId == other.productId &&
        atSeq == other.atSeq &&
        asOf == other.asOf &&
        name == other.name &&
        heldSources == other.heldSources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, spec.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, rowCount.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, manifestSha256.hashCode);
    _$hash = $jc(_$hash, licenceSummary.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, personalUse.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, downloadUrl.hashCode);
    _$hash = $jc(_$hash, manifestUrl.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, atSeq.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, heldSources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Snapshot')
          ..add('id', id)
          ..add('kind', kind)
          ..add('format', format)
          ..add('spec', spec)
          ..add('status', status)
          ..add('progress', progress)
          ..add('principal', principal)
          ..add('rowCount', rowCount)
          ..add('bytes', bytes)
          ..add('manifestSha256', manifestSha256)
          ..add('licenceSummary', licenceSummary)
          ..add('watermarkSeq', watermarkSeq)
          ..add('personalUse', personalUse)
          ..add('createdAt', createdAt)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('expiresAt', expiresAt)
          ..add('error', error)
          ..add('downloadUrl', downloadUrl)
          ..add('manifestUrl', manifestUrl)
          ..add('files', files)
          ..add('productId', productId)
          ..add('atSeq', atSeq)
          ..add('asOf', asOf)
          ..add('name', name)
          ..add('heldSources', heldSources))
        .toString();
  }
}

class SnapshotBuilder implements Builder<Snapshot, SnapshotBuilder> {
  _$Snapshot? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SnapshotKindEnum? _kind;
  SnapshotKindEnum? get kind => _$this._kind;
  set kind(SnapshotKindEnum? kind) => _$this._kind = kind;

  SnapshotFormatEnum? _format;
  SnapshotFormatEnum? get format => _$this._format;
  set format(SnapshotFormatEnum? format) => _$this._format = format;

  MapBuilder<String, JsonObject?>? _spec;
  MapBuilder<String, JsonObject?> get spec =>
      _$this._spec ??= MapBuilder<String, JsonObject?>();
  set spec(MapBuilder<String, JsonObject?>? spec) => _$this._spec = spec;

  SnapshotStatusEnum? _status;
  SnapshotStatusEnum? get status => _$this._status;
  set status(SnapshotStatusEnum? status) => _$this._status = status;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  int? _rowCount;
  int? get rowCount => _$this._rowCount;
  set rowCount(int? rowCount) => _$this._rowCount = rowCount;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _manifestSha256;
  String? get manifestSha256 => _$this._manifestSha256;
  set manifestSha256(String? manifestSha256) =>
      _$this._manifestSha256 = manifestSha256;

  ExportLicenceSummaryBuilder? _licenceSummary;
  ExportLicenceSummaryBuilder get licenceSummary =>
      _$this._licenceSummary ??= ExportLicenceSummaryBuilder();
  set licenceSummary(ExportLicenceSummaryBuilder? licenceSummary) =>
      _$this._licenceSummary = licenceSummary;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  bool? _personalUse;
  bool? get personalUse => _$this._personalUse;
  set personalUse(bool? personalUse) => _$this._personalUse = personalUse;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _downloadUrl;
  String? get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String? downloadUrl) => _$this._downloadUrl = downloadUrl;

  String? _manifestUrl;
  String? get manifestUrl => _$this._manifestUrl;
  set manifestUrl(String? manifestUrl) => _$this._manifestUrl = manifestUrl;

  ListBuilder<ExportFile>? _files;
  ListBuilder<ExportFile> get files =>
      _$this._files ??= ListBuilder<ExportFile>();
  set files(ListBuilder<ExportFile>? files) => _$this._files = files;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  int? _atSeq;
  int? get atSeq => _$this._atSeq;
  set atSeq(int? atSeq) => _$this._atSeq = atSeq;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _heldSources;
  ListBuilder<String> get heldSources =>
      _$this._heldSources ??= ListBuilder<String>();
  set heldSources(ListBuilder<String>? heldSources) =>
      _$this._heldSources = heldSources;

  SnapshotBuilder() {
    Snapshot._defaults(this);
  }

  SnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _format = $v.format;
      _spec = $v.spec?.toBuilder();
      _status = $v.status;
      _progress = $v.progress;
      _principal = $v.principal;
      _rowCount = $v.rowCount;
      _bytes = $v.bytes;
      _manifestSha256 = $v.manifestSha256;
      _licenceSummary = $v.licenceSummary?.toBuilder();
      _watermarkSeq = $v.watermarkSeq;
      _personalUse = $v.personalUse;
      _createdAt = $v.createdAt;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _expiresAt = $v.expiresAt;
      _error = $v.error;
      _downloadUrl = $v.downloadUrl;
      _manifestUrl = $v.manifestUrl;
      _files = $v.files?.toBuilder();
      _productId = $v.productId;
      _atSeq = $v.atSeq;
      _asOf = $v.asOf;
      _name = $v.name;
      _heldSources = $v.heldSources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Snapshot other) {
    _$v = other as _$Snapshot;
  }

  @override
  void update(void Function(SnapshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Snapshot build() => _build();

  _$Snapshot _build() {
    _$Snapshot _$result;
    try {
      _$result = _$v ??
          _$Snapshot._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Snapshot', 'id'),
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'Snapshot', 'kind'),
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'Snapshot', 'format'),
            spec: _spec?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Snapshot', 'status'),
            progress: BuiltValueNullFieldError.checkNotNull(
                progress, r'Snapshot', 'progress'),
            principal: principal,
            rowCount: rowCount,
            bytes: bytes,
            manifestSha256: manifestSha256,
            licenceSummary: _licenceSummary?.build(),
            watermarkSeq: watermarkSeq,
            personalUse: personalUse,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Snapshot', 'createdAt'),
            startedAt: startedAt,
            finishedAt: finishedAt,
            expiresAt: expiresAt,
            error: error,
            downloadUrl: downloadUrl,
            manifestUrl: manifestUrl,
            files: _files?.build(),
            productId: productId,
            atSeq: BuiltValueNullFieldError.checkNotNull(
                atSeq, r'Snapshot', 'atSeq'),
            asOf: asOf,
            name: name,
            heldSources: _heldSources?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spec';
        _spec?.build();

        _$failedField = 'licenceSummary';
        _licenceSummary?.build();

        _$failedField = 'files';
        _files?.build();

        _$failedField = 'heldSources';
        _heldSources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Snapshot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
