//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/channel_warnings_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/quiet_hours.dart';
import 'package:foresignal_api/src/model/channel_interactive_status.dart';
import 'package:foresignal_api/src/model/settings_bundle_channels_inner_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel.g.dart';

/// Channel
///
/// Properties:
/// * [id]
/// * [name]
/// * [type]
/// * [config]
/// * [secretFields] - Names of the secret fields that are set (values are never returned)
/// * [events] - The subscribed events. `personal` marks a principal's personal channel (prompt 130), which carries only that principal's notifications; createChannel and updateChannel never accept it. `mention`, `share`, `report.received`, `package.received`, `chronicle.proposed`, `chronicle.cap_warning`, `chronicle.gap`, `chronicle.access.requested` and `saved-search.matches` on an instance channel receive a copy of each such personal notice, once per addressee, with its TLP label at the head; the copies never reach the device inbox or the instance SSE topics
/// * [ruleIds]
/// * [minSeverity]
/// * [titleTemplate]
/// * [bodyTemplate]
/// * [waitForEnrichmentSeconds]
/// * [enabled]
/// * [createdAt]
/// * [updatedAt]
/// * [lastDeliveryAt]
/// * [failedLast24h]
/// * [timezone] - IANA timezone for quiet hours and `|local` template filters (default: the `server` setting's timezone, else UTC)
/// * [quietHours]
/// * [groupWindowSeconds] - > 0 holds the first alert per (channel, rule) for the window and sends one grouped message
/// * [backlogCap] - Pending sends above this are folded into one digest (\"+N more alerts\")
/// * [editInPlace] - Edit the original message on lifecycle updates where the type supports it (Discord, Telegram, Matrix)
/// * [deferWhileActiveSeconds] - Defer non-critical alerts while a desktop client is active (033); for phone-type channels
/// * [warnings] - Non-fatal configuration warnings, e.g. MQTT_INSECURE_PUBLIC_BROKER (060); absent when there are none
/// * [interactive] - Interactive chat-command status for telegram/matrix channels (061)
/// * [acceptExercise] - Receives exercise alerts
/// * [language] - BCP 47; when it differs from `notify.defaultLanguage` (primary language or script) title and body are translated (026 chat role, budget `translate`), cached 24 h, the original with an `[untranslated]` title marker after 8 s or on failure (141)
/// * [ownerPrincipalId] - The principal of the user who owns this personal channel (R2-009); null for a global channel.
/// * [global] - True for a global (instance-wide) channel, managed with `channels.global` (R2-009).
@BuiltValue()
abstract class Channel implements Built<Channel, ChannelBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  ChannelTypeEnum get type;
  // enum typeEnum {  webhook,  slack,  mattermost,  discord,  teams,  google-chat,  telegram,  matrix,  ntfy,  gotify,  pushover,  email,  webpush,  homeassistant,  apprise,  zulip,  mqtt,  meshtastic,  meshcore,  };

  @BuiltValueField(wireName: r'config')
  SettingsBundleChannelsInnerConfig? get config;

  /// Names of the secret fields that are set (values are never returned)
  @BuiltValueField(wireName: r'secretFields')
  BuiltList<String>? get secretFields;

  /// The subscribed events. `personal` marks a principal's personal channel (prompt 130), which carries only that principal's notifications; createChannel and updateChannel never accept it. `mention`, `share`, `report.received`, `package.received`, `chronicle.proposed`, `chronicle.cap_warning`, `chronicle.gap`, `chronicle.access.requested` and `saved-search.matches` on an instance channel receive a copy of each such personal notice, once per addressee, with its TLP label at the head; the copies never reach the device inbox or the instance SSE topics
  @BuiltValueField(wireName: r'events')
  BuiltList<String> get events;

  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'minSeverity')
  ChannelMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'titleTemplate')
  String? get titleTemplate;

  @BuiltValueField(wireName: r'bodyTemplate')
  String? get bodyTemplate;

  @BuiltValueField(wireName: r'waitForEnrichmentSeconds')
  int? get waitForEnrichmentSeconds;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'lastDeliveryAt')
  DateTime? get lastDeliveryAt;

  @BuiltValueField(wireName: r'failedLast24h')
  int? get failedLast24h;

  /// IANA timezone for quiet hours and `|local` template filters (default: the `server` setting's timezone, else UTC)
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

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

  /// Non-fatal configuration warnings, e.g. MQTT_INSECURE_PUBLIC_BROKER (060); absent when there are none
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ChannelWarningsInner>? get warnings;

  /// Interactive chat-command status for telegram/matrix channels (061)
  @BuiltValueField(wireName: r'interactive')
  ChannelInteractiveStatus? get interactive;

  /// Receives exercise alerts
  @BuiltValueField(wireName: r'acceptExercise')
  bool? get acceptExercise;

  /// BCP 47; when it differs from `notify.defaultLanguage` (primary language or script) title and body are translated (026 chat role, budget `translate`), cached 24 h, the original with an `[untranslated]` title marker after 8 s or on failure (141)
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// The principal of the user who owns this personal channel (R2-009); null for a global channel.
  @BuiltValueField(wireName: r'ownerPrincipalId')
  String? get ownerPrincipalId;

  /// True for a global (instance-wide) channel, managed with `channels.global` (R2-009).
  @BuiltValueField(wireName: r'global')
  bool? get global;

  Channel._();

  factory Channel([void updates(ChannelBuilder b)]) = _$Channel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Channel> get serializer => _$ChannelSerializer();
}

class _$ChannelSerializer implements PrimitiveSerializer<Channel> {
  @override
  final Iterable<Type> types = const [Channel, _$Channel];

  @override
  final String wireName = r'Channel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Channel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChannelTypeEnum),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(SettingsBundleChannelsInnerConfig),
      );
    }
    if (object.secretFields != null) {
      yield r'secretFields';
      yield serializers.serialize(
        object.secretFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
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
        specifiedType: const FullType(ChannelMinSeverityEnum),
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
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastDeliveryAt != null) {
      yield r'lastDeliveryAt';
      yield serializers.serialize(
        object.lastDeliveryAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.failedLast24h != null) {
      yield r'failedLast24h';
      yield serializers.serialize(
        object.failedLast24h,
        specifiedType: const FullType(int),
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
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [
          FullType(ChannelWarningsInner),
        ]),
      );
    }
    if (object.interactive != null) {
      yield r'interactive';
      yield serializers.serialize(
        object.interactive,
        specifiedType: const FullType.nullable(ChannelInteractiveStatus),
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
    if (object.ownerPrincipalId != null) {
      yield r'ownerPrincipalId';
      yield serializers.serialize(
        object.ownerPrincipalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.global != null) {
      yield r'global';
      yield serializers.serialize(
        object.global,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Channel object, {
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
    required ChannelBuilder result,
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
                    specifiedType: const FullType(ChannelTypeEnum),
                  )
                  as ChannelTypeEnum;
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
        case r'secretFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretFields.replace(valueDes);
          break;
        case r'events':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
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
                      ChannelMinSeverityEnum,
                    ),
                  )
                  as ChannelMinSeverityEnum?;
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
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
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
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'lastDeliveryAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastDeliveryAt = valueDes;
          break;
        case r'failedLast24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failedLast24h = valueDes;
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
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ChannelWarningsInner),
                    ]),
                  )
                  as BuiltList<ChannelWarningsInner>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'interactive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChannelInteractiveStatus,
                    ),
                  )
                  as ChannelInteractiveStatus?;
          if (valueDes == null) continue;
          result.interactive.replace(valueDes);
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
        case r'ownerPrincipalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ownerPrincipalId = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Channel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelBuilder();
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

class ChannelTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'webhook')
  static const ChannelTypeEnum webhook = _$channelTypeEnum_webhook;
  @BuiltValueEnumConst(wireName: r'slack')
  static const ChannelTypeEnum slack = _$channelTypeEnum_slack;
  @BuiltValueEnumConst(wireName: r'mattermost')
  static const ChannelTypeEnum mattermost = _$channelTypeEnum_mattermost;
  @BuiltValueEnumConst(wireName: r'discord')
  static const ChannelTypeEnum discord = _$channelTypeEnum_discord;
  @BuiltValueEnumConst(wireName: r'teams')
  static const ChannelTypeEnum teams = _$channelTypeEnum_teams;
  @BuiltValueEnumConst(wireName: r'google-chat')
  static const ChannelTypeEnum googleChat = _$channelTypeEnum_googleChat;
  @BuiltValueEnumConst(wireName: r'telegram')
  static const ChannelTypeEnum telegram = _$channelTypeEnum_telegram;
  @BuiltValueEnumConst(wireName: r'matrix')
  static const ChannelTypeEnum matrix = _$channelTypeEnum_matrix;
  @BuiltValueEnumConst(wireName: r'ntfy')
  static const ChannelTypeEnum ntfy = _$channelTypeEnum_ntfy;
  @BuiltValueEnumConst(wireName: r'gotify')
  static const ChannelTypeEnum gotify = _$channelTypeEnum_gotify;
  @BuiltValueEnumConst(wireName: r'pushover')
  static const ChannelTypeEnum pushover = _$channelTypeEnum_pushover;
  @BuiltValueEnumConst(wireName: r'email')
  static const ChannelTypeEnum email = _$channelTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'webpush')
  static const ChannelTypeEnum webpush = _$channelTypeEnum_webpush;
  @BuiltValueEnumConst(wireName: r'homeassistant')
  static const ChannelTypeEnum homeassistant = _$channelTypeEnum_homeassistant;
  @BuiltValueEnumConst(wireName: r'apprise')
  static const ChannelTypeEnum apprise = _$channelTypeEnum_apprise;
  @BuiltValueEnumConst(wireName: r'zulip')
  static const ChannelTypeEnum zulip = _$channelTypeEnum_zulip;
  @BuiltValueEnumConst(wireName: r'mqtt')
  static const ChannelTypeEnum mqtt = _$channelTypeEnum_mqtt;
  @BuiltValueEnumConst(wireName: r'meshtastic')
  static const ChannelTypeEnum meshtastic = _$channelTypeEnum_meshtastic;
  @BuiltValueEnumConst(wireName: r'meshcore')
  static const ChannelTypeEnum meshcore = _$channelTypeEnum_meshcore;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChannelTypeEnum unknownDefaultOpenApi =
      _$channelTypeEnum_unknownDefaultOpenApi;

  static Serializer<ChannelTypeEnum> get serializer =>
      _$channelTypeEnumSerializer;

  const ChannelTypeEnum._(String name) : super(name);

  static BuiltSet<ChannelTypeEnum> get values => _$channelTypeEnumValues;
  static ChannelTypeEnum valueOf(String name) => _$channelTypeEnumValueOf(name);
}

class ChannelMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const ChannelMinSeverityEnum info = _$channelMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const ChannelMinSeverityEnum warning =
      _$channelMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const ChannelMinSeverityEnum critical =
      _$channelMinSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChannelMinSeverityEnum unknownDefaultOpenApi =
      _$channelMinSeverityEnum_unknownDefaultOpenApi;

  static Serializer<ChannelMinSeverityEnum> get serializer =>
      _$channelMinSeverityEnumSerializer;

  const ChannelMinSeverityEnum._(String name) : super(name);

  static BuiltSet<ChannelMinSeverityEnum> get values =>
      _$channelMinSeverityEnumValues;
  static ChannelMinSeverityEnum valueOf(String name) =>
      _$channelMinSeverityEnumValueOf(name);
}
