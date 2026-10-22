//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/benchmark_component_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_run.g.dart';

/// A benchmark run over the synthetic suite, the historical corpus or both
///
/// Properties:
/// * [id] - ULID identifier
/// * [suite]
/// * [suiteVersion]
/// * [scorerVersion]
/// * [seed]
/// * [components]
/// * [jobStatus] - 103 job lifecycle
/// * [progress]
/// * [status] - Worst component status; null until the run is done
/// * [results]
/// * [manifestId] - ULID identifier
/// * [createdBy] - Principal or `scheduler`
/// * [startedAt]
/// * [finishedAt]
/// * [error]
@BuiltValue()
abstract class BenchmarkRun
    implements Built<BenchmarkRun, BenchmarkRunBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'suite')
  BenchmarkRunSuiteEnum get suite;
  // enum suiteEnum {  synthetic,  historical,  all,  };

  @BuiltValueField(wireName: r'suiteVersion')
  String get suiteVersion;

  @BuiltValueField(wireName: r'scorerVersion')
  String? get scorerVersion;

  @BuiltValueField(wireName: r'seed')
  int get seed;

  @BuiltValueField(wireName: r'components')
  BuiltList<String> get components;

  /// 103 job lifecycle
  @BuiltValueField(wireName: r'jobStatus')
  BenchmarkRunJobStatusEnum get jobStatus;
  // enum jobStatusEnum {  queued,  running,  done,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'progress')
  num? get progress;

  /// Worst component status; null until the run is done
  @BuiltValueField(wireName: r'status')
  BenchmarkRunStatusEnum? get status;
  // enum statusEnum {  pass,  warn,  fail,  };

  @BuiltValueField(wireName: r'results')
  BuiltList<BenchmarkComponentResult>? get results;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  /// Principal or `scheduler`
  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'error')
  String? get error;

  BenchmarkRun._();

  factory BenchmarkRun([void updates(BenchmarkRunBuilder b)]) = _$BenchmarkRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkRun> get serializer => _$BenchmarkRunSerializer();
}

class _$BenchmarkRunSerializer implements PrimitiveSerializer<BenchmarkRun> {
  @override
  final Iterable<Type> types = const [BenchmarkRun, _$BenchmarkRun];

  @override
  final String wireName = r'BenchmarkRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'suite';
    yield serializers.serialize(
      object.suite,
      specifiedType: const FullType(BenchmarkRunSuiteEnum),
    );
    yield r'suiteVersion';
    yield serializers.serialize(
      object.suiteVersion,
      specifiedType: const FullType(String),
    );
    if (object.scorerVersion != null) {
      yield r'scorerVersion';
      yield serializers.serialize(
        object.scorerVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'seed';
    yield serializers.serialize(
      object.seed,
      specifiedType: const FullType(int),
    );
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'jobStatus';
    yield serializers.serialize(
      object.jobStatus,
      specifiedType: const FullType(BenchmarkRunJobStatusEnum),
    );
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType(num),
      );
    }
    yield r'status';
    yield object.status == null
        ? null
        : serializers.serialize(
            object.status,
            specifiedType: const FullType.nullable(BenchmarkRunStatusEnum),
          );
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [
          FullType(BenchmarkComponentResult),
        ]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkRun object, {
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
    required BenchmarkRunBuilder result,
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
        case r'suite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BenchmarkRunSuiteEnum),
                  )
                  as BenchmarkRunSuiteEnum;
          result.suite = valueDes;
          break;
        case r'suiteVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.suiteVersion = valueDes;
          break;
        case r'scorerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.scorerVersion = valueDes;
          break;
        case r'seed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seed = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.components.replace(valueDes);
          break;
        case r'jobStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BenchmarkRunJobStatusEnum),
                  )
                  as BenchmarkRunJobStatusEnum;
          result.jobStatus = valueDes;
          break;
        case r'progress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.progress = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BenchmarkRunStatusEnum,
                    ),
                  )
                  as BenchmarkRunStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'results':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BenchmarkComponentResult),
                    ]),
                  )
                  as BuiltList<BenchmarkComponentResult>?;
          if (valueDes == null) continue;
          result.results.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkRunBuilder();
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

class BenchmarkRunSuiteEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'synthetic')
  static const BenchmarkRunSuiteEnum synthetic =
      _$benchmarkRunSuiteEnum_synthetic;
  @BuiltValueEnumConst(wireName: r'historical')
  static const BenchmarkRunSuiteEnum historical =
      _$benchmarkRunSuiteEnum_historical;
  @BuiltValueEnumConst(wireName: r'all')
  static const BenchmarkRunSuiteEnum all = _$benchmarkRunSuiteEnum_all;

  static Serializer<BenchmarkRunSuiteEnum> get serializer =>
      _$benchmarkRunSuiteEnumSerializer;

  const BenchmarkRunSuiteEnum._(String name) : super(name);

  static BuiltSet<BenchmarkRunSuiteEnum> get values =>
      _$benchmarkRunSuiteEnumValues;
  static BenchmarkRunSuiteEnum valueOf(String name) =>
      _$benchmarkRunSuiteEnumValueOf(name);
}

/// 103 job lifecycle
class BenchmarkRunJobStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const BenchmarkRunJobStatusEnum queued =
      _$benchmarkRunJobStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const BenchmarkRunJobStatusEnum running =
      _$benchmarkRunJobStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const BenchmarkRunJobStatusEnum done =
      _$benchmarkRunJobStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BenchmarkRunJobStatusEnum failed =
      _$benchmarkRunJobStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const BenchmarkRunJobStatusEnum cancelled =
      _$benchmarkRunJobStatusEnum_cancelled;

  static Serializer<BenchmarkRunJobStatusEnum> get serializer =>
      _$benchmarkRunJobStatusEnumSerializer;

  const BenchmarkRunJobStatusEnum._(String name) : super(name);

  static BuiltSet<BenchmarkRunJobStatusEnum> get values =>
      _$benchmarkRunJobStatusEnumValues;
  static BenchmarkRunJobStatusEnum valueOf(String name) =>
      _$benchmarkRunJobStatusEnumValueOf(name);
}

/// Worst component status; null until the run is done
class BenchmarkRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const BenchmarkRunStatusEnum pass = _$benchmarkRunStatusEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const BenchmarkRunStatusEnum warn = _$benchmarkRunStatusEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const BenchmarkRunStatusEnum fail = _$benchmarkRunStatusEnum_fail;

  static Serializer<BenchmarkRunStatusEnum> get serializer =>
      _$benchmarkRunStatusEnumSerializer;

  const BenchmarkRunStatusEnum._(String name) : super(name);

  static BuiltSet<BenchmarkRunStatusEnum> get values =>
      _$benchmarkRunStatusEnumValues;
  static BenchmarkRunStatusEnum valueOf(String name) =>
      _$benchmarkRunStatusEnumValueOf(name);
}
