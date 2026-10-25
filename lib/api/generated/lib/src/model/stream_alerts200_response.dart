//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/alert_signal.dart';
import 'package:foresignal_api/src/model/alert.dart';
import 'package:foresignal_api/src/model/alert_context.dart';
import 'package:foresignal_api/src/model/alert_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ask_citation.dart';
import 'package:foresignal_api/src/model/region_tags.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:foresignal_api/src/model/alert_record_snapshot.dart';
import 'package:foresignal_api/src/model/reset_event.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'stream_alerts200_response.g.dart';

/// The `data:` line of each event is one JSON object. The `event:` line, not the data, selects its schema as mapped in `x-foresignal-sse-events`, so this is `anyOf` (heartbeat `{}` and other small payloads match several); clients ignore unknown event names.
///
/// Properties:
/// * [type] - Lifecycle transition; SSE maps fired → `alert`, resolved → `alert.resolved`, all others → `alert.updated`
/// * [alert]
/// * [suppressed]
/// * [exercise] - Exercise replay alert (never counted in real state or statistics)
/// * [reason]
/// * [resumeAfter] - Last delivered seq to resume from (null for resync_required)
/// * [watermarkSeq]
/// * [id]
/// * [ruleId]
/// * [ruleName] - The rule's current name; null when the rule was deleted (its alerts are kept)
/// * [seq]
/// * [source_]
/// * [externalId]
/// * [kind]
/// * [firedAt]
/// * [message]
/// * [acknowledgedAt]
/// * [severity]
/// * [summary] - LLM context summary when the rule has enrich=true (030): at most about 120 words with [source:externalId@seq] and [alert:id] citations (unverifiable ones removed); null until enriched, and when enrichment was skipped or failed
/// * [enrichedAt] - When the summary was stored (030); null until enriched
/// * [record] - The version (seq) if still retained; otherwise use recordSnapshot
/// * [rev] - Monotonic revision (SSE id on /v1/alerts/stream); bumps on every change
/// * [state]
/// * [observedAt] - observedAt of the matching version (cooldown axis)
/// * [acknowledgedBy] - Token name
/// * [resolvedAt]
/// * [resolvedBy] - inverse_edge, tombstone, expiry, stale, admin or token:<name>
/// * [resolvedSeq]
/// * [feedback]
/// * [feedbackAt]
/// * [note]
/// * [snoozedUntil]
/// * [suppressedReason]
/// * [tags]
/// * [recordSnapshot]
/// * [summaryCitations] - Verified citations of the enrichment summary (030); empty until enriched
/// * [sensitive] - Alert from a rule referencing a watchlist (036): hidden from anonymous and feed-key principals
/// * [region] - Region tags snapshotted at fire time (040)
/// * [context]
/// * [exerciseRunId] - ULID identifier
/// * [signals] - Implicit quality signals recorded for this alert
@BuiltValue()
abstract class StreamAlerts200Response
    implements Built<StreamAlerts200Response, StreamAlerts200ResponseBuilder> {
  /// Any Of [Alert], [AlertEvent], [JsonObject], [ResetEvent]
  AnyOf get anyOf;

  StreamAlerts200Response._();

  factory StreamAlerts200Response([
    void updates(StreamAlerts200ResponseBuilder b),
  ]) = _$StreamAlerts200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamAlerts200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamAlerts200Response> get serializer =>
      _$StreamAlerts200ResponseSerializer();
}

class _$StreamAlerts200ResponseSerializer
    implements PrimitiveSerializer<StreamAlerts200Response> {
  @override
  final Iterable<Type> types = const [
    StreamAlerts200Response,
    _$StreamAlerts200Response,
  ];

  @override
  final String wireName = r'StreamAlerts200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamAlerts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StreamAlerts200Response object, {
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
  StreamAlerts200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamAlerts200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(AlertEvent),
      FullType(ResetEvent),
      FullType(JsonObject),
      FullType(Alert),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

/// Lifecycle transition; SSE maps fired → `alert`, resolved → `alert.resolved`, all others → `alert.updated`
class StreamAlerts200ResponseTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'fired')
  static const StreamAlerts200ResponseTypeEnum fired =
      _$streamAlerts200ResponseTypeEnum_fired;
  @BuiltValueEnumConst(wireName: r'updated')
  static const StreamAlerts200ResponseTypeEnum updated =
      _$streamAlerts200ResponseTypeEnum_updated;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const StreamAlerts200ResponseTypeEnum acknowledged =
      _$streamAlerts200ResponseTypeEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'snoozed')
  static const StreamAlerts200ResponseTypeEnum snoozed =
      _$streamAlerts200ResponseTypeEnum_snoozed;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const StreamAlerts200ResponseTypeEnum resolved =
      _$streamAlerts200ResponseTypeEnum_resolved;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamAlerts200ResponseTypeEnum unknownDefaultOpenApi =
      _$streamAlerts200ResponseTypeEnum_unknownDefaultOpenApi;

  static Serializer<StreamAlerts200ResponseTypeEnum> get serializer =>
      _$streamAlerts200ResponseTypeEnumSerializer;

  const StreamAlerts200ResponseTypeEnum._(String name) : super(name);

  static BuiltSet<StreamAlerts200ResponseTypeEnum> get values =>
      _$streamAlerts200ResponseTypeEnumValues;
  static StreamAlerts200ResponseTypeEnum valueOf(String name) =>
      _$streamAlerts200ResponseTypeEnumValueOf(name);
}

class StreamAlerts200ResponseReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'buffer_overflow')
  static const StreamAlerts200ResponseReasonEnum bufferOverflow =
      _$streamAlerts200ResponseReasonEnum_bufferOverflow;
  @BuiltValueEnumConst(wireName: r'replay_cap')
  static const StreamAlerts200ResponseReasonEnum replayCap =
      _$streamAlerts200ResponseReasonEnum_replayCap;
  @BuiltValueEnumConst(wireName: r'resync_required')
  static const StreamAlerts200ResponseReasonEnum resyncRequired =
      _$streamAlerts200ResponseReasonEnum_resyncRequired;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamAlerts200ResponseReasonEnum unknownDefaultOpenApi =
      _$streamAlerts200ResponseReasonEnum_unknownDefaultOpenApi;

  static Serializer<StreamAlerts200ResponseReasonEnum> get serializer =>
      _$streamAlerts200ResponseReasonEnumSerializer;

  const StreamAlerts200ResponseReasonEnum._(String name) : super(name);

  static BuiltSet<StreamAlerts200ResponseReasonEnum> get values =>
      _$streamAlerts200ResponseReasonEnumValues;
  static StreamAlerts200ResponseReasonEnum valueOf(String name) =>
      _$streamAlerts200ResponseReasonEnumValueOf(name);
}

class StreamAlerts200ResponseSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const StreamAlerts200ResponseSeverityEnum info =
      _$streamAlerts200ResponseSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const StreamAlerts200ResponseSeverityEnum warning =
      _$streamAlerts200ResponseSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const StreamAlerts200ResponseSeverityEnum critical =
      _$streamAlerts200ResponseSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamAlerts200ResponseSeverityEnum unknownDefaultOpenApi =
      _$streamAlerts200ResponseSeverityEnum_unknownDefaultOpenApi;

  static Serializer<StreamAlerts200ResponseSeverityEnum> get serializer =>
      _$streamAlerts200ResponseSeverityEnumSerializer;

  const StreamAlerts200ResponseSeverityEnum._(String name) : super(name);

  static BuiltSet<StreamAlerts200ResponseSeverityEnum> get values =>
      _$streamAlerts200ResponseSeverityEnumValues;
  static StreamAlerts200ResponseSeverityEnum valueOf(String name) =>
      _$streamAlerts200ResponseSeverityEnumValueOf(name);
}

class StreamAlerts200ResponseStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const StreamAlerts200ResponseStateEnum firing =
      _$streamAlerts200ResponseStateEnum_firing;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const StreamAlerts200ResponseStateEnum acknowledged =
      _$streamAlerts200ResponseStateEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const StreamAlerts200ResponseStateEnum resolved =
      _$streamAlerts200ResponseStateEnum_resolved;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamAlerts200ResponseStateEnum unknownDefaultOpenApi =
      _$streamAlerts200ResponseStateEnum_unknownDefaultOpenApi;

  static Serializer<StreamAlerts200ResponseStateEnum> get serializer =>
      _$streamAlerts200ResponseStateEnumSerializer;

  const StreamAlerts200ResponseStateEnum._(String name) : super(name);

  static BuiltSet<StreamAlerts200ResponseStateEnum> get values =>
      _$streamAlerts200ResponseStateEnumValues;
  static StreamAlerts200ResponseStateEnum valueOf(String name) =>
      _$streamAlerts200ResponseStateEnumValueOf(name);
}

class StreamAlerts200ResponseFeedbackEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const StreamAlerts200ResponseFeedbackEnum useful =
      _$streamAlerts200ResponseFeedbackEnum_useful;
  @BuiltValueEnumConst(wireName: r'noise')
  static const StreamAlerts200ResponseFeedbackEnum noise =
      _$streamAlerts200ResponseFeedbackEnum_noise;
  @BuiltValueEnumConst(wireName: r'late')
  static const StreamAlerts200ResponseFeedbackEnum late_ =
      _$streamAlerts200ResponseFeedbackEnum_late_;
  @BuiltValueEnumConst(wireName: r'false_positive')
  static const StreamAlerts200ResponseFeedbackEnum falsePositive =
      _$streamAlerts200ResponseFeedbackEnum_falsePositive;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamAlerts200ResponseFeedbackEnum unknownDefaultOpenApi =
      _$streamAlerts200ResponseFeedbackEnum_unknownDefaultOpenApi;

  static Serializer<StreamAlerts200ResponseFeedbackEnum> get serializer =>
      _$streamAlerts200ResponseFeedbackEnumSerializer;

  const StreamAlerts200ResponseFeedbackEnum._(String name) : super(name);

  static BuiltSet<StreamAlerts200ResponseFeedbackEnum> get values =>
      _$streamAlerts200ResponseFeedbackEnumValues;
  static StreamAlerts200ResponseFeedbackEnum valueOf(String name) =>
      _$streamAlerts200ResponseFeedbackEnumValueOf(name);
}

class StreamAlerts200ResponseSuppressedReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert_snoozed')
  static const StreamAlerts200ResponseSuppressedReasonEnum alertSnoozed =
      _$streamAlerts200ResponseSuppressedReasonEnum_alertSnoozed;
  @BuiltValueEnumConst(wireName: r'rule_snoozed')
  static const StreamAlerts200ResponseSuppressedReasonEnum ruleSnoozed =
      _$streamAlerts200ResponseSuppressedReasonEnum_ruleSnoozed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamAlerts200ResponseSuppressedReasonEnum
  unknownDefaultOpenApi =
      _$streamAlerts200ResponseSuppressedReasonEnum_unknownDefaultOpenApi;

  static Serializer<StreamAlerts200ResponseSuppressedReasonEnum>
  get serializer => _$streamAlerts200ResponseSuppressedReasonEnumSerializer;

  const StreamAlerts200ResponseSuppressedReasonEnum._(String name)
    : super(name);

  static BuiltSet<StreamAlerts200ResponseSuppressedReasonEnum> get values =>
      _$streamAlerts200ResponseSuppressedReasonEnumValues;
  static StreamAlerts200ResponseSuppressedReasonEnum valueOf(String name) =>
      _$streamAlerts200ResponseSuppressedReasonEnumValueOf(name);
}
