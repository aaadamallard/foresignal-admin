//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'replay_result.g.dart';

/// Replay of a manifest at its asOfSeq with the recorded configuration and inputs (116)
///
/// Properties:
/// * [jobId]
/// * [manifestId] - ULID identifier
/// * [status]
/// * [outcome]
/// * [reason] - When not-replayable
/// * [diffSummary] - When differs
/// * [message]
/// * [startedAt]
/// * [finishedAt]
@BuiltValue()
abstract class ReplayResult
    implements Built<ReplayResult, ReplayResultBuilder> {
  @BuiltValueField(wireName: r'jobId')
  String get jobId;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  @BuiltValueField(wireName: r'status')
  ReplayResultStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  };

  @BuiltValueField(wireName: r'outcome')
  ReplayResultOutcomeEnum? get outcome;
  // enum outcomeEnum {  identical,  differs,  not-replayable,  };

  /// When not-replayable
  @BuiltValueField(wireName: r'reason')
  ReplayResultReasonEnum? get reason;
  // enum reasonEnum {  inputs-purged,  component-removed,  llm-output,  };

  /// When differs
  @BuiltValueField(wireName: r'diffSummary')
  String? get diffSummary;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  ReplayResult._();

  factory ReplayResult([void updates(ReplayResultBuilder b)]) = _$ReplayResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReplayResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReplayResult> get serializer => _$ReplayResultSerializer();
}

class _$ReplayResultSerializer implements PrimitiveSerializer<ReplayResult> {
  @override
  final Iterable<Type> types = const [ReplayResult, _$ReplayResult];

  @override
  final String wireName = r'ReplayResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReplayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jobId';
    yield serializers.serialize(
      object.jobId,
      specifiedType: const FullType(String),
    );
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReplayResultStatusEnum),
    );
    if (object.outcome != null) {
      yield r'outcome';
      yield serializers.serialize(
        object.outcome,
        specifiedType: const FullType.nullable(ReplayResultOutcomeEnum),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(ReplayResultReasonEnum),
      );
    }
    if (object.diffSummary != null) {
      yield r'diffSummary';
      yield serializers.serialize(
        object.diffSummary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReplayResult object, {
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
    required ReplayResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jobId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.jobId = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.manifestId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReplayResultStatusEnum),
                  )
                  as ReplayResultStatusEnum;
          result.status = valueDes;
          break;
        case r'outcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReplayResultOutcomeEnum,
                    ),
                  )
                  as ReplayResultOutcomeEnum?;
          if (valueDes == null) continue;
          result.outcome = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReplayResultReasonEnum,
                    ),
                  )
                  as ReplayResultReasonEnum?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'diffSummary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.diffSummary = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReplayResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplayResultBuilder();
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

class ReplayResultStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const ReplayResultStatusEnum queued = _$replayResultStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const ReplayResultStatusEnum running =
      _$replayResultStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const ReplayResultStatusEnum done = _$replayResultStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ReplayResultStatusEnum failed = _$replayResultStatusEnum_failed;

  static Serializer<ReplayResultStatusEnum> get serializer =>
      _$replayResultStatusEnumSerializer;

  const ReplayResultStatusEnum._(String name) : super(name);

  static BuiltSet<ReplayResultStatusEnum> get values =>
      _$replayResultStatusEnumValues;
  static ReplayResultStatusEnum valueOf(String name) =>
      _$replayResultStatusEnumValueOf(name);
}

class ReplayResultOutcomeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'identical')
  static const ReplayResultOutcomeEnum identical =
      _$replayResultOutcomeEnum_identical;
  @BuiltValueEnumConst(wireName: r'differs')
  static const ReplayResultOutcomeEnum differs =
      _$replayResultOutcomeEnum_differs;
  @BuiltValueEnumConst(wireName: r'not-replayable')
  static const ReplayResultOutcomeEnum notReplayable =
      _$replayResultOutcomeEnum_notReplayable;

  static Serializer<ReplayResultOutcomeEnum> get serializer =>
      _$replayResultOutcomeEnumSerializer;

  const ReplayResultOutcomeEnum._(String name) : super(name);

  static BuiltSet<ReplayResultOutcomeEnum> get values =>
      _$replayResultOutcomeEnumValues;
  static ReplayResultOutcomeEnum valueOf(String name) =>
      _$replayResultOutcomeEnumValueOf(name);
}

/// When not-replayable
class ReplayResultReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'inputs-purged')
  static const ReplayResultReasonEnum inputsPurged =
      _$replayResultReasonEnum_inputsPurged;
  @BuiltValueEnumConst(wireName: r'component-removed')
  static const ReplayResultReasonEnum componentRemoved =
      _$replayResultReasonEnum_componentRemoved;
  @BuiltValueEnumConst(wireName: r'llm-output')
  static const ReplayResultReasonEnum llmOutput =
      _$replayResultReasonEnum_llmOutput;

  static Serializer<ReplayResultReasonEnum> get serializer =>
      _$replayResultReasonEnumSerializer;

  const ReplayResultReasonEnum._(String name) : super(name);

  static BuiltSet<ReplayResultReasonEnum> get values =>
      _$replayResultReasonEnumValues;
  static ReplayResultReasonEnum valueOf(String name) =>
      _$replayResultReasonEnumValueOf(name);
}
