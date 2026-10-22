// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChannelInputTypeEnum _$channelInputTypeEnum_webhook =
    const ChannelInputTypeEnum._('webhook');
const ChannelInputTypeEnum _$channelInputTypeEnum_slack =
    const ChannelInputTypeEnum._('slack');
const ChannelInputTypeEnum _$channelInputTypeEnum_mattermost =
    const ChannelInputTypeEnum._('mattermost');
const ChannelInputTypeEnum _$channelInputTypeEnum_discord =
    const ChannelInputTypeEnum._('discord');
const ChannelInputTypeEnum _$channelInputTypeEnum_teams =
    const ChannelInputTypeEnum._('teams');
const ChannelInputTypeEnum _$channelInputTypeEnum_googleChat =
    const ChannelInputTypeEnum._('googleChat');
const ChannelInputTypeEnum _$channelInputTypeEnum_telegram =
    const ChannelInputTypeEnum._('telegram');
const ChannelInputTypeEnum _$channelInputTypeEnum_matrix =
    const ChannelInputTypeEnum._('matrix');
const ChannelInputTypeEnum _$channelInputTypeEnum_ntfy =
    const ChannelInputTypeEnum._('ntfy');
const ChannelInputTypeEnum _$channelInputTypeEnum_gotify =
    const ChannelInputTypeEnum._('gotify');
const ChannelInputTypeEnum _$channelInputTypeEnum_pushover =
    const ChannelInputTypeEnum._('pushover');
const ChannelInputTypeEnum _$channelInputTypeEnum_email =
    const ChannelInputTypeEnum._('email');
const ChannelInputTypeEnum _$channelInputTypeEnum_webpush =
    const ChannelInputTypeEnum._('webpush');
const ChannelInputTypeEnum _$channelInputTypeEnum_homeassistant =
    const ChannelInputTypeEnum._('homeassistant');
const ChannelInputTypeEnum _$channelInputTypeEnum_apprise =
    const ChannelInputTypeEnum._('apprise');
const ChannelInputTypeEnum _$channelInputTypeEnum_zulip =
    const ChannelInputTypeEnum._('zulip');
const ChannelInputTypeEnum _$channelInputTypeEnum_mqtt =
    const ChannelInputTypeEnum._('mqtt');
const ChannelInputTypeEnum _$channelInputTypeEnum_meshtastic =
    const ChannelInputTypeEnum._('meshtastic');
const ChannelInputTypeEnum _$channelInputTypeEnum_meshcore =
    const ChannelInputTypeEnum._('meshcore');

ChannelInputTypeEnum _$channelInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'webhook':
      return _$channelInputTypeEnum_webhook;
    case 'slack':
      return _$channelInputTypeEnum_slack;
    case 'mattermost':
      return _$channelInputTypeEnum_mattermost;
    case 'discord':
      return _$channelInputTypeEnum_discord;
    case 'teams':
      return _$channelInputTypeEnum_teams;
    case 'googleChat':
      return _$channelInputTypeEnum_googleChat;
    case 'telegram':
      return _$channelInputTypeEnum_telegram;
    case 'matrix':
      return _$channelInputTypeEnum_matrix;
    case 'ntfy':
      return _$channelInputTypeEnum_ntfy;
    case 'gotify':
      return _$channelInputTypeEnum_gotify;
    case 'pushover':
      return _$channelInputTypeEnum_pushover;
    case 'email':
      return _$channelInputTypeEnum_email;
    case 'webpush':
      return _$channelInputTypeEnum_webpush;
    case 'homeassistant':
      return _$channelInputTypeEnum_homeassistant;
    case 'apprise':
      return _$channelInputTypeEnum_apprise;
    case 'zulip':
      return _$channelInputTypeEnum_zulip;
    case 'mqtt':
      return _$channelInputTypeEnum_mqtt;
    case 'meshtastic':
      return _$channelInputTypeEnum_meshtastic;
    case 'meshcore':
      return _$channelInputTypeEnum_meshcore;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChannelInputTypeEnum> _$channelInputTypeEnumValues =
    BuiltSet<ChannelInputTypeEnum>(const <ChannelInputTypeEnum>[
      _$channelInputTypeEnum_webhook,
      _$channelInputTypeEnum_slack,
      _$channelInputTypeEnum_mattermost,
      _$channelInputTypeEnum_discord,
      _$channelInputTypeEnum_teams,
      _$channelInputTypeEnum_googleChat,
      _$channelInputTypeEnum_telegram,
      _$channelInputTypeEnum_matrix,
      _$channelInputTypeEnum_ntfy,
      _$channelInputTypeEnum_gotify,
      _$channelInputTypeEnum_pushover,
      _$channelInputTypeEnum_email,
      _$channelInputTypeEnum_webpush,
      _$channelInputTypeEnum_homeassistant,
      _$channelInputTypeEnum_apprise,
      _$channelInputTypeEnum_zulip,
      _$channelInputTypeEnum_mqtt,
      _$channelInputTypeEnum_meshtastic,
      _$channelInputTypeEnum_meshcore,
    ]);

const ChannelInputEventsEnum _$channelInputEventsEnum_alert =
    const ChannelInputEventsEnum._('alert');
const ChannelInputEventsEnum _$channelInputEventsEnum_briefing =
    const ChannelInputEventsEnum._('briefing');
const ChannelInputEventsEnum _$channelInputEventsEnum_system =
    const ChannelInputEventsEnum._('system');
const ChannelInputEventsEnum _$channelInputEventsEnum_chroniclePeriodProposed =
    const ChannelInputEventsEnum._('chroniclePeriodProposed');
const ChannelInputEventsEnum
_$channelInputEventsEnum_chroniclePeriodCapWarning =
    const ChannelInputEventsEnum._('chroniclePeriodCapWarning');
const ChannelInputEventsEnum _$channelInputEventsEnum_chroniclePeriodGap =
    const ChannelInputEventsEnum._('chroniclePeriodGap');
const ChannelInputEventsEnum _$channelInputEventsEnum_socialPeriodDivergence =
    const ChannelInputEventsEnum._('socialPeriodDivergence');
const ChannelInputEventsEnum _$channelInputEventsEnum_socialPeriodAttentionGap =
    const ChannelInputEventsEnum._('socialPeriodAttentionGap');
const ChannelInputEventsEnum _$channelInputEventsEnum_analystPeriodNote =
    const ChannelInputEventsEnum._('analystPeriodNote');
const ChannelInputEventsEnum _$channelInputEventsEnum_situationPeriodActivated =
    const ChannelInputEventsEnum._('situationPeriodActivated');
const ChannelInputEventsEnum _$channelInputEventsEnum_situationPeriodEscalated =
    const ChannelInputEventsEnum._('situationPeriodEscalated');
const ChannelInputEventsEnum _$channelInputEventsEnum_findingPeriodSignificant =
    const ChannelInputEventsEnum._('findingPeriodSignificant');
const ChannelInputEventsEnum _$channelInputEventsEnum_forecastPeriodResolved =
    const ChannelInputEventsEnum._('forecastPeriodResolved');
const ChannelInputEventsEnum
_$channelInputEventsEnum_forecastPeriodResolutionNeeded =
    const ChannelInputEventsEnum._('forecastPeriodResolutionNeeded');
const ChannelInputEventsEnum
_$channelInputEventsEnum_hypothesisPeriodBandChanged =
    const ChannelInputEventsEnum._('hypothesisPeriodBandChanged');
const ChannelInputEventsEnum _$channelInputEventsEnum_indicatorPeriodObserved =
    const ChannelInputEventsEnum._('indicatorPeriodObserved');
const ChannelInputEventsEnum _$channelInputEventsEnum_assumptionPeriodBroken =
    const ChannelInputEventsEnum._('assumptionPeriodBroken');
const ChannelInputEventsEnum
_$channelInputEventsEnum_assessmentPeriodPublished =
    const ChannelInputEventsEnum._('assessmentPeriodPublished');
const ChannelInputEventsEnum _$channelInputEventsEnum_mention =
    const ChannelInputEventsEnum._('mention');
const ChannelInputEventsEnum _$channelInputEventsEnum_share =
    const ChannelInputEventsEnum._('share');
const ChannelInputEventsEnum _$channelInputEventsEnum_reportPeriodReceived =
    const ChannelInputEventsEnum._('reportPeriodReceived');
const ChannelInputEventsEnum _$channelInputEventsEnum_packagePeriodReceived =
    const ChannelInputEventsEnum._('packagePeriodReceived');
const ChannelInputEventsEnum
_$channelInputEventsEnum_chroniclePeriodAccessPeriodRequested =
    const ChannelInputEventsEnum._('chroniclePeriodAccessPeriodRequested');
const ChannelInputEventsEnum _$channelInputEventsEnum_savedSearchPeriodMatches =
    const ChannelInputEventsEnum._('savedSearchPeriodMatches');

ChannelInputEventsEnum _$channelInputEventsEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$channelInputEventsEnum_alert;
    case 'briefing':
      return _$channelInputEventsEnum_briefing;
    case 'system':
      return _$channelInputEventsEnum_system;
    case 'chroniclePeriodProposed':
      return _$channelInputEventsEnum_chroniclePeriodProposed;
    case 'chroniclePeriodCapWarning':
      return _$channelInputEventsEnum_chroniclePeriodCapWarning;
    case 'chroniclePeriodGap':
      return _$channelInputEventsEnum_chroniclePeriodGap;
    case 'socialPeriodDivergence':
      return _$channelInputEventsEnum_socialPeriodDivergence;
    case 'socialPeriodAttentionGap':
      return _$channelInputEventsEnum_socialPeriodAttentionGap;
    case 'analystPeriodNote':
      return _$channelInputEventsEnum_analystPeriodNote;
    case 'situationPeriodActivated':
      return _$channelInputEventsEnum_situationPeriodActivated;
    case 'situationPeriodEscalated':
      return _$channelInputEventsEnum_situationPeriodEscalated;
    case 'findingPeriodSignificant':
      return _$channelInputEventsEnum_findingPeriodSignificant;
    case 'forecastPeriodResolved':
      return _$channelInputEventsEnum_forecastPeriodResolved;
    case 'forecastPeriodResolutionNeeded':
      return _$channelInputEventsEnum_forecastPeriodResolutionNeeded;
    case 'hypothesisPeriodBandChanged':
      return _$channelInputEventsEnum_hypothesisPeriodBandChanged;
    case 'indicatorPeriodObserved':
      return _$channelInputEventsEnum_indicatorPeriodObserved;
    case 'assumptionPeriodBroken':
      return _$channelInputEventsEnum_assumptionPeriodBroken;
    case 'assessmentPeriodPublished':
      return _$channelInputEventsEnum_assessmentPeriodPublished;
    case 'mention':
      return _$channelInputEventsEnum_mention;
    case 'share':
      return _$channelInputEventsEnum_share;
    case 'reportPeriodReceived':
      return _$channelInputEventsEnum_reportPeriodReceived;
    case 'packagePeriodReceived':
      return _$channelInputEventsEnum_packagePeriodReceived;
    case 'chroniclePeriodAccessPeriodRequested':
      return _$channelInputEventsEnum_chroniclePeriodAccessPeriodRequested;
    case 'savedSearchPeriodMatches':
      return _$channelInputEventsEnum_savedSearchPeriodMatches;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChannelInputEventsEnum> _$channelInputEventsEnumValues =
    BuiltSet<ChannelInputEventsEnum>(const <ChannelInputEventsEnum>[
      _$channelInputEventsEnum_alert,
      _$channelInputEventsEnum_briefing,
      _$channelInputEventsEnum_system,
      _$channelInputEventsEnum_chroniclePeriodProposed,
      _$channelInputEventsEnum_chroniclePeriodCapWarning,
      _$channelInputEventsEnum_chroniclePeriodGap,
      _$channelInputEventsEnum_socialPeriodDivergence,
      _$channelInputEventsEnum_socialPeriodAttentionGap,
      _$channelInputEventsEnum_analystPeriodNote,
      _$channelInputEventsEnum_situationPeriodActivated,
      _$channelInputEventsEnum_situationPeriodEscalated,
      _$channelInputEventsEnum_findingPeriodSignificant,
      _$channelInputEventsEnum_forecastPeriodResolved,
      _$channelInputEventsEnum_forecastPeriodResolutionNeeded,
      _$channelInputEventsEnum_hypothesisPeriodBandChanged,
      _$channelInputEventsEnum_indicatorPeriodObserved,
      _$channelInputEventsEnum_assumptionPeriodBroken,
      _$channelInputEventsEnum_assessmentPeriodPublished,
      _$channelInputEventsEnum_mention,
      _$channelInputEventsEnum_share,
      _$channelInputEventsEnum_reportPeriodReceived,
      _$channelInputEventsEnum_packagePeriodReceived,
      _$channelInputEventsEnum_chroniclePeriodAccessPeriodRequested,
      _$channelInputEventsEnum_savedSearchPeriodMatches,
    ]);

const ChannelInputMinSeverityEnum _$channelInputMinSeverityEnum_info =
    const ChannelInputMinSeverityEnum._('info');
const ChannelInputMinSeverityEnum _$channelInputMinSeverityEnum_warning =
    const ChannelInputMinSeverityEnum._('warning');
const ChannelInputMinSeverityEnum _$channelInputMinSeverityEnum_critical =
    const ChannelInputMinSeverityEnum._('critical');

ChannelInputMinSeverityEnum _$channelInputMinSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$channelInputMinSeverityEnum_info;
    case 'warning':
      return _$channelInputMinSeverityEnum_warning;
    case 'critical':
      return _$channelInputMinSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChannelInputMinSeverityEnum>
_$channelInputMinSeverityEnumValues =
    BuiltSet<ChannelInputMinSeverityEnum>(const <ChannelInputMinSeverityEnum>[
      _$channelInputMinSeverityEnum_info,
      _$channelInputMinSeverityEnum_warning,
      _$channelInputMinSeverityEnum_critical,
    ]);

Serializer<ChannelInputTypeEnum> _$channelInputTypeEnumSerializer =
    _$ChannelInputTypeEnumSerializer();
Serializer<ChannelInputEventsEnum> _$channelInputEventsEnumSerializer =
    _$ChannelInputEventsEnumSerializer();
Serializer<ChannelInputMinSeverityEnum>
_$channelInputMinSeverityEnumSerializer =
    _$ChannelInputMinSeverityEnumSerializer();

class _$ChannelInputTypeEnumSerializer
    implements PrimitiveSerializer<ChannelInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'webhook': 'webhook',
    'slack': 'slack',
    'mattermost': 'mattermost',
    'discord': 'discord',
    'teams': 'teams',
    'googleChat': 'google-chat',
    'telegram': 'telegram',
    'matrix': 'matrix',
    'ntfy': 'ntfy',
    'gotify': 'gotify',
    'pushover': 'pushover',
    'email': 'email',
    'webpush': 'webpush',
    'homeassistant': 'homeassistant',
    'apprise': 'apprise',
    'zulip': 'zulip',
    'mqtt': 'mqtt',
    'meshtastic': 'meshtastic',
    'meshcore': 'meshcore',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'webhook': 'webhook',
    'slack': 'slack',
    'mattermost': 'mattermost',
    'discord': 'discord',
    'teams': 'teams',
    'google-chat': 'googleChat',
    'telegram': 'telegram',
    'matrix': 'matrix',
    'ntfy': 'ntfy',
    'gotify': 'gotify',
    'pushover': 'pushover',
    'email': 'email',
    'webpush': 'webpush',
    'homeassistant': 'homeassistant',
    'apprise': 'apprise',
    'zulip': 'zulip',
    'mqtt': 'mqtt',
    'meshtastic': 'meshtastic',
    'meshcore': 'meshcore',
  };

  @override
  final Iterable<Type> types = const <Type>[ChannelInputTypeEnum];
  @override
  final String wireName = 'ChannelInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChannelInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChannelInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChannelInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChannelInputEventsEnumSerializer
    implements PrimitiveSerializer<ChannelInputEventsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'chroniclePeriodProposed': 'chronicle.proposed',
    'chroniclePeriodCapWarning': 'chronicle.cap_warning',
    'chroniclePeriodGap': 'chronicle.gap',
    'socialPeriodDivergence': 'social.divergence',
    'socialPeriodAttentionGap': 'social.attention_gap',
    'analystPeriodNote': 'analyst.note',
    'situationPeriodActivated': 'situation.activated',
    'situationPeriodEscalated': 'situation.escalated',
    'findingPeriodSignificant': 'finding.significant',
    'forecastPeriodResolved': 'forecast.resolved',
    'forecastPeriodResolutionNeeded': 'forecast.resolution_needed',
    'hypothesisPeriodBandChanged': 'hypothesis.band_changed',
    'indicatorPeriodObserved': 'indicator.observed',
    'assumptionPeriodBroken': 'assumption.broken',
    'assessmentPeriodPublished': 'assessment.published',
    'mention': 'mention',
    'share': 'share',
    'reportPeriodReceived': 'report.received',
    'packagePeriodReceived': 'package.received',
    'chroniclePeriodAccessPeriodRequested': 'chronicle.access.requested',
    'savedSearchPeriodMatches': 'saved-search.matches',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'chronicle.proposed': 'chroniclePeriodProposed',
    'chronicle.cap_warning': 'chroniclePeriodCapWarning',
    'chronicle.gap': 'chroniclePeriodGap',
    'social.divergence': 'socialPeriodDivergence',
    'social.attention_gap': 'socialPeriodAttentionGap',
    'analyst.note': 'analystPeriodNote',
    'situation.activated': 'situationPeriodActivated',
    'situation.escalated': 'situationPeriodEscalated',
    'finding.significant': 'findingPeriodSignificant',
    'forecast.resolved': 'forecastPeriodResolved',
    'forecast.resolution_needed': 'forecastPeriodResolutionNeeded',
    'hypothesis.band_changed': 'hypothesisPeriodBandChanged',
    'indicator.observed': 'indicatorPeriodObserved',
    'assumption.broken': 'assumptionPeriodBroken',
    'assessment.published': 'assessmentPeriodPublished',
    'mention': 'mention',
    'share': 'share',
    'report.received': 'reportPeriodReceived',
    'package.received': 'packagePeriodReceived',
    'chronicle.access.requested': 'chroniclePeriodAccessPeriodRequested',
    'saved-search.matches': 'savedSearchPeriodMatches',
  };

  @override
  final Iterable<Type> types = const <Type>[ChannelInputEventsEnum];
  @override
  final String wireName = 'ChannelInputEventsEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChannelInputEventsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChannelInputEventsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChannelInputEventsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChannelInputMinSeverityEnumSerializer
    implements PrimitiveSerializer<ChannelInputMinSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };

  @override
  final Iterable<Type> types = const <Type>[ChannelInputMinSeverityEnum];
  @override
  final String wireName = 'ChannelInputMinSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChannelInputMinSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChannelInputMinSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChannelInputMinSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChannelInput extends ChannelInput {
  @override
  final String name;
  @override
  final ChannelInputTypeEnum type;
  @override
  final SettingsBundleChannelsInnerConfig? config;
  @override
  final BuiltMap<String, String>? secrets;
  @override
  final BuiltList<ChannelInputEventsEnum>? events;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final ChannelInputMinSeverityEnum? minSeverity;
  @override
  final String? titleTemplate;
  @override
  final String? bodyTemplate;
  @override
  final int? waitForEnrichmentSeconds;
  @override
  final bool? enabled;
  @override
  final String? timezone;
  @override
  final QuietHours? quietHours;
  @override
  final int? groupWindowSeconds;
  @override
  final int? backlogCap;
  @override
  final bool? editInPlace;
  @override
  final int? deferWhileActiveSeconds;
  @override
  final bool? acceptExercise;
  @override
  final String? language;

  factory _$ChannelInput([void Function(ChannelInputBuilder)? updates]) =>
      (ChannelInputBuilder()..update(updates))._build();

  _$ChannelInput._({
    required this.name,
    required this.type,
    this.config,
    this.secrets,
    this.events,
    this.ruleIds,
    this.minSeverity,
    this.titleTemplate,
    this.bodyTemplate,
    this.waitForEnrichmentSeconds,
    this.enabled,
    this.timezone,
    this.quietHours,
    this.groupWindowSeconds,
    this.backlogCap,
    this.editInPlace,
    this.deferWhileActiveSeconds,
    this.acceptExercise,
    this.language,
  }) : super._();
  @override
  ChannelInput rebuild(void Function(ChannelInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelInputBuilder toBuilder() => ChannelInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelInput &&
        name == other.name &&
        type == other.type &&
        config == other.config &&
        secrets == other.secrets &&
        events == other.events &&
        ruleIds == other.ruleIds &&
        minSeverity == other.minSeverity &&
        titleTemplate == other.titleTemplate &&
        bodyTemplate == other.bodyTemplate &&
        waitForEnrichmentSeconds == other.waitForEnrichmentSeconds &&
        enabled == other.enabled &&
        timezone == other.timezone &&
        quietHours == other.quietHours &&
        groupWindowSeconds == other.groupWindowSeconds &&
        backlogCap == other.backlogCap &&
        editInPlace == other.editInPlace &&
        deferWhileActiveSeconds == other.deferWhileActiveSeconds &&
        acceptExercise == other.acceptExercise &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, titleTemplate.hashCode);
    _$hash = $jc(_$hash, bodyTemplate.hashCode);
    _$hash = $jc(_$hash, waitForEnrichmentSeconds.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, quietHours.hashCode);
    _$hash = $jc(_$hash, groupWindowSeconds.hashCode);
    _$hash = $jc(_$hash, backlogCap.hashCode);
    _$hash = $jc(_$hash, editInPlace.hashCode);
    _$hash = $jc(_$hash, deferWhileActiveSeconds.hashCode);
    _$hash = $jc(_$hash, acceptExercise.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelInput')
          ..add('name', name)
          ..add('type', type)
          ..add('config', config)
          ..add('secrets', secrets)
          ..add('events', events)
          ..add('ruleIds', ruleIds)
          ..add('minSeverity', minSeverity)
          ..add('titleTemplate', titleTemplate)
          ..add('bodyTemplate', bodyTemplate)
          ..add('waitForEnrichmentSeconds', waitForEnrichmentSeconds)
          ..add('enabled', enabled)
          ..add('timezone', timezone)
          ..add('quietHours', quietHours)
          ..add('groupWindowSeconds', groupWindowSeconds)
          ..add('backlogCap', backlogCap)
          ..add('editInPlace', editInPlace)
          ..add('deferWhileActiveSeconds', deferWhileActiveSeconds)
          ..add('acceptExercise', acceptExercise)
          ..add('language', language))
        .toString();
  }
}

class ChannelInputBuilder
    implements Builder<ChannelInput, ChannelInputBuilder> {
  _$ChannelInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ChannelInputTypeEnum? _type;
  ChannelInputTypeEnum? get type => _$this._type;
  set type(ChannelInputTypeEnum? type) => _$this._type = type;

  SettingsBundleChannelsInnerConfigBuilder? _config;
  SettingsBundleChannelsInnerConfigBuilder get config =>
      _$this._config ??= SettingsBundleChannelsInnerConfigBuilder();
  set config(SettingsBundleChannelsInnerConfigBuilder? config) =>
      _$this._config = config;

  MapBuilder<String, String>? _secrets;
  MapBuilder<String, String> get secrets =>
      _$this._secrets ??= MapBuilder<String, String>();
  set secrets(MapBuilder<String, String>? secrets) => _$this._secrets = secrets;

  ListBuilder<ChannelInputEventsEnum>? _events;
  ListBuilder<ChannelInputEventsEnum> get events =>
      _$this._events ??= ListBuilder<ChannelInputEventsEnum>();
  set events(ListBuilder<ChannelInputEventsEnum>? events) =>
      _$this._events = events;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  ChannelInputMinSeverityEnum? _minSeverity;
  ChannelInputMinSeverityEnum? get minSeverity => _$this._minSeverity;
  set minSeverity(ChannelInputMinSeverityEnum? minSeverity) =>
      _$this._minSeverity = minSeverity;

  String? _titleTemplate;
  String? get titleTemplate => _$this._titleTemplate;
  set titleTemplate(String? titleTemplate) =>
      _$this._titleTemplate = titleTemplate;

  String? _bodyTemplate;
  String? get bodyTemplate => _$this._bodyTemplate;
  set bodyTemplate(String? bodyTemplate) => _$this._bodyTemplate = bodyTemplate;

  int? _waitForEnrichmentSeconds;
  int? get waitForEnrichmentSeconds => _$this._waitForEnrichmentSeconds;
  set waitForEnrichmentSeconds(int? waitForEnrichmentSeconds) =>
      _$this._waitForEnrichmentSeconds = waitForEnrichmentSeconds;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  QuietHoursBuilder? _quietHours;
  QuietHoursBuilder get quietHours =>
      _$this._quietHours ??= QuietHoursBuilder();
  set quietHours(QuietHoursBuilder? quietHours) =>
      _$this._quietHours = quietHours;

  int? _groupWindowSeconds;
  int? get groupWindowSeconds => _$this._groupWindowSeconds;
  set groupWindowSeconds(int? groupWindowSeconds) =>
      _$this._groupWindowSeconds = groupWindowSeconds;

  int? _backlogCap;
  int? get backlogCap => _$this._backlogCap;
  set backlogCap(int? backlogCap) => _$this._backlogCap = backlogCap;

  bool? _editInPlace;
  bool? get editInPlace => _$this._editInPlace;
  set editInPlace(bool? editInPlace) => _$this._editInPlace = editInPlace;

  int? _deferWhileActiveSeconds;
  int? get deferWhileActiveSeconds => _$this._deferWhileActiveSeconds;
  set deferWhileActiveSeconds(int? deferWhileActiveSeconds) =>
      _$this._deferWhileActiveSeconds = deferWhileActiveSeconds;

  bool? _acceptExercise;
  bool? get acceptExercise => _$this._acceptExercise;
  set acceptExercise(bool? acceptExercise) =>
      _$this._acceptExercise = acceptExercise;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ChannelInputBuilder() {
    ChannelInput._defaults(this);
  }

  ChannelInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _config = $v.config?.toBuilder();
      _secrets = $v.secrets?.toBuilder();
      _events = $v.events?.toBuilder();
      _ruleIds = $v.ruleIds?.toBuilder();
      _minSeverity = $v.minSeverity;
      _titleTemplate = $v.titleTemplate;
      _bodyTemplate = $v.bodyTemplate;
      _waitForEnrichmentSeconds = $v.waitForEnrichmentSeconds;
      _enabled = $v.enabled;
      _timezone = $v.timezone;
      _quietHours = $v.quietHours?.toBuilder();
      _groupWindowSeconds = $v.groupWindowSeconds;
      _backlogCap = $v.backlogCap;
      _editInPlace = $v.editInPlace;
      _deferWhileActiveSeconds = $v.deferWhileActiveSeconds;
      _acceptExercise = $v.acceptExercise;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelInput other) {
    _$v = other as _$ChannelInput;
  }

  @override
  void update(void Function(ChannelInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelInput build() => _build();

  _$ChannelInput _build() {
    _$ChannelInput _$result;
    try {
      _$result =
          _$v ??
          _$ChannelInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ChannelInput',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ChannelInput',
              'type',
            ),
            config: _config?.build(),
            secrets: _secrets?.build(),
            events: _events?.build(),
            ruleIds: _ruleIds?.build(),
            minSeverity: minSeverity,
            titleTemplate: titleTemplate,
            bodyTemplate: bodyTemplate,
            waitForEnrichmentSeconds: waitForEnrichmentSeconds,
            enabled: enabled,
            timezone: timezone,
            quietHours: _quietHours?.build(),
            groupWindowSeconds: groupWindowSeconds,
            backlogCap: backlogCap,
            editInPlace: editInPlace,
            deferWhileActiveSeconds: deferWhileActiveSeconds,
            acceptExercise: acceptExercise,
            language: language,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'secrets';
        _secrets?.build();
        _$failedField = 'events';
        _events?.build();
        _$failedField = 'ruleIds';
        _ruleIds?.build();

        _$failedField = 'quietHours';
        _quietHours?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChannelInput',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
