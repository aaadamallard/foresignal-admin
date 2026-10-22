// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_notifications200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StreamNotifications200ResponseEventEnum
_$streamNotifications200ResponseEventEnum_alert =
    const StreamNotifications200ResponseEventEnum._('alert');
const StreamNotifications200ResponseEventEnum
_$streamNotifications200ResponseEventEnum_briefing =
    const StreamNotifications200ResponseEventEnum._('briefing');
const StreamNotifications200ResponseEventEnum
_$streamNotifications200ResponseEventEnum_system =
    const StreamNotifications200ResponseEventEnum._('system');

StreamNotifications200ResponseEventEnum
_$streamNotifications200ResponseEventEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$streamNotifications200ResponseEventEnum_alert;
    case 'briefing':
      return _$streamNotifications200ResponseEventEnum_briefing;
    case 'system':
      return _$streamNotifications200ResponseEventEnum_system;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StreamNotifications200ResponseEventEnum>
_$streamNotifications200ResponseEventEnumValues =
    BuiltSet<StreamNotifications200ResponseEventEnum>(
      const <StreamNotifications200ResponseEventEnum>[
        _$streamNotifications200ResponseEventEnum_alert,
        _$streamNotifications200ResponseEventEnum_briefing,
        _$streamNotifications200ResponseEventEnum_system,
      ],
    );

const StreamNotifications200ResponseSeverityEnum
_$streamNotifications200ResponseSeverityEnum_info =
    const StreamNotifications200ResponseSeverityEnum._('info');
const StreamNotifications200ResponseSeverityEnum
_$streamNotifications200ResponseSeverityEnum_warning =
    const StreamNotifications200ResponseSeverityEnum._('warning');
const StreamNotifications200ResponseSeverityEnum
_$streamNotifications200ResponseSeverityEnum_critical =
    const StreamNotifications200ResponseSeverityEnum._('critical');

StreamNotifications200ResponseSeverityEnum
_$streamNotifications200ResponseSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$streamNotifications200ResponseSeverityEnum_info;
    case 'warning':
      return _$streamNotifications200ResponseSeverityEnum_warning;
    case 'critical':
      return _$streamNotifications200ResponseSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StreamNotifications200ResponseSeverityEnum>
_$streamNotifications200ResponseSeverityEnumValues =
    BuiltSet<StreamNotifications200ResponseSeverityEnum>(
      const <StreamNotifications200ResponseSeverityEnum>[
        _$streamNotifications200ResponseSeverityEnum_info,
        _$streamNotifications200ResponseSeverityEnum_warning,
        _$streamNotifications200ResponseSeverityEnum_critical,
      ],
    );

const StreamNotifications200ResponseAlertStateEnum
_$streamNotifications200ResponseAlertStateEnum_firing =
    const StreamNotifications200ResponseAlertStateEnum._('firing');
const StreamNotifications200ResponseAlertStateEnum
_$streamNotifications200ResponseAlertStateEnum_acknowledged =
    const StreamNotifications200ResponseAlertStateEnum._('acknowledged');
const StreamNotifications200ResponseAlertStateEnum
_$streamNotifications200ResponseAlertStateEnum_resolved =
    const StreamNotifications200ResponseAlertStateEnum._('resolved');

StreamNotifications200ResponseAlertStateEnum
_$streamNotifications200ResponseAlertStateEnumValueOf(String name) {
  switch (name) {
    case 'firing':
      return _$streamNotifications200ResponseAlertStateEnum_firing;
    case 'acknowledged':
      return _$streamNotifications200ResponseAlertStateEnum_acknowledged;
    case 'resolved':
      return _$streamNotifications200ResponseAlertStateEnum_resolved;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StreamNotifications200ResponseAlertStateEnum>
_$streamNotifications200ResponseAlertStateEnumValues =
    BuiltSet<StreamNotifications200ResponseAlertStateEnum>(
      const <StreamNotifications200ResponseAlertStateEnum>[
        _$streamNotifications200ResponseAlertStateEnum_firing,
        _$streamNotifications200ResponseAlertStateEnum_acknowledged,
        _$streamNotifications200ResponseAlertStateEnum_resolved,
      ],
    );

Serializer<StreamNotifications200ResponseEventEnum>
_$streamNotifications200ResponseEventEnumSerializer =
    _$StreamNotifications200ResponseEventEnumSerializer();
Serializer<StreamNotifications200ResponseSeverityEnum>
_$streamNotifications200ResponseSeverityEnumSerializer =
    _$StreamNotifications200ResponseSeverityEnumSerializer();
Serializer<StreamNotifications200ResponseAlertStateEnum>
_$streamNotifications200ResponseAlertStateEnumSerializer =
    _$StreamNotifications200ResponseAlertStateEnumSerializer();

class _$StreamNotifications200ResponseEventEnumSerializer
    implements PrimitiveSerializer<StreamNotifications200ResponseEventEnum> {
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
  final Iterable<Type> types = const <Type>[
    StreamNotifications200ResponseEventEnum,
  ];
  @override
  final String wireName = 'StreamNotifications200ResponseEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    StreamNotifications200ResponseEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StreamNotifications200ResponseEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StreamNotifications200ResponseEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StreamNotifications200ResponseSeverityEnumSerializer
    implements PrimitiveSerializer<StreamNotifications200ResponseSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StreamNotifications200ResponseSeverityEnum,
  ];
  @override
  final String wireName = 'StreamNotifications200ResponseSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    StreamNotifications200ResponseSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StreamNotifications200ResponseSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StreamNotifications200ResponseSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StreamNotifications200ResponseAlertStateEnumSerializer
    implements
        PrimitiveSerializer<StreamNotifications200ResponseAlertStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StreamNotifications200ResponseAlertStateEnum,
  ];
  @override
  final String wireName = 'StreamNotifications200ResponseAlertStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    StreamNotifications200ResponseAlertStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StreamNotifications200ResponseAlertStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StreamNotifications200ResponseAlertStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StreamNotifications200Response extends StreamNotifications200Response {
  @override
  final AnyOf anyOf;

  factory _$StreamNotifications200Response([
    void Function(StreamNotifications200ResponseBuilder)? updates,
  ]) => (StreamNotifications200ResponseBuilder()..update(updates))._build();

  _$StreamNotifications200Response._({required this.anyOf}) : super._();
  @override
  StreamNotifications200Response rebuild(
    void Function(StreamNotifications200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StreamNotifications200ResponseBuilder toBuilder() =>
      StreamNotifications200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamNotifications200Response && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'StreamNotifications200Response',
    )..add('anyOf', anyOf)).toString();
  }
}

class StreamNotifications200ResponseBuilder
    implements
        Builder<
          StreamNotifications200Response,
          StreamNotifications200ResponseBuilder
        > {
  _$StreamNotifications200Response? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  StreamNotifications200ResponseBuilder() {
    StreamNotifications200Response._defaults(this);
  }

  StreamNotifications200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamNotifications200Response other) {
    _$v = other as _$StreamNotifications200Response;
  }

  @override
  void update(void Function(StreamNotifications200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamNotifications200Response build() => _build();

  _$StreamNotifications200Response _build() {
    final _$result =
        _$v ??
        _$StreamNotifications200Response._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
            anyOf,
            r'StreamNotifications200Response',
            'anyOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
