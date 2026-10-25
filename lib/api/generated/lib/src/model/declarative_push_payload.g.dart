// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declarative_push_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeclarativePushPayloadWebPushEnum
_$declarativePushPayloadWebPushEnum_number8030 =
    const DeclarativePushPayloadWebPushEnum._('number8030');
const DeclarativePushPayloadWebPushEnum
_$declarativePushPayloadWebPushEnum_unknownDefaultOpenApi =
    const DeclarativePushPayloadWebPushEnum._('unknownDefaultOpenApi');

DeclarativePushPayloadWebPushEnum _$declarativePushPayloadWebPushEnumValueOf(
  String name,
) {
  switch (name) {
    case 'number8030':
      return _$declarativePushPayloadWebPushEnum_number8030;
    case 'unknownDefaultOpenApi':
      return _$declarativePushPayloadWebPushEnum_unknownDefaultOpenApi;
    default:
      return _$declarativePushPayloadWebPushEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeclarativePushPayloadWebPushEnum>
_$declarativePushPayloadWebPushEnumValues =
    BuiltSet<DeclarativePushPayloadWebPushEnum>(
      const <DeclarativePushPayloadWebPushEnum>[
        _$declarativePushPayloadWebPushEnum_number8030,
        _$declarativePushPayloadWebPushEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<DeclarativePushPayloadWebPushEnum>
_$declarativePushPayloadWebPushEnumSerializer =
    _$DeclarativePushPayloadWebPushEnumSerializer();

class _$DeclarativePushPayloadWebPushEnumSerializer
    implements PrimitiveSerializer<DeclarativePushPayloadWebPushEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number8030': 8030,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    8030: 'number8030',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeclarativePushPayloadWebPushEnum];
  @override
  final String wireName = 'DeclarativePushPayloadWebPushEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeclarativePushPayloadWebPushEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeclarativePushPayloadWebPushEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeclarativePushPayloadWebPushEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeclarativePushPayload extends DeclarativePushPayload {
  @override
  final DeclarativePushPayloadWebPushEnum webPush;
  @override
  final DeclarativePushPayloadNotification notification;

  factory _$DeclarativePushPayload([
    void Function(DeclarativePushPayloadBuilder)? updates,
  ]) => (DeclarativePushPayloadBuilder()..update(updates))._build();

  _$DeclarativePushPayload._({
    required this.webPush,
    required this.notification,
  }) : super._();
  @override
  DeclarativePushPayload rebuild(
    void Function(DeclarativePushPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeclarativePushPayloadBuilder toBuilder() =>
      DeclarativePushPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeclarativePushPayload &&
        webPush == other.webPush &&
        notification == other.notification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, webPush.hashCode);
    _$hash = $jc(_$hash, notification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeclarativePushPayload')
          ..add('webPush', webPush)
          ..add('notification', notification))
        .toString();
  }
}

class DeclarativePushPayloadBuilder
    implements Builder<DeclarativePushPayload, DeclarativePushPayloadBuilder> {
  _$DeclarativePushPayload? _$v;

  DeclarativePushPayloadWebPushEnum? _webPush;
  DeclarativePushPayloadWebPushEnum? get webPush => _$this._webPush;
  set webPush(DeclarativePushPayloadWebPushEnum? webPush) =>
      _$this._webPush = webPush;

  DeclarativePushPayloadNotificationBuilder? _notification;
  DeclarativePushPayloadNotificationBuilder get notification =>
      _$this._notification ??= DeclarativePushPayloadNotificationBuilder();
  set notification(DeclarativePushPayloadNotificationBuilder? notification) =>
      _$this._notification = notification;

  DeclarativePushPayloadBuilder() {
    DeclarativePushPayload._defaults(this);
  }

  DeclarativePushPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _webPush = $v.webPush;
      _notification = $v.notification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeclarativePushPayload other) {
    _$v = other as _$DeclarativePushPayload;
  }

  @override
  void update(void Function(DeclarativePushPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeclarativePushPayload build() => _build();

  _$DeclarativePushPayload _build() {
    _$DeclarativePushPayload _$result;
    try {
      _$result =
          _$v ??
          _$DeclarativePushPayload._(
            webPush: BuiltValueNullFieldError.checkNotNull(
              webPush,
              r'DeclarativePushPayload',
              'webPush',
            ),
            notification: notification.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notification';
        notification.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeclarativePushPayload',
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
