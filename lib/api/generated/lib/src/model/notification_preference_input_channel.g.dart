// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference_input_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_webhook =
    const NotificationPreferenceInputChannelTypeEnum._('webhook');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_slack =
    const NotificationPreferenceInputChannelTypeEnum._('slack');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_mattermost =
    const NotificationPreferenceInputChannelTypeEnum._('mattermost');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_discord =
    const NotificationPreferenceInputChannelTypeEnum._('discord');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_teams =
    const NotificationPreferenceInputChannelTypeEnum._('teams');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_googleChat =
    const NotificationPreferenceInputChannelTypeEnum._('googleChat');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_telegram =
    const NotificationPreferenceInputChannelTypeEnum._('telegram');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_matrix =
    const NotificationPreferenceInputChannelTypeEnum._('matrix');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_ntfy =
    const NotificationPreferenceInputChannelTypeEnum._('ntfy');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_gotify =
    const NotificationPreferenceInputChannelTypeEnum._('gotify');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_pushover =
    const NotificationPreferenceInputChannelTypeEnum._('pushover');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_email =
    const NotificationPreferenceInputChannelTypeEnum._('email');
const NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnum_webpush =
    const NotificationPreferenceInputChannelTypeEnum._('webpush');

NotificationPreferenceInputChannelTypeEnum
    _$notificationPreferenceInputChannelTypeEnumValueOf(String name) {
  switch (name) {
    case 'webhook':
      return _$notificationPreferenceInputChannelTypeEnum_webhook;
    case 'slack':
      return _$notificationPreferenceInputChannelTypeEnum_slack;
    case 'mattermost':
      return _$notificationPreferenceInputChannelTypeEnum_mattermost;
    case 'discord':
      return _$notificationPreferenceInputChannelTypeEnum_discord;
    case 'teams':
      return _$notificationPreferenceInputChannelTypeEnum_teams;
    case 'googleChat':
      return _$notificationPreferenceInputChannelTypeEnum_googleChat;
    case 'telegram':
      return _$notificationPreferenceInputChannelTypeEnum_telegram;
    case 'matrix':
      return _$notificationPreferenceInputChannelTypeEnum_matrix;
    case 'ntfy':
      return _$notificationPreferenceInputChannelTypeEnum_ntfy;
    case 'gotify':
      return _$notificationPreferenceInputChannelTypeEnum_gotify;
    case 'pushover':
      return _$notificationPreferenceInputChannelTypeEnum_pushover;
    case 'email':
      return _$notificationPreferenceInputChannelTypeEnum_email;
    case 'webpush':
      return _$notificationPreferenceInputChannelTypeEnum_webpush;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationPreferenceInputChannelTypeEnum>
    _$notificationPreferenceInputChannelTypeEnumValues = BuiltSet<
        NotificationPreferenceInputChannelTypeEnum>(const <NotificationPreferenceInputChannelTypeEnum>[
  _$notificationPreferenceInputChannelTypeEnum_webhook,
  _$notificationPreferenceInputChannelTypeEnum_slack,
  _$notificationPreferenceInputChannelTypeEnum_mattermost,
  _$notificationPreferenceInputChannelTypeEnum_discord,
  _$notificationPreferenceInputChannelTypeEnum_teams,
  _$notificationPreferenceInputChannelTypeEnum_googleChat,
  _$notificationPreferenceInputChannelTypeEnum_telegram,
  _$notificationPreferenceInputChannelTypeEnum_matrix,
  _$notificationPreferenceInputChannelTypeEnum_ntfy,
  _$notificationPreferenceInputChannelTypeEnum_gotify,
  _$notificationPreferenceInputChannelTypeEnum_pushover,
  _$notificationPreferenceInputChannelTypeEnum_email,
  _$notificationPreferenceInputChannelTypeEnum_webpush,
]);

Serializer<NotificationPreferenceInputChannelTypeEnum>
    _$notificationPreferenceInputChannelTypeEnumSerializer =
    _$NotificationPreferenceInputChannelTypeEnumSerializer();

class _$NotificationPreferenceInputChannelTypeEnumSerializer
    implements PrimitiveSerializer<NotificationPreferenceInputChannelTypeEnum> {
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
    NotificationPreferenceInputChannelTypeEnum
  ];
  @override
  final String wireName = 'NotificationPreferenceInputChannelTypeEnum';

  @override
  Object serialize(Serializers serializers,
          NotificationPreferenceInputChannelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationPreferenceInputChannelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationPreferenceInputChannelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotificationPreferenceInputChannel
    extends NotificationPreferenceInputChannel {
  @override
  final NotificationPreferenceInputChannelTypeEnum type;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final BuiltMap<String, String>? secrets;
  @override
  final String? language;

  factory _$NotificationPreferenceInputChannel(
          [void Function(NotificationPreferenceInputChannelBuilder)?
              updates]) =>
      (NotificationPreferenceInputChannelBuilder()..update(updates))._build();

  _$NotificationPreferenceInputChannel._(
      {required this.type, this.config, this.secrets, this.language})
      : super._();
  @override
  NotificationPreferenceInputChannel rebuild(
          void Function(NotificationPreferenceInputChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPreferenceInputChannelBuilder toBuilder() =>
      NotificationPreferenceInputChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPreferenceInputChannel &&
        type == other.type &&
        config == other.config &&
        secrets == other.secrets &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPreferenceInputChannel')
          ..add('type', type)
          ..add('config', config)
          ..add('secrets', secrets)
          ..add('language', language))
        .toString();
  }
}

class NotificationPreferenceInputChannelBuilder
    implements
        Builder<NotificationPreferenceInputChannel,
            NotificationPreferenceInputChannelBuilder> {
  _$NotificationPreferenceInputChannel? _$v;

  NotificationPreferenceInputChannelTypeEnum? _type;
  NotificationPreferenceInputChannelTypeEnum? get type => _$this._type;
  set type(NotificationPreferenceInputChannelTypeEnum? type) =>
      _$this._type = type;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  MapBuilder<String, String>? _secrets;
  MapBuilder<String, String> get secrets =>
      _$this._secrets ??= MapBuilder<String, String>();
  set secrets(MapBuilder<String, String>? secrets) => _$this._secrets = secrets;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  NotificationPreferenceInputChannelBuilder() {
    NotificationPreferenceInputChannel._defaults(this);
  }

  NotificationPreferenceInputChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _config = $v.config?.toBuilder();
      _secrets = $v.secrets?.toBuilder();
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPreferenceInputChannel other) {
    _$v = other as _$NotificationPreferenceInputChannel;
  }

  @override
  void update(
      void Function(NotificationPreferenceInputChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPreferenceInputChannel build() => _build();

  _$NotificationPreferenceInputChannel _build() {
    _$NotificationPreferenceInputChannel _$result;
    try {
      _$result = _$v ??
          _$NotificationPreferenceInputChannel._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'NotificationPreferenceInputChannel', 'type'),
            config: _config?.build(),
            secrets: _secrets?.build(),
            language: language,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'secrets';
        _secrets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationPreferenceInputChannel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
