//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analyst_cursor.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analyst_run_input_counts.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_run.g.dart';

/// One analyst run with budgets used, outcomes and validation counts (the evaluation log)
///
/// Properties:
/// * [id] - ULID identifier
/// * [profileId] - ULID identifier
/// * [status] - queued/running until finished; `noop` made no LLM call
/// * [startedAt]
/// * [finishedAt]
/// * [cursorFrom]
/// * [cursorTo]
/// * [inputCounts]
/// * [provider]
/// * [model]
/// * [effort]
/// * [tokensIn]
/// * [tokensOut]
/// * [cachedTokens]
/// * [toolCalls]
/// * [durationMs]
/// * [notes]
/// * [proposals]
/// * [autoExecuted]
/// * [citationsDropped]
/// * [claimsDowngraded]
/// * [warnings]
/// * [reason] - Failure, refusal or budget reason
/// * [promptHash] - sha256 of system prompt + tools + instructions
/// * [detectorVersion]
/// * [content] - Prompt and response content, stored only when llm.logContent=true
/// * [manifestId] - The analysis manifest of this output (prompt 116); null for outputs written before it
@BuiltValue()
abstract class AnalystRun implements Built<AnalystRun, AnalystRunBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'profileId')
  String get profileId;

  /// queued/running until finished; `noop` made no LLM call
  @BuiltValueField(wireName: r'status')
  AnalystRunStatusEnum get status;
  // enum statusEnum {  queued,  running,  ok,  noop,  partial,  failed,  budget_exceeded,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'cursorFrom')
  AnalystCursor? get cursorFrom;

  @BuiltValueField(wireName: r'cursorTo')
  AnalystCursor? get cursorTo;

  @BuiltValueField(wireName: r'inputCounts')
  AnalystRunInputCounts? get inputCounts;

  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'effort')
  AnalystRunEffortEnum? get effort;
  // enum effortEnum {  low,  medium,  };

  @BuiltValueField(wireName: r'tokensIn')
  int? get tokensIn;

  @BuiltValueField(wireName: r'tokensOut')
  int? get tokensOut;

  @BuiltValueField(wireName: r'cachedTokens')
  int? get cachedTokens;

  @BuiltValueField(wireName: r'toolCalls')
  int? get toolCalls;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  @BuiltValueField(wireName: r'notes')
  int? get notes;

  @BuiltValueField(wireName: r'proposals')
  int? get proposals;

  @BuiltValueField(wireName: r'autoExecuted')
  int? get autoExecuted;

  @BuiltValueField(wireName: r'citationsDropped')
  int? get citationsDropped;

  @BuiltValueField(wireName: r'claimsDowngraded')
  int? get claimsDowngraded;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  /// Failure, refusal or budget reason
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// sha256 of system prompt + tools + instructions
  @BuiltValueField(wireName: r'promptHash')
  String? get promptHash;

  @BuiltValueField(wireName: r'detectorVersion')
  String? get detectorVersion;

  /// Prompt and response content, stored only when llm.logContent=true
  @BuiltValueField(wireName: r'content')
  BuiltMap<String, JsonObject?>? get content;

  /// The analysis manifest of this output (prompt 116); null for outputs written before it
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  AnalystRun._();

  factory AnalystRun([void updates(AnalystRunBuilder b)]) = _$AnalystRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystRun> get serializer => _$AnalystRunSerializer();
}

class _$AnalystRunSerializer implements PrimitiveSerializer<AnalystRun> {
  @override
  final Iterable<Type> types = const [AnalystRun, _$AnalystRun];

  @override
  final String wireName = r'AnalystRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'profileId';
    yield serializers.serialize(
      object.profileId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AnalystRunStatusEnum),
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
    if (object.cursorFrom != null) {
      yield r'cursorFrom';
      yield serializers.serialize(
        object.cursorFrom,
        specifiedType: const FullType(AnalystCursor),
      );
    }
    if (object.cursorTo != null) {
      yield r'cursorTo';
      yield serializers.serialize(
        object.cursorTo,
        specifiedType: const FullType(AnalystCursor),
      );
    }
    if (object.inputCounts != null) {
      yield r'inputCounts';
      yield serializers.serialize(
        object.inputCounts,
        specifiedType: const FullType(AnalystRunInputCounts),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType.nullable(AnalystRunEffortEnum),
      );
    }
    if (object.tokensIn != null) {
      yield r'tokensIn';
      yield serializers.serialize(
        object.tokensIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.tokensOut != null) {
      yield r'tokensOut';
      yield serializers.serialize(
        object.tokensOut,
        specifiedType: const FullType(int),
      );
    }
    if (object.cachedTokens != null) {
      yield r'cachedTokens';
      yield serializers.serialize(
        object.cachedTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.toolCalls != null) {
      yield r'toolCalls';
      yield serializers.serialize(
        object.toolCalls,
        specifiedType: const FullType(int),
      );
    }
    if (object.durationMs != null) {
      yield r'durationMs';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(int),
      );
    }
    if (object.proposals != null) {
      yield r'proposals';
      yield serializers.serialize(
        object.proposals,
        specifiedType: const FullType(int),
      );
    }
    if (object.autoExecuted != null) {
      yield r'autoExecuted';
      yield serializers.serialize(
        object.autoExecuted,
        specifiedType: const FullType(int),
      );
    }
    if (object.citationsDropped != null) {
      yield r'citationsDropped';
      yield serializers.serialize(
        object.citationsDropped,
        specifiedType: const FullType(int),
      );
    }
    if (object.claimsDowngraded != null) {
      yield r'claimsDowngraded';
      yield serializers.serialize(
        object.claimsDowngraded,
        specifiedType: const FullType(int),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.promptHash != null) {
      yield r'promptHash';
      yield serializers.serialize(
        object.promptHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.detectorVersion != null) {
      yield r'detectorVersion';
      yield serializers.serialize(
        object.detectorVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystRun object, {
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
    required AnalystRunBuilder result,
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
        case r'profileId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.profileId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystRunStatusEnum),
                  )
                  as AnalystRunStatusEnum;
          result.status = valueDes;
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
        case r'cursorFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AnalystCursor),
                  )
                  as AnalystCursor?;
          if (valueDes == null) continue;
          result.cursorFrom.replace(valueDes);
          break;
        case r'cursorTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AnalystCursor),
                  )
                  as AnalystCursor?;
          if (valueDes == null) continue;
          result.cursorTo.replace(valueDes);
          break;
        case r'inputCounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalystRunInputCounts,
                    ),
                  )
                  as AnalystRunInputCounts?;
          if (valueDes == null) continue;
          result.inputCounts.replace(valueDes);
          break;
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'effort':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalystRunEffortEnum,
                    ),
                  )
                  as AnalystRunEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        case r'tokensIn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tokensIn = valueDes;
          break;
        case r'tokensOut':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tokensOut = valueDes;
          break;
        case r'cachedTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cachedTokens = valueDes;
          break;
        case r'toolCalls':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.toolCalls = valueDes;
          break;
        case r'durationMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.durationMs = valueDes;
          break;
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'proposals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.proposals = valueDes;
          break;
        case r'autoExecuted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.autoExecuted = valueDes;
          break;
        case r'citationsDropped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.citationsDropped = valueDes;
          break;
        case r'claimsDowngraded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.claimsDowngraded = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'promptHash':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.promptHash = valueDes;
          break;
        case r'detectorVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.detectorVersion = valueDes;
          break;
        case r'content':
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
          result.content.replace(valueDes);
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
  AnalystRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystRunBuilder();
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

/// queued/running until finished; `noop` made no LLM call
class AnalystRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const AnalystRunStatusEnum queued = _$analystRunStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const AnalystRunStatusEnum running = _$analystRunStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'ok')
  static const AnalystRunStatusEnum ok = _$analystRunStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'noop')
  static const AnalystRunStatusEnum noop = _$analystRunStatusEnum_noop;
  @BuiltValueEnumConst(wireName: r'partial')
  static const AnalystRunStatusEnum partial = _$analystRunStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'failed')
  static const AnalystRunStatusEnum failed = _$analystRunStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'budget_exceeded')
  static const AnalystRunStatusEnum budgetExceeded =
      _$analystRunStatusEnum_budgetExceeded;

  static Serializer<AnalystRunStatusEnum> get serializer =>
      _$analystRunStatusEnumSerializer;

  const AnalystRunStatusEnum._(String name) : super(name);

  static BuiltSet<AnalystRunStatusEnum> get values =>
      _$analystRunStatusEnumValues;
  static AnalystRunStatusEnum valueOf(String name) =>
      _$analystRunStatusEnumValueOf(name);
}

class AnalystRunEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalystRunEffortEnum low = _$analystRunEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const AnalystRunEffortEnum medium = _$analystRunEffortEnum_medium;

  static Serializer<AnalystRunEffortEnum> get serializer =>
      _$analystRunEffortEnumSerializer;

  const AnalystRunEffortEnum._(String name) : super(name);

  static BuiltSet<AnalystRunEffortEnum> get values =>
      _$analystRunEffortEnumValues;
  static AnalystRunEffortEnum valueOf(String name) =>
      _$analystRunEffortEnumValueOf(name);
}
