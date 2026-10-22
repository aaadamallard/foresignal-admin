// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertEventTypeEnum _$alertEventTypeEnum_fired =
    const AlertEventTypeEnum._('fired');
const AlertEventTypeEnum _$alertEventTypeEnum_updated =
    const AlertEventTypeEnum._('updated');
const AlertEventTypeEnum _$alertEventTypeEnum_acknowledged =
    const AlertEventTypeEnum._('acknowledged');
const AlertEventTypeEnum _$alertEventTypeEnum_snoozed =
    const AlertEventTypeEnum._('snoozed');
const AlertEventTypeEnum _$alertEventTypeEnum_resolved =
    const AlertEventTypeEnum._('resolved');

AlertEventTypeEnum _$alertEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'fired':
      return _$alertEventTypeEnum_fired;
    case 'updated':
      return _$alertEventTypeEnum_updated;
    case 'acknowledged':
      return _$alertEventTypeEnum_acknowledged;
    case 'snoozed':
      return _$alertEventTypeEnum_snoozed;
    case 'resolved':
      return _$alertEventTypeEnum_resolved;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertEventTypeEnum> _$alertEventTypeEnumValues =
    BuiltSet<AlertEventTypeEnum>(const <AlertEventTypeEnum>[
  _$alertEventTypeEnum_fired,
  _$alertEventTypeEnum_updated,
  _$alertEventTypeEnum_acknowledged,
  _$alertEventTypeEnum_snoozed,
  _$alertEventTypeEnum_resolved,
]);

Serializer<AlertEventTypeEnum> _$alertEventTypeEnumSerializer =
    _$AlertEventTypeEnumSerializer();

class _$AlertEventTypeEnumSerializer
    implements PrimitiveSerializer<AlertEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'fired': 'fired',
    'updated': 'updated',
    'acknowledged': 'acknowledged',
    'snoozed': 'snoozed',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'fired': 'fired',
    'updated': 'updated',
    'acknowledged': 'acknowledged',
    'snoozed': 'snoozed',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertEventTypeEnum];
  @override
  final String wireName = 'AlertEventTypeEnum';

  @override
  Object serialize(Serializers serializers, AlertEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertEventTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlertEvent extends AlertEvent {
  @override
  final AlertEventTypeEnum type;
  @override
  final Alert alert;
  @override
  final bool? suppressed;
  @override
  final bool? exercise;

  factory _$AlertEvent([void Function(AlertEventBuilder)? updates]) =>
      (AlertEventBuilder()..update(updates))._build();

  _$AlertEvent._(
      {required this.type, required this.alert, this.suppressed, this.exercise})
      : super._();
  @override
  AlertEvent rebuild(void Function(AlertEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertEventBuilder toBuilder() => AlertEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertEvent &&
        type == other.type &&
        alert == other.alert &&
        suppressed == other.suppressed &&
        exercise == other.exercise;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, suppressed.hashCode);
    _$hash = $jc(_$hash, exercise.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertEvent')
          ..add('type', type)
          ..add('alert', alert)
          ..add('suppressed', suppressed)
          ..add('exercise', exercise))
        .toString();
  }
}

class AlertEventBuilder implements Builder<AlertEvent, AlertEventBuilder> {
  _$AlertEvent? _$v;

  AlertEventTypeEnum? _type;
  AlertEventTypeEnum? get type => _$this._type;
  set type(AlertEventTypeEnum? type) => _$this._type = type;

  AlertBuilder? _alert;
  AlertBuilder get alert => _$this._alert ??= AlertBuilder();
  set alert(AlertBuilder? alert) => _$this._alert = alert;

  bool? _suppressed;
  bool? get suppressed => _$this._suppressed;
  set suppressed(bool? suppressed) => _$this._suppressed = suppressed;

  bool? _exercise;
  bool? get exercise => _$this._exercise;
  set exercise(bool? exercise) => _$this._exercise = exercise;

  AlertEventBuilder() {
    AlertEvent._defaults(this);
  }

  AlertEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _alert = $v.alert.toBuilder();
      _suppressed = $v.suppressed;
      _exercise = $v.exercise;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertEvent other) {
    _$v = other as _$AlertEvent;
  }

  @override
  void update(void Function(AlertEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertEvent build() => _build();

  _$AlertEvent _build() {
    _$AlertEvent _$result;
    try {
      _$result = _$v ??
          _$AlertEvent._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'AlertEvent', 'type'),
            alert: alert.build(),
            suppressed: suppressed,
            exercise: exercise,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alert';
        alert.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AlertEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
