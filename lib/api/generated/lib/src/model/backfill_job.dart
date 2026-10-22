//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backfill_job.g.dart';

/// A resumable, budget-limited history backfill job (117)
///
/// Properties:
/// * [id]
/// * [sourceId]
/// * [status]
/// * [from]
/// * [cursor] - Oldest report date fetched so far
/// * [pagesFetched]
/// * [versionsWritten]
/// * [createdAt]
/// * [startedAt]
/// * [finishedAt]
/// * [error]
@BuiltValue()
abstract class BackfillJob implements Built<BackfillJob, BackfillJobBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'status')
  BackfillJobStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'from')
  Date get from;

  /// Oldest report date fetched so far
  @BuiltValueField(wireName: r'cursor')
  Date? get cursor;

  @BuiltValueField(wireName: r'pagesFetched')
  int? get pagesFetched;

  @BuiltValueField(wireName: r'versionsWritten')
  int? get versionsWritten;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'error')
  String? get error;

  BackfillJob._();

  factory BackfillJob([void updates(BackfillJobBuilder b)]) = _$BackfillJob;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackfillJobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackfillJob> get serializer => _$BackfillJobSerializer();
}

class _$BackfillJobSerializer implements PrimitiveSerializer<BackfillJob> {
  @override
  final Iterable<Type> types = const [BackfillJob, _$BackfillJob];

  @override
  final String wireName = r'BackfillJob';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackfillJob object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BackfillJobStatusEnum),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(Date),
    );
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.pagesFetched != null) {
      yield r'pagesFetched';
      yield serializers.serialize(
        object.pagesFetched,
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
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackfillJob object, {
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
    required BackfillJobBuilder result,
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
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BackfillJobStatusEnum),
          ) as BackfillJobStatusEnum;
          result.status = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.from = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.cursor = valueDes;
          break;
        case r'pagesFetched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pagesFetched = valueDes;
          break;
        case r'versionsWritten':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.versionsWritten = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackfillJob deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackfillJobBuilder();
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

class BackfillJobStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const BackfillJobStatusEnum queued = _$backfillJobStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const BackfillJobStatusEnum running = _$backfillJobStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const BackfillJobStatusEnum done = _$backfillJobStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BackfillJobStatusEnum failed = _$backfillJobStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const BackfillJobStatusEnum cancelled =
      _$backfillJobStatusEnum_cancelled;

  static Serializer<BackfillJobStatusEnum> get serializer =>
      _$backfillJobStatusEnumSerializer;

  const BackfillJobStatusEnum._(String name) : super(name);

  static BuiltSet<BackfillJobStatusEnum> get values =>
      _$backfillJobStatusEnumValues;
  static BackfillJobStatusEnum valueOf(String name) =>
      _$backfillJobStatusEnumValueOf(name);
}
