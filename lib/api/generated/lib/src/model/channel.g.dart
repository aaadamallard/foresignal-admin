// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChannelTypeEnum _$channelTypeEnum_webhook = const ChannelTypeEnum._(
  'webhook',
);
const ChannelTypeEnum _$channelTypeEnum_slack = const ChannelTypeEnum._(
  'slack',
);
const ChannelTypeEnum _$channelTypeEnum_mattermost = const ChannelTypeEnum._(
  'mattermost',
);
const ChannelTypeEnum _$channelTypeEnum_discord = const ChannelTypeEnum._(
  'discord',
);
const ChannelTypeEnum _$channelTypeEnum_teams = const ChannelTypeEnum._(
  'teams',
);
const ChannelTypeEnum _$channelTypeEnum_googleChat = const ChannelTypeEnum._(
  'googleChat',
);
const ChannelTypeEnum _$channelTypeEnum_telegram = const ChannelTypeEnum._(
  'telegram',
);
const ChannelTypeEnum _$channelTypeEnum_matrix = const ChannelTypeEnum._(
  'matrix',
);
const ChannelTypeEnum _$channelTypeEnum_ntfy = const ChannelTypeEnum._('ntfy');
const ChannelTypeEnum _$channelTypeEnum_gotify = const ChannelTypeEnum._(
  'gotify',
);
const ChannelTypeEnum _$channelTypeEnum_pushover = const ChannelTypeEnum._(
  'pushover',
);
const ChannelTypeEnum _$channelTypeEnum_email = const ChannelTypeEnum._(
  'email',
);
const ChannelTypeEnum _$channelTypeEnum_webpush = const ChannelTypeEnum._(
  'webpush',
);
const ChannelTypeEnum _$channelTypeEnum_homeassistant = const ChannelTypeEnum._(
  'homeassistant',
);
const ChannelTypeEnum _$channelTypeEnum_apprise = const ChannelTypeEnum._(
  'apprise',
);
const ChannelTypeEnum _$channelTypeEnum_zulip = const ChannelTypeEnum._(
  'zulip',
);
const ChannelTypeEnum _$channelTypeEnum_mqtt = const ChannelTypeEnum._('mqtt');
const ChannelTypeEnum _$channelTypeEnum_meshtastic = const ChannelTypeEnum._(
  'meshtastic',
);
const ChannelTypeEnum _$channelTypeEnum_meshcore = const ChannelTypeEnum._(
  'meshcore',
);
const ChannelTypeEnum _$channelTypeEnum_unknownDefaultOpenApi =
    const ChannelTypeEnum._('unknownDefaultOpenApi');

ChannelTypeEnum _$channelTypeEnumValueOf(String name) {
  switch (name) {
    case 'webhook':
      return _$channelTypeEnum_webhook;
    case 'slack':
      return _$channelTypeEnum_slack;
    case 'mattermost':
      return _$channelTypeEnum_mattermost;
    case 'discord':
      return _$channelTypeEnum_discord;
    case 'teams':
      return _$channelTypeEnum_teams;
    case 'googleChat':
      return _$channelTypeEnum_googleChat;
    case 'telegram':
      return _$channelTypeEnum_telegram;
    case 'matrix':
      return _$channelTypeEnum_matrix;
    case 'ntfy':
      return _$channelTypeEnum_ntfy;
    case 'gotify':
      return _$channelTypeEnum_gotify;
    case 'pushover':
      return _$channelTypeEnum_pushover;
    case 'email':
      return _$channelTypeEnum_email;
    case 'webpush':
      return _$channelTypeEnum_webpush;
    case 'homeassistant':
      return _$channelTypeEnum_homeassistant;
    case 'apprise':
      return _$channelTypeEnum_apprise;
    case 'zulip':
      return _$channelTypeEnum_zulip;
    case 'mqtt':
      return _$channelTypeEnum_mqtt;
    case 'meshtastic':
      return _$channelTypeEnum_meshtastic;
    case 'meshcore':
      return _$channelTypeEnum_meshcore;
    case 'unknownDefaultOpenApi':
      return _$channelTypeEnum_unknownDefaultOpenApi;
    default:
      return _$channelTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChannelTypeEnum> _$channelTypeEnumValues =
    BuiltSet<ChannelTypeEnum>(const <ChannelTypeEnum>[
      _$channelTypeEnum_webhook,
      _$channelTypeEnum_slack,
      _$channelTypeEnum_mattermost,
      _$channelTypeEnum_discord,
      _$channelTypeEnum_teams,
      _$channelTypeEnum_googleChat,
      _$channelTypeEnum_telegram,
      _$channelTypeEnum_matrix,
      _$channelTypeEnum_ntfy,
      _$channelTypeEnum_gotify,
      _$channelTypeEnum_pushover,
      _$channelTypeEnum_email,
      _$channelTypeEnum_webpush,
      _$channelTypeEnum_homeassistant,
      _$channelTypeEnum_apprise,
      _$channelTypeEnum_zulip,
      _$channelTypeEnum_mqtt,
      _$channelTypeEnum_meshtastic,
      _$channelTypeEnum_meshcore,
      _$channelTypeEnum_unknownDefaultOpenApi,
    ]);

const ChannelMinSeverityEnum _$channelMinSeverityEnum_info =
    const ChannelMinSeverityEnum._('info');
const ChannelMinSeverityEnum _$channelMinSeverityEnum_warning =
    const ChannelMinSeverityEnum._('warning');
const ChannelMinSeverityEnum _$channelMinSeverityEnum_critical =
    const ChannelMinSeverityEnum._('critical');
const ChannelMinSeverityEnum _$channelMinSeverityEnum_unknownDefaultOpenApi =
    const ChannelMinSeverityEnum._('unknownDefaultOpenApi');

ChannelMinSeverityEnum _$channelMinSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$channelMinSeverityEnum_info;
    case 'warning':
      return _$channelMinSeverityEnum_warning;
    case 'critical':
      return _$channelMinSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$channelMinSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$channelMinSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChannelMinSeverityEnum> _$channelMinSeverityEnumValues =
    BuiltSet<ChannelMinSeverityEnum>(const <ChannelMinSeverityEnum>[
      _$channelMinSeverityEnum_info,
      _$channelMinSeverityEnum_warning,
      _$channelMinSeverityEnum_critical,
      _$channelMinSeverityEnum_unknownDefaultOpenApi,
    ]);

Serializer<ChannelTypeEnum> _$channelTypeEnumSerializer =
    _$ChannelTypeEnumSerializer();
Serializer<ChannelMinSeverityEnum> _$channelMinSeverityEnumSerializer =
    _$ChannelMinSeverityEnumSerializer();

class _$ChannelTypeEnumSerializer
    implements PrimitiveSerializer<ChannelTypeEnum> {
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
    'unknownDefaultOpenApi': 'unknown_default_open_api',
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
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChannelTypeEnum];
  @override
  final String wireName = 'ChannelTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChannelTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChannelTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChannelTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChannelMinSeverityEnumSerializer
    implements PrimitiveSerializer<ChannelMinSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChannelMinSeverityEnum];
  @override
  final String wireName = 'ChannelMinSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChannelMinSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChannelMinSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChannelMinSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Channel extends Channel {
  @override
  final String id;
  @override
  final String name;
  @override
  final ChannelTypeEnum type;
  @override
  final SettingsBundleChannelsInnerConfig? config;
  @override
  final BuiltList<String>? secretFields;
  @override
  final BuiltList<String> events;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final ChannelMinSeverityEnum? minSeverity;
  @override
  final String? titleTemplate;
  @override
  final String? bodyTemplate;
  @override
  final int? waitForEnrichmentSeconds;
  @override
  final bool enabled;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? lastDeliveryAt;
  @override
  final int? failedLast24h;
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
  final BuiltList<ChannelWarningsInner>? warnings;
  @override
  final ChannelInteractiveStatus? interactive;
  @override
  final bool? acceptExercise;
  @override
  final String? language;
  @override
  final String? ownerPrincipalId;

  factory _$Channel([void Function(ChannelBuilder)? updates]) =>
      (ChannelBuilder()..update(updates))._build();

  _$Channel._({
    required this.id,
    required this.name,
    required this.type,
    this.config,
    this.secretFields,
    required this.events,
    this.ruleIds,
    this.minSeverity,
    this.titleTemplate,
    this.bodyTemplate,
    this.waitForEnrichmentSeconds,
    required this.enabled,
    this.createdAt,
    this.updatedAt,
    this.lastDeliveryAt,
    this.failedLast24h,
    this.timezone,
    this.quietHours,
    this.groupWindowSeconds,
    this.backlogCap,
    this.editInPlace,
    this.deferWhileActiveSeconds,
    this.warnings,
    this.interactive,
    this.acceptExercise,
    this.language,
    this.ownerPrincipalId,
  }) : super._();
  @override
  Channel rebuild(void Function(ChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelBuilder toBuilder() => ChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Channel &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        config == other.config &&
        secretFields == other.secretFields &&
        events == other.events &&
        ruleIds == other.ruleIds &&
        minSeverity == other.minSeverity &&
        titleTemplate == other.titleTemplate &&
        bodyTemplate == other.bodyTemplate &&
        waitForEnrichmentSeconds == other.waitForEnrichmentSeconds &&
        enabled == other.enabled &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        lastDeliveryAt == other.lastDeliveryAt &&
        failedLast24h == other.failedLast24h &&
        timezone == other.timezone &&
        quietHours == other.quietHours &&
        groupWindowSeconds == other.groupWindowSeconds &&
        backlogCap == other.backlogCap &&
        editInPlace == other.editInPlace &&
        deferWhileActiveSeconds == other.deferWhileActiveSeconds &&
        warnings == other.warnings &&
        interactive == other.interactive &&
        acceptExercise == other.acceptExercise &&
        language == other.language &&
        ownerPrincipalId == other.ownerPrincipalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secretFields.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, titleTemplate.hashCode);
    _$hash = $jc(_$hash, bodyTemplate.hashCode);
    _$hash = $jc(_$hash, waitForEnrichmentSeconds.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, lastDeliveryAt.hashCode);
    _$hash = $jc(_$hash, failedLast24h.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, quietHours.hashCode);
    _$hash = $jc(_$hash, groupWindowSeconds.hashCode);
    _$hash = $jc(_$hash, backlogCap.hashCode);
    _$hash = $jc(_$hash, editInPlace.hashCode);
    _$hash = $jc(_$hash, deferWhileActiveSeconds.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, interactive.hashCode);
    _$hash = $jc(_$hash, acceptExercise.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, ownerPrincipalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Channel')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('config', config)
          ..add('secretFields', secretFields)
          ..add('events', events)
          ..add('ruleIds', ruleIds)
          ..add('minSeverity', minSeverity)
          ..add('titleTemplate', titleTemplate)
          ..add('bodyTemplate', bodyTemplate)
          ..add('waitForEnrichmentSeconds', waitForEnrichmentSeconds)
          ..add('enabled', enabled)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('lastDeliveryAt', lastDeliveryAt)
          ..add('failedLast24h', failedLast24h)
          ..add('timezone', timezone)
          ..add('quietHours', quietHours)
          ..add('groupWindowSeconds', groupWindowSeconds)
          ..add('backlogCap', backlogCap)
          ..add('editInPlace', editInPlace)
          ..add('deferWhileActiveSeconds', deferWhileActiveSeconds)
          ..add('warnings', warnings)
          ..add('interactive', interactive)
          ..add('acceptExercise', acceptExercise)
          ..add('language', language)
          ..add('ownerPrincipalId', ownerPrincipalId))
        .toString();
  }
}

class ChannelBuilder implements Builder<Channel, ChannelBuilder> {
  _$Channel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ChannelTypeEnum? _type;
  ChannelTypeEnum? get type => _$this._type;
  set type(ChannelTypeEnum? type) => _$this._type = type;

  SettingsBundleChannelsInnerConfigBuilder? _config;
  SettingsBundleChannelsInnerConfigBuilder get config =>
      _$this._config ??= SettingsBundleChannelsInnerConfigBuilder();
  set config(SettingsBundleChannelsInnerConfigBuilder? config) =>
      _$this._config = config;

  ListBuilder<String>? _secretFields;
  ListBuilder<String> get secretFields =>
      _$this._secretFields ??= ListBuilder<String>();
  set secretFields(ListBuilder<String>? secretFields) =>
      _$this._secretFields = secretFields;

  ListBuilder<String>? _events;
  ListBuilder<String> get events => _$this._events ??= ListBuilder<String>();
  set events(ListBuilder<String>? events) => _$this._events = events;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  ChannelMinSeverityEnum? _minSeverity;
  ChannelMinSeverityEnum? get minSeverity => _$this._minSeverity;
  set minSeverity(ChannelMinSeverityEnum? minSeverity) =>
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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _lastDeliveryAt;
  DateTime? get lastDeliveryAt => _$this._lastDeliveryAt;
  set lastDeliveryAt(DateTime? lastDeliveryAt) =>
      _$this._lastDeliveryAt = lastDeliveryAt;

  int? _failedLast24h;
  int? get failedLast24h => _$this._failedLast24h;
  set failedLast24h(int? failedLast24h) =>
      _$this._failedLast24h = failedLast24h;

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

  ListBuilder<ChannelWarningsInner>? _warnings;
  ListBuilder<ChannelWarningsInner> get warnings =>
      _$this._warnings ??= ListBuilder<ChannelWarningsInner>();
  set warnings(ListBuilder<ChannelWarningsInner>? warnings) =>
      _$this._warnings = warnings;

  ChannelInteractiveStatusBuilder? _interactive;
  ChannelInteractiveStatusBuilder get interactive =>
      _$this._interactive ??= ChannelInteractiveStatusBuilder();
  set interactive(ChannelInteractiveStatusBuilder? interactive) =>
      _$this._interactive = interactive;

  bool? _acceptExercise;
  bool? get acceptExercise => _$this._acceptExercise;
  set acceptExercise(bool? acceptExercise) =>
      _$this._acceptExercise = acceptExercise;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _ownerPrincipalId;
  String? get ownerPrincipalId => _$this._ownerPrincipalId;
  set ownerPrincipalId(String? ownerPrincipalId) =>
      _$this._ownerPrincipalId = ownerPrincipalId;

  ChannelBuilder() {
    Channel._defaults(this);
  }

  ChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _config = $v.config?.toBuilder();
      _secretFields = $v.secretFields?.toBuilder();
      _events = $v.events.toBuilder();
      _ruleIds = $v.ruleIds?.toBuilder();
      _minSeverity = $v.minSeverity;
      _titleTemplate = $v.titleTemplate;
      _bodyTemplate = $v.bodyTemplate;
      _waitForEnrichmentSeconds = $v.waitForEnrichmentSeconds;
      _enabled = $v.enabled;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _lastDeliveryAt = $v.lastDeliveryAt;
      _failedLast24h = $v.failedLast24h;
      _timezone = $v.timezone;
      _quietHours = $v.quietHours?.toBuilder();
      _groupWindowSeconds = $v.groupWindowSeconds;
      _backlogCap = $v.backlogCap;
      _editInPlace = $v.editInPlace;
      _deferWhileActiveSeconds = $v.deferWhileActiveSeconds;
      _warnings = $v.warnings?.toBuilder();
      _interactive = $v.interactive?.toBuilder();
      _acceptExercise = $v.acceptExercise;
      _language = $v.language;
      _ownerPrincipalId = $v.ownerPrincipalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Channel other) {
    _$v = other as _$Channel;
  }

  @override
  void update(void Function(ChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Channel build() => _build();

  _$Channel _build() {
    _$Channel _$result;
    try {
      _$result =
          _$v ??
          _$Channel._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Channel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Channel',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Channel',
              'type',
            ),
            config: _config?.build(),
            secretFields: _secretFields?.build(),
            events: events.build(),
            ruleIds: _ruleIds?.build(),
            minSeverity: minSeverity,
            titleTemplate: titleTemplate,
            bodyTemplate: bodyTemplate,
            waitForEnrichmentSeconds: waitForEnrichmentSeconds,
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'Channel',
              'enabled',
            ),
            createdAt: createdAt,
            updatedAt: updatedAt,
            lastDeliveryAt: lastDeliveryAt,
            failedLast24h: failedLast24h,
            timezone: timezone,
            quietHours: _quietHours?.build(),
            groupWindowSeconds: groupWindowSeconds,
            backlogCap: backlogCap,
            editInPlace: editInPlace,
            deferWhileActiveSeconds: deferWhileActiveSeconds,
            warnings: _warnings?.build(),
            interactive: _interactive?.build(),
            acceptExercise: acceptExercise,
            language: language,
            ownerPrincipalId: ownerPrincipalId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'secretFields';
        _secretFields?.build();
        _$failedField = 'events';
        events.build();
        _$failedField = 'ruleIds';
        _ruleIds?.build();

        _$failedField = 'quietHours';
        _quietHours?.build();

        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'interactive';
        _interactive?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Channel',
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
