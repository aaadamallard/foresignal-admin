// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportJobKindEnum _$exportJobKindEnum_EXPORT = const ExportJobKindEnum._(
  'EXPORT',
);
const ExportJobKindEnum _$exportJobKindEnum_SNAPSHOT =
    const ExportJobKindEnum._('SNAPSHOT');
const ExportJobKindEnum _$exportJobKindEnum_PACK = const ExportJobKindEnum._(
  'PACK',
);
const ExportJobKindEnum _$exportJobKindEnum_RASTER = const ExportJobKindEnum._(
  'RASTER',
);
const ExportJobKindEnum _$exportJobKindEnum_PLACE_PACK =
    const ExportJobKindEnum._('PLACE_PACK');
const ExportJobKindEnum _$exportJobKindEnum_unknownDefaultOpenApi =
    const ExportJobKindEnum._('unknownDefaultOpenApi');

ExportJobKindEnum _$exportJobKindEnumValueOf(String name) {
  switch (name) {
    case 'EXPORT':
      return _$exportJobKindEnum_EXPORT;
    case 'SNAPSHOT':
      return _$exportJobKindEnum_SNAPSHOT;
    case 'PACK':
      return _$exportJobKindEnum_PACK;
    case 'RASTER':
      return _$exportJobKindEnum_RASTER;
    case 'PLACE_PACK':
      return _$exportJobKindEnum_PLACE_PACK;
    case 'unknownDefaultOpenApi':
      return _$exportJobKindEnum_unknownDefaultOpenApi;
    default:
      return _$exportJobKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExportJobKindEnum> _$exportJobKindEnumValues =
    BuiltSet<ExportJobKindEnum>(const <ExportJobKindEnum>[
      _$exportJobKindEnum_EXPORT,
      _$exportJobKindEnum_SNAPSHOT,
      _$exportJobKindEnum_PACK,
      _$exportJobKindEnum_RASTER,
      _$exportJobKindEnum_PLACE_PACK,
      _$exportJobKindEnum_unknownDefaultOpenApi,
    ]);

const ExportJobFormatEnum _$exportJobFormatEnum_geoparquet =
    const ExportJobFormatEnum._('geoparquet');
const ExportJobFormatEnum _$exportJobFormatEnum_geopackage =
    const ExportJobFormatEnum._('geopackage');
const ExportJobFormatEnum _$exportJobFormatEnum_flatgeobuf =
    const ExportJobFormatEnum._('flatgeobuf');
const ExportJobFormatEnum _$exportJobFormatEnum_gpx =
    const ExportJobFormatEnum._('gpx');
const ExportJobFormatEnum _$exportJobFormatEnum_pmtiles =
    const ExportJobFormatEnum._('pmtiles');
const ExportJobFormatEnum _$exportJobFormatEnum_mbtiles =
    const ExportJobFormatEnum._('mbtiles');
const ExportJobFormatEnum _$exportJobFormatEnum_cog =
    const ExportJobFormatEnum._('cog');
const ExportJobFormatEnum _$exportJobFormatEnum_zip =
    const ExportJobFormatEnum._('zip');
const ExportJobFormatEnum _$exportJobFormatEnum_jsonBundle =
    const ExportJobFormatEnum._('jsonBundle');
const ExportJobFormatEnum _$exportJobFormatEnum_unknownDefaultOpenApi =
    const ExportJobFormatEnum._('unknownDefaultOpenApi');

ExportJobFormatEnum _$exportJobFormatEnumValueOf(String name) {
  switch (name) {
    case 'geoparquet':
      return _$exportJobFormatEnum_geoparquet;
    case 'geopackage':
      return _$exportJobFormatEnum_geopackage;
    case 'flatgeobuf':
      return _$exportJobFormatEnum_flatgeobuf;
    case 'gpx':
      return _$exportJobFormatEnum_gpx;
    case 'pmtiles':
      return _$exportJobFormatEnum_pmtiles;
    case 'mbtiles':
      return _$exportJobFormatEnum_mbtiles;
    case 'cog':
      return _$exportJobFormatEnum_cog;
    case 'zip':
      return _$exportJobFormatEnum_zip;
    case 'jsonBundle':
      return _$exportJobFormatEnum_jsonBundle;
    case 'unknownDefaultOpenApi':
      return _$exportJobFormatEnum_unknownDefaultOpenApi;
    default:
      return _$exportJobFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExportJobFormatEnum> _$exportJobFormatEnumValues =
    BuiltSet<ExportJobFormatEnum>(const <ExportJobFormatEnum>[
      _$exportJobFormatEnum_geoparquet,
      _$exportJobFormatEnum_geopackage,
      _$exportJobFormatEnum_flatgeobuf,
      _$exportJobFormatEnum_gpx,
      _$exportJobFormatEnum_pmtiles,
      _$exportJobFormatEnum_mbtiles,
      _$exportJobFormatEnum_cog,
      _$exportJobFormatEnum_zip,
      _$exportJobFormatEnum_jsonBundle,
      _$exportJobFormatEnum_unknownDefaultOpenApi,
    ]);

const ExportJobStatusEnum _$exportJobStatusEnum_QUEUED =
    const ExportJobStatusEnum._('QUEUED');
const ExportJobStatusEnum _$exportJobStatusEnum_RUNNING =
    const ExportJobStatusEnum._('RUNNING');
const ExportJobStatusEnum _$exportJobStatusEnum_DONE =
    const ExportJobStatusEnum._('DONE');
const ExportJobStatusEnum _$exportJobStatusEnum_FAILED =
    const ExportJobStatusEnum._('FAILED');
const ExportJobStatusEnum _$exportJobStatusEnum_CANCELLED =
    const ExportJobStatusEnum._('CANCELLED');
const ExportJobStatusEnum _$exportJobStatusEnum_EXPIRED =
    const ExportJobStatusEnum._('EXPIRED');
const ExportJobStatusEnum _$exportJobStatusEnum_unknownDefaultOpenApi =
    const ExportJobStatusEnum._('unknownDefaultOpenApi');

ExportJobStatusEnum _$exportJobStatusEnumValueOf(String name) {
  switch (name) {
    case 'QUEUED':
      return _$exportJobStatusEnum_QUEUED;
    case 'RUNNING':
      return _$exportJobStatusEnum_RUNNING;
    case 'DONE':
      return _$exportJobStatusEnum_DONE;
    case 'FAILED':
      return _$exportJobStatusEnum_FAILED;
    case 'CANCELLED':
      return _$exportJobStatusEnum_CANCELLED;
    case 'EXPIRED':
      return _$exportJobStatusEnum_EXPIRED;
    case 'unknownDefaultOpenApi':
      return _$exportJobStatusEnum_unknownDefaultOpenApi;
    default:
      return _$exportJobStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExportJobStatusEnum> _$exportJobStatusEnumValues =
    BuiltSet<ExportJobStatusEnum>(const <ExportJobStatusEnum>[
      _$exportJobStatusEnum_QUEUED,
      _$exportJobStatusEnum_RUNNING,
      _$exportJobStatusEnum_DONE,
      _$exportJobStatusEnum_FAILED,
      _$exportJobStatusEnum_CANCELLED,
      _$exportJobStatusEnum_EXPIRED,
      _$exportJobStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExportJobKindEnum> _$exportJobKindEnumSerializer =
    _$ExportJobKindEnumSerializer();
Serializer<ExportJobFormatEnum> _$exportJobFormatEnumSerializer =
    _$ExportJobFormatEnumSerializer();
Serializer<ExportJobStatusEnum> _$exportJobStatusEnumSerializer =
    _$ExportJobStatusEnumSerializer();

class _$ExportJobKindEnumSerializer
    implements PrimitiveSerializer<ExportJobKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EXPORT': 'EXPORT',
    'SNAPSHOT': 'SNAPSHOT',
    'PACK': 'PACK',
    'RASTER': 'RASTER',
    'PLACE_PACK': 'PLACE_PACK',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EXPORT': 'EXPORT',
    'SNAPSHOT': 'SNAPSHOT',
    'PACK': 'PACK',
    'RASTER': 'RASTER',
    'PLACE_PACK': 'PLACE_PACK',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportJobKindEnum];
  @override
  final String wireName = 'ExportJobKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportJobKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportJobKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportJobKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportJobFormatEnumSerializer
    implements PrimitiveSerializer<ExportJobFormatEnum> {
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
    'unknownDefaultOpenApi': 'unknown_default_open_api',
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
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportJobFormatEnum];
  @override
  final String wireName = 'ExportJobFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportJobFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportJobFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportJobFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportJobStatusEnumSerializer
    implements PrimitiveSerializer<ExportJobStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'QUEUED': 'QUEUED',
    'RUNNING': 'RUNNING',
    'DONE': 'DONE',
    'FAILED': 'FAILED',
    'CANCELLED': 'CANCELLED',
    'EXPIRED': 'EXPIRED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'QUEUED': 'QUEUED',
    'RUNNING': 'RUNNING',
    'DONE': 'DONE',
    'FAILED': 'FAILED',
    'CANCELLED': 'CANCELLED',
    'EXPIRED': 'EXPIRED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportJobStatusEnum];
  @override
  final String wireName = 'ExportJobStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportJobStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportJobStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportJobStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportJob extends ExportJob {
  @override
  final String id;
  @override
  final ExportJobKindEnum kind;
  @override
  final ExportJobFormatEnum format;
  @override
  final BuiltMap<String, JsonObject?>? spec;
  @override
  final ExportJobStatusEnum status;
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

  factory _$ExportJob([void Function(ExportJobBuilder)? updates]) =>
      (ExportJobBuilder()..update(updates))._build();

  _$ExportJob._({
    required this.id,
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
  }) : super._();
  @override
  ExportJob rebuild(void Function(ExportJobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportJobBuilder toBuilder() => ExportJobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportJob &&
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
        productId == other.productId;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportJob')
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
          ..add('productId', productId))
        .toString();
  }
}

class ExportJobBuilder implements Builder<ExportJob, ExportJobBuilder> {
  _$ExportJob? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ExportJobKindEnum? _kind;
  ExportJobKindEnum? get kind => _$this._kind;
  set kind(ExportJobKindEnum? kind) => _$this._kind = kind;

  ExportJobFormatEnum? _format;
  ExportJobFormatEnum? get format => _$this._format;
  set format(ExportJobFormatEnum? format) => _$this._format = format;

  MapBuilder<String, JsonObject?>? _spec;
  MapBuilder<String, JsonObject?> get spec =>
      _$this._spec ??= MapBuilder<String, JsonObject?>();
  set spec(MapBuilder<String, JsonObject?>? spec) => _$this._spec = spec;

  ExportJobStatusEnum? _status;
  ExportJobStatusEnum? get status => _$this._status;
  set status(ExportJobStatusEnum? status) => _$this._status = status;

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

  ExportJobBuilder() {
    ExportJob._defaults(this);
  }

  ExportJobBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportJob other) {
    _$v = other as _$ExportJob;
  }

  @override
  void update(void Function(ExportJobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportJob build() => _build();

  _$ExportJob _build() {
    _$ExportJob _$result;
    try {
      _$result =
          _$v ??
          _$ExportJob._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ExportJob', 'id'),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'ExportJob',
              'kind',
            ),
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'ExportJob',
              'format',
            ),
            spec: _spec?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExportJob',
              'status',
            ),
            progress: BuiltValueNullFieldError.checkNotNull(
              progress,
              r'ExportJob',
              'progress',
            ),
            principal: principal,
            rowCount: rowCount,
            bytes: bytes,
            manifestSha256: manifestSha256,
            licenceSummary: _licenceSummary?.build(),
            watermarkSeq: watermarkSeq,
            personalUse: personalUse,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ExportJob',
              'createdAt',
            ),
            startedAt: startedAt,
            finishedAt: finishedAt,
            expiresAt: expiresAt,
            error: error,
            downloadUrl: downloadUrl,
            manifestUrl: manifestUrl,
            files: _files?.build(),
            productId: productId,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExportJob',
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
