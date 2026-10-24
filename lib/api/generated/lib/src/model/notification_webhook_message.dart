//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attachment.dart';
import 'package:foresignal_api/src/model/notification_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_webhook_message.g.dart';

/// The notification as the `notification` webhook delivers it (`WebhookEnvelope.message`): the same members as NotificationMessage, kept as its own schema so its `event` list stays `enum` (the compatibility check cannot mark a webhook payload's list extensible) while the event stream's is `x-extensible-enum`.
///
/// Properties:
/// * [id] - Notification id
/// * [event] - Grows as the server adds events: a receiver must accept a value not listed here. Kept as `enum` because this is the `notification` webhook's payload, which the compatibility check cannot mark extensible.
/// * [subtype] - e.g. alert.fired, alert.acknowledged, alert.snoozed, alert.resolved, alert.digest (a quiet-hours, pause, backlog or grouping digest), system.source_failing, system.rule_storm, system.delivery_failed, system.push_provider_failed (032), briefing.run (029)
/// * [title]
/// * [shortTitle] - ≤ 40 chars, for watches, mesh and push
/// * [bodyMarkdown] - Foresignal markdown subset
/// * [severity]
/// * [url] - API link, e.g. `{publicBaseUrl}/v1/alerts/{id}`
/// * [links]
/// * [data] - Full event data (alert or briefing-run JSON). Alert data carries `context` (056): the computed alert context with `context.weather` (`WeatherContext`, its `summary` sentence and sections) when the alert has one
/// * [tags]
/// * [attachments] - Image attachments as media references (filled by 055)
/// * [updateOf] - Notification this one updates (lifecycle updates)
/// * [origin] - Install id of the sending instance (loop guard)
/// * [createdAt]
/// * [exercise] - Title prefixed [EXERCISE] and exercise footer appended
@BuiltValue()
abstract class NotificationWebhookMessage
    implements
        Built<NotificationWebhookMessage, NotificationWebhookMessageBuilder> {
  /// Notification id
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Grows as the server adds events: a receiver must accept a value not listed here. Kept as `enum` because this is the `notification` webhook's payload, which the compatibility check cannot mark extensible.
  @BuiltValueField(wireName: r'event')
  NotificationWebhookMessageEventEnum get event;
  // enum eventEnum {  alert,  briefing,  system,  chronicle.proposed,  chronicle.cap_warning,  chronicle.gap,  social.divergence,  social.attention_gap,  analyst.note,  situation.activated,  situation.escalated,  finding.significant,  forecast.resolved,  forecast.resolution_needed,  hypothesis.band_changed,  indicator.observed,  assumption.broken,  assessment.published,  mention,  share,  report.received,  package.received,  chronicle.access.requested,  saved-search.matches,  test,  personal,  };

  /// e.g. alert.fired, alert.acknowledged, alert.snoozed, alert.resolved, alert.digest (a quiet-hours, pause, backlog or grouping digest), system.source_failing, system.rule_storm, system.delivery_failed, system.push_provider_failed (032), briefing.run (029)
  @BuiltValueField(wireName: r'subtype')
  String get subtype;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// ≤ 40 chars, for watches, mesh and push
  @BuiltValueField(wireName: r'shortTitle')
  String? get shortTitle;

  /// Foresignal markdown subset
  @BuiltValueField(wireName: r'bodyMarkdown')
  String? get bodyMarkdown;

  @BuiltValueField(wireName: r'severity')
  NotificationWebhookMessageSeverityEnum get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// API link, e.g. `{publicBaseUrl}/v1/alerts/{id}`
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'links')
  BuiltList<NotificationLink>? get links;

  /// Full event data (alert or briefing-run JSON). Alert data carries `context` (056): the computed alert context with `context.weather` (`WeatherContext`, its `summary` sentence and sections) when the alert has one
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?>? get data;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Image attachments as media references (filled by 055)
  @BuiltValueField(wireName: r'attachments')
  BuiltList<Attachment>? get attachments;

  /// Notification this one updates (lifecycle updates)
  @BuiltValueField(wireName: r'updateOf')
  int? get updateOf;

  /// Install id of the sending instance (loop guard)
  @BuiltValueField(wireName: r'origin')
  String? get origin;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  /// Title prefixed [EXERCISE] and exercise footer appended
  @BuiltValueField(wireName: r'exercise')
  bool? get exercise;

  NotificationWebhookMessage._();

  factory NotificationWebhookMessage([
    void updates(NotificationWebhookMessageBuilder b),
  ]) = _$NotificationWebhookMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationWebhookMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationWebhookMessage> get serializer =>
      _$NotificationWebhookMessageSerializer();
}

class _$NotificationWebhookMessageSerializer
    implements PrimitiveSerializer<NotificationWebhookMessage> {
  @override
  final Iterable<Type> types = const [
    NotificationWebhookMessage,
    _$NotificationWebhookMessage,
  ];

  @override
  final String wireName = r'NotificationWebhookMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationWebhookMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NotificationWebhookMessageEventEnum),
    );
    yield r'subtype';
    yield serializers.serialize(
      object.subtype,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.shortTitle != null) {
      yield r'shortTitle';
      yield serializers.serialize(
        object.shortTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bodyMarkdown != null) {
      yield r'bodyMarkdown';
      yield serializers.serialize(
        object.bodyMarkdown,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(NotificationWebhookMessageSeverityEnum),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(NotificationLink)]),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
      );
    }
    if (object.updateOf != null) {
      yield r'updateOf';
      yield serializers.serialize(
        object.updateOf,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationWebhookMessage object, {
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
    required NotificationWebhookMessageBuilder result,
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
                      NotificationWebhookMessageEventEnum,
                    ),
                  )
                  as NotificationWebhookMessageEventEnum;
          result.event = valueDes;
          break;
        case r'subtype':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subtype = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'shortTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.shortTitle = valueDes;
          break;
        case r'bodyMarkdown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.bodyMarkdown = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationWebhookMessageSeverityEnum,
                    ),
                  )
                  as NotificationWebhookMessageSeverityEnum;
          result.severity = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NotificationLink),
                    ]),
                  )
                  as BuiltList<NotificationLink>?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'data':
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
          result.data.replace(valueDes);
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
        case r'updateOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.updateOf = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.origin = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationWebhookMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationWebhookMessageBuilder();
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

/// Grows as the server adds events: a receiver must accept a value not listed here. Kept as `enum` because this is the `notification` webhook's payload, which the compatibility check cannot mark extensible.
class NotificationWebhookMessageEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const NotificationWebhookMessageEventEnum alert =
      _$notificationWebhookMessageEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const NotificationWebhookMessageEventEnum briefing =
      _$notificationWebhookMessageEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const NotificationWebhookMessageEventEnum system =
      _$notificationWebhookMessageEventEnum_system;
  @BuiltValueEnumConst(wireName: r'chronicle.proposed')
  static const NotificationWebhookMessageEventEnum chroniclePeriodProposed =
      _$notificationWebhookMessageEventEnum_chroniclePeriodProposed;
  @BuiltValueEnumConst(wireName: r'chronicle.cap_warning')
  static const NotificationWebhookMessageEventEnum chroniclePeriodCapWarning =
      _$notificationWebhookMessageEventEnum_chroniclePeriodCapWarning;
  @BuiltValueEnumConst(wireName: r'chronicle.gap')
  static const NotificationWebhookMessageEventEnum chroniclePeriodGap =
      _$notificationWebhookMessageEventEnum_chroniclePeriodGap;
  @BuiltValueEnumConst(wireName: r'social.divergence')
  static const NotificationWebhookMessageEventEnum socialPeriodDivergence =
      _$notificationWebhookMessageEventEnum_socialPeriodDivergence;
  @BuiltValueEnumConst(wireName: r'social.attention_gap')
  static const NotificationWebhookMessageEventEnum socialPeriodAttentionGap =
      _$notificationWebhookMessageEventEnum_socialPeriodAttentionGap;
  @BuiltValueEnumConst(wireName: r'analyst.note')
  static const NotificationWebhookMessageEventEnum analystPeriodNote =
      _$notificationWebhookMessageEventEnum_analystPeriodNote;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const NotificationWebhookMessageEventEnum situationPeriodActivated =
      _$notificationWebhookMessageEventEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const NotificationWebhookMessageEventEnum situationPeriodEscalated =
      _$notificationWebhookMessageEventEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'finding.significant')
  static const NotificationWebhookMessageEventEnum findingPeriodSignificant =
      _$notificationWebhookMessageEventEnum_findingPeriodSignificant;
  @BuiltValueEnumConst(wireName: r'forecast.resolved')
  static const NotificationWebhookMessageEventEnum forecastPeriodResolved =
      _$notificationWebhookMessageEventEnum_forecastPeriodResolved;
  @BuiltValueEnumConst(wireName: r'forecast.resolution_needed')
  static const NotificationWebhookMessageEventEnum
  forecastPeriodResolutionNeeded =
      _$notificationWebhookMessageEventEnum_forecastPeriodResolutionNeeded;
  @BuiltValueEnumConst(wireName: r'hypothesis.band_changed')
  static const NotificationWebhookMessageEventEnum hypothesisPeriodBandChanged =
      _$notificationWebhookMessageEventEnum_hypothesisPeriodBandChanged;
  @BuiltValueEnumConst(wireName: r'indicator.observed')
  static const NotificationWebhookMessageEventEnum indicatorPeriodObserved =
      _$notificationWebhookMessageEventEnum_indicatorPeriodObserved;
  @BuiltValueEnumConst(wireName: r'assumption.broken')
  static const NotificationWebhookMessageEventEnum assumptionPeriodBroken =
      _$notificationWebhookMessageEventEnum_assumptionPeriodBroken;
  @BuiltValueEnumConst(wireName: r'assessment.published')
  static const NotificationWebhookMessageEventEnum assessmentPeriodPublished =
      _$notificationWebhookMessageEventEnum_assessmentPeriodPublished;
  @BuiltValueEnumConst(wireName: r'mention')
  static const NotificationWebhookMessageEventEnum mention =
      _$notificationWebhookMessageEventEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const NotificationWebhookMessageEventEnum share =
      _$notificationWebhookMessageEventEnum_share;
  @BuiltValueEnumConst(wireName: r'report.received')
  static const NotificationWebhookMessageEventEnum reportPeriodReceived =
      _$notificationWebhookMessageEventEnum_reportPeriodReceived;
  @BuiltValueEnumConst(wireName: r'package.received')
  static const NotificationWebhookMessageEventEnum packagePeriodReceived =
      _$notificationWebhookMessageEventEnum_packagePeriodReceived;
  @BuiltValueEnumConst(wireName: r'chronicle.access.requested')
  static const NotificationWebhookMessageEventEnum
  chroniclePeriodAccessPeriodRequested =
      _$notificationWebhookMessageEventEnum_chroniclePeriodAccessPeriodRequested;
  @BuiltValueEnumConst(wireName: r'saved-search.matches')
  static const NotificationWebhookMessageEventEnum savedSearchPeriodMatches =
      _$notificationWebhookMessageEventEnum_savedSearchPeriodMatches;
  @BuiltValueEnumConst(wireName: r'test')
  static const NotificationWebhookMessageEventEnum test =
      _$notificationWebhookMessageEventEnum_test;
  @BuiltValueEnumConst(wireName: r'personal')
  static const NotificationWebhookMessageEventEnum personal =
      _$notificationWebhookMessageEventEnum_personal;

  static Serializer<NotificationWebhookMessageEventEnum> get serializer =>
      _$notificationWebhookMessageEventEnumSerializer;

  const NotificationWebhookMessageEventEnum._(String name) : super(name);

  static BuiltSet<NotificationWebhookMessageEventEnum> get values =>
      _$notificationWebhookMessageEventEnumValues;
  static NotificationWebhookMessageEventEnum valueOf(String name) =>
      _$notificationWebhookMessageEventEnumValueOf(name);
}

class NotificationWebhookMessageSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const NotificationWebhookMessageSeverityEnum info =
      _$notificationWebhookMessageSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const NotificationWebhookMessageSeverityEnum warning =
      _$notificationWebhookMessageSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const NotificationWebhookMessageSeverityEnum critical =
      _$notificationWebhookMessageSeverityEnum_critical;

  static Serializer<NotificationWebhookMessageSeverityEnum> get serializer =>
      _$notificationWebhookMessageSeverityEnumSerializer;

  const NotificationWebhookMessageSeverityEnum._(String name) : super(name);

  static BuiltSet<NotificationWebhookMessageSeverityEnum> get values =>
      _$notificationWebhookMessageSeverityEnumValues;
  static NotificationWebhookMessageSeverityEnum valueOf(String name) =>
      _$notificationWebhookMessageSeverityEnumValueOf(name);
}
