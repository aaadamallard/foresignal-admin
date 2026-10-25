// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationSettingsPauseBypassSeverityEnum
_$notificationSettingsPauseBypassSeverityEnum_info =
    const NotificationSettingsPauseBypassSeverityEnum._('info');
const NotificationSettingsPauseBypassSeverityEnum
_$notificationSettingsPauseBypassSeverityEnum_warning =
    const NotificationSettingsPauseBypassSeverityEnum._('warning');
const NotificationSettingsPauseBypassSeverityEnum
_$notificationSettingsPauseBypassSeverityEnum_critical =
    const NotificationSettingsPauseBypassSeverityEnum._('critical');
const NotificationSettingsPauseBypassSeverityEnum
_$notificationSettingsPauseBypassSeverityEnum_unknownDefaultOpenApi =
    const NotificationSettingsPauseBypassSeverityEnum._(
      'unknownDefaultOpenApi',
    );

NotificationSettingsPauseBypassSeverityEnum
_$notificationSettingsPauseBypassSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$notificationSettingsPauseBypassSeverityEnum_info;
    case 'warning':
      return _$notificationSettingsPauseBypassSeverityEnum_warning;
    case 'critical':
      return _$notificationSettingsPauseBypassSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$notificationSettingsPauseBypassSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$notificationSettingsPauseBypassSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationSettingsPauseBypassSeverityEnum>
_$notificationSettingsPauseBypassSeverityEnumValues =
    BuiltSet<NotificationSettingsPauseBypassSeverityEnum>(
      const <NotificationSettingsPauseBypassSeverityEnum>[
        _$notificationSettingsPauseBypassSeverityEnum_info,
        _$notificationSettingsPauseBypassSeverityEnum_warning,
        _$notificationSettingsPauseBypassSeverityEnum_critical,
        _$notificationSettingsPauseBypassSeverityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NotificationSettingsPauseBypassSeverityEnum>
_$notificationSettingsPauseBypassSeverityEnumSerializer =
    _$NotificationSettingsPauseBypassSeverityEnumSerializer();

class _$NotificationSettingsPauseBypassSeverityEnumSerializer
    implements
        PrimitiveSerializer<NotificationSettingsPauseBypassSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[
    NotificationSettingsPauseBypassSeverityEnum,
  ];
  @override
  final String wireName = 'NotificationSettingsPauseBypassSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationSettingsPauseBypassSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationSettingsPauseBypassSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationSettingsPauseBypassSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationSettings extends NotificationSettings {
  @override
  final DateTime? pausedUntil;
  @override
  final NotificationSettingsPauseBypassSeverityEnum? pauseBypassSeverity;
  @override
  final NotificationSettingsChatops? chatops;
  @override
  final bool? imageLinks;
  @override
  final String? defaultLanguage;

  factory _$NotificationSettings([
    void Function(NotificationSettingsBuilder)? updates,
  ]) => (NotificationSettingsBuilder()..update(updates))._build();

  _$NotificationSettings._({
    this.pausedUntil,
    this.pauseBypassSeverity,
    this.chatops,
    this.imageLinks,
    this.defaultLanguage,
  }) : super._();
  @override
  NotificationSettings rebuild(
    void Function(NotificationSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationSettingsBuilder toBuilder() =>
      NotificationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationSettings &&
        pausedUntil == other.pausedUntil &&
        pauseBypassSeverity == other.pauseBypassSeverity &&
        chatops == other.chatops &&
        imageLinks == other.imageLinks &&
        defaultLanguage == other.defaultLanguage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pausedUntil.hashCode);
    _$hash = $jc(_$hash, pauseBypassSeverity.hashCode);
    _$hash = $jc(_$hash, chatops.hashCode);
    _$hash = $jc(_$hash, imageLinks.hashCode);
    _$hash = $jc(_$hash, defaultLanguage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationSettings')
          ..add('pausedUntil', pausedUntil)
          ..add('pauseBypassSeverity', pauseBypassSeverity)
          ..add('chatops', chatops)
          ..add('imageLinks', imageLinks)
          ..add('defaultLanguage', defaultLanguage))
        .toString();
  }
}

class NotificationSettingsBuilder
    implements Builder<NotificationSettings, NotificationSettingsBuilder> {
  _$NotificationSettings? _$v;

  DateTime? _pausedUntil;
  DateTime? get pausedUntil => _$this._pausedUntil;
  set pausedUntil(DateTime? pausedUntil) => _$this._pausedUntil = pausedUntil;

  NotificationSettingsPauseBypassSeverityEnum? _pauseBypassSeverity;
  NotificationSettingsPauseBypassSeverityEnum? get pauseBypassSeverity =>
      _$this._pauseBypassSeverity;
  set pauseBypassSeverity(
    NotificationSettingsPauseBypassSeverityEnum? pauseBypassSeverity,
  ) => _$this._pauseBypassSeverity = pauseBypassSeverity;

  NotificationSettingsChatopsBuilder? _chatops;
  NotificationSettingsChatopsBuilder get chatops =>
      _$this._chatops ??= NotificationSettingsChatopsBuilder();
  set chatops(NotificationSettingsChatopsBuilder? chatops) =>
      _$this._chatops = chatops;

  bool? _imageLinks;
  bool? get imageLinks => _$this._imageLinks;
  set imageLinks(bool? imageLinks) => _$this._imageLinks = imageLinks;

  String? _defaultLanguage;
  String? get defaultLanguage => _$this._defaultLanguage;
  set defaultLanguage(String? defaultLanguage) =>
      _$this._defaultLanguage = defaultLanguage;

  NotificationSettingsBuilder() {
    NotificationSettings._defaults(this);
  }

  NotificationSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pausedUntil = $v.pausedUntil;
      _pauseBypassSeverity = $v.pauseBypassSeverity;
      _chatops = $v.chatops?.toBuilder();
      _imageLinks = $v.imageLinks;
      _defaultLanguage = $v.defaultLanguage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationSettings other) {
    _$v = other as _$NotificationSettings;
  }

  @override
  void update(void Function(NotificationSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationSettings build() => _build();

  _$NotificationSettings _build() {
    _$NotificationSettings _$result;
    try {
      _$result =
          _$v ??
          _$NotificationSettings._(
            pausedUntil: pausedUntil,
            pauseBypassSeverity: pauseBypassSeverity,
            chatops: _chatops?.build(),
            imageLinks: imageLinks,
            defaultLanguage: defaultLanguage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chatops';
        _chatops?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationSettings',
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
