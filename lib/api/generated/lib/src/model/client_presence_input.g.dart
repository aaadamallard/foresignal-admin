// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_presence_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClientPresenceInputKindEnum _$clientPresenceInputKindEnum_desktop =
    const ClientPresenceInputKindEnum._('desktop');
const ClientPresenceInputKindEnum _$clientPresenceInputKindEnum_mobile =
    const ClientPresenceInputKindEnum._('mobile');
const ClientPresenceInputKindEnum _$clientPresenceInputKindEnum_web =
    const ClientPresenceInputKindEnum._('web');

ClientPresenceInputKindEnum _$clientPresenceInputKindEnumValueOf(String name) {
  switch (name) {
    case 'desktop':
      return _$clientPresenceInputKindEnum_desktop;
    case 'mobile':
      return _$clientPresenceInputKindEnum_mobile;
    case 'web':
      return _$clientPresenceInputKindEnum_web;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClientPresenceInputKindEnum>
_$clientPresenceInputKindEnumValues =
    BuiltSet<ClientPresenceInputKindEnum>(const <ClientPresenceInputKindEnum>[
      _$clientPresenceInputKindEnum_desktop,
      _$clientPresenceInputKindEnum_mobile,
      _$clientPresenceInputKindEnum_web,
    ]);

const ClientPresenceInputStateEnum _$clientPresenceInputStateEnum_active =
    const ClientPresenceInputStateEnum._('active');
const ClientPresenceInputStateEnum _$clientPresenceInputStateEnum_idle =
    const ClientPresenceInputStateEnum._('idle');
const ClientPresenceInputStateEnum _$clientPresenceInputStateEnum_background =
    const ClientPresenceInputStateEnum._('background');

ClientPresenceInputStateEnum _$clientPresenceInputStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'active':
      return _$clientPresenceInputStateEnum_active;
    case 'idle':
      return _$clientPresenceInputStateEnum_idle;
    case 'background':
      return _$clientPresenceInputStateEnum_background;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClientPresenceInputStateEnum>
_$clientPresenceInputStateEnumValues =
    BuiltSet<ClientPresenceInputStateEnum>(const <ClientPresenceInputStateEnum>[
      _$clientPresenceInputStateEnum_active,
      _$clientPresenceInputStateEnum_idle,
      _$clientPresenceInputStateEnum_background,
    ]);

Serializer<ClientPresenceInputKindEnum>
_$clientPresenceInputKindEnumSerializer =
    _$ClientPresenceInputKindEnumSerializer();
Serializer<ClientPresenceInputStateEnum>
_$clientPresenceInputStateEnumSerializer =
    _$ClientPresenceInputStateEnumSerializer();

class _$ClientPresenceInputKindEnumSerializer
    implements PrimitiveSerializer<ClientPresenceInputKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'desktop': 'desktop',
    'mobile': 'mobile',
    'web': 'web',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'desktop': 'desktop',
    'mobile': 'mobile',
    'web': 'web',
  };

  @override
  final Iterable<Type> types = const <Type>[ClientPresenceInputKindEnum];
  @override
  final String wireName = 'ClientPresenceInputKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ClientPresenceInputKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ClientPresenceInputKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ClientPresenceInputKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ClientPresenceInputStateEnumSerializer
    implements PrimitiveSerializer<ClientPresenceInputStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'idle': 'idle',
    'background': 'background',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'idle': 'idle',
    'background': 'background',
  };

  @override
  final Iterable<Type> types = const <Type>[ClientPresenceInputStateEnum];
  @override
  final String wireName = 'ClientPresenceInputStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    ClientPresenceInputStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ClientPresenceInputStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ClientPresenceInputStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ClientPresenceInput extends ClientPresenceInput {
  @override
  final ClientPresenceInputKindEnum kind;
  @override
  final ClientPresenceInputStateEnum state;
  @override
  final int? ttlSeconds;

  factory _$ClientPresenceInput([
    void Function(ClientPresenceInputBuilder)? updates,
  ]) => (ClientPresenceInputBuilder()..update(updates))._build();

  _$ClientPresenceInput._({
    required this.kind,
    required this.state,
    this.ttlSeconds,
  }) : super._();
  @override
  ClientPresenceInput rebuild(
    void Function(ClientPresenceInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ClientPresenceInputBuilder toBuilder() =>
      ClientPresenceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientPresenceInput &&
        kind == other.kind &&
        state == other.state &&
        ttlSeconds == other.ttlSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, ttlSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientPresenceInput')
          ..add('kind', kind)
          ..add('state', state)
          ..add('ttlSeconds', ttlSeconds))
        .toString();
  }
}

class ClientPresenceInputBuilder
    implements Builder<ClientPresenceInput, ClientPresenceInputBuilder> {
  _$ClientPresenceInput? _$v;

  ClientPresenceInputKindEnum? _kind;
  ClientPresenceInputKindEnum? get kind => _$this._kind;
  set kind(ClientPresenceInputKindEnum? kind) => _$this._kind = kind;

  ClientPresenceInputStateEnum? _state;
  ClientPresenceInputStateEnum? get state => _$this._state;
  set state(ClientPresenceInputStateEnum? state) => _$this._state = state;

  int? _ttlSeconds;
  int? get ttlSeconds => _$this._ttlSeconds;
  set ttlSeconds(int? ttlSeconds) => _$this._ttlSeconds = ttlSeconds;

  ClientPresenceInputBuilder() {
    ClientPresenceInput._defaults(this);
  }

  ClientPresenceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _state = $v.state;
      _ttlSeconds = $v.ttlSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientPresenceInput other) {
    _$v = other as _$ClientPresenceInput;
  }

  @override
  void update(void Function(ClientPresenceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientPresenceInput build() => _build();

  _$ClientPresenceInput _build() {
    final _$result =
        _$v ??
        _$ClientPresenceInput._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'ClientPresenceInput',
            'kind',
          ),
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'ClientPresenceInput',
            'state',
          ),
          ttlSeconds: ttlSeconds,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
