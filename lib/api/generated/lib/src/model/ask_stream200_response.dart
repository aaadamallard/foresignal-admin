//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/problem_errors_inner.dart';
import 'package:foresignal_api/src/model/problem_references.dart';
import 'package:foresignal_api/src/model/ask_action.dart';
import 'package:foresignal_api/src/model/ask_delta_event.dart';
import 'package:foresignal_api/src/model/ask_response_usage.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ask_citation.dart';
import 'package:foresignal_api/src/model/ask_progress_event.dart';
import 'package:foresignal_api/src/model/ask_warning_event.dart';
import 'package:foresignal_api/src/model/problem.dart';
import 'package:foresignal_api/src/model/ask_response.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'ask_stream200_response.g.dart';

/// The `data:` line of each event is one JSON object. The `event:` line, not the data, selects its schema as mapped in `x-foresignal-sse-events`, so this is `anyOf` (heartbeat `{}` and other small payloads match several); clients ignore unknown event names.
///
/// Properties:
/// * [tool]
/// * [status]
/// * [summary]
/// * [text]
/// * [id]
/// * [seq]
/// * [title]
/// * [type]
/// * [productId]
/// * [frameKey]
/// * [run]
/// * [step]
/// * [validTime]
/// * [ageMinutes]
/// * [message]
/// * [description]
/// * [payload]
/// * [result]
/// * [createdAt]
/// * [executedAt]
/// * [threadId]
/// * [answer] - Markdown
/// * [citations]
/// * [proposedActions]
/// * [warnings]
/// * [mode]
/// * [usage]
/// * [stopReason]
/// * [refusalCategory] - Set when the model declined (stopReason=refusal)
/// * [detail]
/// * [instance]
/// * [code] - Stable machine code
/// * [errors]
/// * [purgeHorizon] - RESYNC_REQUIRED: purge horizon seq
/// * [watermarkSeq] - RESYNC_REQUIRED: current watermark
/// * [horizon] - ASOF_BEYOND_RETENTION: earliest supported asOf
/// * [capUsd] - BUDGET_EXCEEDED: monthly money cap
/// * [spentUsd] - BUDGET_EXCEEDED: spent this month
/// * [estimateUsd] - BUDGET_EXCEEDED: estimated cost of the refused call
/// * [requiredScope] - INSUFFICIENT_SCOPE: the scope the operation needs (023)
/// * [class_] - RATE_LIMITED: the rate-limit class that refused the request (035)
/// * [retryAfterSeconds] - RATE_LIMITED: seconds to wait, as in Retry-After (035)
/// * [references]
/// * [reason] - VALIDATION_FAILED from ImageGuard (043): the refusal (file-too-large, unknown-format, bigtiff, content-type-mismatch, truncated, side-too-long, too-many-pixels, multi-image, unreadable)
@BuiltValue()
abstract class AskStream200Response
    implements Built<AskStream200Response, AskStream200ResponseBuilder> {
  /// Any Of [AskAction], [AskCitation], [AskDeltaEvent], [AskProgressEvent], [AskResponse], [AskWarningEvent], [Problem]
  AnyOf get anyOf;

  AskStream200Response._();

  factory AskStream200Response([void updates(AskStream200ResponseBuilder b)]) =
      _$AskStream200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskStream200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskStream200Response> get serializer =>
      _$AskStream200ResponseSerializer();
}

class _$AskStream200ResponseSerializer
    implements PrimitiveSerializer<AskStream200Response> {
  @override
  final Iterable<Type> types = const [
    AskStream200Response,
    _$AskStream200Response,
  ];

  @override
  final String wireName = r'AskStream200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskStream200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    AskStream200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(
      anyOf,
      specifiedType: FullType(
        AnyOf,
        anyOf.types.map((type) => FullType(type)).toList(),
      ),
    )!;
  }

  @override
  AskStream200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskStream200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(AskProgressEvent),
      FullType(AskDeltaEvent),
      FullType(AskCitation),
      FullType(AskWarningEvent),
      FullType(AskAction),
      FullType(AskResponse),
      FullType(Problem),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

class AskStream200ResponseModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tools')
  static const AskStream200ResponseModeEnum tools =
      _$askStream200ResponseModeEnum_tools;
  @BuiltValueEnumConst(wireName: r'retrieval')
  static const AskStream200ResponseModeEnum retrieval =
      _$askStream200ResponseModeEnum_retrieval;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskStream200ResponseModeEnum unknownDefaultOpenApi =
      _$askStream200ResponseModeEnum_unknownDefaultOpenApi;

  static Serializer<AskStream200ResponseModeEnum> get serializer =>
      _$askStream200ResponseModeEnumSerializer;

  const AskStream200ResponseModeEnum._(String name) : super(name);

  static BuiltSet<AskStream200ResponseModeEnum> get values =>
      _$askStream200ResponseModeEnumValues;
  static AskStream200ResponseModeEnum valueOf(String name) =>
      _$askStream200ResponseModeEnumValueOf(name);
}

class AskStream200ResponseStopReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'end')
  static const AskStream200ResponseStopReasonEnum end =
      _$askStream200ResponseStopReasonEnum_end;
  @BuiltValueEnumConst(wireName: r'max_tokens')
  static const AskStream200ResponseStopReasonEnum maxTokens =
      _$askStream200ResponseStopReasonEnum_maxTokens;
  @BuiltValueEnumConst(wireName: r'refusal')
  static const AskStream200ResponseStopReasonEnum refusal =
      _$askStream200ResponseStopReasonEnum_refusal;
  @BuiltValueEnumConst(wireName: r'error')
  static const AskStream200ResponseStopReasonEnum error =
      _$askStream200ResponseStopReasonEnum_error;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskStream200ResponseStopReasonEnum unknownDefaultOpenApi =
      _$askStream200ResponseStopReasonEnum_unknownDefaultOpenApi;

  static Serializer<AskStream200ResponseStopReasonEnum> get serializer =>
      _$askStream200ResponseStopReasonEnumSerializer;

  const AskStream200ResponseStopReasonEnum._(String name) : super(name);

  static BuiltSet<AskStream200ResponseStopReasonEnum> get values =>
      _$askStream200ResponseStopReasonEnumValues;
  static AskStream200ResponseStopReasonEnum valueOf(String name) =>
      _$askStream200ResponseStopReasonEnumValueOf(name);
}

/// INSUFFICIENT_SCOPE: the scope the operation needs (023)
class AskStream200ResponseRequiredScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const AskStream200ResponseRequiredScopeEnum read =
      _$askStream200ResponseRequiredScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const AskStream200ResponseRequiredScopeEnum agent =
      _$askStream200ResponseRequiredScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const AskStream200ResponseRequiredScopeEnum admin =
      _$askStream200ResponseRequiredScopeEnum_admin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskStream200ResponseRequiredScopeEnum unknownDefaultOpenApi =
      _$askStream200ResponseRequiredScopeEnum_unknownDefaultOpenApi;

  static Serializer<AskStream200ResponseRequiredScopeEnum> get serializer =>
      _$askStream200ResponseRequiredScopeEnumSerializer;

  const AskStream200ResponseRequiredScopeEnum._(String name) : super(name);

  static BuiltSet<AskStream200ResponseRequiredScopeEnum> get values =>
      _$askStream200ResponseRequiredScopeEnumValues;
  static AskStream200ResponseRequiredScopeEnum valueOf(String name) =>
      _$askStream200ResponseRequiredScopeEnumValueOf(name);
}

/// RATE_LIMITED: the rate-limit class that refused the request (035)
class AskStream200ResponseClass_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const AskStream200ResponseClass_Enum read =
      _$askStream200ResponseClassEnum_read;
  @BuiltValueEnumConst(wireName: r'tiles')
  static const AskStream200ResponseClass_Enum tiles =
      _$askStream200ResponseClassEnum_tiles;
  @BuiltValueEnumConst(wireName: r'stream')
  static const AskStream200ResponseClass_Enum stream =
      _$askStream200ResponseClassEnum_stream;
  @BuiltValueEnumConst(wireName: r'expensive')
  static const AskStream200ResponseClass_Enum expensive =
      _$askStream200ResponseClassEnum_expensive;
  @BuiltValueEnumConst(wireName: r'write')
  static const AskStream200ResponseClass_Enum write =
      _$askStream200ResponseClassEnum_write;
  @BuiltValueEnumConst(wireName: r'anonymous')
  static const AskStream200ResponseClass_Enum anonymous =
      _$askStream200ResponseClassEnum_anonymous;
  @BuiltValueEnumConst(wireName: r'metrics')
  static const AskStream200ResponseClass_Enum metrics =
      _$askStream200ResponseClassEnum_metrics;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskStream200ResponseClass_Enum unknownDefaultOpenApi =
      _$askStream200ResponseClassEnum_unknownDefaultOpenApi;

  static Serializer<AskStream200ResponseClass_Enum> get serializer =>
      _$askStream200ResponseClassEnumSerializer;

  const AskStream200ResponseClass_Enum._(String name) : super(name);

  static BuiltSet<AskStream200ResponseClass_Enum> get values =>
      _$askStream200ResponseClassEnumValues;
  static AskStream200ResponseClass_Enum valueOf(String name) =>
      _$askStream200ResponseClassEnumValueOf(name);
}
