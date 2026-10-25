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

part 'snapshot.g.dart';

/// An atSeq snapshot job (kind SNAPSHOT): GeoParquet plus signed manifest (111)
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
/// * [atSeq]
/// * [asOf]
/// * [name]
/// * [heldSources] - Sources read from record_version_held because S is below their floorSeq
@BuiltValue()
abstract class Snapshot implements Built<Snapshot, SnapshotBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  SnapshotKindEnum get kind;
  // enum kindEnum {  EXPORT,  SNAPSHOT,  PACK,  RASTER,  PLACE_PACK,  };

  @BuiltValueField(wireName: r'format')
  SnapshotFormatEnum get format;
  // enum formatEnum {  geoparquet,  geopackage,  flatgeobuf,  gpx,  pmtiles,  mbtiles,  cog,  zip,  json-bundle,  };

  /// The submitted ExportSpec, SnapshotInput or PackSpec
  @BuiltValueField(wireName: r'spec')
  BuiltMap<String, JsonObject?>? get spec;

  @BuiltValueField(wireName: r'status')
  SnapshotStatusEnum get status;
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

  @BuiltValueField(wireName: r'atSeq')
  int get atSeq;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Sources read from record_version_held because S is below their floorSeq
  @BuiltValueField(wireName: r'heldSources')
  BuiltList<String>? get heldSources;

  Snapshot._();

  factory Snapshot([void updates(SnapshotBuilder b)]) = _$Snapshot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SnapshotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Snapshot> get serializer => _$SnapshotSerializer();
}

class _$SnapshotSerializer implements PrimitiveSerializer<Snapshot> {
  @override
  final Iterable<Type> types = const [Snapshot, _$Snapshot];

  @override
  final String wireName = r'Snapshot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Snapshot object, {
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
      specifiedType: const FullType(SnapshotKindEnum),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(SnapshotFormatEnum),
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
      specifiedType: const FullType(SnapshotStatusEnum),
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
    yield r'atSeq';
    yield serializers.serialize(
      object.atSeq,
      specifiedType: const FullType(int),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.heldSources != null) {
      yield r'heldSources';
      yield serializers.serialize(
        object.heldSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Snapshot object, {
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
    required SnapshotBuilder result,
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
                    specifiedType: const FullType(SnapshotKindEnum),
                  )
                  as SnapshotKindEnum;
          result.kind = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SnapshotFormatEnum),
                  )
                  as SnapshotFormatEnum;
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
                    specifiedType: const FullType(SnapshotStatusEnum),
                  )
                  as SnapshotStatusEnum;
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
        case r'atSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.atSeq = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'heldSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.heldSources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Snapshot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotBuilder();
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

class SnapshotKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EXPORT')
  static const SnapshotKindEnum EXPORT = _$snapshotKindEnum_EXPORT;
  @BuiltValueEnumConst(wireName: r'SNAPSHOT')
  static const SnapshotKindEnum SNAPSHOT = _$snapshotKindEnum_SNAPSHOT;
  @BuiltValueEnumConst(wireName: r'PACK')
  static const SnapshotKindEnum PACK = _$snapshotKindEnum_PACK;
  @BuiltValueEnumConst(wireName: r'RASTER')
  static const SnapshotKindEnum RASTER = _$snapshotKindEnum_RASTER;
  @BuiltValueEnumConst(wireName: r'PLACE_PACK')
  static const SnapshotKindEnum PLACE_PACK = _$snapshotKindEnum_PLACE_PACK;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SnapshotKindEnum unknownDefaultOpenApi =
      _$snapshotKindEnum_unknownDefaultOpenApi;

  static Serializer<SnapshotKindEnum> get serializer =>
      _$snapshotKindEnumSerializer;

  const SnapshotKindEnum._(String name) : super(name);

  static BuiltSet<SnapshotKindEnum> get values => _$snapshotKindEnumValues;
  static SnapshotKindEnum valueOf(String name) =>
      _$snapshotKindEnumValueOf(name);
}

class SnapshotFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'geoparquet')
  static const SnapshotFormatEnum geoparquet = _$snapshotFormatEnum_geoparquet;
  @BuiltValueEnumConst(wireName: r'geopackage')
  static const SnapshotFormatEnum geopackage = _$snapshotFormatEnum_geopackage;
  @BuiltValueEnumConst(wireName: r'flatgeobuf')
  static const SnapshotFormatEnum flatgeobuf = _$snapshotFormatEnum_flatgeobuf;
  @BuiltValueEnumConst(wireName: r'gpx')
  static const SnapshotFormatEnum gpx = _$snapshotFormatEnum_gpx;
  @BuiltValueEnumConst(wireName: r'pmtiles')
  static const SnapshotFormatEnum pmtiles = _$snapshotFormatEnum_pmtiles;
  @BuiltValueEnumConst(wireName: r'mbtiles')
  static const SnapshotFormatEnum mbtiles = _$snapshotFormatEnum_mbtiles;
  @BuiltValueEnumConst(wireName: r'cog')
  static const SnapshotFormatEnum cog = _$snapshotFormatEnum_cog;
  @BuiltValueEnumConst(wireName: r'zip')
  static const SnapshotFormatEnum zip = _$snapshotFormatEnum_zip;
  @BuiltValueEnumConst(wireName: r'json-bundle')
  static const SnapshotFormatEnum jsonBundle = _$snapshotFormatEnum_jsonBundle;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SnapshotFormatEnum unknownDefaultOpenApi =
      _$snapshotFormatEnum_unknownDefaultOpenApi;

  static Serializer<SnapshotFormatEnum> get serializer =>
      _$snapshotFormatEnumSerializer;

  const SnapshotFormatEnum._(String name) : super(name);

  static BuiltSet<SnapshotFormatEnum> get values => _$snapshotFormatEnumValues;
  static SnapshotFormatEnum valueOf(String name) =>
      _$snapshotFormatEnumValueOf(name);
}

class SnapshotStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'QUEUED')
  static const SnapshotStatusEnum QUEUED = _$snapshotStatusEnum_QUEUED;
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const SnapshotStatusEnum RUNNING = _$snapshotStatusEnum_RUNNING;
  @BuiltValueEnumConst(wireName: r'DONE')
  static const SnapshotStatusEnum DONE = _$snapshotStatusEnum_DONE;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const SnapshotStatusEnum FAILED = _$snapshotStatusEnum_FAILED;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const SnapshotStatusEnum CANCELLED = _$snapshotStatusEnum_CANCELLED;
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const SnapshotStatusEnum EXPIRED = _$snapshotStatusEnum_EXPIRED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SnapshotStatusEnum unknownDefaultOpenApi =
      _$snapshotStatusEnum_unknownDefaultOpenApi;

  static Serializer<SnapshotStatusEnum> get serializer =>
      _$snapshotStatusEnumSerializer;

  const SnapshotStatusEnum._(String name) : super(name);

  static BuiltSet<SnapshotStatusEnum> get values => _$snapshotStatusEnumValues;
  static SnapshotStatusEnum valueOf(String name) =>
      _$snapshotStatusEnumValueOf(name);
}
