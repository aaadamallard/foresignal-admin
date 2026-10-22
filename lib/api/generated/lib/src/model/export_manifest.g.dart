// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_manifest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportManifestManifestVersionEnum
_$exportManifestManifestVersionEnum_number1 =
    const ExportManifestManifestVersionEnum._('number1');

ExportManifestManifestVersionEnum _$exportManifestManifestVersionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'number1':
      return _$exportManifestManifestVersionEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportManifestManifestVersionEnum>
_$exportManifestManifestVersionEnumValues =
    BuiltSet<ExportManifestManifestVersionEnum>(
      const <ExportManifestManifestVersionEnum>[
        _$exportManifestManifestVersionEnum_number1,
      ],
    );

const ExportManifestKindEnum _$exportManifestKindEnum_EXPORT =
    const ExportManifestKindEnum._('EXPORT');
const ExportManifestKindEnum _$exportManifestKindEnum_SNAPSHOT =
    const ExportManifestKindEnum._('SNAPSHOT');
const ExportManifestKindEnum _$exportManifestKindEnum_PACK =
    const ExportManifestKindEnum._('PACK');

ExportManifestKindEnum _$exportManifestKindEnumValueOf(String name) {
  switch (name) {
    case 'EXPORT':
      return _$exportManifestKindEnum_EXPORT;
    case 'SNAPSHOT':
      return _$exportManifestKindEnum_SNAPSHOT;
    case 'PACK':
      return _$exportManifestKindEnum_PACK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportManifestKindEnum> _$exportManifestKindEnumValues =
    BuiltSet<ExportManifestKindEnum>(const <ExportManifestKindEnum>[
      _$exportManifestKindEnum_EXPORT,
      _$exportManifestKindEnum_SNAPSHOT,
      _$exportManifestKindEnum_PACK,
    ]);

const ExportManifestFormatEnum _$exportManifestFormatEnum_geoparquet =
    const ExportManifestFormatEnum._('geoparquet');
const ExportManifestFormatEnum _$exportManifestFormatEnum_geopackage =
    const ExportManifestFormatEnum._('geopackage');
const ExportManifestFormatEnum _$exportManifestFormatEnum_flatgeobuf =
    const ExportManifestFormatEnum._('flatgeobuf');
const ExportManifestFormatEnum _$exportManifestFormatEnum_gpx =
    const ExportManifestFormatEnum._('gpx');
const ExportManifestFormatEnum _$exportManifestFormatEnum_pmtiles =
    const ExportManifestFormatEnum._('pmtiles');

ExportManifestFormatEnum _$exportManifestFormatEnumValueOf(String name) {
  switch (name) {
    case 'geoparquet':
      return _$exportManifestFormatEnum_geoparquet;
    case 'geopackage':
      return _$exportManifestFormatEnum_geopackage;
    case 'flatgeobuf':
      return _$exportManifestFormatEnum_flatgeobuf;
    case 'gpx':
      return _$exportManifestFormatEnum_gpx;
    case 'pmtiles':
      return _$exportManifestFormatEnum_pmtiles;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportManifestFormatEnum> _$exportManifestFormatEnumValues =
    BuiltSet<ExportManifestFormatEnum>(const <ExportManifestFormatEnum>[
      _$exportManifestFormatEnum_geoparquet,
      _$exportManifestFormatEnum_geopackage,
      _$exportManifestFormatEnum_flatgeobuf,
      _$exportManifestFormatEnum_gpx,
      _$exportManifestFormatEnum_pmtiles,
    ]);

Serializer<ExportManifestManifestVersionEnum>
_$exportManifestManifestVersionEnumSerializer =
    _$ExportManifestManifestVersionEnumSerializer();
Serializer<ExportManifestKindEnum> _$exportManifestKindEnumSerializer =
    _$ExportManifestKindEnumSerializer();
Serializer<ExportManifestFormatEnum> _$exportManifestFormatEnumSerializer =
    _$ExportManifestFormatEnumSerializer();

class _$ExportManifestManifestVersionEnumSerializer
    implements PrimitiveSerializer<ExportManifestManifestVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportManifestManifestVersionEnum];
  @override
  final String wireName = 'ExportManifestManifestVersionEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportManifestManifestVersionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportManifestManifestVersionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportManifestManifestVersionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportManifestKindEnumSerializer
    implements PrimitiveSerializer<ExportManifestKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EXPORT': 'EXPORT',
    'SNAPSHOT': 'SNAPSHOT',
    'PACK': 'PACK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EXPORT': 'EXPORT',
    'SNAPSHOT': 'SNAPSHOT',
    'PACK': 'PACK',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportManifestKindEnum];
  @override
  final String wireName = 'ExportManifestKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportManifestKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportManifestKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportManifestKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportManifestFormatEnumSerializer
    implements PrimitiveSerializer<ExportManifestFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'geoparquet': 'geoparquet',
    'geopackage': 'geopackage',
    'flatgeobuf': 'flatgeobuf',
    'gpx': 'gpx',
    'pmtiles': 'pmtiles',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'geoparquet': 'geoparquet',
    'geopackage': 'geopackage',
    'flatgeobuf': 'flatgeobuf',
    'gpx': 'gpx',
    'pmtiles': 'pmtiles',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportManifestFormatEnum];
  @override
  final String wireName = 'ExportManifestFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportManifestFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportManifestFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportManifestFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportManifest extends ExportManifest {
  @override
  final ExportManifestManifestVersionEnum? manifestVersion;
  @override
  final String id;
  @override
  final ExportManifestKindEnum kind;
  @override
  final ExportManifestFormatEnum format;
  @override
  final String instanceId;
  @override
  final DateTime createdAt;
  @override
  final int? watermarkSeq;
  @override
  final int? atSeq;
  @override
  final BuiltMap<String, JsonObject?>? spec;
  @override
  final int? rowCount;
  @override
  final BuiltList<ExportManifestFilesInner> files;
  @override
  final ExportLicenceSummary licence;
  @override
  final bool? personalUse;
  @override
  final ExportManifestSignature? signature;

  factory _$ExportManifest([void Function(ExportManifestBuilder)? updates]) =>
      (ExportManifestBuilder()..update(updates))._build();

  _$ExportManifest._({
    this.manifestVersion,
    required this.id,
    required this.kind,
    required this.format,
    required this.instanceId,
    required this.createdAt,
    this.watermarkSeq,
    this.atSeq,
    this.spec,
    this.rowCount,
    required this.files,
    required this.licence,
    this.personalUse,
    this.signature,
  }) : super._();
  @override
  ExportManifest rebuild(void Function(ExportManifestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportManifestBuilder toBuilder() => ExportManifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportManifest &&
        manifestVersion == other.manifestVersion &&
        id == other.id &&
        kind == other.kind &&
        format == other.format &&
        instanceId == other.instanceId &&
        createdAt == other.createdAt &&
        watermarkSeq == other.watermarkSeq &&
        atSeq == other.atSeq &&
        spec == other.spec &&
        rowCount == other.rowCount &&
        files == other.files &&
        licence == other.licence &&
        personalUse == other.personalUse &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, manifestVersion.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, atSeq.hashCode);
    _$hash = $jc(_$hash, spec.hashCode);
    _$hash = $jc(_$hash, rowCount.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, personalUse.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportManifest')
          ..add('manifestVersion', manifestVersion)
          ..add('id', id)
          ..add('kind', kind)
          ..add('format', format)
          ..add('instanceId', instanceId)
          ..add('createdAt', createdAt)
          ..add('watermarkSeq', watermarkSeq)
          ..add('atSeq', atSeq)
          ..add('spec', spec)
          ..add('rowCount', rowCount)
          ..add('files', files)
          ..add('licence', licence)
          ..add('personalUse', personalUse)
          ..add('signature', signature))
        .toString();
  }
}

class ExportManifestBuilder
    implements Builder<ExportManifest, ExportManifestBuilder> {
  _$ExportManifest? _$v;

  ExportManifestManifestVersionEnum? _manifestVersion;
  ExportManifestManifestVersionEnum? get manifestVersion =>
      _$this._manifestVersion;
  set manifestVersion(ExportManifestManifestVersionEnum? manifestVersion) =>
      _$this._manifestVersion = manifestVersion;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ExportManifestKindEnum? _kind;
  ExportManifestKindEnum? get kind => _$this._kind;
  set kind(ExportManifestKindEnum? kind) => _$this._kind = kind;

  ExportManifestFormatEnum? _format;
  ExportManifestFormatEnum? get format => _$this._format;
  set format(ExportManifestFormatEnum? format) => _$this._format = format;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _atSeq;
  int? get atSeq => _$this._atSeq;
  set atSeq(int? atSeq) => _$this._atSeq = atSeq;

  MapBuilder<String, JsonObject?>? _spec;
  MapBuilder<String, JsonObject?> get spec =>
      _$this._spec ??= MapBuilder<String, JsonObject?>();
  set spec(MapBuilder<String, JsonObject?>? spec) => _$this._spec = spec;

  int? _rowCount;
  int? get rowCount => _$this._rowCount;
  set rowCount(int? rowCount) => _$this._rowCount = rowCount;

  ListBuilder<ExportManifestFilesInner>? _files;
  ListBuilder<ExportManifestFilesInner> get files =>
      _$this._files ??= ListBuilder<ExportManifestFilesInner>();
  set files(ListBuilder<ExportManifestFilesInner>? files) =>
      _$this._files = files;

  ExportLicenceSummaryBuilder? _licence;
  ExportLicenceSummaryBuilder get licence =>
      _$this._licence ??= ExportLicenceSummaryBuilder();
  set licence(ExportLicenceSummaryBuilder? licence) =>
      _$this._licence = licence;

  bool? _personalUse;
  bool? get personalUse => _$this._personalUse;
  set personalUse(bool? personalUse) => _$this._personalUse = personalUse;

  ExportManifestSignatureBuilder? _signature;
  ExportManifestSignatureBuilder get signature =>
      _$this._signature ??= ExportManifestSignatureBuilder();
  set signature(ExportManifestSignatureBuilder? signature) =>
      _$this._signature = signature;

  ExportManifestBuilder() {
    ExportManifest._defaults(this);
  }

  ExportManifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _manifestVersion = $v.manifestVersion;
      _id = $v.id;
      _kind = $v.kind;
      _format = $v.format;
      _instanceId = $v.instanceId;
      _createdAt = $v.createdAt;
      _watermarkSeq = $v.watermarkSeq;
      _atSeq = $v.atSeq;
      _spec = $v.spec?.toBuilder();
      _rowCount = $v.rowCount;
      _files = $v.files.toBuilder();
      _licence = $v.licence.toBuilder();
      _personalUse = $v.personalUse;
      _signature = $v.signature?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportManifest other) {
    _$v = other as _$ExportManifest;
  }

  @override
  void update(void Function(ExportManifestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportManifest build() => _build();

  _$ExportManifest _build() {
    _$ExportManifest _$result;
    try {
      _$result =
          _$v ??
          _$ExportManifest._(
            manifestVersion: manifestVersion,
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'ExportManifest',
              'id',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'ExportManifest',
              'kind',
            ),
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'ExportManifest',
              'format',
            ),
            instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId,
              r'ExportManifest',
              'instanceId',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ExportManifest',
              'createdAt',
            ),
            watermarkSeq: watermarkSeq,
            atSeq: atSeq,
            spec: _spec?.build(),
            rowCount: rowCount,
            files: files.build(),
            licence: licence.build(),
            personalUse: personalUse,
            signature: _signature?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spec';
        _spec?.build();

        _$failedField = 'files';
        files.build();
        _$failedField = 'licence';
        licence.build();

        _$failedField = 'signature';
        _signature?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExportManifest',
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
