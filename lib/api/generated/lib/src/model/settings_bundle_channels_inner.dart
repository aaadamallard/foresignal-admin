//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/quiet_hours.dart';
import 'package:foresignal_api/src/model/settings_bundle_channels_inner_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_bundle_channels_inner.g.dart';

/// SettingsBundleChannelsInner
///
/// Properties:
/// * [name]
/// * [type] - teams accepts only Power Automate Workflows URLs (Office 365 connector URLs → 400); webpush is the built-in Push channel (031): created at startup with a fixed id, updatable but not creatable (400); its config takes quietHoursMode (defer|downgrade|drop); mqtt (060) publishes on the operator's broker (config MqttChannelConfig, secrets username, password, caCertPem): events on {prefix}/alerts/{severity}, {prefix}/alerts/updates, {prefix}/briefings/{briefingId} and {prefix}/system/events, plus retained state and optional Home Assistant discovery; a public broker without TLS or credentials is saved with the warning MQTT_INSECURE_PUBLIC_BROKER; meshtastic (084) sends compact alert lines through the node's MQTT JSON downlink (config MeshtasticChannelConfig, secrets username, password) and meshcore (084) through the MeshCore companion protocol (config MeshcoreChannelConfig); both refuse public or default channels with MESH_PUBLIC_CHANNEL, pass every transmission through a LoRa airtime governor and take only alert.resolved among lifecycle updates
/// * [config]
/// * [secrets] - Write-only secret settings per the type's secretFields. A secretFields entry named `prefix.<Name>` (webhook `header.<Name>`) accepts any secret whose name starts with the prefix.
/// * [events] - Default [\"alert\"]. The personal-notice events (`mention`, `share`, `report.received`, `package.received`, `chronicle.proposed`, `chronicle.cap_warning`, `chronicle.gap`, `chronicle.access.requested`, `saved-search.matches`) deliver a copy of each such notice, once per addressee, with its TLP label at the head
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
/// * [global] - On create only (R2-009): true for a global channel (needs `channels.global`), false for a personal one (needs `self.channels`). Absent, a user holding `self.channels` gets a personal channel and anyone else a global one; an API token always creates global channels. Ignored on update.
/// * [id] - The channel id; import upserts by it
@BuiltValue()
abstract class SettingsBundleChannelsInner
    implements
        Built<SettingsBundleChannelsInner, SettingsBundleChannelsInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// teams accepts only Power Automate Workflows URLs (Office 365 connector URLs → 400); webpush is the built-in Push channel (031): created at startup with a fixed id, updatable but not creatable (400); its config takes quietHoursMode (defer|downgrade|drop); mqtt (060) publishes on the operator's broker (config MqttChannelConfig, secrets username, password, caCertPem): events on {prefix}/alerts/{severity}, {prefix}/alerts/updates, {prefix}/briefings/{briefingId} and {prefix}/system/events, plus retained state and optional Home Assistant discovery; a public broker without TLS or credentials is saved with the warning MQTT_INSECURE_PUBLIC_BROKER; meshtastic (084) sends compact alert lines through the node's MQTT JSON downlink (config MeshtasticChannelConfig, secrets username, password) and meshcore (084) through the MeshCore companion protocol (config MeshcoreChannelConfig); both refuse public or default channels with MESH_PUBLIC_CHANNEL, pass every transmission through a LoRa airtime governor and take only alert.resolved among lifecycle updates
  @BuiltValueField(wireName: r'type')
  SettingsBundleChannelsInnerTypeEnum get type;
  // enum typeEnum {  webhook,  slack,  mattermost,  discord,  teams,  google-chat,  telegram,  matrix,  ntfy,  gotify,  pushover,  email,  webpush,  homeassistant,  apprise,  zulip,  mqtt,  meshtastic,  meshcore,  };

  @BuiltValueField(wireName: r'config')
  SettingsBundleChannelsInnerConfig? get config;

  /// Write-only secret settings per the type's secretFields. A secretFields entry named `prefix.<Name>` (webhook `header.<Name>`) accepts any secret whose name starts with the prefix.
  @BuiltValueField(wireName: r'secrets')
  BuiltMap<String, String>? get secrets;

  /// Default [\"alert\"]. The personal-notice events (`mention`, `share`, `report.received`, `package.received`, `chronicle.proposed`, `chronicle.cap_warning`, `chronicle.gap`, `chronicle.access.requested`, `saved-search.matches`) deliver a copy of each such notice, once per addressee, with its TLP label at the head
  @BuiltValueField(wireName: r'events')
  BuiltList<SettingsBundleChannelsInnerEventsEnum>? get events;
  // enum eventsEnum {  alert,  briefing,  system,  chronicle.proposed,  chronicle.cap_warning,  chronicle.gap,  social.divergence,  social.attention_gap,  analyst.note,  situation.activated,  situation.escalated,  finding.significant,  forecast.resolved,  forecast.resolution_needed,  hypothesis.band_changed,  indicator.observed,  assumption.broken,  assessment.published,  mention,  share,  report.received,  package.received,  chronicle.access.requested,  saved-search.matches,  };

  /// null = all rules
  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'minSeverity')
  SettingsBundleChannelsInnerMinSeverityEnum? get minSeverity;
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

  /// On create only (R2-009): true for a global channel (needs `channels.global`), false for a personal one (needs `self.channels`). Absent, a user holding `self.channels` gets a personal channel and anyone else a global one; an API token always creates global channels. Ignored on update.
  @BuiltValueField(wireName: r'global')
  bool? get global;

  /// The channel id; import upserts by it
  @BuiltValueField(wireName: r'id')
  String get id;

  SettingsBundleChannelsInner._();

  factory SettingsBundleChannelsInner([
    void updates(SettingsBundleChannelsInnerBuilder b),
  ]) = _$SettingsBundleChannelsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsBundleChannelsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsBundleChannelsInner> get serializer =>
      _$SettingsBundleChannelsInnerSerializer();
}

class _$SettingsBundleChannelsInnerSerializer
    implements PrimitiveSerializer<SettingsBundleChannelsInner> {
  @override
  final Iterable<Type> types = const [
    SettingsBundleChannelsInner,
    _$SettingsBundleChannelsInner,
  ];

  @override
  final String wireName = r'SettingsBundleChannelsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsBundleChannelsInner object, {
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
      specifiedType: const FullType(SettingsBundleChannelsInnerTypeEnum),
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
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType: const FullType(BuiltList, [
          FullType(SettingsBundleChannelsInnerEventsEnum),
        ]),
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
        specifiedType: const FullType(
          SettingsBundleChannelsInnerMinSeverityEnum,
        ),
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
    if (object.global != null) {
      yield r'global';
      yield serializers.serialize(
        object.global,
        specifiedType: const FullType.nullable(bool),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsBundleChannelsInner object, {
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
    required SettingsBundleChannelsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SettingsBundleChannelsInnerTypeEnum,
                    ),
                  )
                  as SettingsBundleChannelsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SettingsBundleChannelsInnerConfig,
                    ),
                  )
                  as SettingsBundleChannelsInnerConfig?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'secrets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.secrets.replace(valueDes);
          break;
        case r'events':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SettingsBundleChannelsInnerEventsEnum),
                    ]),
                  )
                  as BuiltList<SettingsBundleChannelsInnerEventsEnum>?;
          if (valueDes == null) continue;
          result.events.replace(valueDes);
          break;
        case r'ruleIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SettingsBundleChannelsInnerMinSeverityEnum,
                    ),
                  )
                  as SettingsBundleChannelsInnerMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'titleTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.titleTemplate = valueDes;
          break;
        case r'bodyTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.bodyTemplate = valueDes;
          break;
        case r'waitForEnrichmentSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.waitForEnrichmentSeconds = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'quietHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuietHours),
                  )
                  as QuietHours?;
          if (valueDes == null) continue;
          result.quietHours.replace(valueDes);
          break;
        case r'groupWindowSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.groupWindowSeconds = valueDes;
          break;
        case r'backlogCap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.backlogCap = valueDes;
          break;
        case r'editInPlace':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.editInPlace = valueDes;
          break;
        case r'deferWhileActiveSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.deferWhileActiveSeconds = valueDes;
          break;
        case r'acceptExercise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.acceptExercise = valueDes;
          break;
        case r'language':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'global':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.global = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsBundleChannelsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsBundleChannelsInnerBuilder();
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
class SettingsBundleChannelsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'webhook')
  static const SettingsBundleChannelsInnerTypeEnum webhook =
      _$settingsBundleChannelsInnerTypeEnum_webhook;
  @BuiltValueEnumConst(wireName: r'slack')
  static const SettingsBundleChannelsInnerTypeEnum slack =
      _$settingsBundleChannelsInnerTypeEnum_slack;
  @BuiltValueEnumConst(wireName: r'mattermost')
  static const SettingsBundleChannelsInnerTypeEnum mattermost =
      _$settingsBundleChannelsInnerTypeEnum_mattermost;
  @BuiltValueEnumConst(wireName: r'discord')
  static const SettingsBundleChannelsInnerTypeEnum discord =
      _$settingsBundleChannelsInnerTypeEnum_discord;
  @BuiltValueEnumConst(wireName: r'teams')
  static const SettingsBundleChannelsInnerTypeEnum teams =
      _$settingsBundleChannelsInnerTypeEnum_teams;
  @BuiltValueEnumConst(wireName: r'google-chat')
  static const SettingsBundleChannelsInnerTypeEnum googleChat =
      _$settingsBundleChannelsInnerTypeEnum_googleChat;
  @BuiltValueEnumConst(wireName: r'telegram')
  static const SettingsBundleChannelsInnerTypeEnum telegram =
      _$settingsBundleChannelsInnerTypeEnum_telegram;
  @BuiltValueEnumConst(wireName: r'matrix')
  static const SettingsBundleChannelsInnerTypeEnum matrix =
      _$settingsBundleChannelsInnerTypeEnum_matrix;
  @BuiltValueEnumConst(wireName: r'ntfy')
  static const SettingsBundleChannelsInnerTypeEnum ntfy =
      _$settingsBundleChannelsInnerTypeEnum_ntfy;
  @BuiltValueEnumConst(wireName: r'gotify')
  static const SettingsBundleChannelsInnerTypeEnum gotify =
      _$settingsBundleChannelsInnerTypeEnum_gotify;
  @BuiltValueEnumConst(wireName: r'pushover')
  static const SettingsBundleChannelsInnerTypeEnum pushover =
      _$settingsBundleChannelsInnerTypeEnum_pushover;
  @BuiltValueEnumConst(wireName: r'email')
  static const SettingsBundleChannelsInnerTypeEnum email =
      _$settingsBundleChannelsInnerTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'webpush')
  static const SettingsBundleChannelsInnerTypeEnum webpush =
      _$settingsBundleChannelsInnerTypeEnum_webpush;
  @BuiltValueEnumConst(wireName: r'homeassistant')
  static const SettingsBundleChannelsInnerTypeEnum homeassistant =
      _$settingsBundleChannelsInnerTypeEnum_homeassistant;
  @BuiltValueEnumConst(wireName: r'apprise')
  static const SettingsBundleChannelsInnerTypeEnum apprise =
      _$settingsBundleChannelsInnerTypeEnum_apprise;
  @BuiltValueEnumConst(wireName: r'zulip')
  static const SettingsBundleChannelsInnerTypeEnum zulip =
      _$settingsBundleChannelsInnerTypeEnum_zulip;
  @BuiltValueEnumConst(wireName: r'mqtt')
  static const SettingsBundleChannelsInnerTypeEnum mqtt =
      _$settingsBundleChannelsInnerTypeEnum_mqtt;
  @BuiltValueEnumConst(wireName: r'meshtastic')
  static const SettingsBundleChannelsInnerTypeEnum meshtastic =
      _$settingsBundleChannelsInnerTypeEnum_meshtastic;
  @BuiltValueEnumConst(wireName: r'meshcore')
  static const SettingsBundleChannelsInnerTypeEnum meshcore =
      _$settingsBundleChannelsInnerTypeEnum_meshcore;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SettingsBundleChannelsInnerTypeEnum unknownDefaultOpenApi =
      _$settingsBundleChannelsInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<SettingsBundleChannelsInnerTypeEnum> get serializer =>
      _$settingsBundleChannelsInnerTypeEnumSerializer;

  const SettingsBundleChannelsInnerTypeEnum._(String name) : super(name);

  static BuiltSet<SettingsBundleChannelsInnerTypeEnum> get values =>
      _$settingsBundleChannelsInnerTypeEnumValues;
  static SettingsBundleChannelsInnerTypeEnum valueOf(String name) =>
      _$settingsBundleChannelsInnerTypeEnumValueOf(name);
}

class SettingsBundleChannelsInnerEventsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const SettingsBundleChannelsInnerEventsEnum alert =
      _$settingsBundleChannelsInnerEventsEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const SettingsBundleChannelsInnerEventsEnum briefing =
      _$settingsBundleChannelsInnerEventsEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const SettingsBundleChannelsInnerEventsEnum system =
      _$settingsBundleChannelsInnerEventsEnum_system;
  @BuiltValueEnumConst(wireName: r'chronicle.proposed')
  static const SettingsBundleChannelsInnerEventsEnum chroniclePeriodProposed =
      _$settingsBundleChannelsInnerEventsEnum_chroniclePeriodProposed;
  @BuiltValueEnumConst(wireName: r'chronicle.cap_warning')
  static const SettingsBundleChannelsInnerEventsEnum chroniclePeriodCapWarning =
      _$settingsBundleChannelsInnerEventsEnum_chroniclePeriodCapWarning;
  @BuiltValueEnumConst(wireName: r'chronicle.gap')
  static const SettingsBundleChannelsInnerEventsEnum chroniclePeriodGap =
      _$settingsBundleChannelsInnerEventsEnum_chroniclePeriodGap;
  @BuiltValueEnumConst(wireName: r'social.divergence')
  static const SettingsBundleChannelsInnerEventsEnum socialPeriodDivergence =
      _$settingsBundleChannelsInnerEventsEnum_socialPeriodDivergence;
  @BuiltValueEnumConst(wireName: r'social.attention_gap')
  static const SettingsBundleChannelsInnerEventsEnum socialPeriodAttentionGap =
      _$settingsBundleChannelsInnerEventsEnum_socialPeriodAttentionGap;
  @BuiltValueEnumConst(wireName: r'analyst.note')
  static const SettingsBundleChannelsInnerEventsEnum analystPeriodNote =
      _$settingsBundleChannelsInnerEventsEnum_analystPeriodNote;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const SettingsBundleChannelsInnerEventsEnum situationPeriodActivated =
      _$settingsBundleChannelsInnerEventsEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const SettingsBundleChannelsInnerEventsEnum situationPeriodEscalated =
      _$settingsBundleChannelsInnerEventsEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'finding.significant')
  static const SettingsBundleChannelsInnerEventsEnum findingPeriodSignificant =
      _$settingsBundleChannelsInnerEventsEnum_findingPeriodSignificant;
  @BuiltValueEnumConst(wireName: r'forecast.resolved')
  static const SettingsBundleChannelsInnerEventsEnum forecastPeriodResolved =
      _$settingsBundleChannelsInnerEventsEnum_forecastPeriodResolved;
  @BuiltValueEnumConst(wireName: r'forecast.resolution_needed')
  static const SettingsBundleChannelsInnerEventsEnum
  forecastPeriodResolutionNeeded =
      _$settingsBundleChannelsInnerEventsEnum_forecastPeriodResolutionNeeded;
  @BuiltValueEnumConst(wireName: r'hypothesis.band_changed')
  static const SettingsBundleChannelsInnerEventsEnum
  hypothesisPeriodBandChanged =
      _$settingsBundleChannelsInnerEventsEnum_hypothesisPeriodBandChanged;
  @BuiltValueEnumConst(wireName: r'indicator.observed')
  static const SettingsBundleChannelsInnerEventsEnum indicatorPeriodObserved =
      _$settingsBundleChannelsInnerEventsEnum_indicatorPeriodObserved;
  @BuiltValueEnumConst(wireName: r'assumption.broken')
  static const SettingsBundleChannelsInnerEventsEnum assumptionPeriodBroken =
      _$settingsBundleChannelsInnerEventsEnum_assumptionPeriodBroken;
  @BuiltValueEnumConst(wireName: r'assessment.published')
  static const SettingsBundleChannelsInnerEventsEnum assessmentPeriodPublished =
      _$settingsBundleChannelsInnerEventsEnum_assessmentPeriodPublished;
  @BuiltValueEnumConst(wireName: r'mention')
  static const SettingsBundleChannelsInnerEventsEnum mention =
      _$settingsBundleChannelsInnerEventsEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const SettingsBundleChannelsInnerEventsEnum share =
      _$settingsBundleChannelsInnerEventsEnum_share;
  @BuiltValueEnumConst(wireName: r'report.received')
  static const SettingsBundleChannelsInnerEventsEnum reportPeriodReceived =
      _$settingsBundleChannelsInnerEventsEnum_reportPeriodReceived;
  @BuiltValueEnumConst(wireName: r'package.received')
  static const SettingsBundleChannelsInnerEventsEnum packagePeriodReceived =
      _$settingsBundleChannelsInnerEventsEnum_packagePeriodReceived;
  @BuiltValueEnumConst(wireName: r'chronicle.access.requested')
  static const SettingsBundleChannelsInnerEventsEnum
  chroniclePeriodAccessPeriodRequested =
      _$settingsBundleChannelsInnerEventsEnum_chroniclePeriodAccessPeriodRequested;
  @BuiltValueEnumConst(wireName: r'saved-search.matches')
  static const SettingsBundleChannelsInnerEventsEnum savedSearchPeriodMatches =
      _$settingsBundleChannelsInnerEventsEnum_savedSearchPeriodMatches;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SettingsBundleChannelsInnerEventsEnum unknownDefaultOpenApi =
      _$settingsBundleChannelsInnerEventsEnum_unknownDefaultOpenApi;

  static Serializer<SettingsBundleChannelsInnerEventsEnum> get serializer =>
      _$settingsBundleChannelsInnerEventsEnumSerializer;

  const SettingsBundleChannelsInnerEventsEnum._(String name) : super(name);

  static BuiltSet<SettingsBundleChannelsInnerEventsEnum> get values =>
      _$settingsBundleChannelsInnerEventsEnumValues;
  static SettingsBundleChannelsInnerEventsEnum valueOf(String name) =>
      _$settingsBundleChannelsInnerEventsEnumValueOf(name);
}

class SettingsBundleChannelsInnerMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const SettingsBundleChannelsInnerMinSeverityEnum info =
      _$settingsBundleChannelsInnerMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const SettingsBundleChannelsInnerMinSeverityEnum warning =
      _$settingsBundleChannelsInnerMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const SettingsBundleChannelsInnerMinSeverityEnum critical =
      _$settingsBundleChannelsInnerMinSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SettingsBundleChannelsInnerMinSeverityEnum
  unknownDefaultOpenApi =
      _$settingsBundleChannelsInnerMinSeverityEnum_unknownDefaultOpenApi;

  static Serializer<SettingsBundleChannelsInnerMinSeverityEnum>
  get serializer => _$settingsBundleChannelsInnerMinSeverityEnumSerializer;

  const SettingsBundleChannelsInnerMinSeverityEnum._(String name) : super(name);

  static BuiltSet<SettingsBundleChannelsInnerMinSeverityEnum> get values =>
      _$settingsBundleChannelsInnerMinSeverityEnumValues;
  static SettingsBundleChannelsInnerMinSeverityEnum valueOf(String name) =>
      _$settingsBundleChannelsInnerMinSeverityEnumValueOf(name);
}
