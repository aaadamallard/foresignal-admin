//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attachment.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_delivery.g.dart';

/// NotificationDelivery
///
/// Properties:
/// * [id]
/// * [event]
/// * [alertId]
/// * [briefingRunId]
/// * [status]
/// * [attempts]
/// * [lastError]
/// * [nextAttemptAt]
/// * [deliveredAt]
/// * [notificationId]
/// * [kind]
/// * [deferredReason] - `airtime` = held by a mesh channel's LoRa airtime governor (084); released as one digest line.
/// * [edited] - An update delivered by editing the original message
/// * [note] - e.g. folded into delivery <id>
/// * [escalationStep] - Set on escalation deliveries
/// * [attachmentLevel] - Size-control level chosen for this channel (800 px → 600 px → 256 px thumbnail → text only)
/// * [attachments] - Media references sent (bytes load from the media store at send time, so retries work)
/// * [shortCode] - 4-character Crockford base32 alert code used by mesh channels so `#E ACK <code>` finds the alert (084)
@BuiltValue()
abstract class NotificationDelivery
    implements Built<NotificationDelivery, NotificationDeliveryBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'event')
  NotificationDeliveryEventEnum get event;
  // enum eventEnum {  alert,  briefing,  system,  social.divergence,  social.attention_gap,  analyst.note,  situation.activated,  situation.escalated,  finding.significant,  forecast.resolved,  forecast.resolution_needed,  hypothesis.band_changed,  indicator.observed,  assumption.broken,  assessment.published,  chronicle.proposed,  chronicle.cap_warning,  chronicle.gap,  mention,  share,  report.received,  package.received,  chronicle.access.requested,  saved-search.matches,  };

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  @BuiltValueField(wireName: r'briefingRunId')
  String? get briefingRunId;

  @BuiltValueField(wireName: r'status')
  NotificationDeliveryStatusEnum get status;
  // enum statusEnum {  pending,  delivered,  failed,  suppressed,  unacked,  };

  @BuiltValueField(wireName: r'attempts')
  int get attempts;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'nextAttemptAt')
  DateTime? get nextAttemptAt;

  @BuiltValueField(wireName: r'deliveredAt')
  DateTime? get deliveredAt;

  @BuiltValueField(wireName: r'notificationId')
  int? get notificationId;

  @BuiltValueField(wireName: r'kind')
  NotificationDeliveryKindEnum? get kind;
  // enum kindEnum {  send,  update,  followup,  digest,  };

  /// `airtime` = held by a mesh channel's LoRa airtime governor (084); released as one digest line.
  @BuiltValueField(wireName: r'deferredReason')
  NotificationDeliveryDeferredReasonEnum? get deferredReason;
  // enum deferredReasonEnum {  quiet_hours,  paused,  enrichment,  grouping,  presence,  airtime,  };

  /// An update delivered by editing the original message
  @BuiltValueField(wireName: r'edited')
  bool? get edited;

  /// e.g. folded into delivery <id>
  @BuiltValueField(wireName: r'note')
  String? get note;

  /// Set on escalation deliveries
  @BuiltValueField(wireName: r'escalationStep')
  int? get escalationStep;

  /// Size-control level chosen for this channel (800 px → 600 px → 256 px thumbnail → text only)
  @BuiltValueField(wireName: r'attachmentLevel')
  NotificationDeliveryAttachmentLevelEnum? get attachmentLevel;
  // enum attachmentLevelEnum {  map-800,  map-600,  thumbnail,  text-only,  };

  /// Media references sent (bytes load from the media store at send time, so retries work)
  @BuiltValueField(wireName: r'attachments')
  BuiltList<Attachment>? get attachments;

  /// 4-character Crockford base32 alert code used by mesh channels so `#E ACK <code>` finds the alert (084)
  @BuiltValueField(wireName: r'shortCode')
  String? get shortCode;

  NotificationDelivery._();

  factory NotificationDelivery([void updates(NotificationDeliveryBuilder b)]) =
      _$NotificationDelivery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationDeliveryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationDelivery> get serializer =>
      _$NotificationDeliverySerializer();
}

class _$NotificationDeliverySerializer
    implements PrimitiveSerializer<NotificationDelivery> {
  @override
  final Iterable<Type> types = const [
    NotificationDelivery,
    _$NotificationDelivery,
  ];

  @override
  final String wireName = r'NotificationDelivery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationDelivery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NotificationDeliveryEventEnum),
    );
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.briefingRunId != null) {
      yield r'briefingRunId';
      yield serializers.serialize(
        object.briefingRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(NotificationDeliveryStatusEnum),
    );
    yield r'attempts';
    yield serializers.serialize(
      object.attempts,
      specifiedType: const FullType(int),
    );
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nextAttemptAt != null) {
      yield r'nextAttemptAt';
      yield serializers.serialize(
        object.nextAttemptAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.deliveredAt != null) {
      yield r'deliveredAt';
      yield serializers.serialize(
        object.deliveredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.notificationId != null) {
      yield r'notificationId';
      yield serializers.serialize(
        object.notificationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(NotificationDeliveryKindEnum),
      );
    }
    if (object.deferredReason != null) {
      yield r'deferredReason';
      yield serializers.serialize(
        object.deferredReason,
        specifiedType: const FullType.nullable(
          NotificationDeliveryDeferredReasonEnum,
        ),
      );
    }
    if (object.edited != null) {
      yield r'edited';
      yield serializers.serialize(
        object.edited,
        specifiedType: const FullType(bool),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.escalationStep != null) {
      yield r'escalationStep';
      yield serializers.serialize(
        object.escalationStep,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.attachmentLevel != null) {
      yield r'attachmentLevel';
      yield serializers.serialize(
        object.attachmentLevel,
        specifiedType: const FullType.nullable(
          NotificationDeliveryAttachmentLevelEnum,
        ),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
      );
    }
    if (object.shortCode != null) {
      yield r'shortCode';
      yield serializers.serialize(
        object.shortCode,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationDelivery object, {
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
    required NotificationDeliveryBuilder result,
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
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationDeliveryEventEnum,
                    ),
                  )
                  as NotificationDeliveryEventEnum;
          result.event = valueDes;
          break;
        case r'alertId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'briefingRunId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.briefingRunId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationDeliveryStatusEnum,
                    ),
                  )
                  as NotificationDeliveryStatusEnum;
          result.status = valueDes;
          break;
        case r'attempts':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.attempts = valueDes;
          break;
        case r'lastError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'nextAttemptAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.nextAttemptAt = valueDes;
          break;
        case r'deliveredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.deliveredAt = valueDes;
          break;
        case r'notificationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.notificationId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationDeliveryKindEnum,
                    ),
                  )
                  as NotificationDeliveryKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'deferredReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationDeliveryDeferredReasonEnum,
                    ),
                  )
                  as NotificationDeliveryDeferredReasonEnum?;
          if (valueDes == null) continue;
          result.deferredReason = valueDes;
          break;
        case r'edited':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.edited = valueDes;
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
        case r'escalationStep':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.escalationStep = valueDes;
          break;
        case r'attachmentLevel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationDeliveryAttachmentLevelEnum,
                    ),
                  )
                  as NotificationDeliveryAttachmentLevelEnum?;
          if (valueDes == null) continue;
          result.attachmentLevel = valueDes;
          break;
        case r'attachments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attachment),
                    ]),
                  )
                  as BuiltList<Attachment>?;
          if (valueDes == null) continue;
          result.attachments.replace(valueDes);
          break;
        case r'shortCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.shortCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationDelivery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationDeliveryBuilder();
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

class NotificationDeliveryEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const NotificationDeliveryEventEnum alert =
      _$notificationDeliveryEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const NotificationDeliveryEventEnum briefing =
      _$notificationDeliveryEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const NotificationDeliveryEventEnum system =
      _$notificationDeliveryEventEnum_system;
  @BuiltValueEnumConst(wireName: r'social.divergence')
  static const NotificationDeliveryEventEnum socialPeriodDivergence =
      _$notificationDeliveryEventEnum_socialPeriodDivergence;
  @BuiltValueEnumConst(wireName: r'social.attention_gap')
  static const NotificationDeliveryEventEnum socialPeriodAttentionGap =
      _$notificationDeliveryEventEnum_socialPeriodAttentionGap;
  @BuiltValueEnumConst(wireName: r'analyst.note')
  static const NotificationDeliveryEventEnum analystPeriodNote =
      _$notificationDeliveryEventEnum_analystPeriodNote;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const NotificationDeliveryEventEnum situationPeriodActivated =
      _$notificationDeliveryEventEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const NotificationDeliveryEventEnum situationPeriodEscalated =
      _$notificationDeliveryEventEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'finding.significant')
  static const NotificationDeliveryEventEnum findingPeriodSignificant =
      _$notificationDeliveryEventEnum_findingPeriodSignificant;
  @BuiltValueEnumConst(wireName: r'forecast.resolved')
  static const NotificationDeliveryEventEnum forecastPeriodResolved =
      _$notificationDeliveryEventEnum_forecastPeriodResolved;
  @BuiltValueEnumConst(wireName: r'forecast.resolution_needed')
  static const NotificationDeliveryEventEnum forecastPeriodResolutionNeeded =
      _$notificationDeliveryEventEnum_forecastPeriodResolutionNeeded;
  @BuiltValueEnumConst(wireName: r'hypothesis.band_changed')
  static const NotificationDeliveryEventEnum hypothesisPeriodBandChanged =
      _$notificationDeliveryEventEnum_hypothesisPeriodBandChanged;
  @BuiltValueEnumConst(wireName: r'indicator.observed')
  static const NotificationDeliveryEventEnum indicatorPeriodObserved =
      _$notificationDeliveryEventEnum_indicatorPeriodObserved;
  @BuiltValueEnumConst(wireName: r'assumption.broken')
  static const NotificationDeliveryEventEnum assumptionPeriodBroken =
      _$notificationDeliveryEventEnum_assumptionPeriodBroken;
  @BuiltValueEnumConst(wireName: r'assessment.published')
  static const NotificationDeliveryEventEnum assessmentPeriodPublished =
      _$notificationDeliveryEventEnum_assessmentPeriodPublished;
  @BuiltValueEnumConst(wireName: r'chronicle.proposed')
  static const NotificationDeliveryEventEnum chroniclePeriodProposed =
      _$notificationDeliveryEventEnum_chroniclePeriodProposed;
  @BuiltValueEnumConst(wireName: r'chronicle.cap_warning')
  static const NotificationDeliveryEventEnum chroniclePeriodCapWarning =
      _$notificationDeliveryEventEnum_chroniclePeriodCapWarning;
  @BuiltValueEnumConst(wireName: r'chronicle.gap')
  static const NotificationDeliveryEventEnum chroniclePeriodGap =
      _$notificationDeliveryEventEnum_chroniclePeriodGap;
  @BuiltValueEnumConst(wireName: r'mention')
  static const NotificationDeliveryEventEnum mention =
      _$notificationDeliveryEventEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const NotificationDeliveryEventEnum share =
      _$notificationDeliveryEventEnum_share;
  @BuiltValueEnumConst(wireName: r'report.received')
  static const NotificationDeliveryEventEnum reportPeriodReceived =
      _$notificationDeliveryEventEnum_reportPeriodReceived;
  @BuiltValueEnumConst(wireName: r'package.received')
  static const NotificationDeliveryEventEnum packagePeriodReceived =
      _$notificationDeliveryEventEnum_packagePeriodReceived;
  @BuiltValueEnumConst(wireName: r'chronicle.access.requested')
  static const NotificationDeliveryEventEnum
  chroniclePeriodAccessPeriodRequested =
      _$notificationDeliveryEventEnum_chroniclePeriodAccessPeriodRequested;
  @BuiltValueEnumConst(wireName: r'saved-search.matches')
  static const NotificationDeliveryEventEnum savedSearchPeriodMatches =
      _$notificationDeliveryEventEnum_savedSearchPeriodMatches;

  static Serializer<NotificationDeliveryEventEnum> get serializer =>
      _$notificationDeliveryEventEnumSerializer;

  const NotificationDeliveryEventEnum._(String name) : super(name);

  static BuiltSet<NotificationDeliveryEventEnum> get values =>
      _$notificationDeliveryEventEnumValues;
  static NotificationDeliveryEventEnum valueOf(String name) =>
      _$notificationDeliveryEventEnumValueOf(name);
}

class NotificationDeliveryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const NotificationDeliveryStatusEnum pending =
      _$notificationDeliveryStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const NotificationDeliveryStatusEnum delivered =
      _$notificationDeliveryStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'failed')
  static const NotificationDeliveryStatusEnum failed =
      _$notificationDeliveryStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'suppressed')
  static const NotificationDeliveryStatusEnum suppressed =
      _$notificationDeliveryStatusEnum_suppressed;
  @BuiltValueEnumConst(wireName: r'unacked')
  static const NotificationDeliveryStatusEnum unacked =
      _$notificationDeliveryStatusEnum_unacked;

  static Serializer<NotificationDeliveryStatusEnum> get serializer =>
      _$notificationDeliveryStatusEnumSerializer;

  const NotificationDeliveryStatusEnum._(String name) : super(name);

  static BuiltSet<NotificationDeliveryStatusEnum> get values =>
      _$notificationDeliveryStatusEnumValues;
  static NotificationDeliveryStatusEnum valueOf(String name) =>
      _$notificationDeliveryStatusEnumValueOf(name);
}

class NotificationDeliveryKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'send')
  static const NotificationDeliveryKindEnum send =
      _$notificationDeliveryKindEnum_send;
  @BuiltValueEnumConst(wireName: r'update')
  static const NotificationDeliveryKindEnum update_ =
      _$notificationDeliveryKindEnum_update_;
  @BuiltValueEnumConst(wireName: r'followup')
  static const NotificationDeliveryKindEnum followup =
      _$notificationDeliveryKindEnum_followup;
  @BuiltValueEnumConst(wireName: r'digest')
  static const NotificationDeliveryKindEnum digest =
      _$notificationDeliveryKindEnum_digest;

  static Serializer<NotificationDeliveryKindEnum> get serializer =>
      _$notificationDeliveryKindEnumSerializer;

  const NotificationDeliveryKindEnum._(String name) : super(name);

  static BuiltSet<NotificationDeliveryKindEnum> get values =>
      _$notificationDeliveryKindEnumValues;
  static NotificationDeliveryKindEnum valueOf(String name) =>
      _$notificationDeliveryKindEnumValueOf(name);
}

/// `airtime` = held by a mesh channel's LoRa airtime governor (084); released as one digest line.
class NotificationDeliveryDeferredReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'quiet_hours')
  static const NotificationDeliveryDeferredReasonEnum quietHours =
      _$notificationDeliveryDeferredReasonEnum_quietHours;
  @BuiltValueEnumConst(wireName: r'paused')
  static const NotificationDeliveryDeferredReasonEnum paused =
      _$notificationDeliveryDeferredReasonEnum_paused;
  @BuiltValueEnumConst(wireName: r'enrichment')
  static const NotificationDeliveryDeferredReasonEnum enrichment =
      _$notificationDeliveryDeferredReasonEnum_enrichment;
  @BuiltValueEnumConst(wireName: r'grouping')
  static const NotificationDeliveryDeferredReasonEnum grouping =
      _$notificationDeliveryDeferredReasonEnum_grouping;
  @BuiltValueEnumConst(wireName: r'presence')
  static const NotificationDeliveryDeferredReasonEnum presence =
      _$notificationDeliveryDeferredReasonEnum_presence;
  @BuiltValueEnumConst(wireName: r'airtime')
  static const NotificationDeliveryDeferredReasonEnum airtime =
      _$notificationDeliveryDeferredReasonEnum_airtime;

  static Serializer<NotificationDeliveryDeferredReasonEnum> get serializer =>
      _$notificationDeliveryDeferredReasonEnumSerializer;

  const NotificationDeliveryDeferredReasonEnum._(String name) : super(name);

  static BuiltSet<NotificationDeliveryDeferredReasonEnum> get values =>
      _$notificationDeliveryDeferredReasonEnumValues;
  static NotificationDeliveryDeferredReasonEnum valueOf(String name) =>
      _$notificationDeliveryDeferredReasonEnumValueOf(name);
}

/// Size-control level chosen for this channel (800 px → 600 px → 256 px thumbnail → text only)
class NotificationDeliveryAttachmentLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'map-800')
  static const NotificationDeliveryAttachmentLevelEnum map800 =
      _$notificationDeliveryAttachmentLevelEnum_map800;
  @BuiltValueEnumConst(wireName: r'map-600')
  static const NotificationDeliveryAttachmentLevelEnum map600 =
      _$notificationDeliveryAttachmentLevelEnum_map600;
  @BuiltValueEnumConst(wireName: r'thumbnail')
  static const NotificationDeliveryAttachmentLevelEnum thumbnail =
      _$notificationDeliveryAttachmentLevelEnum_thumbnail;
  @BuiltValueEnumConst(wireName: r'text-only')
  static const NotificationDeliveryAttachmentLevelEnum textOnly =
      _$notificationDeliveryAttachmentLevelEnum_textOnly;

  static Serializer<NotificationDeliveryAttachmentLevelEnum> get serializer =>
      _$notificationDeliveryAttachmentLevelEnumSerializer;

  const NotificationDeliveryAttachmentLevelEnum._(String name) : super(name);

  static BuiltSet<NotificationDeliveryAttachmentLevelEnum> get values =>
      _$notificationDeliveryAttachmentLevelEnumValues;
  static NotificationDeliveryAttachmentLevelEnum valueOf(String name) =>
      _$notificationDeliveryAttachmentLevelEnumValueOf(name);
}
