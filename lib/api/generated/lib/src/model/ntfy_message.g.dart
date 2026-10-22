// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ntfy_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NtfyMessageEventEnum _$ntfyMessageEventEnum_message =
    const NtfyMessageEventEnum._('message');

NtfyMessageEventEnum _$ntfyMessageEventEnumValueOf(String name) {
  switch (name) {
    case 'message':
      return _$ntfyMessageEventEnum_message;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NtfyMessageEventEnum> _$ntfyMessageEventEnumValues =
    BuiltSet<NtfyMessageEventEnum>(const <NtfyMessageEventEnum>[
  _$ntfyMessageEventEnum_message,
]);

Serializer<NtfyMessageEventEnum> _$ntfyMessageEventEnumSerializer =
    _$NtfyMessageEventEnumSerializer();

class _$NtfyMessageEventEnumSerializer
    implements PrimitiveSerializer<NtfyMessageEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'message': 'message',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'message': 'message',
  };

  @override
  final Iterable<Type> types = const <Type>[NtfyMessageEventEnum];
  @override
  final String wireName = 'NtfyMessageEventEnum';

  @override
  Object serialize(Serializers serializers, NtfyMessageEventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NtfyMessageEventEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NtfyMessageEventEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NtfyMessage extends NtfyMessage {
  @override
  final String id;
  @override
  final int time;
  @override
  final NtfyMessageEventEnum event;
  @override
  final String topic;
  @override
  final String? message;
  @override
  final String? title;
  @override
  final int? priority;
  @override
  final BuiltList<String>? tags;
  @override
  final String? click;

  factory _$NtfyMessage([void Function(NtfyMessageBuilder)? updates]) =>
      (NtfyMessageBuilder()..update(updates))._build();

  _$NtfyMessage._(
      {required this.id,
      required this.time,
      required this.event,
      required this.topic,
      this.message,
      this.title,
      this.priority,
      this.tags,
      this.click})
      : super._();
  @override
  NtfyMessage rebuild(void Function(NtfyMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NtfyMessageBuilder toBuilder() => NtfyMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NtfyMessage &&
        id == other.id &&
        time == other.time &&
        event == other.event &&
        topic == other.topic &&
        message == other.message &&
        title == other.title &&
        priority == other.priority &&
        tags == other.tags &&
        click == other.click;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, click.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NtfyMessage')
          ..add('id', id)
          ..add('time', time)
          ..add('event', event)
          ..add('topic', topic)
          ..add('message', message)
          ..add('title', title)
          ..add('priority', priority)
          ..add('tags', tags)
          ..add('click', click))
        .toString();
  }
}

class NtfyMessageBuilder implements Builder<NtfyMessage, NtfyMessageBuilder> {
  _$NtfyMessage? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  NtfyMessageEventEnum? _event;
  NtfyMessageEventEnum? get event => _$this._event;
  set event(NtfyMessageEventEnum? event) => _$this._event = event;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _click;
  String? get click => _$this._click;
  set click(String? click) => _$this._click = click;

  NtfyMessageBuilder() {
    NtfyMessage._defaults(this);
  }

  NtfyMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _time = $v.time;
      _event = $v.event;
      _topic = $v.topic;
      _message = $v.message;
      _title = $v.title;
      _priority = $v.priority;
      _tags = $v.tags?.toBuilder();
      _click = $v.click;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NtfyMessage other) {
    _$v = other as _$NtfyMessage;
  }

  @override
  void update(void Function(NtfyMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NtfyMessage build() => _build();

  _$NtfyMessage _build() {
    _$NtfyMessage _$result;
    try {
      _$result = _$v ??
          _$NtfyMessage._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'NtfyMessage', 'id'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'NtfyMessage', 'time'),
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'NtfyMessage', 'event'),
            topic: BuiltValueNullFieldError.checkNotNull(
                topic, r'NtfyMessage', 'topic'),
            message: message,
            title: title,
            priority: priority,
            tags: _tags?.build(),
            click: click,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NtfyMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
