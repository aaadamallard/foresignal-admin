// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_webhook =
    const NotificationPreferenceChannelTypeEnum._('webhook');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_slack =
    const NotificationPreferenceChannelTypeEnum._('slack');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_mattermost =
    const NotificationPreferenceChannelTypeEnum._('mattermost');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_discord =
    const NotificationPreferenceChannelTypeEnum._('discord');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_teams =
    const NotificationPreferenceChannelTypeEnum._('teams');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_googleChat =
    const NotificationPreferenceChannelTypeEnum._('googleChat');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_telegram =
    const NotificationPreferenceChannelTypeEnum._('telegram');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_matrix =
    const NotificationPreferenceChannelTypeEnum._('matrix');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_ntfy =
    const NotificationPreferenceChannelTypeEnum._('ntfy');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_gotify =
    const NotificationPreferenceChannelTypeEnum._('gotify');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_pushover =
    const NotificationPreferenceChannelTypeEnum._('pushover');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_email =
    const NotificationPreferenceChannelTypeEnum._('email');
const NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnum_webpush =
    const NotificationPreferenceChannelTypeEnum._('webpush');

NotificationPreferenceChannelTypeEnum
    _$notificationPreferenceChannelTypeEnumValueOf(String name) {
  switch (name) {
    case 'webhook':
      return _$notificationPreferenceChannelTypeEnum_webhook;
    case 'slack':
      return _$notificationPreferenceChannelTypeEnum_slack;
    case 'mattermost':
      return _$notificationPreferenceChannelTypeEnum_mattermost;
    case 'discord':
      return _$notificationPreferenceChannelTypeEnum_discord;
    case 'teams':
      return _$notificationPreferenceChannelTypeEnum_teams;
    case 'googleChat':
      return _$notificationPreferenceChannelTypeEnum_googleChat;
    case 'telegram':
      return _$notificationPreferenceChannelTypeEnum_telegram;
    case 'matrix':
      return _$notificationPreferenceChannelTypeEnum_matrix;
    case 'ntfy':
      return _$notificationPreferenceChannelTypeEnum_ntfy;
    case 'gotify':
      return _$notificationPreferenceChannelTypeEnum_gotify;
    case 'pushover':
      return _$notificationPreferenceChannelTypeEnum_pushover;
    case 'email':
      return _$notificationPreferenceChannelTypeEnum_email;
    case 'webpush':
      return _$notificationPreferenceChannelTypeEnum_webpush;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationPreferenceChannelTypeEnum>
    _$notificationPreferenceChannelTypeEnumValues = BuiltSet<
        NotificationPreferenceChannelTypeEnum>(const <NotificationPreferenceChannelTypeEnum>[
  _$notificationPreferenceChannelTypeEnum_webhook,
  _$notificationPreferenceChannelTypeEnum_slack,
  _$notificationPreferenceChannelTypeEnum_mattermost,
  _$notificationPreferenceChannelTypeEnum_discord,
  _$notificationPreferenceChannelTypeEnum_teams,
  _$notificationPreferenceChannelTypeEnum_googleChat,
  _$notificationPreferenceChannelTypeEnum_telegram,
  _$notificationPreferenceChannelTypeEnum_matrix,
  _$notificationPreferenceChannelTypeEnum_ntfy,
  _$notificationPreferenceChannelTypeEnum_gotify,
  _$notificationPreferenceChannelTypeEnum_pushover,
  _$notificationPreferenceChannelTypeEnum_email,
  _$notificationPreferenceChannelTypeEnum_webpush,
]);

Serializer<NotificationPreferenceChannelTypeEnum>
    _$notificationPreferenceChannelTypeEnumSerializer =
    _$NotificationPreferenceChannelTypeEnumSerializer();

class _$NotificationPreferenceChannelTypeEnumSerializer
    implements PrimitiveSerializer<NotificationPreferenceChannelTypeEnum> {
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
  };

  @override
  final Iterable<Type> types = const <Type>[
    NotificationPreferenceChannelTypeEnum
  ];
  @override
  final String wireName = 'NotificationPreferenceChannelTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NotificationPreferenceChannelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationPreferenceChannelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationPreferenceChannelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotificationPreferenceChannel extends NotificationPreferenceChannel {
  @override
  final String? channelId;
  @override
  final NotificationPreferenceChannelTypeEnum type;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final BuiltList<String>? secretFields;
  @override
  final String? language;

  factory _$NotificationPreferenceChannel(
          [void Function(NotificationPreferenceChannelBuilder)? updates]) =>
      (NotificationPreferenceChannelBuilder()..update(updates))._build();

  _$NotificationPreferenceChannel._(
      {this.channelId,
      required this.type,
      this.config,
      this.secretFields,
      this.language})
      : super._();
  @override
  NotificationPreferenceChannel rebuild(
          void Function(NotificationPreferenceChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPreferenceChannelBuilder toBuilder() =>
      NotificationPreferenceChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPreferenceChannel &&
        channelId == other.channelId &&
        type == other.type &&
        config == other.config &&
        secretFields == other.secretFields &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, channelId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secretFields.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPreferenceChannel')
          ..add('channelId', channelId)
          ..add('type', type)
          ..add('config', config)
          ..add('secretFields', secretFields)
          ..add('language', language))
        .toString();
  }
}

class NotificationPreferenceChannelBuilder
    implements
        Builder<NotificationPreferenceChannel,
            NotificationPreferenceChannelBuilder> {
  _$NotificationPreferenceChannel? _$v;

  String? _channelId;
  String? get channelId => _$this._channelId;
  set channelId(String? channelId) => _$this._channelId = channelId;

  NotificationPreferenceChannelTypeEnum? _type;
  NotificationPreferenceChannelTypeEnum? get type => _$this._type;
  set type(NotificationPreferenceChannelTypeEnum? type) => _$this._type = type;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ListBuilder<String>? _secretFields;
  ListBuilder<String> get secretFields =>
      _$this._secretFields ??= ListBuilder<String>();
  set secretFields(ListBuilder<String>? secretFields) =>
      _$this._secretFields = secretFields;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  NotificationPreferenceChannelBuilder() {
    NotificationPreferenceChannel._defaults(this);
  }

  NotificationPreferenceChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _channelId = $v.channelId;
      _type = $v.type;
      _config = $v.config?.toBuilder();
      _secretFields = $v.secretFields?.toBuilder();
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPreferenceChannel other) {
    _$v = other as _$NotificationPreferenceChannel;
  }

  @override
  void update(void Function(NotificationPreferenceChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPreferenceChannel build() => _build();

  _$NotificationPreferenceChannel _build() {
    _$NotificationPreferenceChannel _$result;
    try {
      _$result = _$v ??
          _$NotificationPreferenceChannel._(
            channelId: channelId,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'NotificationPreferenceChannel', 'type'),
            config: _config?.build(),
            secretFields: _secretFields?.build(),
            language: language,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'secretFields';
        _secretFields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationPreferenceChannel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
