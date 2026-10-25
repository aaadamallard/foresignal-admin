// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_mention =
    const NotificationPreferenceEventTypesEnum._('mention');
const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_share =
    const NotificationPreferenceEventTypesEnum._('share');
const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_report =
    const NotificationPreferenceEventTypesEnum._('report');
const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_chronicle =
    const NotificationPreferenceEventTypesEnum._('chronicle');
const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_assessment =
    const NotificationPreferenceEventTypesEnum._('assessment');
const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_commentReply =
    const NotificationPreferenceEventTypesEnum._('commentReply');
const NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnum_unknownDefaultOpenApi =
    const NotificationPreferenceEventTypesEnum._('unknownDefaultOpenApi');

NotificationPreferenceEventTypesEnum
_$notificationPreferenceEventTypesEnumValueOf(String name) {
  switch (name) {
    case 'mention':
      return _$notificationPreferenceEventTypesEnum_mention;
    case 'share':
      return _$notificationPreferenceEventTypesEnum_share;
    case 'report':
      return _$notificationPreferenceEventTypesEnum_report;
    case 'chronicle':
      return _$notificationPreferenceEventTypesEnum_chronicle;
    case 'assessment':
      return _$notificationPreferenceEventTypesEnum_assessment;
    case 'commentReply':
      return _$notificationPreferenceEventTypesEnum_commentReply;
    case 'unknownDefaultOpenApi':
      return _$notificationPreferenceEventTypesEnum_unknownDefaultOpenApi;
    default:
      return _$notificationPreferenceEventTypesEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationPreferenceEventTypesEnum>
_$notificationPreferenceEventTypesEnumValues =
    BuiltSet<NotificationPreferenceEventTypesEnum>(
      const <NotificationPreferenceEventTypesEnum>[
        _$notificationPreferenceEventTypesEnum_mention,
        _$notificationPreferenceEventTypesEnum_share,
        _$notificationPreferenceEventTypesEnum_report,
        _$notificationPreferenceEventTypesEnum_chronicle,
        _$notificationPreferenceEventTypesEnum_assessment,
        _$notificationPreferenceEventTypesEnum_commentReply,
        _$notificationPreferenceEventTypesEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NotificationPreferenceEventTypesEnum>
_$notificationPreferenceEventTypesEnumSerializer =
    _$NotificationPreferenceEventTypesEnumSerializer();

class _$NotificationPreferenceEventTypesEnumSerializer
    implements PrimitiveSerializer<NotificationPreferenceEventTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mention': 'mention',
    'share': 'share',
    'report': 'report',
    'chronicle': 'chronicle',
    'assessment': 'assessment',
    'commentReply': 'comment-reply',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mention': 'mention',
    'share': 'share',
    'report': 'report',
    'chronicle': 'chronicle',
    'assessment': 'assessment',
    'comment-reply': 'commentReply',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NotificationPreferenceEventTypesEnum,
  ];
  @override
  final String wireName = 'NotificationPreferenceEventTypesEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationPreferenceEventTypesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationPreferenceEventTypesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationPreferenceEventTypesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationPreference extends NotificationPreference {
  @override
  final String id;
  @override
  final String? principalId;
  @override
  final BuiltList<NotificationPreferenceEventTypesEnum> eventTypes;
  @override
  final NotificationPreferenceChannel channel;
  @override
  final QuietHours? quietHours;
  @override
  final bool enabled;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$NotificationPreference([
    void Function(NotificationPreferenceBuilder)? updates,
  ]) => (NotificationPreferenceBuilder()..update(updates))._build();

  _$NotificationPreference._({
    required this.id,
    this.principalId,
    required this.eventTypes,
    required this.channel,
    this.quietHours,
    required this.enabled,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  NotificationPreference rebuild(
    void Function(NotificationPreferenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationPreferenceBuilder toBuilder() =>
      NotificationPreferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPreference &&
        id == other.id &&
        principalId == other.principalId &&
        eventTypes == other.eventTypes &&
        channel == other.channel &&
        quietHours == other.quietHours &&
        enabled == other.enabled &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, eventTypes.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, quietHours.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPreference')
          ..add('id', id)
          ..add('principalId', principalId)
          ..add('eventTypes', eventTypes)
          ..add('channel', channel)
          ..add('quietHours', quietHours)
          ..add('enabled', enabled)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NotificationPreferenceBuilder
    implements Builder<NotificationPreference, NotificationPreferenceBuilder> {
  _$NotificationPreference? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  ListBuilder<NotificationPreferenceEventTypesEnum>? _eventTypes;
  ListBuilder<NotificationPreferenceEventTypesEnum> get eventTypes =>
      _$this._eventTypes ??=
          ListBuilder<NotificationPreferenceEventTypesEnum>();
  set eventTypes(
    ListBuilder<NotificationPreferenceEventTypesEnum>? eventTypes,
  ) => _$this._eventTypes = eventTypes;

  NotificationPreferenceChannelBuilder? _channel;
  NotificationPreferenceChannelBuilder get channel =>
      _$this._channel ??= NotificationPreferenceChannelBuilder();
  set channel(NotificationPreferenceChannelBuilder? channel) =>
      _$this._channel = channel;

  QuietHoursBuilder? _quietHours;
  QuietHoursBuilder get quietHours =>
      _$this._quietHours ??= QuietHoursBuilder();
  set quietHours(QuietHoursBuilder? quietHours) =>
      _$this._quietHours = quietHours;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  NotificationPreferenceBuilder() {
    NotificationPreference._defaults(this);
  }

  NotificationPreferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _principalId = $v.principalId;
      _eventTypes = $v.eventTypes.toBuilder();
      _channel = $v.channel.toBuilder();
      _quietHours = $v.quietHours?.toBuilder();
      _enabled = $v.enabled;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPreference other) {
    _$v = other as _$NotificationPreference;
  }

  @override
  void update(void Function(NotificationPreferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPreference build() => _build();

  _$NotificationPreference _build() {
    _$NotificationPreference _$result;
    try {
      _$result =
          _$v ??
          _$NotificationPreference._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'NotificationPreference',
              'id',
            ),
            principalId: principalId,
            eventTypes: eventTypes.build(),
            channel: channel.build(),
            quietHours: _quietHours?.build(),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'NotificationPreference',
              'enabled',
            ),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventTypes';
        eventTypes.build();
        _$failedField = 'channel';
        channel.build();
        _$failedField = 'quietHours';
        _quietHours?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationPreference',
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
