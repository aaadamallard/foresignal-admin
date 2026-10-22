//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/quiet_hours.dart';
import 'package:foresignal_api/src/model/settings_bundle_channels_inner_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_input.g.dart';

/// ChannelInput
///
/// Properties:
/// * [name]
/// * [type] - teams accepts only Power Automate Workflows URLs (Office 365 connector URLs → 400); webpush is the built-in Push channel (031): created at startup with a fixed id, updatable but not creatable (400); its config takes quietHoursMode (defer|downgrade|drop); mqtt (060) publishes on the operator's broker (config MqttChannelConfig, secrets username, password, caCertPem): events on {prefix}/alerts/{severity}, {prefix}/alerts/updates, {prefix}/briefings/{briefingId} and {prefix}/system/events, plus retained state and optional Home Assistant discovery; a public broker without TLS or credentials is saved with the warning MQTT_INSECURE_PUBLIC_BROKER; meshtastic (084) sends compact alert lines through the node's MQTT JSON downlink (config MeshtasticChannelConfig, secrets username, password) and meshcore (084) through the MeshCore companion protocol (config MeshcoreChannelConfig); both refuse public or default channels with MESH_PUBLIC_CHANNEL, pass every transmission through a LoRa airtime governor and take only alert.resolved among lifecycle updates
/// * [config]
/// * [secrets] - Write-only secret settings per the type's secretFields. A secretFields entry named `prefix.<Name>` (webhook `header.<Name>`) accepts any secret whose name starts with the prefix.
/// * [events] - Prompt 018 accepts alert, briefing and system (default [\"alert\"]); the other values are subscribed by the prompts that introduce them
/// * [ruleIds] - null = all rules
/// * [minSeverity]
/// * [titleTemplate]
/// * [bodyTemplate]
/// * [waitForEnrichmentSeconds]
/// * [enabled]
/// * [timezone] - IANA timezone for quiet hours and `|local` template filters (default: the `server` setting's timezone, else UTC)
/// * [quietHours] - Quiet hours in the channel timezone; null for none
/// * [groupWindowSeconds] - > 0 holds the first alert per (channel, rule) for the window and sends one grouped message
/// * [backlogCap] - Pending sends above this are folded into one digest (\"+N more alerts\")
/// * [editInPlace] - Edit the original message on lifecycle updates where the type supports it (Discord, Telegram, Matrix)
/// * [deferWhileActiveSeconds] - Defer non-critical alerts while a desktop client is active (033); for phone-type channels
/// * [acceptExercise] - Receive exercise alerts
/// * [language] - BCP 47 language for notifications on this channel (141), stored canonicalized (`pt-br` → `pt-BR`); null uses `notify.defaultLanguage`. When the primary language or script differs from it, title and body are translated through the 026 chat role (budget `translate`, low effort), code spans, URLs and placeholders untouched, cached 24 h; after 8 s, or on any failure, the original is sent with the title prefixed `[untranslated]`.
@BuiltValue()
abstract class ChannelInput
    implements Built<ChannelInput, ChannelInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// teams accepts only Power Automate Workflows URLs (Office 365 connector URLs → 400); webpush is the built-in Push channel (031): created at startup with a fixed id, updatable but not creatable (400); its config takes quietHoursMode (defer|downgrade|drop); mqtt (060) publishes on the operator's broker (config MqttChannelConfig, secrets username, password, caCertPem): events on {prefix}/alerts/{severity}, {prefix}/alerts/updates, {prefix}/briefings/{briefingId} and {prefix}/system/events, plus retained state and optional Home Assistant discovery; a public broker without TLS or credentials is saved with the warning MQTT_INSECURE_PUBLIC_BROKER; meshtastic (084) sends compact alert lines through the node's MQTT JSON downlink (config MeshtasticChannelConfig, secrets username, password) and meshcore (084) through the MeshCore companion protocol (config MeshcoreChannelConfig); both refuse public or default channels with MESH_PUBLIC_CHANNEL, pass every transmission through a LoRa airtime governor and take only alert.resolved among lifecycle updates
  @BuiltValueField(wireName: r'type')
  ChannelInputTypeEnum get type;
  // enum typeEnum {  webhook,  slack,  mattermost,  discord,  teams,  google-chat,  telegram,  matrix,  ntfy,  gotify,  pushover,  email,  webpush,  homeassistant,  apprise,  zulip,  mqtt,  meshtastic,  meshcore,  };

  @BuiltValueField(wireName: r'config')
  SettingsBundleChannelsInnerConfig? get config;

  /// Write-only secret settings per the type's secretFields. A secretFields entry named `prefix.<Name>` (webhook `header.<Name>`) accepts any secret whose name starts with the prefix.
  @BuiltValueField(wireName: r'secrets')
  BuiltMap<String, String>? get secrets;

  /// Prompt 018 accepts alert, briefing and system (default [\"alert\"]); the other values are subscribed by the prompts that introduce them
  @BuiltValueField(wireName: r'events')
  BuiltList<ChannelInputEventsEnum>? get events;
  // enum eventsEnum {  alert,  briefing,  system,  chronicle.proposed,  chronicle.cap_warning,  chronicle.gap,  social.divergence,  social.attention_gap,  analyst.note,  situation.activated,  situation.escalated,  finding.significant,  forecast.resolved,  forecast.resolution_needed,  hypothesis.band_changed,  indicator.observed,  assumption.broken,  assessment.published,  mention,  share,  report.received,  package.received,  chronicle.access.requested,  saved-search.matches,  };

  /// null = all rules
  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'minSeverity')
  ChannelInputMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'titleTemplate')
  String? get titleTemplate;

  @BuiltValueField(wireName: r'bodyTemplate')
  String? get bodyTemplate;

  @BuiltValueField(wireName: r'waitForEnrichmentSeconds')
  int? get waitForEnrichmentSeconds;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// IANA timezone for quiet hours and `|local` template filters (default: the `server` setting's timezone, else UTC)
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  /// Quiet hours in the channel timezone; null for none
  @BuiltValueField(wireName: r'quietHours')
  QuietHours? get quietHours;

  /// > 0 holds the first alert per (channel, rule) for the window and sends one grouped message
  @BuiltValueField(wireName: r'groupWindowSeconds')
  int? get groupWindowSeconds;

  /// Pending sends above this are folded into one digest (\"+N more alerts\")
  @BuiltValueField(wireName: r'backlogCap')
  int? get backlogCap;

  /// Edit the original message on lifecycle updates where the type supports it (Discord, Telegram, Matrix)
  @BuiltValueField(wireName: r'editInPlace')
  bool? get editInPlace;

  /// Defer non-critical alerts while a desktop client is active (033); for phone-type channels
  @BuiltValueField(wireName: r'deferWhileActiveSeconds')
  int? get deferWhileActiveSeconds;

  /// Receive exercise alerts
  @BuiltValueField(wireName: r'acceptExercise')
  bool? get acceptExercise;

  /// BCP 47 language for notifications on this channel (141), stored canonicalized (`pt-br` → `pt-BR`); null uses `notify.defaultLanguage`. When the primary language or script differs from it, title and body are translated through the 026 chat role (budget `translate`, low effort), code spans, URLs and placeholders untouched, cached 24 h; after 8 s, or on any failure, the original is sent with the title prefixed `[untranslated]`.
  @BuiltValueField(wireName: r'language')
  String? get language;

  ChannelInput._();

  factory ChannelInput([void updates(ChannelInputBuilder b)]) = _$ChannelInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelInput> get serializer => _$ChannelInputSerializer();
}

class _$ChannelInputSerializer implements PrimitiveSerializer<ChannelInput> {
  @override
  final Iterable<Type> types = const [ChannelInput, _$ChannelInput];

  @override
  final String wireName = r'ChannelInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChannelInputTypeEnum),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(SettingsBundleChannelsInnerConfig),
      );
    }
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType:
            const FullType(BuiltList, [FullType(ChannelInputEventsEnum)]),
      );
    }
    if (object.ruleIds != null) {
      yield r'ruleIds';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(ChannelInputMinSeverityEnum),
      );
    }
    if (object.titleTemplate != null) {
      yield r'titleTemplate';
      yield serializers.serialize(
        object.titleTemplate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bodyTemplate != null) {
      yield r'bodyTemplate';
      yield serializers.serialize(
        object.bodyTemplate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.waitForEnrichmentSeconds != null) {
      yield r'waitForEnrichmentSeconds';
      yield serializers.serialize(
        object.waitForEnrichmentSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quietHours != null) {
      yield r'quietHours';
      yield serializers.serialize(
        object.quietHours,
        specifiedType: const FullType.nullable(QuietHours),
      );
    }
    if (object.groupWindowSeconds != null) {
      yield r'groupWindowSeconds';
      yield serializers.serialize(
        object.groupWindowSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.backlogCap != null) {
      yield r'backlogCap';
      yield serializers.serialize(
        object.backlogCap,
        specifiedType: const FullType(int),
      );
    }
    if (object.editInPlace != null) {
      yield r'editInPlace';
      yield serializers.serialize(
        object.editInPlace,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deferWhileActiveSeconds != null) {
      yield r'deferWhileActiveSeconds';
      yield serializers.serialize(
        object.deferWhileActiveSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.acceptExercise != null) {
      yield r'acceptExercise';
      yield serializers.serialize(
        object.acceptExercise,
        specifiedType: const FullType(bool),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChannelInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChannelInputTypeEnum),
          ) as ChannelInputTypeEnum;
          result.type = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SettingsBundleChannelsInnerConfig),
          ) as SettingsBundleChannelsInnerConfig?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'secrets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.secrets.replace(valueDes);
          break;
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChannelInputEventsEnum)]),
          ) as BuiltList<ChannelInputEventsEnum>?;
          if (valueDes == null) continue;
          result.events.replace(valueDes);
          break;
        case r'ruleIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChannelInputMinSeverityEnum),
          ) as ChannelInputMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'titleTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.titleTemplate = valueDes;
          break;
        case r'bodyTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bodyTemplate = valueDes;
          break;
        case r'waitForEnrichmentSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.waitForEnrichmentSeconds = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'quietHours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(QuietHours),
          ) as QuietHours?;
          if (valueDes == null) continue;
          result.quietHours.replace(valueDes);
          break;
        case r'groupWindowSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.groupWindowSeconds = valueDes;
          break;
        case r'backlogCap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.backlogCap = valueDes;
          break;
        case r'editInPlace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.editInPlace = valueDes;
          break;
        case r'deferWhileActiveSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.deferWhileActiveSeconds = valueDes;
          break;
        case r'acceptExercise':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.acceptExercise = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelInputBuilder();
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

/// teams accepts only Power Automate Workflows URLs (Office 365 connector URLs → 400); webpush is the built-in Push channel (031): created at startup with a fixed id, updatable but not creatable (400); its config takes quietHoursMode (defer|downgrade|drop); mqtt (060) publishes on the operator's broker (config MqttChannelConfig, secrets username, password, caCertPem): events on {prefix}/alerts/{severity}, {prefix}/alerts/updates, {prefix}/briefings/{briefingId} and {prefix}/system/events, plus retained state and optional Home Assistant discovery; a public broker without TLS or credentials is saved with the warning MQTT_INSECURE_PUBLIC_BROKER; meshtastic (084) sends compact alert lines through the node's MQTT JSON downlink (config MeshtasticChannelConfig, secrets username, password) and meshcore (084) through the MeshCore companion protocol (config MeshcoreChannelConfig); both refuse public or default channels with MESH_PUBLIC_CHANNEL, pass every transmission through a LoRa airtime governor and take only alert.resolved among lifecycle updates
class ChannelInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'webhook')
  static const ChannelInputTypeEnum webhook = _$channelInputTypeEnum_webhook;
  @BuiltValueEnumConst(wireName: r'slack')
  static const ChannelInputTypeEnum slack = _$channelInputTypeEnum_slack;
  @BuiltValueEnumConst(wireName: r'mattermost')
  static const ChannelInputTypeEnum mattermost =
      _$channelInputTypeEnum_mattermost;
  @BuiltValueEnumConst(wireName: r'discord')
  static const ChannelInputTypeEnum discord = _$channelInputTypeEnum_discord;
  @BuiltValueEnumConst(wireName: r'teams')
  static const ChannelInputTypeEnum teams = _$channelInputTypeEnum_teams;
  @BuiltValueEnumConst(wireName: r'google-chat')
  static const ChannelInputTypeEnum googleChat =
      _$channelInputTypeEnum_googleChat;
  @BuiltValueEnumConst(wireName: r'telegram')
  static const ChannelInputTypeEnum telegram = _$channelInputTypeEnum_telegram;
  @BuiltValueEnumConst(wireName: r'matrix')
  static const ChannelInputTypeEnum matrix = _$channelInputTypeEnum_matrix;
  @BuiltValueEnumConst(wireName: r'ntfy')
  static const ChannelInputTypeEnum ntfy = _$channelInputTypeEnum_ntfy;
  @BuiltValueEnumConst(wireName: r'gotify')
  static const ChannelInputTypeEnum gotify = _$channelInputTypeEnum_gotify;
  @BuiltValueEnumConst(wireName: r'pushover')
  static const ChannelInputTypeEnum pushover = _$channelInputTypeEnum_pushover;
  @BuiltValueEnumConst(wireName: r'email')
  static const ChannelInputTypeEnum email = _$channelInputTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'webpush')
  static const ChannelInputTypeEnum webpush = _$channelInputTypeEnum_webpush;
  @BuiltValueEnumConst(wireName: r'homeassistant')
  static const ChannelInputTypeEnum homeassistant =
      _$channelInputTypeEnum_homeassistant;
  @BuiltValueEnumConst(wireName: r'apprise')
  static const ChannelInputTypeEnum apprise = _$channelInputTypeEnum_apprise;
  @BuiltValueEnumConst(wireName: r'zulip')
  static const ChannelInputTypeEnum zulip = _$channelInputTypeEnum_zulip;
  @BuiltValueEnumConst(wireName: r'mqtt')
  static const ChannelInputTypeEnum mqtt = _$channelInputTypeEnum_mqtt;
  @BuiltValueEnumConst(wireName: r'meshtastic')
  static const ChannelInputTypeEnum meshtastic =
      _$channelInputTypeEnum_meshtastic;
  @BuiltValueEnumConst(wireName: r'meshcore')
  static const ChannelInputTypeEnum meshcore = _$channelInputTypeEnum_meshcore;

  static Serializer<ChannelInputTypeEnum> get serializer =>
      _$channelInputTypeEnumSerializer;

  const ChannelInputTypeEnum._(String name) : super(name);

  static BuiltSet<ChannelInputTypeEnum> get values =>
      _$channelInputTypeEnumValues;
  static ChannelInputTypeEnum valueOf(String name) =>
      _$channelInputTypeEnumValueOf(name);
}

class ChannelInputEventsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const ChannelInputEventsEnum alert = _$channelInputEventsEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const ChannelInputEventsEnum briefing =
      _$channelInputEventsEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const ChannelInputEventsEnum system = _$channelInputEventsEnum_system;
  @BuiltValueEnumConst(wireName: r'chronicle.proposed')
  static const ChannelInputEventsEnum chroniclePeriodProposed =
      _$channelInputEventsEnum_chroniclePeriodProposed;
  @BuiltValueEnumConst(wireName: r'chronicle.cap_warning')
  static const ChannelInputEventsEnum chroniclePeriodCapWarning =
      _$channelInputEventsEnum_chroniclePeriodCapWarning;
  @BuiltValueEnumConst(wireName: r'chronicle.gap')
  static const ChannelInputEventsEnum chroniclePeriodGap =
      _$channelInputEventsEnum_chroniclePeriodGap;
  @BuiltValueEnumConst(wireName: r'social.divergence')
  static const ChannelInputEventsEnum socialPeriodDivergence =
      _$channelInputEventsEnum_socialPeriodDivergence;
  @BuiltValueEnumConst(wireName: r'social.attention_gap')
  static const ChannelInputEventsEnum socialPeriodAttentionGap =
      _$channelInputEventsEnum_socialPeriodAttentionGap;
  @BuiltValueEnumConst(wireName: r'analyst.note')
  static const ChannelInputEventsEnum analystPeriodNote =
      _$channelInputEventsEnum_analystPeriodNote;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const ChannelInputEventsEnum situationPeriodActivated =
      _$channelInputEventsEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const ChannelInputEventsEnum situationPeriodEscalated =
      _$channelInputEventsEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'finding.significant')
  static const ChannelInputEventsEnum findingPeriodSignificant =
      _$channelInputEventsEnum_findingPeriodSignificant;
  @BuiltValueEnumConst(wireName: r'forecast.resolved')
  static const ChannelInputEventsEnum forecastPeriodResolved =
      _$channelInputEventsEnum_forecastPeriodResolved;
  @BuiltValueEnumConst(wireName: r'forecast.resolution_needed')
  static const ChannelInputEventsEnum forecastPeriodResolutionNeeded =
      _$channelInputEventsEnum_forecastPeriodResolutionNeeded;
  @BuiltValueEnumConst(wireName: r'hypothesis.band_changed')
  static const ChannelInputEventsEnum hypothesisPeriodBandChanged =
      _$channelInputEventsEnum_hypothesisPeriodBandChanged;
  @BuiltValueEnumConst(wireName: r'indicator.observed')
  static const ChannelInputEventsEnum indicatorPeriodObserved =
      _$channelInputEventsEnum_indicatorPeriodObserved;
  @BuiltValueEnumConst(wireName: r'assumption.broken')
  static const ChannelInputEventsEnum assumptionPeriodBroken =
      _$channelInputEventsEnum_assumptionPeriodBroken;
  @BuiltValueEnumConst(wireName: r'assessment.published')
  static const ChannelInputEventsEnum assessmentPeriodPublished =
      _$channelInputEventsEnum_assessmentPeriodPublished;
  @BuiltValueEnumConst(wireName: r'mention')
  static const ChannelInputEventsEnum mention =
      _$channelInputEventsEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const ChannelInputEventsEnum share = _$channelInputEventsEnum_share;
  @BuiltValueEnumConst(wireName: r'report.received')
  static const ChannelInputEventsEnum reportPeriodReceived =
      _$channelInputEventsEnum_reportPeriodReceived;
  @BuiltValueEnumConst(wireName: r'package.received')
  static const ChannelInputEventsEnum packagePeriodReceived =
      _$channelInputEventsEnum_packagePeriodReceived;
  @BuiltValueEnumConst(wireName: r'chronicle.access.requested')
  static const ChannelInputEventsEnum chroniclePeriodAccessPeriodRequested =
      _$channelInputEventsEnum_chroniclePeriodAccessPeriodRequested;
  @BuiltValueEnumConst(wireName: r'saved-search.matches')
  static const ChannelInputEventsEnum savedSearchPeriodMatches =
      _$channelInputEventsEnum_savedSearchPeriodMatches;

  static Serializer<ChannelInputEventsEnum> get serializer =>
      _$channelInputEventsEnumSerializer;

  const ChannelInputEventsEnum._(String name) : super(name);

  static BuiltSet<ChannelInputEventsEnum> get values =>
      _$channelInputEventsEnumValues;
  static ChannelInputEventsEnum valueOf(String name) =>
      _$channelInputEventsEnumValueOf(name);
}

class ChannelInputMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const ChannelInputMinSeverityEnum info =
      _$channelInputMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const ChannelInputMinSeverityEnum warning =
      _$channelInputMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const ChannelInputMinSeverityEnum critical =
      _$channelInputMinSeverityEnum_critical;

  static Serializer<ChannelInputMinSeverityEnum> get serializer =>
      _$channelInputMinSeverityEnumSerializer;

  const ChannelInputMinSeverityEnum._(String name) : super(name);

  static BuiltSet<ChannelInputMinSeverityEnum> get values =>
      _$channelInputMinSeverityEnumValues;
  static ChannelInputMinSeverityEnum valueOf(String name) =>
      _$channelInputMinSeverityEnumValueOf(name);
}
