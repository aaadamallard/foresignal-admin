// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_signal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertSignalTypeEnum _$alertSignalTypeEnum_ACK_FAST =
    const AlertSignalTypeEnum._('ACK_FAST');
const AlertSignalTypeEnum _$alertSignalTypeEnum_SNOOZED =
    const AlertSignalTypeEnum._('SNOOZED');
const AlertSignalTypeEnum _$alertSignalTypeEnum_FLAP =
    const AlertSignalTypeEnum._('FLAP');
const AlertSignalTypeEnum _$alertSignalTypeEnum_UNOPENED =
    const AlertSignalTypeEnum._('UNOPENED');
const AlertSignalTypeEnum _$alertSignalTypeEnum_unknownDefaultOpenApi =
    const AlertSignalTypeEnum._('unknownDefaultOpenApi');

AlertSignalTypeEnum _$alertSignalTypeEnumValueOf(String name) {
  switch (name) {
    case 'ACK_FAST':
      return _$alertSignalTypeEnum_ACK_FAST;
    case 'SNOOZED':
      return _$alertSignalTypeEnum_SNOOZED;
    case 'FLAP':
      return _$alertSignalTypeEnum_FLAP;
    case 'UNOPENED':
      return _$alertSignalTypeEnum_UNOPENED;
    case 'unknownDefaultOpenApi':
      return _$alertSignalTypeEnum_unknownDefaultOpenApi;
    default:
      return _$alertSignalTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AlertSignalTypeEnum> _$alertSignalTypeEnumValues =
    BuiltSet<AlertSignalTypeEnum>(const <AlertSignalTypeEnum>[
      _$alertSignalTypeEnum_ACK_FAST,
      _$alertSignalTypeEnum_SNOOZED,
      _$alertSignalTypeEnum_FLAP,
      _$alertSignalTypeEnum_UNOPENED,
      _$alertSignalTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<AlertSignalTypeEnum> _$alertSignalTypeEnumSerializer =
    _$AlertSignalTypeEnumSerializer();

class _$AlertSignalTypeEnumSerializer
    implements PrimitiveSerializer<AlertSignalTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACK_FAST': 'ACK_FAST',
    'SNOOZED': 'SNOOZED',
    'FLAP': 'FLAP',
    'UNOPENED': 'UNOPENED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACK_FAST': 'ACK_FAST',
    'SNOOZED': 'SNOOZED',
    'FLAP': 'FLAP',
    'UNOPENED': 'UNOPENED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertSignalTypeEnum];
  @override
  final String wireName = 'AlertSignalTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertSignalTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertSignalTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertSignalTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AlertSignal extends AlertSignal {
  @override
  final int alertId;
  @override
  final AlertSignalTypeEnum type;
  @override
  final DateTime at;

  factory _$AlertSignal([void Function(AlertSignalBuilder)? updates]) =>
      (AlertSignalBuilder()..update(updates))._build();

  _$AlertSignal._({required this.alertId, required this.type, required this.at})
    : super._();
  @override
  AlertSignal rebuild(void Function(AlertSignalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertSignalBuilder toBuilder() => AlertSignalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertSignal &&
        alertId == other.alertId &&
        type == other.type &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertSignal')
          ..add('alertId', alertId)
          ..add('type', type)
          ..add('at', at))
        .toString();
  }
}

class AlertSignalBuilder implements Builder<AlertSignal, AlertSignalBuilder> {
  _$AlertSignal? _$v;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  AlertSignalTypeEnum? _type;
  AlertSignalTypeEnum? get type => _$this._type;
  set type(AlertSignalTypeEnum? type) => _$this._type = type;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AlertSignalBuilder() {
    AlertSignal._defaults(this);
  }

  AlertSignalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alertId = $v.alertId;
      _type = $v.type;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertSignal other) {
    _$v = other as _$AlertSignal;
  }

  @override
  void update(void Function(AlertSignalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertSignal build() => _build();

  _$AlertSignal _build() {
    final _$result =
        _$v ??
        _$AlertSignal._(
          alertId: BuiltValueNullFieldError.checkNotNull(
            alertId,
            r'AlertSignal',
            'alertId',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AlertSignal',
            'type',
          ),
          at: BuiltValueNullFieldError.checkNotNull(at, r'AlertSignal', 'at'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
