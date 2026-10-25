// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_event_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PresenceEventChangeTypeEnum _$presenceEventChangeTypeEnum_joined =
    const PresenceEventChangeTypeEnum._('joined');
const PresenceEventChangeTypeEnum _$presenceEventChangeTypeEnum_left =
    const PresenceEventChangeTypeEnum._('left');
const PresenceEventChangeTypeEnum
_$presenceEventChangeTypeEnum_unknownDefaultOpenApi =
    const PresenceEventChangeTypeEnum._('unknownDefaultOpenApi');

PresenceEventChangeTypeEnum _$presenceEventChangeTypeEnumValueOf(String name) {
  switch (name) {
    case 'joined':
      return _$presenceEventChangeTypeEnum_joined;
    case 'left':
      return _$presenceEventChangeTypeEnum_left;
    case 'unknownDefaultOpenApi':
      return _$presenceEventChangeTypeEnum_unknownDefaultOpenApi;
    default:
      return _$presenceEventChangeTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PresenceEventChangeTypeEnum>
_$presenceEventChangeTypeEnumValues =
    BuiltSet<PresenceEventChangeTypeEnum>(const <PresenceEventChangeTypeEnum>[
      _$presenceEventChangeTypeEnum_joined,
      _$presenceEventChangeTypeEnum_left,
      _$presenceEventChangeTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<PresenceEventChangeTypeEnum>
_$presenceEventChangeTypeEnumSerializer =
    _$PresenceEventChangeTypeEnumSerializer();

class _$PresenceEventChangeTypeEnumSerializer
    implements PrimitiveSerializer<PresenceEventChangeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'joined': 'joined',
    'left': 'left',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'joined': 'joined',
    'left': 'left',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PresenceEventChangeTypeEnum];
  @override
  final String wireName = 'PresenceEventChangeTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PresenceEventChangeTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PresenceEventChangeTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PresenceEventChangeTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PresenceEventChange extends PresenceEventChange {
  @override
  final PresenceEventChangeTypeEnum type;
  @override
  final String clientId;

  factory _$PresenceEventChange([
    void Function(PresenceEventChangeBuilder)? updates,
  ]) => (PresenceEventChangeBuilder()..update(updates))._build();

  _$PresenceEventChange._({required this.type, required this.clientId})
    : super._();
  @override
  PresenceEventChange rebuild(
    void Function(PresenceEventChangeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PresenceEventChangeBuilder toBuilder() =>
      PresenceEventChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresenceEventChange &&
        type == other.type &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresenceEventChange')
          ..add('type', type)
          ..add('clientId', clientId))
        .toString();
  }
}

class PresenceEventChangeBuilder
    implements Builder<PresenceEventChange, PresenceEventChangeBuilder> {
  _$PresenceEventChange? _$v;

  PresenceEventChangeTypeEnum? _type;
  PresenceEventChangeTypeEnum? get type => _$this._type;
  set type(PresenceEventChangeTypeEnum? type) => _$this._type = type;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  PresenceEventChangeBuilder() {
    PresenceEventChange._defaults(this);
  }

  PresenceEventChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresenceEventChange other) {
    _$v = other as _$PresenceEventChange;
  }

  @override
  void update(void Function(PresenceEventChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresenceEventChange build() => _build();

  _$PresenceEventChange _build() {
    final _$result =
        _$v ??
        _$PresenceEventChange._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'PresenceEventChange',
            'type',
          ),
          clientId: BuiltValueNullFieldError.checkNotNull(
            clientId,
            r'PresenceEventChange',
            'clientId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
