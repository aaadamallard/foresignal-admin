//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/alert_signal.dart';
import 'package:foresignal_api/src/model/alert_context.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ask_citation.dart';
import 'package:foresignal_api/src/model/region_tags.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:foresignal_api/src/model/alert_record_snapshot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert.g.dart';

/// Alert
///
/// Properties:
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
/// * [suppressed]
/// * [suppressedReason]
/// * [tags]
/// * [recordSnapshot]
/// * [summaryCitations] - Verified citations of the enrichment summary (030); empty until enriched
/// * [sensitive] - Alert from a rule referencing a watchlist (036): hidden from anonymous and feed-key principals
/// * [region] - Region tags snapshotted at fire time (040)
/// * [context]
/// * [exercise] - Exercise replay alert (never counted in real state or statistics)
/// * [exerciseRunId] - ULID identifier
/// * [signals] - Implicit quality signals recorded for this alert
@BuiltValue()
abstract class Alert implements Built<Alert, AlertBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  /// The rule's current name; null when the rule was deleted (its alerts are kept)
  @BuiltValueField(wireName: r'ruleName')
  String? get ruleName;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'firedAt')
  DateTime get firedAt;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'acknowledgedAt')
  DateTime? get acknowledgedAt;

  @BuiltValueField(wireName: r'severity')
  AlertSeverityEnum get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// LLM context summary when the rule has enrich=true (030): at most about 120 words with [source:externalId@seq] and [alert:id] citations (unverifiable ones removed); null until enriched, and when enrichment was skipped or failed
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  /// When the summary was stored (030); null until enriched
  @BuiltValueField(wireName: r'enrichedAt')
  DateTime? get enrichedAt;

  /// The version (seq) if still retained; otherwise use recordSnapshot
  @BuiltValueField(wireName: r'record')
  Record? get record;

  /// Monotonic revision (SSE id on /v1/alerts/stream); bumps on every change
  @BuiltValueField(wireName: r'rev')
  int get rev;

  @BuiltValueField(wireName: r'state')
  AlertStateEnum get state;
  // enum stateEnum {  firing,  acknowledged,  resolved,  };

  /// observedAt of the matching version (cooldown axis)
  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Token name
  @BuiltValueField(wireName: r'acknowledgedBy')
  String? get acknowledgedBy;

  @BuiltValueField(wireName: r'resolvedAt')
  DateTime? get resolvedAt;

  /// inverse_edge, tombstone, expiry, stale, admin or token:<name>
  @BuiltValueField(wireName: r'resolvedBy')
  String? get resolvedBy;

  @BuiltValueField(wireName: r'resolvedSeq')
  int? get resolvedSeq;

  @BuiltValueField(wireName: r'feedback')
  AlertFeedbackEnum? get feedback;
  // enum feedbackEnum {  useful,  noise,  late,  false_positive,  };

  @BuiltValueField(wireName: r'feedbackAt')
  DateTime? get feedbackAt;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'snoozedUntil')
  DateTime? get snoozedUntil;

  @BuiltValueField(wireName: r'suppressed')
  bool? get suppressed;

  @BuiltValueField(wireName: r'suppressedReason')
  AlertSuppressedReasonEnum? get suppressedReason;
  // enum suppressedReasonEnum {  alert_snoozed,  rule_snoozed,  };

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'recordSnapshot')
  AlertRecordSnapshot? get recordSnapshot;

  /// Verified citations of the enrichment summary (030); empty until enriched
  @BuiltValueField(wireName: r'summaryCitations')
  BuiltList<AskCitation>? get summaryCitations;

  /// Alert from a rule referencing a watchlist (036): hidden from anonymous and feed-key principals
  @BuiltValueField(wireName: r'sensitive')
  bool? get sensitive;

  /// Region tags snapshotted at fire time (040)
  @BuiltValueField(wireName: r'region')
  RegionTags? get region;

  @BuiltValueField(wireName: r'context')
  AlertContext? get context;

  /// Exercise replay alert (never counted in real state or statistics)
  @BuiltValueField(wireName: r'exercise')
  bool? get exercise;

  /// ULID identifier
  @BuiltValueField(wireName: r'exerciseRunId')
  String? get exerciseRunId;

  /// Implicit quality signals recorded for this alert
  @BuiltValueField(wireName: r'signals')
  BuiltList<AlertSignal>? get signals;

  Alert._();

  factory Alert([void updates(AlertBuilder b)]) = _$Alert;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Alert> get serializer => _$AlertSerializer();
}

class _$AlertSerializer implements PrimitiveSerializer<Alert> {
  @override
  final Iterable<Type> types = const [Alert, _$Alert];

  @override
  final String wireName = r'Alert';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Alert object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    if (object.ruleName != null) {
      yield r'ruleName';
      yield serializers.serialize(
        object.ruleName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    yield r'firedAt';
    yield serializers.serialize(
      object.firedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.acknowledgedAt != null) {
      yield r'acknowledgedAt';
      yield serializers.serialize(
        object.acknowledgedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(AlertSeverityEnum),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.enrichedAt != null) {
      yield r'enrichedAt';
      yield serializers.serialize(
        object.enrichedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType(Record),
      );
    }
    yield r'rev';
    yield serializers.serialize(object.rev, specifiedType: const FullType(int));
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(AlertStateEnum),
    );
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.acknowledgedBy != null) {
      yield r'acknowledgedBy';
      yield serializers.serialize(
        object.acknowledgedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.resolvedAt != null) {
      yield r'resolvedAt';
      yield serializers.serialize(
        object.resolvedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.resolvedBy != null) {
      yield r'resolvedBy';
      yield serializers.serialize(
        object.resolvedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.resolvedSeq != null) {
      yield r'resolvedSeq';
      yield serializers.serialize(
        object.resolvedSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.feedback != null) {
      yield r'feedback';
      yield serializers.serialize(
        object.feedback,
        specifiedType: const FullType.nullable(AlertFeedbackEnum),
      );
    }
    if (object.feedbackAt != null) {
      yield r'feedbackAt';
      yield serializers.serialize(
        object.feedbackAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.snoozedUntil != null) {
      yield r'snoozedUntil';
      yield serializers.serialize(
        object.snoozedUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.suppressed != null) {
      yield r'suppressed';
      yield serializers.serialize(
        object.suppressed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.suppressedReason != null) {
      yield r'suppressedReason';
      yield serializers.serialize(
        object.suppressedReason,
        specifiedType: const FullType.nullable(AlertSuppressedReasonEnum),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.recordSnapshot != null) {
      yield r'recordSnapshot';
      yield serializers.serialize(
        object.recordSnapshot,
        specifiedType: const FullType.nullable(AlertRecordSnapshot),
      );
    }
    if (object.summaryCitations != null) {
      yield r'summaryCitations';
      yield serializers.serialize(
        object.summaryCitations,
        specifiedType: const FullType(BuiltList, [FullType(AskCitation)]),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType.nullable(RegionTags),
      );
    }
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType.nullable(AlertContext),
      );
    }
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exerciseRunId != null) {
      yield r'exerciseRunId';
      yield serializers.serialize(
        object.exerciseRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.signals != null) {
      yield r'signals';
      yield serializers.serialize(
        object.signals,
        specifiedType: const FullType(BuiltList, [FullType(AlertSignal)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Alert object, {
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
    required AlertBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'ruleName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ruleName = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'firedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firedAt = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.message = valueDes;
          break;
        case r'acknowledgedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.acknowledgedAt = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlertSeverityEnum),
                  )
                  as AlertSeverityEnum;
          result.severity = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'enrichedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.enrichedAt = valueDes;
          break;
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Record),
                  )
                  as Record?;
          if (valueDes == null) continue;
          result.record.replace(valueDes);
          break;
        case r'rev':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.rev = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlertStateEnum),
                  )
                  as AlertStateEnum;
          result.state = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'acknowledgedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.acknowledgedBy = valueDes;
          break;
        case r'resolvedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.resolvedAt = valueDes;
          break;
        case r'resolvedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.resolvedBy = valueDes;
          break;
        case r'resolvedSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.resolvedSeq = valueDes;
          break;
        case r'feedback':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlertFeedbackEnum),
                  )
                  as AlertFeedbackEnum?;
          if (valueDes == null) continue;
          result.feedback = valueDes;
          break;
        case r'feedbackAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.feedbackAt = valueDes;
          break;
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'snoozedUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.snoozedUntil = valueDes;
          break;
        case r'suppressed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.suppressed = valueDes;
          break;
        case r'suppressedReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AlertSuppressedReasonEnum,
                    ),
                  )
                  as AlertSuppressedReasonEnum?;
          if (valueDes == null) continue;
          result.suppressedReason = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'recordSnapshot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlertRecordSnapshot),
                  )
                  as AlertRecordSnapshot?;
          if (valueDes == null) continue;
          result.recordSnapshot.replace(valueDes);
          break;
        case r'summaryCitations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AskCitation),
                    ]),
                  )
                  as BuiltList<AskCitation>?;
          if (valueDes == null) continue;
          result.summaryCitations.replace(valueDes);
          break;
        case r'sensitive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sensitive = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RegionTags),
                  )
                  as RegionTags?;
          if (valueDes == null) continue;
          result.region.replace(valueDes);
          break;
        case r'context':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlertContext),
                  )
                  as AlertContext?;
          if (valueDes == null) continue;
          result.context.replace(valueDes);
          break;
        case r'exercise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exercise = valueDes;
          break;
        case r'exerciseRunId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.exerciseRunId = valueDes;
          break;
        case r'signals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AlertSignal),
                    ]),
                  )
                  as BuiltList<AlertSignal>?;
          if (valueDes == null) continue;
          result.signals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Alert deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertBuilder();
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

class AlertSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const AlertSeverityEnum info = _$alertSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const AlertSeverityEnum warning = _$alertSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const AlertSeverityEnum critical = _$alertSeverityEnum_critical;

  static Serializer<AlertSeverityEnum> get serializer =>
      _$alertSeverityEnumSerializer;

  const AlertSeverityEnum._(String name) : super(name);

  static BuiltSet<AlertSeverityEnum> get values => _$alertSeverityEnumValues;
  static AlertSeverityEnum valueOf(String name) =>
      _$alertSeverityEnumValueOf(name);
}

class AlertStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const AlertStateEnum firing = _$alertStateEnum_firing;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const AlertStateEnum acknowledged = _$alertStateEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const AlertStateEnum resolved = _$alertStateEnum_resolved;

  static Serializer<AlertStateEnum> get serializer =>
      _$alertStateEnumSerializer;

  const AlertStateEnum._(String name) : super(name);

  static BuiltSet<AlertStateEnum> get values => _$alertStateEnumValues;
  static AlertStateEnum valueOf(String name) => _$alertStateEnumValueOf(name);
}

class AlertFeedbackEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AlertFeedbackEnum useful = _$alertFeedbackEnum_useful;
  @BuiltValueEnumConst(wireName: r'noise')
  static const AlertFeedbackEnum noise = _$alertFeedbackEnum_noise;
  @BuiltValueEnumConst(wireName: r'late')
  static const AlertFeedbackEnum late_ = _$alertFeedbackEnum_late_;
  @BuiltValueEnumConst(wireName: r'false_positive')
  static const AlertFeedbackEnum falsePositive =
      _$alertFeedbackEnum_falsePositive;

  static Serializer<AlertFeedbackEnum> get serializer =>
      _$alertFeedbackEnumSerializer;

  const AlertFeedbackEnum._(String name) : super(name);

  static BuiltSet<AlertFeedbackEnum> get values => _$alertFeedbackEnumValues;
  static AlertFeedbackEnum valueOf(String name) =>
      _$alertFeedbackEnumValueOf(name);
}

class AlertSuppressedReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert_snoozed')
  static const AlertSuppressedReasonEnum alertSnoozed =
      _$alertSuppressedReasonEnum_alertSnoozed;
  @BuiltValueEnumConst(wireName: r'rule_snoozed')
  static const AlertSuppressedReasonEnum ruleSnoozed =
      _$alertSuppressedReasonEnum_ruleSnoozed;

  static Serializer<AlertSuppressedReasonEnum> get serializer =>
      _$alertSuppressedReasonEnumSerializer;

  const AlertSuppressedReasonEnum._(String name) : super(name);

  static BuiltSet<AlertSuppressedReasonEnum> get values =>
      _$alertSuppressedReasonEnumValues;
  static AlertSuppressedReasonEnum valueOf(String name) =>
      _$alertSuppressedReasonEnumValueOf(name);
}
