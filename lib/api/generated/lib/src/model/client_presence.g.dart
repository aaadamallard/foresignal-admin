// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_presence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClientPresenceKindEnum _$clientPresenceKindEnum_desktop =
    const ClientPresenceKindEnum._('desktop');
const ClientPresenceKindEnum _$clientPresenceKindEnum_mobile =
    const ClientPresenceKindEnum._('mobile');
const ClientPresenceKindEnum _$clientPresenceKindEnum_web =
    const ClientPresenceKindEnum._('web');

ClientPresenceKindEnum _$clientPresenceKindEnumValueOf(String name) {
  switch (name) {
    case 'desktop':
      return _$clientPresenceKindEnum_desktop;
    case 'mobile':
      return _$clientPresenceKindEnum_mobile;
    case 'web':
      return _$clientPresenceKindEnum_web;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClientPresenceKindEnum> _$clientPresenceKindEnumValues =
    BuiltSet<ClientPresenceKindEnum>(const <ClientPresenceKindEnum>[
      _$clientPresenceKindEnum_desktop,
      _$clientPresenceKindEnum_mobile,
      _$clientPresenceKindEnum_web,
    ]);

const ClientPresenceStateEnum _$clientPresenceStateEnum_active =
    const ClientPresenceStateEnum._('active');
const ClientPresenceStateEnum _$clientPresenceStateEnum_idle =
    const ClientPresenceStateEnum._('idle');
const ClientPresenceStateEnum _$clientPresenceStateEnum_background =
    const ClientPresenceStateEnum._('background');

ClientPresenceStateEnum _$clientPresenceStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$clientPresenceStateEnum_active;
    case 'idle':
      return _$clientPresenceStateEnum_idle;
    case 'background':
      return _$clientPresenceStateEnum_background;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClientPresenceStateEnum> _$clientPresenceStateEnumValues =
    BuiltSet<ClientPresenceStateEnum>(const <ClientPresenceStateEnum>[
      _$clientPresenceStateEnum_active,
      _$clientPresenceStateEnum_idle,
      _$clientPresenceStateEnum_background,
    ]);

Serializer<ClientPresenceKindEnum> _$clientPresenceKindEnumSerializer =
    _$ClientPresenceKindEnumSerializer();
Serializer<ClientPresenceStateEnum> _$clientPresenceStateEnumSerializer =
    _$ClientPresenceStateEnumSerializer();

class _$ClientPresenceKindEnumSerializer
    implements PrimitiveSerializer<ClientPresenceKindEnum> {
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
  final Iterable<Type> types = const <Type>[ClientPresenceKindEnum];
  @override
  final String wireName = 'ClientPresenceKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ClientPresenceKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ClientPresenceKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ClientPresenceKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ClientPresenceStateEnumSerializer
    implements PrimitiveSerializer<ClientPresenceStateEnum> {
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
  final Iterable<Type> types = const <Type>[ClientPresenceStateEnum];
  @override
  final String wireName = 'ClientPresenceStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    ClientPresenceStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ClientPresenceStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ClientPresenceStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ClientPresence extends ClientPresence {
  @override
  final String deviceKey;
  @override
  final ClientPresenceKindEnum kind;
  @override
  final ClientPresenceStateEnum state;
  @override
  final DateTime expiresAt;
  @override
  final DateTime? updatedAt;

  factory _$ClientPresence([void Function(ClientPresenceBuilder)? updates]) =>
      (ClientPresenceBuilder()..update(updates))._build();

  _$ClientPresence._({
    required this.deviceKey,
    required this.kind,
    required this.state,
    required this.expiresAt,
    this.updatedAt,
  }) : super._();
  @override
  ClientPresence rebuild(void Function(ClientPresenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientPresenceBuilder toBuilder() => ClientPresenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientPresence &&
        deviceKey == other.deviceKey &&
        kind == other.kind &&
        state == other.state &&
        expiresAt == other.expiresAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientPresence')
          ..add('deviceKey', deviceKey)
          ..add('kind', kind)
          ..add('state', state)
          ..add('expiresAt', expiresAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ClientPresenceBuilder
    implements Builder<ClientPresence, ClientPresenceBuilder> {
  _$ClientPresence? _$v;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  ClientPresenceKindEnum? _kind;
  ClientPresenceKindEnum? get kind => _$this._kind;
  set kind(ClientPresenceKindEnum? kind) => _$this._kind = kind;

  ClientPresenceStateEnum? _state;
  ClientPresenceStateEnum? get state => _$this._state;
  set state(ClientPresenceStateEnum? state) => _$this._state = state;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ClientPresenceBuilder() {
    ClientPresence._defaults(this);
  }

  ClientPresenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceKey = $v.deviceKey;
      _kind = $v.kind;
      _state = $v.state;
      _expiresAt = $v.expiresAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientPresence other) {
    _$v = other as _$ClientPresence;
  }

  @override
  void update(void Function(ClientPresenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientPresence build() => _build();

  _$ClientPresence _build() {
    final _$result =
        _$v ??
        _$ClientPresence._(
          deviceKey: BuiltValueNullFieldError.checkNotNull(
            deviceKey,
            r'ClientPresence',
            'deviceKey',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'ClientPresence',
            'kind',
          ),
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'ClientPresence',
            'state',
          ),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
            expiresAt,
            r'ClientPresence',
            'expiresAt',
          ),
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
