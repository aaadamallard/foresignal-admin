// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChannelTypeIdEnum _$channelTypeIdEnum_webhook =
    const ChannelTypeIdEnum._('webhook');
const ChannelTypeIdEnum _$channelTypeIdEnum_slack =
    const ChannelTypeIdEnum._('slack');
const ChannelTypeIdEnum _$channelTypeIdEnum_mattermost =
    const ChannelTypeIdEnum._('mattermost');
const ChannelTypeIdEnum _$channelTypeIdEnum_discord =
    const ChannelTypeIdEnum._('discord');
const ChannelTypeIdEnum _$channelTypeIdEnum_teams =
    const ChannelTypeIdEnum._('teams');
const ChannelTypeIdEnum _$channelTypeIdEnum_googleChat =
    const ChannelTypeIdEnum._('googleChat');
const ChannelTypeIdEnum _$channelTypeIdEnum_telegram =
    const ChannelTypeIdEnum._('telegram');
const ChannelTypeIdEnum _$channelTypeIdEnum_matrix =
    const ChannelTypeIdEnum._('matrix');
const ChannelTypeIdEnum _$channelTypeIdEnum_ntfy =
    const ChannelTypeIdEnum._('ntfy');
const ChannelTypeIdEnum _$channelTypeIdEnum_gotify =
    const ChannelTypeIdEnum._('gotify');
const ChannelTypeIdEnum _$channelTypeIdEnum_pushover =
    const ChannelTypeIdEnum._('pushover');
const ChannelTypeIdEnum _$channelTypeIdEnum_email =
    const ChannelTypeIdEnum._('email');
const ChannelTypeIdEnum _$channelTypeIdEnum_webpush =
    const ChannelTypeIdEnum._('webpush');
const ChannelTypeIdEnum _$channelTypeIdEnum_homeassistant =
    const ChannelTypeIdEnum._('homeassistant');
const ChannelTypeIdEnum _$channelTypeIdEnum_apprise =
    const ChannelTypeIdEnum._('apprise');
const ChannelTypeIdEnum _$channelTypeIdEnum_zulip =
    const ChannelTypeIdEnum._('zulip');
const ChannelTypeIdEnum _$channelTypeIdEnum_mqtt =
    const ChannelTypeIdEnum._('mqtt');
const ChannelTypeIdEnum _$channelTypeIdEnum_meshtastic =
    const ChannelTypeIdEnum._('meshtastic');
const ChannelTypeIdEnum _$channelTypeIdEnum_meshcore =
    const ChannelTypeIdEnum._('meshcore');

ChannelTypeIdEnum _$channelTypeIdEnumValueOf(String name) {
  switch (name) {
    case 'webhook':
      return _$channelTypeIdEnum_webhook;
    case 'slack':
      return _$channelTypeIdEnum_slack;
    case 'mattermost':
      return _$channelTypeIdEnum_mattermost;
    case 'discord':
      return _$channelTypeIdEnum_discord;
    case 'teams':
      return _$channelTypeIdEnum_teams;
    case 'googleChat':
      return _$channelTypeIdEnum_googleChat;
    case 'telegram':
      return _$channelTypeIdEnum_telegram;
    case 'matrix':
      return _$channelTypeIdEnum_matrix;
    case 'ntfy':
      return _$channelTypeIdEnum_ntfy;
    case 'gotify':
      return _$channelTypeIdEnum_gotify;
    case 'pushover':
      return _$channelTypeIdEnum_pushover;
    case 'email':
      return _$channelTypeIdEnum_email;
    case 'webpush':
      return _$channelTypeIdEnum_webpush;
    case 'homeassistant':
      return _$channelTypeIdEnum_homeassistant;
    case 'apprise':
      return _$channelTypeIdEnum_apprise;
    case 'zulip':
      return _$channelTypeIdEnum_zulip;
    case 'mqtt':
      return _$channelTypeIdEnum_mqtt;
    case 'meshtastic':
      return _$channelTypeIdEnum_meshtastic;
    case 'meshcore':
      return _$channelTypeIdEnum_meshcore;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChannelTypeIdEnum> _$channelTypeIdEnumValues =
    BuiltSet<ChannelTypeIdEnum>(const <ChannelTypeIdEnum>[
  _$channelTypeIdEnum_webhook,
  _$channelTypeIdEnum_slack,
  _$channelTypeIdEnum_mattermost,
  _$channelTypeIdEnum_discord,
  _$channelTypeIdEnum_teams,
  _$channelTypeIdEnum_googleChat,
  _$channelTypeIdEnum_telegram,
  _$channelTypeIdEnum_matrix,
  _$channelTypeIdEnum_ntfy,
  _$channelTypeIdEnum_gotify,
  _$channelTypeIdEnum_pushover,
  _$channelTypeIdEnum_email,
  _$channelTypeIdEnum_webpush,
  _$channelTypeIdEnum_homeassistant,
  _$channelTypeIdEnum_apprise,
  _$channelTypeIdEnum_zulip,
  _$channelTypeIdEnum_mqtt,
  _$channelTypeIdEnum_meshtastic,
  _$channelTypeIdEnum_meshcore,
]);

const ChannelTypeEventsEnum _$channelTypeEventsEnum_alert =
    const ChannelTypeEventsEnum._('alert');
const ChannelTypeEventsEnum _$channelTypeEventsEnum_briefing =
    const ChannelTypeEventsEnum._('briefing');
const ChannelTypeEventsEnum _$channelTypeEventsEnum_system =
    const ChannelTypeEventsEnum._('system');

ChannelTypeEventsEnum _$channelTypeEventsEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$channelTypeEventsEnum_alert;
    case 'briefing':
      return _$channelTypeEventsEnum_briefing;
    case 'system':
      return _$channelTypeEventsEnum_system;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChannelTypeEventsEnum> _$channelTypeEventsEnumValues =
    BuiltSet<ChannelTypeEventsEnum>(const <ChannelTypeEventsEnum>[
  _$channelTypeEventsEnum_alert,
  _$channelTypeEventsEnum_briefing,
  _$channelTypeEventsEnum_system,
]);

Serializer<ChannelTypeIdEnum> _$channelTypeIdEnumSerializer =
    _$ChannelTypeIdEnumSerializer();
Serializer<ChannelTypeEventsEnum> _$channelTypeEventsEnumSerializer =
    _$ChannelTypeEventsEnumSerializer();

class _$ChannelTypeIdEnumSerializer
    implements PrimitiveSerializer<ChannelTypeIdEnum> {
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
  final Iterable<Type> types = const <Type>[ChannelTypeIdEnum];
  @override
  final String wireName = 'ChannelTypeIdEnum';

  @override
  Object serialize(Serializers serializers, ChannelTypeIdEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChannelTypeIdEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChannelTypeIdEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChannelTypeEventsEnumSerializer
    implements PrimitiveSerializer<ChannelTypeEventsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
  };

  @override
  final Iterable<Type> types = const <Type>[ChannelTypeEventsEnum];
  @override
  final String wireName = 'ChannelTypeEventsEnum';

  @override
  Object serialize(Serializers serializers, ChannelTypeEventsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChannelTypeEventsEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChannelTypeEventsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChannelType extends ChannelType {
  @override
  final ChannelTypeIdEnum id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<ChannelTypeConfigFieldsInner> configFields;
  @override
  final BuiltList<ChannelTypeConfigFieldsInner> secretFields;
  @override
  final BuiltList<ChannelTypeEventsEnum>? events;
  @override
  final ChannelTypeCapabilities? capabilities;

  factory _$ChannelType([void Function(ChannelTypeBuilder)? updates]) =>
      (ChannelTypeBuilder()..update(updates))._build();

  _$ChannelType._(
      {required this.id,
      required this.name,
      this.description,
      required this.configFields,
      required this.secretFields,
      this.events,
      this.capabilities})
      : super._();
  @override
  ChannelType rebuild(void Function(ChannelTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelTypeBuilder toBuilder() => ChannelTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelType &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        configFields == other.configFields &&
        secretFields == other.secretFields &&
        events == other.events &&
        capabilities == other.capabilities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, configFields.hashCode);
    _$hash = $jc(_$hash, secretFields.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelType')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('configFields', configFields)
          ..add('secretFields', secretFields)
          ..add('events', events)
          ..add('capabilities', capabilities))
        .toString();
  }
}

class ChannelTypeBuilder implements Builder<ChannelType, ChannelTypeBuilder> {
  _$ChannelType? _$v;

  ChannelTypeIdEnum? _id;
  ChannelTypeIdEnum? get id => _$this._id;
  set id(ChannelTypeIdEnum? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<ChannelTypeConfigFieldsInner>? _configFields;
  ListBuilder<ChannelTypeConfigFieldsInner> get configFields =>
      _$this._configFields ??= ListBuilder<ChannelTypeConfigFieldsInner>();
  set configFields(ListBuilder<ChannelTypeConfigFieldsInner>? configFields) =>
      _$this._configFields = configFields;

  ListBuilder<ChannelTypeConfigFieldsInner>? _secretFields;
  ListBuilder<ChannelTypeConfigFieldsInner> get secretFields =>
      _$this._secretFields ??= ListBuilder<ChannelTypeConfigFieldsInner>();
  set secretFields(ListBuilder<ChannelTypeConfigFieldsInner>? secretFields) =>
      _$this._secretFields = secretFields;

  ListBuilder<ChannelTypeEventsEnum>? _events;
  ListBuilder<ChannelTypeEventsEnum> get events =>
      _$this._events ??= ListBuilder<ChannelTypeEventsEnum>();
  set events(ListBuilder<ChannelTypeEventsEnum>? events) =>
      _$this._events = events;

  ChannelTypeCapabilitiesBuilder? _capabilities;
  ChannelTypeCapabilitiesBuilder get capabilities =>
      _$this._capabilities ??= ChannelTypeCapabilitiesBuilder();
  set capabilities(ChannelTypeCapabilitiesBuilder? capabilities) =>
      _$this._capabilities = capabilities;

  ChannelTypeBuilder() {
    ChannelType._defaults(this);
  }

  ChannelTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _configFields = $v.configFields.toBuilder();
      _secretFields = $v.secretFields.toBuilder();
      _events = $v.events?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelType other) {
    _$v = other as _$ChannelType;
  }

  @override
  void update(void Function(ChannelTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelType build() => _build();

  _$ChannelType _build() {
    _$ChannelType _$result;
    try {
      _$result = _$v ??
          _$ChannelType._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ChannelType', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChannelType', 'name'),
            description: description,
            configFields: configFields.build(),
            secretFields: secretFields.build(),
            events: _events?.build(),
            capabilities: _capabilities?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configFields';
        configFields.build();
        _$failedField = 'secretFields';
        secretFields.build();
        _$failedField = 'events';
        _events?.build();
        _$failedField = 'capabilities';
        _capabilities?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChannelType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
