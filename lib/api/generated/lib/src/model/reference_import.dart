//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_import.g.dart';

/// A reference-history import job and its outcome
///
/// Properties:
/// * [id] - ULID identifier
/// * [dataset]
/// * [params]
/// * [status]
/// * [statusReason] - e.g. `credentials absent` for ACLED
/// * [progress]
/// * [fileSha256]
/// * [rowsRead]
/// * [rowsWritten]
/// * [periodFrom]
/// * [periodTo]
/// * [licence] - e.g. `CC-BY-4.0`, `ACLED-EULA`, `public-domain`
/// * [egress]
/// * [jobId] - ULID identifier
/// * [startedAt]
/// * [finishedAt]
/// * [error]
/// * [createdBy]
/// * [createdAt]
@BuiltValue()
abstract class ReferenceImport
    implements Built<ReferenceImport, ReferenceImportBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'dataset')
  ReferenceImportDatasetEnum get dataset;
  // enum datasetEnum {  ucdp-ged,  acled,  usgs-comcat,  gdacs,  };

  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  @BuiltValueField(wireName: r'status')
  ReferenceImportStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  skipped,  cancelled,  };

  /// e.g. `credentials absent` for ACLED
  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  @BuiltValueField(wireName: r'progress')
  num? get progress;

  @BuiltValueField(wireName: r'fileSha256')
  String? get fileSha256;

  @BuiltValueField(wireName: r'rowsRead')
  int get rowsRead;

  @BuiltValueField(wireName: r'rowsWritten')
  int get rowsWritten;

  @BuiltValueField(wireName: r'periodFrom')
  Date? get periodFrom;

  @BuiltValueField(wireName: r'periodTo')
  Date? get periodTo;

  /// e.g. `CC-BY-4.0`, `ACLED-EULA`, `public-domain`
  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'egress')
  ReferenceImportEgressEnum get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  ReferenceImport._();

  factory ReferenceImport([void updates(ReferenceImportBuilder b)]) =
      _$ReferenceImport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceImportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceImport> get serializer =>
      _$ReferenceImportSerializer();
}

class _$ReferenceImportSerializer
    implements PrimitiveSerializer<ReferenceImport> {
  @override
  final Iterable<Type> types = const [ReferenceImport, _$ReferenceImport];

  @override
  final String wireName = r'ReferenceImport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceImport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'dataset';
    yield serializers.serialize(
      object.dataset,
      specifiedType: const FullType(ReferenceImportDatasetEnum),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReferenceImportStatusEnum),
    );
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.fileSha256 != null) {
      yield r'fileSha256';
      yield serializers.serialize(
        object.fileSha256,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'rowsRead';
    yield serializers.serialize(
      object.rowsRead,
      specifiedType: const FullType(int),
    );
    yield r'rowsWritten';
    yield serializers.serialize(
      object.rowsWritten,
      specifiedType: const FullType(int),
    );
    if (object.periodFrom != null) {
      yield r'periodFrom';
      yield serializers.serialize(
        object.periodFrom,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.periodTo != null) {
      yield r'periodTo';
      yield serializers.serialize(
        object.periodTo,
        specifiedType: const FullType.nullable(Date),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    yield r'egress';
    yield serializers.serialize(
      object.egress,
      specifiedType: const FullType(ReferenceImportEgressEnum),
    );
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceImport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReferenceImportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'dataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReferenceImportDatasetEnum),
          ) as ReferenceImportDatasetEnum;
          result.dataset = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReferenceImportStatusEnum),
          ) as ReferenceImportStatusEnum;
          result.status = valueDes;
          break;
        case r'statusReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.progress = valueDes;
          break;
        case r'fileSha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileSha256 = valueDes;
          break;
        case r'rowsRead':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rowsRead = valueDes;
          break;
        case r'rowsWritten':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rowsWritten = valueDes;
          break;
        case r'periodFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.periodFrom = valueDes;
          break;
        case r'periodTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.periodTo = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licence = valueDes;
          break;
        case r'egress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReferenceImportEgressEnum),
          ) as ReferenceImportEgressEnum;
          result.egress = valueDes;
          break;
        case r'jobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jobId = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceImport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceImportBuilder();
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

class ReferenceImportDatasetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ucdp-ged')
  static const ReferenceImportDatasetEnum ucdpGed =
      _$referenceImportDatasetEnum_ucdpGed;
  @BuiltValueEnumConst(wireName: r'acled')
  static const ReferenceImportDatasetEnum acled =
      _$referenceImportDatasetEnum_acled;
  @BuiltValueEnumConst(wireName: r'usgs-comcat')
  static const ReferenceImportDatasetEnum usgsComcat =
      _$referenceImportDatasetEnum_usgsComcat;
  @BuiltValueEnumConst(wireName: r'gdacs')
  static const ReferenceImportDatasetEnum gdacs =
      _$referenceImportDatasetEnum_gdacs;

  static Serializer<ReferenceImportDatasetEnum> get serializer =>
      _$referenceImportDatasetEnumSerializer;

  const ReferenceImportDatasetEnum._(String name) : super(name);

  static BuiltSet<ReferenceImportDatasetEnum> get values =>
      _$referenceImportDatasetEnumValues;
  static ReferenceImportDatasetEnum valueOf(String name) =>
      _$referenceImportDatasetEnumValueOf(name);
}

class ReferenceImportStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const ReferenceImportStatusEnum queued =
      _$referenceImportStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const ReferenceImportStatusEnum running =
      _$referenceImportStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const ReferenceImportStatusEnum done =
      _$referenceImportStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ReferenceImportStatusEnum failed =
      _$referenceImportStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const ReferenceImportStatusEnum skipped =
      _$referenceImportStatusEnum_skipped;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const ReferenceImportStatusEnum cancelled =
      _$referenceImportStatusEnum_cancelled;

  static Serializer<ReferenceImportStatusEnum> get serializer =>
      _$referenceImportStatusEnumSerializer;

  const ReferenceImportStatusEnum._(String name) : super(name);

  static BuiltSet<ReferenceImportStatusEnum> get values =>
      _$referenceImportStatusEnumValues;
  static ReferenceImportStatusEnum valueOf(String name) =>
      _$referenceImportStatusEnumValueOf(name);
}

class ReferenceImportEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const ReferenceImportEgressEnum OPEN =
      _$referenceImportEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const ReferenceImportEgressEnum LOCAL_ONLY =
      _$referenceImportEgressEnum_LOCAL_ONLY;

  static Serializer<ReferenceImportEgressEnum> get serializer =>
      _$referenceImportEgressEnumSerializer;

  const ReferenceImportEgressEnum._(String name) : super(name);

  static BuiltSet<ReferenceImportEgressEnum> get values =>
      _$referenceImportEgressEnumValues;
  static ReferenceImportEgressEnum valueOf(String name) =>
      _$referenceImportEgressEnumValueOf(name);
}
