//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/backtest_job_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/backtest_caveat.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backtest_job.g.dart';

/// An asynchronous backtest job with its definition snapshot, range, progress, caveats and result
///
/// Properties:
/// * [id] - ULID identifier
/// * [type]
/// * [targetId]
/// * [definition] - Snapshot taken at submit time
/// * [definitionHash]
/// * [fromSeq]
/// * [toSeq]
/// * [from]
/// * [to]
/// * [status]
/// * [progress]
/// * [createdAt]
/// * [startedAt]
/// * [finishedAt]
/// * [createdBy]
/// * [detectorVersion]
/// * [caveats]
/// * [result]
/// * [truncated]
/// * [error]
/// * [manifestId] - The analysis manifest of this output (prompt 116); null for outputs written before it
@BuiltValue()
abstract class BacktestJob implements Built<BacktestJob, BacktestJobBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  BacktestJobTypeEnum get type;
  // enum typeEnum {  rule,  recipe,  precursor,  quality,  event-study,  precursor-mining,  forecast-evaluation,  reference-import,  base-rate-refresh,  manifest-replay,  benchmark,  };

  @BuiltValueField(wireName: r'targetId')
  String? get targetId;

  /// Snapshot taken at submit time
  @BuiltValueField(wireName: r'definition')
  BuiltMap<String, JsonObject?>? get definition;

  @BuiltValueField(wireName: r'definitionHash')
  String get definitionHash;

  @BuiltValueField(wireName: r'fromSeq')
  int get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int get toSeq;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'status')
  BacktestJobStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'progress')
  num get progress;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'detectorVersion')
  String? get detectorVersion;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<BacktestCaveat> get caveats;

  @BuiltValueField(wireName: r'result')
  BacktestJobResult? get result;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'error')
  String? get error;

  /// The analysis manifest of this output (prompt 116); null for outputs written before it
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  BacktestJob._();

  factory BacktestJob([void updates(BacktestJobBuilder b)]) = _$BacktestJob;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BacktestJobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BacktestJob> get serializer => _$BacktestJobSerializer();
}

class _$BacktestJobSerializer implements PrimitiveSerializer<BacktestJob> {
  @override
  final Iterable<Type> types = const [BacktestJob, _$BacktestJob];

  @override
  final String wireName = r'BacktestJob';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BacktestJob object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(BacktestJobTypeEnum),
    );
    if (object.targetId != null) {
      yield r'targetId';
      yield serializers.serialize(
        object.targetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.definition != null) {
      yield r'definition';
      yield serializers.serialize(
        object.definition,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'definitionHash';
    yield serializers.serialize(
      object.definitionHash,
      specifiedType: const FullType(String),
    );
    yield r'fromSeq';
    yield serializers.serialize(
      object.fromSeq,
      specifiedType: const FullType(int),
    );
    yield r'toSeq';
    yield serializers.serialize(
      object.toSeq,
      specifiedType: const FullType(int),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BacktestJobStatusEnum),
    );
    yield r'progress';
    yield serializers.serialize(
      object.progress,
      specifiedType: const FullType(num),
    );
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
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.detectorVersion != null) {
      yield r'detectorVersion';
      yield serializers.serialize(
        object.detectorVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(BacktestCaveat)]),
    );
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType.nullable(BacktestJobResult),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BacktestJob object, {
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
    required BacktestJobBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BacktestJobTypeEnum),
          ) as BacktestJobTypeEnum;
          result.type = valueDes;
          break;
        case r'targetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.targetId = valueDes;
          break;
        case r'definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.definition.replace(valueDes);
          break;
        case r'definitionHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.definitionHash = valueDes;
          break;
        case r'fromSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.toSeq = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BacktestJobStatusEnum),
          ) as BacktestJobStatusEnum;
          result.status = valueDes;
          break;
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.progress = valueDes;
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
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'detectorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.detectorVersion = valueDes;
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BacktestCaveat)]),
          ) as BuiltList<BacktestCaveat>;
          result.caveats.replace(valueDes);
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BacktestJobResult),
          ) as BacktestJobResult?;
          if (valueDes == null) continue;
          result.result.replace(valueDes);
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BacktestJob deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BacktestJobBuilder();
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

class BacktestJobTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rule')
  static const BacktestJobTypeEnum rule = _$backtestJobTypeEnum_rule;
  @BuiltValueEnumConst(wireName: r'recipe')
  static const BacktestJobTypeEnum recipe = _$backtestJobTypeEnum_recipe;
  @BuiltValueEnumConst(wireName: r'precursor')
  static const BacktestJobTypeEnum precursor = _$backtestJobTypeEnum_precursor;
  @BuiltValueEnumConst(wireName: r'quality')
  static const BacktestJobTypeEnum quality = _$backtestJobTypeEnum_quality;
  @BuiltValueEnumConst(wireName: r'event-study')
  static const BacktestJobTypeEnum eventStudy =
      _$backtestJobTypeEnum_eventStudy;
  @BuiltValueEnumConst(wireName: r'precursor-mining')
  static const BacktestJobTypeEnum precursorMining =
      _$backtestJobTypeEnum_precursorMining;
  @BuiltValueEnumConst(wireName: r'forecast-evaluation')
  static const BacktestJobTypeEnum forecastEvaluation =
      _$backtestJobTypeEnum_forecastEvaluation;
  @BuiltValueEnumConst(wireName: r'reference-import')
  static const BacktestJobTypeEnum referenceImport =
      _$backtestJobTypeEnum_referenceImport;
  @BuiltValueEnumConst(wireName: r'base-rate-refresh')
  static const BacktestJobTypeEnum baseRateRefresh =
      _$backtestJobTypeEnum_baseRateRefresh;
  @BuiltValueEnumConst(wireName: r'manifest-replay')
  static const BacktestJobTypeEnum manifestReplay =
      _$backtestJobTypeEnum_manifestReplay;
  @BuiltValueEnumConst(wireName: r'benchmark')
  static const BacktestJobTypeEnum benchmark = _$backtestJobTypeEnum_benchmark;

  static Serializer<BacktestJobTypeEnum> get serializer =>
      _$backtestJobTypeEnumSerializer;

  const BacktestJobTypeEnum._(String name) : super(name);

  static BuiltSet<BacktestJobTypeEnum> get values =>
      _$backtestJobTypeEnumValues;
  static BacktestJobTypeEnum valueOf(String name) =>
      _$backtestJobTypeEnumValueOf(name);
}

class BacktestJobStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const BacktestJobStatusEnum queued = _$backtestJobStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const BacktestJobStatusEnum running = _$backtestJobStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const BacktestJobStatusEnum done = _$backtestJobStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BacktestJobStatusEnum failed = _$backtestJobStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const BacktestJobStatusEnum cancelled =
      _$backtestJobStatusEnum_cancelled;

  static Serializer<BacktestJobStatusEnum> get serializer =>
      _$backtestJobStatusEnumSerializer;

  const BacktestJobStatusEnum._(String name) : super(name);

  static BuiltSet<BacktestJobStatusEnum> get values =>
      _$backtestJobStatusEnumValues;
  static BacktestJobStatusEnum valueOf(String name) =>
      _$backtestJobStatusEnumValueOf(name);
}
