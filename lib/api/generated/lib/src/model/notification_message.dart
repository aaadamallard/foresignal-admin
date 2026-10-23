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

part 'notification_message.g.dart';

/// Persisted notification (one `notification` row) delivered to channels and the notification topics
///
/// Properties:
/// * [id] - Notification id
/// * [event]
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
abstract class NotificationMessage
    implements Built<NotificationMessage, NotificationMessageBuilder> {
  /// Notification id
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'event')
  NotificationMessageEventEnum get event;
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
  NotificationMessageSeverityEnum get severity;
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

  NotificationMessage._();

  factory NotificationMessage([void updates(NotificationMessageBuilder b)]) =
      _$NotificationMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationMessage> get serializer =>
      _$NotificationMessageSerializer();
}

class _$NotificationMessageSerializer
    implements PrimitiveSerializer<NotificationMessage> {
  @override
  final Iterable<Type> types = const [
    NotificationMessage,
    _$NotificationMessage,
  ];

  @override
  final String wireName = r'NotificationMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NotificationMessageEventEnum),
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
      specifiedType: const FullType(NotificationMessageSeverityEnum),
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
    NotificationMessage object, {
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
    required NotificationMessageBuilder result,
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
                    specifiedType: const FullType(NotificationMessageEventEnum),
                  )
                  as NotificationMessageEventEnum;
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
                      NotificationMessageSeverityEnum,
                    ),
                  )
                  as NotificationMessageSeverityEnum;
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
  NotificationMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationMessageBuilder();
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

class NotificationMessageEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const NotificationMessageEventEnum alert =
      _$notificationMessageEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const NotificationMessageEventEnum briefing =
      _$notificationMessageEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const NotificationMessageEventEnum system =
      _$notificationMessageEventEnum_system;
  @BuiltValueEnumConst(wireName: r'chronicle.proposed')
  static const NotificationMessageEventEnum chroniclePeriodProposed =
      _$notificationMessageEventEnum_chroniclePeriodProposed;
  @BuiltValueEnumConst(wireName: r'chronicle.cap_warning')
  static const NotificationMessageEventEnum chroniclePeriodCapWarning =
      _$notificationMessageEventEnum_chroniclePeriodCapWarning;
  @BuiltValueEnumConst(wireName: r'chronicle.gap')
  static const NotificationMessageEventEnum chroniclePeriodGap =
      _$notificationMessageEventEnum_chroniclePeriodGap;
  @BuiltValueEnumConst(wireName: r'social.divergence')
  static const NotificationMessageEventEnum socialPeriodDivergence =
      _$notificationMessageEventEnum_socialPeriodDivergence;
  @BuiltValueEnumConst(wireName: r'social.attention_gap')
  static const NotificationMessageEventEnum socialPeriodAttentionGap =
      _$notificationMessageEventEnum_socialPeriodAttentionGap;
  @BuiltValueEnumConst(wireName: r'analyst.note')
  static const NotificationMessageEventEnum analystPeriodNote =
      _$notificationMessageEventEnum_analystPeriodNote;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const NotificationMessageEventEnum situationPeriodActivated =
      _$notificationMessageEventEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const NotificationMessageEventEnum situationPeriodEscalated =
      _$notificationMessageEventEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'finding.significant')
  static const NotificationMessageEventEnum findingPeriodSignificant =
      _$notificationMessageEventEnum_findingPeriodSignificant;
  @BuiltValueEnumConst(wireName: r'forecast.resolved')
  static const NotificationMessageEventEnum forecastPeriodResolved =
      _$notificationMessageEventEnum_forecastPeriodResolved;
  @BuiltValueEnumConst(wireName: r'forecast.resolution_needed')
  static const NotificationMessageEventEnum forecastPeriodResolutionNeeded =
      _$notificationMessageEventEnum_forecastPeriodResolutionNeeded;
  @BuiltValueEnumConst(wireName: r'hypothesis.band_changed')
  static const NotificationMessageEventEnum hypothesisPeriodBandChanged =
      _$notificationMessageEventEnum_hypothesisPeriodBandChanged;
  @BuiltValueEnumConst(wireName: r'indicator.observed')
  static const NotificationMessageEventEnum indicatorPeriodObserved =
      _$notificationMessageEventEnum_indicatorPeriodObserved;
  @BuiltValueEnumConst(wireName: r'assumption.broken')
  static const NotificationMessageEventEnum assumptionPeriodBroken =
      _$notificationMessageEventEnum_assumptionPeriodBroken;
  @BuiltValueEnumConst(wireName: r'assessment.published')
  static const NotificationMessageEventEnum assessmentPeriodPublished =
      _$notificationMessageEventEnum_assessmentPeriodPublished;
  @BuiltValueEnumConst(wireName: r'mention')
  static const NotificationMessageEventEnum mention =
      _$notificationMessageEventEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const NotificationMessageEventEnum share =
      _$notificationMessageEventEnum_share;
  @BuiltValueEnumConst(wireName: r'report.received')
  static const NotificationMessageEventEnum reportPeriodReceived =
      _$notificationMessageEventEnum_reportPeriodReceived;
  @BuiltValueEnumConst(wireName: r'package.received')
  static const NotificationMessageEventEnum packagePeriodReceived =
      _$notificationMessageEventEnum_packagePeriodReceived;
  @BuiltValueEnumConst(wireName: r'chronicle.access.requested')
  static const NotificationMessageEventEnum
  chroniclePeriodAccessPeriodRequested =
      _$notificationMessageEventEnum_chroniclePeriodAccessPeriodRequested;
  @BuiltValueEnumConst(wireName: r'saved-search.matches')
  static const NotificationMessageEventEnum savedSearchPeriodMatches =
      _$notificationMessageEventEnum_savedSearchPeriodMatches;
  @BuiltValueEnumConst(wireName: r'test')
  static const NotificationMessageEventEnum test =
      _$notificationMessageEventEnum_test;
  @BuiltValueEnumConst(wireName: r'personal')
  static const NotificationMessageEventEnum personal =
      _$notificationMessageEventEnum_personal;

  static Serializer<NotificationMessageEventEnum> get serializer =>
      _$notificationMessageEventEnumSerializer;

  const NotificationMessageEventEnum._(String name) : super(name);

  static BuiltSet<NotificationMessageEventEnum> get values =>
      _$notificationMessageEventEnumValues;
  static NotificationMessageEventEnum valueOf(String name) =>
      _$notificationMessageEventEnumValueOf(name);
}

class NotificationMessageSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const NotificationMessageSeverityEnum info =
      _$notificationMessageSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const NotificationMessageSeverityEnum warning =
      _$notificationMessageSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const NotificationMessageSeverityEnum critical =
      _$notificationMessageSeverityEnum_critical;

  static Serializer<NotificationMessageSeverityEnum> get serializer =>
      _$notificationMessageSeverityEnumSerializer;

  const NotificationMessageSeverityEnum._(String name) : super(name);

  static BuiltSet<NotificationMessageSeverityEnum> get values =>
      _$notificationMessageSeverityEnumValues;
  static NotificationMessageSeverityEnum valueOf(String name) =>
      _$notificationMessageSeverityEnumValueOf(name);
}
