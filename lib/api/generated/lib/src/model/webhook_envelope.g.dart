// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhookEnvelopeEventEnum _$webhookEnvelopeEventEnum_alert =
    const WebhookEnvelopeEventEnum._('alert');
const WebhookEnvelopeEventEnum _$webhookEnvelopeEventEnum_briefing =
    const WebhookEnvelopeEventEnum._('briefing');
const WebhookEnvelopeEventEnum _$webhookEnvelopeEventEnum_system =
    const WebhookEnvelopeEventEnum._('system');
const WebhookEnvelopeEventEnum _$webhookEnvelopeEventEnum_test =
    const WebhookEnvelopeEventEnum._('test');

WebhookEnvelopeEventEnum _$webhookEnvelopeEventEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$webhookEnvelopeEventEnum_alert;
    case 'briefing':
      return _$webhookEnvelopeEventEnum_briefing;
    case 'system':
      return _$webhookEnvelopeEventEnum_system;
    case 'test':
      return _$webhookEnvelopeEventEnum_test;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhookEnvelopeEventEnum> _$webhookEnvelopeEventEnumValues =
    BuiltSet<WebhookEnvelopeEventEnum>(const <WebhookEnvelopeEventEnum>[
  _$webhookEnvelopeEventEnum_alert,
  _$webhookEnvelopeEventEnum_briefing,
  _$webhookEnvelopeEventEnum_system,
  _$webhookEnvelopeEventEnum_test,
]);

Serializer<WebhookEnvelopeEventEnum> _$webhookEnvelopeEventEnumSerializer =
    _$WebhookEnvelopeEventEnumSerializer();

class _$WebhookEnvelopeEventEnumSerializer
    implements PrimitiveSerializer<WebhookEnvelopeEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'test': 'test',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'test': 'test',
  };

  @override
  final Iterable<Type> types = const <Type>[WebhookEnvelopeEventEnum];
  @override
  final String wireName = 'WebhookEnvelopeEventEnum';

  @override
  Object serialize(Serializers serializers, WebhookEnvelopeEventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhookEnvelopeEventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhookEnvelopeEventEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhookEnvelope extends WebhookEnvelope {
  @override
  final WebhookEnvelopeEventEnum event;
  @override
  final String subtype;
  @override
  final NotificationMessage message;
  @override
  final BuiltMap<String, JsonObject?>? data;
  @override
  final String foresignalOrigin;
  @override
  final bool? exercise;

  factory _$WebhookEnvelope([void Function(WebhookEnvelopeBuilder)? updates]) =>
      (WebhookEnvelopeBuilder()..update(updates))._build();

  _$WebhookEnvelope._(
      {required this.event,
      required this.subtype,
      required this.message,
      this.data,
      required this.foresignalOrigin,
      this.exercise})
      : super._();
  @override
  WebhookEnvelope rebuild(void Function(WebhookEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookEnvelopeBuilder toBuilder() => WebhookEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookEnvelope &&
        event == other.event &&
        subtype == other.subtype &&
        message == other.message &&
        data == other.data &&
        foresignalOrigin == other.foresignalOrigin &&
        exercise == other.exercise;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, subtype.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, foresignalOrigin.hashCode);
    _$hash = $jc(_$hash, exercise.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhookEnvelope')
          ..add('event', event)
          ..add('subtype', subtype)
          ..add('message', message)
          ..add('data', data)
          ..add('foresignalOrigin', foresignalOrigin)
          ..add('exercise', exercise))
        .toString();
  }
}

class WebhookEnvelopeBuilder
    implements Builder<WebhookEnvelope, WebhookEnvelopeBuilder> {
  _$WebhookEnvelope? _$v;

  WebhookEnvelopeEventEnum? _event;
  WebhookEnvelopeEventEnum? get event => _$this._event;
  set event(WebhookEnvelopeEventEnum? event) => _$this._event = event;

  String? _subtype;
  String? get subtype => _$this._subtype;
  set subtype(String? subtype) => _$this._subtype = subtype;

  NotificationMessageBuilder? _message;
  NotificationMessageBuilder get message =>
      _$this._message ??= NotificationMessageBuilder();
  set message(NotificationMessageBuilder? message) => _$this._message = message;

  MapBuilder<String, JsonObject?>? _data;
  MapBuilder<String, JsonObject?> get data =>
      _$this._data ??= MapBuilder<String, JsonObject?>();
  set data(MapBuilder<String, JsonObject?>? data) => _$this._data = data;

  String? _foresignalOrigin;
  String? get foresignalOrigin => _$this._foresignalOrigin;
  set foresignalOrigin(String? foresignalOrigin) =>
      _$this._foresignalOrigin = foresignalOrigin;

  bool? _exercise;
  bool? get exercise => _$this._exercise;
  set exercise(bool? exercise) => _$this._exercise = exercise;

  WebhookEnvelopeBuilder() {
    WebhookEnvelope._defaults(this);
  }

  WebhookEnvelopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _subtype = $v.subtype;
      _message = $v.message.toBuilder();
      _data = $v.data?.toBuilder();
      _foresignalOrigin = $v.foresignalOrigin;
      _exercise = $v.exercise;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookEnvelope other) {
    _$v = other as _$WebhookEnvelope;
  }

  @override
  void update(void Function(WebhookEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookEnvelope build() => _build();

  _$WebhookEnvelope _build() {
    _$WebhookEnvelope _$result;
    try {
      _$result = _$v ??
          _$WebhookEnvelope._(
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'WebhookEnvelope', 'event'),
            subtype: BuiltValueNullFieldError.checkNotNull(
                subtype, r'WebhookEnvelope', 'subtype'),
            message: message.build(),
            data: _data?.build(),
            foresignalOrigin: BuiltValueNullFieldError.checkNotNull(
                foresignalOrigin, r'WebhookEnvelope', 'foresignalOrigin'),
            exercise: exercise,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        message.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebhookEnvelope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
