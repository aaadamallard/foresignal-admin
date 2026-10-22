// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnum_mention =
    const NotificationPreferenceInputEventTypesEnum._('mention');
const NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnum_share =
    const NotificationPreferenceInputEventTypesEnum._('share');
const NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnum_report =
    const NotificationPreferenceInputEventTypesEnum._('report');
const NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnum_chronicle =
    const NotificationPreferenceInputEventTypesEnum._('chronicle');
const NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnum_assessment =
    const NotificationPreferenceInputEventTypesEnum._('assessment');
const NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnum_commentReply =
    const NotificationPreferenceInputEventTypesEnum._('commentReply');

NotificationPreferenceInputEventTypesEnum
_$notificationPreferenceInputEventTypesEnumValueOf(String name) {
  switch (name) {
    case 'mention':
      return _$notificationPreferenceInputEventTypesEnum_mention;
    case 'share':
      return _$notificationPreferenceInputEventTypesEnum_share;
    case 'report':
      return _$notificationPreferenceInputEventTypesEnum_report;
    case 'chronicle':
      return _$notificationPreferenceInputEventTypesEnum_chronicle;
    case 'assessment':
      return _$notificationPreferenceInputEventTypesEnum_assessment;
    case 'commentReply':
      return _$notificationPreferenceInputEventTypesEnum_commentReply;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationPreferenceInputEventTypesEnum>
_$notificationPreferenceInputEventTypesEnumValues =
    BuiltSet<NotificationPreferenceInputEventTypesEnum>(
      const <NotificationPreferenceInputEventTypesEnum>[
        _$notificationPreferenceInputEventTypesEnum_mention,
        _$notificationPreferenceInputEventTypesEnum_share,
        _$notificationPreferenceInputEventTypesEnum_report,
        _$notificationPreferenceInputEventTypesEnum_chronicle,
        _$notificationPreferenceInputEventTypesEnum_assessment,
        _$notificationPreferenceInputEventTypesEnum_commentReply,
      ],
    );

Serializer<NotificationPreferenceInputEventTypesEnum>
_$notificationPreferenceInputEventTypesEnumSerializer =
    _$NotificationPreferenceInputEventTypesEnumSerializer();

class _$NotificationPreferenceInputEventTypesEnumSerializer
    implements PrimitiveSerializer<NotificationPreferenceInputEventTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mention': 'mention',
    'share': 'share',
    'report': 'report',
    'chronicle': 'chronicle',
    'assessment': 'assessment',
    'commentReply': 'comment-reply',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mention': 'mention',
    'share': 'share',
    'report': 'report',
    'chronicle': 'chronicle',
    'assessment': 'assessment',
    'comment-reply': 'commentReply',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NotificationPreferenceInputEventTypesEnum,
  ];
  @override
  final String wireName = 'NotificationPreferenceInputEventTypesEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationPreferenceInputEventTypesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationPreferenceInputEventTypesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationPreferenceInputEventTypesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationPreferenceInput extends NotificationPreferenceInput {
  @override
  final String? id;
  @override
  final BuiltList<NotificationPreferenceInputEventTypesEnum> eventTypes;
  @override
  final NotificationPreferenceInputChannel channel;
  @override
  final QuietHours? quietHours;
  @override
  final bool? enabled;

  factory _$NotificationPreferenceInput([
    void Function(NotificationPreferenceInputBuilder)? updates,
  ]) => (NotificationPreferenceInputBuilder()..update(updates))._build();

  _$NotificationPreferenceInput._({
    this.id,
    required this.eventTypes,
    required this.channel,
    this.quietHours,
    this.enabled,
  }) : super._();
  @override
  NotificationPreferenceInput rebuild(
    void Function(NotificationPreferenceInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationPreferenceInputBuilder toBuilder() =>
      NotificationPreferenceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPreferenceInput &&
        id == other.id &&
        eventTypes == other.eventTypes &&
        channel == other.channel &&
        quietHours == other.quietHours &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, eventTypes.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, quietHours.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPreferenceInput')
          ..add('id', id)
          ..add('eventTypes', eventTypes)
          ..add('channel', channel)
          ..add('quietHours', quietHours)
          ..add('enabled', enabled))
        .toString();
  }
}

class NotificationPreferenceInputBuilder
    implements
        Builder<
          NotificationPreferenceInput,
          NotificationPreferenceInputBuilder
        > {
  _$NotificationPreferenceInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<NotificationPreferenceInputEventTypesEnum>? _eventTypes;
  ListBuilder<NotificationPreferenceInputEventTypesEnum> get eventTypes =>
      _$this._eventTypes ??=
          ListBuilder<NotificationPreferenceInputEventTypesEnum>();
  set eventTypes(
    ListBuilder<NotificationPreferenceInputEventTypesEnum>? eventTypes,
  ) => _$this._eventTypes = eventTypes;

  NotificationPreferenceInputChannelBuilder? _channel;
  NotificationPreferenceInputChannelBuilder get channel =>
      _$this._channel ??= NotificationPreferenceInputChannelBuilder();
  set channel(NotificationPreferenceInputChannelBuilder? channel) =>
      _$this._channel = channel;

  QuietHoursBuilder? _quietHours;
  QuietHoursBuilder get quietHours =>
      _$this._quietHours ??= QuietHoursBuilder();
  set quietHours(QuietHoursBuilder? quietHours) =>
      _$this._quietHours = quietHours;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  NotificationPreferenceInputBuilder() {
    NotificationPreferenceInput._defaults(this);
  }

  NotificationPreferenceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _eventTypes = $v.eventTypes.toBuilder();
      _channel = $v.channel.toBuilder();
      _quietHours = $v.quietHours?.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPreferenceInput other) {
    _$v = other as _$NotificationPreferenceInput;
  }

  @override
  void update(void Function(NotificationPreferenceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPreferenceInput build() => _build();

  _$NotificationPreferenceInput _build() {
    _$NotificationPreferenceInput _$result;
    try {
      _$result =
          _$v ??
          _$NotificationPreferenceInput._(
            id: id,
            eventTypes: eventTypes.build(),
            channel: channel.build(),
            quietHours: _quietHours?.build(),
            enabled: enabled,
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
          r'NotificationPreferenceInput',
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
