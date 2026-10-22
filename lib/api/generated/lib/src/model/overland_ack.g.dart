// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overland_ack.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OverlandAckResultEnum _$overlandAckResultEnum_ok =
    const OverlandAckResultEnum._('ok');

OverlandAckResultEnum _$overlandAckResultEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$overlandAckResultEnum_ok;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OverlandAckResultEnum> _$overlandAckResultEnumValues =
    BuiltSet<OverlandAckResultEnum>(const <OverlandAckResultEnum>[
      _$overlandAckResultEnum_ok,
    ]);

Serializer<OverlandAckResultEnum> _$overlandAckResultEnumSerializer =
    _$OverlandAckResultEnumSerializer();

class _$OverlandAckResultEnumSerializer
    implements PrimitiveSerializer<OverlandAckResultEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{'ok': 'ok'};
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
  };

  @override
  final Iterable<Type> types = const <Type>[OverlandAckResultEnum];
  @override
  final String wireName = 'OverlandAckResultEnum';

  @override
  Object serialize(
    Serializers serializers,
    OverlandAckResultEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OverlandAckResultEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OverlandAckResultEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OverlandAck extends OverlandAck {
  @override
  final OverlandAckResultEnum result;

  factory _$OverlandAck([void Function(OverlandAckBuilder)? updates]) =>
      (OverlandAckBuilder()..update(updates))._build();

  _$OverlandAck._({required this.result}) : super._();
  @override
  OverlandAck rebuild(void Function(OverlandAckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverlandAckBuilder toBuilder() => OverlandAckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverlandAck && result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'OverlandAck',
    )..add('result', result)).toString();
  }
}

class OverlandAckBuilder implements Builder<OverlandAck, OverlandAckBuilder> {
  _$OverlandAck? _$v;

  OverlandAckResultEnum? _result;
  OverlandAckResultEnum? get result => _$this._result;
  set result(OverlandAckResultEnum? result) => _$this._result = result;

  OverlandAckBuilder() {
    OverlandAck._defaults(this);
  }

  OverlandAckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverlandAck other) {
    _$v = other as _$OverlandAck;
  }

  @override
  void update(void Function(OverlandAckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OverlandAck build() => _build();

  _$OverlandAck _build() {
    final _$result =
        _$v ??
        _$OverlandAck._(
          result: BuiltValueNullFieldError.checkNotNull(
            result,
            r'OverlandAck',
            'result',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
