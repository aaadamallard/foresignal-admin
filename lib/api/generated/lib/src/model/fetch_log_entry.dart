//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/coverage.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_log_entry.g.dart';

/// Provenance of one fetch, stream flush or push batch (`fetch_log` row); never contains bodies
///
/// Properties:
/// * [id] - Fetch id (= `batchId` on versions)
/// * [trigger]
/// * [status]
/// * [startedAt]
/// * [receivedAt]
/// * [ingestedAt] - Set only when the writer inserted the row
/// * [httpStatus]
/// * [requestCount]
/// * [urlRedacted] - Last request URL with credentials redacted
/// * [etag]
/// * [bytes]
/// * [bodySha256]
/// * [adapterVersion]
/// * [licence]
/// * [principal] - Pushing principal (PUSH rows)
/// * [recordsSeen]
/// * [rejected]
/// * [late_]
/// * [skipped]
/// * [versionsWritten]
/// * [liveUpdates]
/// * [touches]
/// * [fromSeq]
/// * [toSeq]
/// * [coverage]
/// * [error] - Redacted error (≤ 2000 chars)
/// * [runId] - Shared by the chunks of one chunked fetch run (094)
@BuiltValue()
abstract class FetchLogEntry
    implements Built<FetchLogEntry, FetchLogEntryBuilder> {
  /// Fetch id (= `batchId` on versions)
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'trigger')
  FetchLogEntryTriggerEnum get trigger;
  // enum triggerEnum {  SCHEDULED,  MANUAL,  STREAM,  PUSH,  };

  @BuiltValueField(wireName: r'status')
  FetchLogEntryStatusEnum get status;
  // enum statusEnum {  OK,  NOT_MODIFIED,  FAILED,  REFUSED,  DISCARDED,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'receivedAt')
  DateTime? get receivedAt;

  /// Set only when the writer inserted the row
  @BuiltValueField(wireName: r'ingestedAt')
  DateTime? get ingestedAt;

  @BuiltValueField(wireName: r'httpStatus')
  int? get httpStatus;

  @BuiltValueField(wireName: r'requestCount')
  int? get requestCount;

  /// Last request URL with credentials redacted
  @BuiltValueField(wireName: r'urlRedacted')
  String? get urlRedacted;

  @BuiltValueField(wireName: r'etag')
  String? get etag;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'bodySha256')
  String? get bodySha256;

  @BuiltValueField(wireName: r'adapterVersion')
  String? get adapterVersion;

  @BuiltValueField(wireName: r'licence')
  String? get licence;

  /// Pushing principal (PUSH rows)
  @BuiltValueField(wireName: r'principal')
  String? get principal;

  @BuiltValueField(wireName: r'recordsSeen')
  int? get recordsSeen;

  @BuiltValueField(wireName: r'rejected')
  int? get rejected;

  @BuiltValueField(wireName: r'late')
  int? get late_;

  @BuiltValueField(wireName: r'skipped')
  int? get skipped;

  @BuiltValueField(wireName: r'versionsWritten')
  int? get versionsWritten;

  @BuiltValueField(wireName: r'liveUpdates')
  int? get liveUpdates;

  @BuiltValueField(wireName: r'touches')
  int? get touches;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  @BuiltValueField(wireName: r'coverage')
  Coverage? get coverage;

  /// Redacted error (≤ 2000 chars)
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// Shared by the chunks of one chunked fetch run (094)
  @BuiltValueField(wireName: r'runId')
  String? get runId;

  FetchLogEntry._();

  factory FetchLogEntry([void updates(FetchLogEntryBuilder b)]) =
      _$FetchLogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FetchLogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FetchLogEntry> get serializer =>
      _$FetchLogEntrySerializer();
}

class _$FetchLogEntrySerializer implements PrimitiveSerializer<FetchLogEntry> {
  @override
  final Iterable<Type> types = const [FetchLogEntry, _$FetchLogEntry];

  @override
  final String wireName = r'FetchLogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FetchLogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'trigger';
    yield serializers.serialize(
      object.trigger,
      specifiedType: const FullType(FetchLogEntryTriggerEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FetchLogEntryStatusEnum),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.receivedAt != null) {
      yield r'receivedAt';
      yield serializers.serialize(
        object.receivedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.ingestedAt != null) {
      yield r'ingestedAt';
      yield serializers.serialize(
        object.ingestedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.httpStatus != null) {
      yield r'httpStatus';
      yield serializers.serialize(
        object.httpStatus,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.requestCount != null) {
      yield r'requestCount';
      yield serializers.serialize(
        object.requestCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.urlRedacted != null) {
      yield r'urlRedacted';
      yield serializers.serialize(
        object.urlRedacted,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.etag != null) {
      yield r'etag';
      yield serializers.serialize(
        object.etag,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.bodySha256 != null) {
      yield r'bodySha256';
      yield serializers.serialize(
        object.bodySha256,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.adapterVersion != null) {
      yield r'adapterVersion';
      yield serializers.serialize(
        object.adapterVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.principal != null) {
      yield r'principal';
      yield serializers.serialize(
        object.principal,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recordsSeen != null) {
      yield r'recordsSeen';
      yield serializers.serialize(
        object.recordsSeen,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(int),
      );
    }
    if (object.late_ != null) {
      yield r'late';
      yield serializers.serialize(
        object.late_,
        specifiedType: const FullType(int),
      );
    }
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(int),
      );
    }
    if (object.versionsWritten != null) {
      yield r'versionsWritten';
      yield serializers.serialize(
        object.versionsWritten,
        specifiedType: const FullType(int),
      );
    }
    if (object.liveUpdates != null) {
      yield r'liveUpdates';
      yield serializers.serialize(
        object.liveUpdates,
        specifiedType: const FullType(int),
      );
    }
    if (object.touches != null) {
      yield r'touches';
      yield serializers.serialize(
        object.touches,
        specifiedType: const FullType(int),
      );
    }
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType.nullable(Coverage),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runId != null) {
      yield r'runId';
      yield serializers.serialize(
        object.runId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FetchLogEntry object, {
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
    required FetchLogEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'trigger':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FetchLogEntryTriggerEnum),
          ) as FetchLogEntryTriggerEnum;
          result.trigger = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FetchLogEntryStatusEnum),
          ) as FetchLogEntryStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'receivedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.receivedAt = valueDes;
          break;
        case r'ingestedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.ingestedAt = valueDes;
          break;
        case r'httpStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.httpStatus = valueDes;
          break;
        case r'requestCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.requestCount = valueDes;
          break;
        case r'urlRedacted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.urlRedacted = valueDes;
          break;
        case r'etag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.etag = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'bodySha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bodySha256 = valueDes;
          break;
        case r'adapterVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.adapterVersion = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        case r'principal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.principal = valueDes;
          break;
        case r'recordsSeen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.recordsSeen = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rejected = valueDes;
          break;
        case r'late':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.late_ = valueDes;
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.skipped = valueDes;
          break;
        case r'versionsWritten':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.versionsWritten = valueDes;
          break;
        case r'liveUpdates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.liveUpdates = valueDes;
          break;
        case r'touches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.touches = valueDes;
          break;
        case r'fromSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        case r'coverage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Coverage),
          ) as Coverage?;
          if (valueDes == null) continue;
          result.coverage.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'runId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.runId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FetchLogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FetchLogEntryBuilder();
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

class FetchLogEntryTriggerEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SCHEDULED')
  static const FetchLogEntryTriggerEnum SCHEDULED =
      _$fetchLogEntryTriggerEnum_SCHEDULED;
  @BuiltValueEnumConst(wireName: r'MANUAL')
  static const FetchLogEntryTriggerEnum MANUAL =
      _$fetchLogEntryTriggerEnum_MANUAL;
  @BuiltValueEnumConst(wireName: r'STREAM')
  static const FetchLogEntryTriggerEnum STREAM =
      _$fetchLogEntryTriggerEnum_STREAM;
  @BuiltValueEnumConst(wireName: r'PUSH')
  static const FetchLogEntryTriggerEnum PUSH = _$fetchLogEntryTriggerEnum_PUSH;

  static Serializer<FetchLogEntryTriggerEnum> get serializer =>
      _$fetchLogEntryTriggerEnumSerializer;

  const FetchLogEntryTriggerEnum._(String name) : super(name);

  static BuiltSet<FetchLogEntryTriggerEnum> get values =>
      _$fetchLogEntryTriggerEnumValues;
  static FetchLogEntryTriggerEnum valueOf(String name) =>
      _$fetchLogEntryTriggerEnumValueOf(name);
}

class FetchLogEntryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OK')
  static const FetchLogEntryStatusEnum OK = _$fetchLogEntryStatusEnum_OK;
  @BuiltValueEnumConst(wireName: r'NOT_MODIFIED')
  static const FetchLogEntryStatusEnum NOT_MODIFIED =
      _$fetchLogEntryStatusEnum_NOT_MODIFIED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const FetchLogEntryStatusEnum FAILED =
      _$fetchLogEntryStatusEnum_FAILED;
  @BuiltValueEnumConst(wireName: r'REFUSED')
  static const FetchLogEntryStatusEnum REFUSED =
      _$fetchLogEntryStatusEnum_REFUSED;
  @BuiltValueEnumConst(wireName: r'DISCARDED')
  static const FetchLogEntryStatusEnum DISCARDED =
      _$fetchLogEntryStatusEnum_DISCARDED;

  static Serializer<FetchLogEntryStatusEnum> get serializer =>
      _$fetchLogEntryStatusEnumSerializer;

  const FetchLogEntryStatusEnum._(String name) : super(name);

  static BuiltSet<FetchLogEntryStatusEnum> get values =>
      _$fetchLogEntryStatusEnumValues;
  static FetchLogEntryStatusEnum valueOf(String name) =>
      _$fetchLogEntryStatusEnumValueOf(name);
}
