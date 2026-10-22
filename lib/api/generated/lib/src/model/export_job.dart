//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/export_file.dart';
import 'package:foresignal_api/src/model/export_licence_summary.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_job.g.dart';

/// An async export, snapshot or offline pack job (111)
///
/// Properties:
/// * [id] - ULID identifier
/// * [kind]
/// * [format]
/// * [spec] - The submitted ExportSpec, SnapshotInput or PackSpec
/// * [status]
/// * [progress]
/// * [principal] - Token id that created the job
/// * [rowCount]
/// * [bytes]
/// * [manifestSha256]
/// * [licenceSummary]
/// * [watermarkSeq]
/// * [personalUse]
/// * [createdAt]
/// * [startedAt]
/// * [finishedAt]
/// * [expiresAt] - Default created + exports.ttl (7 d); null for snapshots without expiresAt
/// * [error]
/// * [downloadUrl] - /v1/exports/{id}/download once DONE
/// * [manifestUrl]
/// * [files]
/// * [productId]
@BuiltValue()
abstract class ExportJob implements Built<ExportJob, ExportJobBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  ExportJobKindEnum get kind;
  // enum kindEnum {  EXPORT,  SNAPSHOT,  PACK,  RASTER,  PLACE_PACK,  };

  @BuiltValueField(wireName: r'format')
  ExportJobFormatEnum get format;
  // enum formatEnum {  geoparquet,  geopackage,  flatgeobuf,  gpx,  pmtiles,  mbtiles,  cog,  zip,  json-bundle,  };

  /// The submitted ExportSpec, SnapshotInput or PackSpec
  @BuiltValueField(wireName: r'spec')
  BuiltMap<String, JsonObject?>? get spec;

  @BuiltValueField(wireName: r'status')
  ExportJobStatusEnum get status;
  // enum statusEnum {  QUEUED,  RUNNING,  DONE,  FAILED,  CANCELLED,  EXPIRED,  };

  @BuiltValueField(wireName: r'progress')
  int get progress;

  /// Token id that created the job
  @BuiltValueField(wireName: r'principal')
  String? get principal;

  @BuiltValueField(wireName: r'rowCount')
  int? get rowCount;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'manifestSha256')
  String? get manifestSha256;

  @BuiltValueField(wireName: r'licenceSummary')
  ExportLicenceSummary? get licenceSummary;

  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  @BuiltValueField(wireName: r'personalUse')
  bool? get personalUse;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  /// Default created + exports.ttl (7 d); null for snapshots without expiresAt
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'error')
  String? get error;

  /// /v1/exports/{id}/download once DONE
  @BuiltValueField(wireName: r'downloadUrl')
  String? get downloadUrl;

  @BuiltValueField(wireName: r'manifestUrl')
  String? get manifestUrl;

  @BuiltValueField(wireName: r'files')
  BuiltList<ExportFile>? get files;

  @BuiltValueField(wireName: r'productId')
  String? get productId;

  ExportJob._();

  factory ExportJob([void updates(ExportJobBuilder b)]) = _$ExportJob;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportJobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportJob> get serializer => _$ExportJobSerializer();
}

class _$ExportJobSerializer implements PrimitiveSerializer<ExportJob> {
  @override
  final Iterable<Type> types = const [ExportJob, _$ExportJob];

  @override
  final String wireName = r'ExportJob';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportJob object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ExportJobKindEnum),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ExportJobFormatEnum),
    );
    if (object.spec != null) {
      yield r'spec';
      yield serializers.serialize(
        object.spec,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExportJobStatusEnum),
    );
    yield r'progress';
    yield serializers.serialize(
      object.progress,
      specifiedType: const FullType(int),
    );
    if (object.principal != null) {
      yield r'principal';
      yield serializers.serialize(
        object.principal,
        specifiedType: const FullType(String),
      );
    }
    if (object.rowCount != null) {
      yield r'rowCount';
      yield serializers.serialize(
        object.rowCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.manifestSha256 != null) {
      yield r'manifestSha256';
      yield serializers.serialize(
        object.manifestSha256,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licenceSummary != null) {
      yield r'licenceSummary';
      yield serializers.serialize(
        object.licenceSummary,
        specifiedType: const FullType.nullable(ExportLicenceSummary),
      );
    }
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.personalUse != null) {
      yield r'personalUse';
      yield serializers.serialize(
        object.personalUse,
        specifiedType: const FullType(bool),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.downloadUrl != null) {
      yield r'downloadUrl';
      yield serializers.serialize(
        object.downloadUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.manifestUrl != null) {
      yield r'manifestUrl';
      yield serializers.serialize(
        object.manifestUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.files != null) {
      yield r'files';
      yield serializers.serialize(
        object.files,
        specifiedType: const FullType(BuiltList, [FullType(ExportFile)]),
      );
    }
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportJob object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportJobBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExportJobKindEnum),
                  )
                  as ExportJobKindEnum;
          result.kind = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExportJobFormatEnum),
                  )
                  as ExportJobFormatEnum;
          result.format = valueDes;
          break;
        case r'spec':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.spec.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExportJobStatusEnum),
                  )
                  as ExportJobStatusEnum;
          result.status = valueDes;
          break;
        case r'progress':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.progress = valueDes;
          break;
        case r'principal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principal = valueDes;
          break;
        case r'rowCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rowCount = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'manifestSha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestSha256 = valueDes;
          break;
        case r'licenceSummary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExportLicenceSummary,
                    ),
                  )
                  as ExportLicenceSummary?;
          if (valueDes == null) continue;
          result.licenceSummary.replace(valueDes);
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        case r'personalUse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.personalUse = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'downloadUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.downloadUrl = valueDes;
          break;
        case r'manifestUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestUrl = valueDes;
          break;
        case r'files':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ExportFile),
                    ]),
                  )
                  as BuiltList<ExportFile>?;
          if (valueDes == null) continue;
          result.files.replace(valueDes);
          break;
        case r'productId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportJob deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportJobBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ExportJobKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EXPORT')
  static const ExportJobKindEnum EXPORT = _$exportJobKindEnum_EXPORT;
  @BuiltValueEnumConst(wireName: r'SNAPSHOT')
  static const ExportJobKindEnum SNAPSHOT = _$exportJobKindEnum_SNAPSHOT;
  @BuiltValueEnumConst(wireName: r'PACK')
  static const ExportJobKindEnum PACK = _$exportJobKindEnum_PACK;
  @BuiltValueEnumConst(wireName: r'RASTER')
  static const ExportJobKindEnum RASTER = _$exportJobKindEnum_RASTER;
  @BuiltValueEnumConst(wireName: r'PLACE_PACK')
  static const ExportJobKindEnum PLACE_PACK = _$exportJobKindEnum_PLACE_PACK;

  static Serializer<ExportJobKindEnum> get serializer =>
      _$exportJobKindEnumSerializer;

  const ExportJobKindEnum._(String name) : super(name);

  static BuiltSet<ExportJobKindEnum> get values => _$exportJobKindEnumValues;
  static ExportJobKindEnum valueOf(String name) =>
      _$exportJobKindEnumValueOf(name);
}

class ExportJobFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'geoparquet')
  static const ExportJobFormatEnum geoparquet =
      _$exportJobFormatEnum_geoparquet;
  @BuiltValueEnumConst(wireName: r'geopackage')
  static const ExportJobFormatEnum geopackage =
      _$exportJobFormatEnum_geopackage;
  @BuiltValueEnumConst(wireName: r'flatgeobuf')
  static const ExportJobFormatEnum flatgeobuf =
      _$exportJobFormatEnum_flatgeobuf;
  @BuiltValueEnumConst(wireName: r'gpx')
  static const ExportJobFormatEnum gpx = _$exportJobFormatEnum_gpx;
  @BuiltValueEnumConst(wireName: r'pmtiles')
  static const ExportJobFormatEnum pmtiles = _$exportJobFormatEnum_pmtiles;
  @BuiltValueEnumConst(wireName: r'mbtiles')
  static const ExportJobFormatEnum mbtiles = _$exportJobFormatEnum_mbtiles;
  @BuiltValueEnumConst(wireName: r'cog')
  static const ExportJobFormatEnum cog = _$exportJobFormatEnum_cog;
  @BuiltValueEnumConst(wireName: r'zip')
  static const ExportJobFormatEnum zip = _$exportJobFormatEnum_zip;
  @BuiltValueEnumConst(wireName: r'json-bundle')
  static const ExportJobFormatEnum jsonBundle =
      _$exportJobFormatEnum_jsonBundle;

  static Serializer<ExportJobFormatEnum> get serializer =>
      _$exportJobFormatEnumSerializer;

  const ExportJobFormatEnum._(String name) : super(name);

  static BuiltSet<ExportJobFormatEnum> get values =>
      _$exportJobFormatEnumValues;
  static ExportJobFormatEnum valueOf(String name) =>
      _$exportJobFormatEnumValueOf(name);
}

class ExportJobStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'QUEUED')
  static const ExportJobStatusEnum QUEUED = _$exportJobStatusEnum_QUEUED;
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const ExportJobStatusEnum RUNNING = _$exportJobStatusEnum_RUNNING;
  @BuiltValueEnumConst(wireName: r'DONE')
  static const ExportJobStatusEnum DONE = _$exportJobStatusEnum_DONE;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const ExportJobStatusEnum FAILED = _$exportJobStatusEnum_FAILED;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const ExportJobStatusEnum CANCELLED = _$exportJobStatusEnum_CANCELLED;
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const ExportJobStatusEnum EXPIRED = _$exportJobStatusEnum_EXPIRED;

  static Serializer<ExportJobStatusEnum> get serializer =>
      _$exportJobStatusEnumSerializer;

  const ExportJobStatusEnum._(String name) : super(name);

  static BuiltSet<ExportJobStatusEnum> get values =>
      _$exportJobStatusEnumValues;
  static ExportJobStatusEnum valueOf(String name) =>
      _$exportJobStatusEnumValueOf(name);
}
