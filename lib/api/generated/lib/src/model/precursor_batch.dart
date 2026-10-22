//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_batch.g.dart';

/// One mining or re-test run with its multiple-testing accounting
///
/// Properties:
/// * [id] - ULID identifier
/// * [jobId] - 103 job (`precursor-mining`)
/// * [mode]
/// * [trigger]
/// * [status]
/// * [startedAt]
/// * [finishedAt]
/// * [candidatesGenerated]
/// * [tested]
/// * [capped] - Candidates dropped by `analysis.precursors.maxTestsPerRun`
/// * [insufficient] - Candidates skipped as insufficient (range under 60 days, coverage gaps over 30%, fewer than 10 antecedents or too little series overlap)
/// * [survivors]
/// * [validated]
/// * [q]
/// * [method]
/// * [windows] - The global range and its split (`start`, `split`, `end`, `discoveryFraction`); for a re-test, `split` starts the re-test window
/// * [error]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class PrecursorBatch
    implements Built<PrecursorBatch, PrecursorBatchBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// 103 job (`precursor-mining`)
  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  @BuiltValueField(wireName: r'mode')
  PrecursorBatchModeEnum get mode;
  // enum modeEnum {  mine,  retest,  };

  @BuiltValueField(wireName: r'trigger')
  PrecursorBatchTriggerEnum? get trigger;
  // enum triggerEnum {  schedule,  manual,  cycle,  };

  @BuiltValueField(wireName: r'status')
  PrecursorBatchStatusEnum get status;
  // enum statusEnum {  running,  done,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'candidatesGenerated')
  int get candidatesGenerated;

  @BuiltValueField(wireName: r'tested')
  int get tested;

  /// Candidates dropped by `analysis.precursors.maxTestsPerRun`
  @BuiltValueField(wireName: r'capped')
  int get capped;

  /// Candidates skipped as insufficient (range under 60 days, coverage gaps over 30%, fewer than 10 antecedents or too little series overlap)
  @BuiltValueField(wireName: r'insufficient')
  int? get insufficient;

  @BuiltValueField(wireName: r'survivors')
  int get survivors;

  @BuiltValueField(wireName: r'validated')
  int get validated;

  @BuiltValueField(wireName: r'q')
  num get q;

  @BuiltValueField(wireName: r'method')
  PrecursorBatchMethodEnum get method;
  // enum methodEnum {  BH,  BY,  };

  /// The global range and its split (`start`, `split`, `end`, `discoveryFraction`); for a re-test, `split` starts the re-test window
  @BuiltValueField(wireName: r'windows')
  BuiltMap<String, JsonObject?>? get windows;

  @BuiltValueField(wireName: r'error')
  String? get error;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  PrecursorBatch._();

  factory PrecursorBatch([void updates(PrecursorBatchBuilder b)]) =
      _$PrecursorBatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorBatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorBatch> get serializer =>
      _$PrecursorBatchSerializer();
}

class _$PrecursorBatchSerializer
    implements PrimitiveSerializer<PrecursorBatch> {
  @override
  final Iterable<Type> types = const [PrecursorBatch, _$PrecursorBatch];

  @override
  final String wireName = r'PrecursorBatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(PrecursorBatchModeEnum),
    );
    if (object.trigger != null) {
      yield r'trigger';
      yield serializers.serialize(
        object.trigger,
        specifiedType: const FullType(PrecursorBatchTriggerEnum),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PrecursorBatchStatusEnum),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'candidatesGenerated';
    yield serializers.serialize(
      object.candidatesGenerated,
      specifiedType: const FullType(int),
    );
    yield r'tested';
    yield serializers.serialize(
      object.tested,
      specifiedType: const FullType(int),
    );
    yield r'capped';
    yield serializers.serialize(
      object.capped,
      specifiedType: const FullType(int),
    );
    if (object.insufficient != null) {
      yield r'insufficient';
      yield serializers.serialize(
        object.insufficient,
        specifiedType: const FullType(int),
      );
    }
    yield r'survivors';
    yield serializers.serialize(
      object.survivors,
      specifiedType: const FullType(int),
    );
    yield r'validated';
    yield serializers.serialize(
      object.validated,
      specifiedType: const FullType(int),
    );
    yield r'q';
    yield serializers.serialize(object.q, specifiedType: const FullType(num));
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(PrecursorBatchMethodEnum),
    );
    if (object.windows != null) {
      yield r'windows';
      yield serializers.serialize(
        object.windows,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
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
    PrecursorBatch object, {
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
    required PrecursorBatchBuilder result,
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
        case r'jobId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.jobId = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorBatchModeEnum),
                  )
                  as PrecursorBatchModeEnum;
          result.mode = valueDes;
          break;
        case r'trigger':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorBatchTriggerEnum,
                    ),
                  )
                  as PrecursorBatchTriggerEnum?;
          if (valueDes == null) continue;
          result.trigger = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorBatchStatusEnum),
                  )
                  as PrecursorBatchStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
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
        case r'candidatesGenerated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.candidatesGenerated = valueDes;
          break;
        case r'tested':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.tested = valueDes;
          break;
        case r'capped':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.capped = valueDes;
          break;
        case r'insufficient':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.insufficient = valueDes;
          break;
        case r'survivors':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.survivors = valueDes;
          break;
        case r'validated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.validated = valueDes;
          break;
        case r'q':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.q = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorBatchMethodEnum),
                  )
                  as PrecursorBatchMethodEnum;
          result.method = valueDes;
          break;
        case r'windows':
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
          result.windows.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorBatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorBatchBuilder();
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

class PrecursorBatchModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mine')
  static const PrecursorBatchModeEnum mine = _$precursorBatchModeEnum_mine;
  @BuiltValueEnumConst(wireName: r'retest')
  static const PrecursorBatchModeEnum retest = _$precursorBatchModeEnum_retest;

  static Serializer<PrecursorBatchModeEnum> get serializer =>
      _$precursorBatchModeEnumSerializer;

  const PrecursorBatchModeEnum._(String name) : super(name);

  static BuiltSet<PrecursorBatchModeEnum> get values =>
      _$precursorBatchModeEnumValues;
  static PrecursorBatchModeEnum valueOf(String name) =>
      _$precursorBatchModeEnumValueOf(name);
}

class PrecursorBatchTriggerEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'schedule')
  static const PrecursorBatchTriggerEnum schedule =
      _$precursorBatchTriggerEnum_schedule;
  @BuiltValueEnumConst(wireName: r'manual')
  static const PrecursorBatchTriggerEnum manual =
      _$precursorBatchTriggerEnum_manual;
  @BuiltValueEnumConst(wireName: r'cycle')
  static const PrecursorBatchTriggerEnum cycle =
      _$precursorBatchTriggerEnum_cycle;

  static Serializer<PrecursorBatchTriggerEnum> get serializer =>
      _$precursorBatchTriggerEnumSerializer;

  const PrecursorBatchTriggerEnum._(String name) : super(name);

  static BuiltSet<PrecursorBatchTriggerEnum> get values =>
      _$precursorBatchTriggerEnumValues;
  static PrecursorBatchTriggerEnum valueOf(String name) =>
      _$precursorBatchTriggerEnumValueOf(name);
}

class PrecursorBatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'running')
  static const PrecursorBatchStatusEnum running =
      _$precursorBatchStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const PrecursorBatchStatusEnum done = _$precursorBatchStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const PrecursorBatchStatusEnum failed =
      _$precursorBatchStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const PrecursorBatchStatusEnum cancelled =
      _$precursorBatchStatusEnum_cancelled;

  static Serializer<PrecursorBatchStatusEnum> get serializer =>
      _$precursorBatchStatusEnumSerializer;

  const PrecursorBatchStatusEnum._(String name) : super(name);

  static BuiltSet<PrecursorBatchStatusEnum> get values =>
      _$precursorBatchStatusEnumValues;
  static PrecursorBatchStatusEnum valueOf(String name) =>
      _$precursorBatchStatusEnumValueOf(name);
}

class PrecursorBatchMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BH')
  static const PrecursorBatchMethodEnum BH = _$precursorBatchMethodEnum_BH;
  @BuiltValueEnumConst(wireName: r'BY')
  static const PrecursorBatchMethodEnum BY = _$precursorBatchMethodEnum_BY;

  static Serializer<PrecursorBatchMethodEnum> get serializer =>
      _$precursorBatchMethodEnumSerializer;

  const PrecursorBatchMethodEnum._(String name) : super(name);

  static BuiltSet<PrecursorBatchMethodEnum> get values =>
      _$precursorBatchMethodEnumValues;
  static PrecursorBatchMethodEnum valueOf(String name) =>
      _$precursorBatchMethodEnumValueOf(name);
}
