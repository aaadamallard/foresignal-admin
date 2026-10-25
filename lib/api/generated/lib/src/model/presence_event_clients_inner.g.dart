// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_event_clients_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_globe =
    const PresenceEventClientsInnerClientKindEnum._('globe');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_map =
    const PresenceEventClientsInnerClientKindEnum._('map');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_analyst =
    const PresenceEventClientsInnerClientKindEnum._('analyst');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_satellite =
    const PresenceEventClientsInnerClientKindEnum._('satellite');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_rf =
    const PresenceEventClientsInnerClientKindEnum._('rf');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_mobile =
    const PresenceEventClientsInnerClientKindEnum._('mobile');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_agent =
    const PresenceEventClientsInnerClientKindEnum._('agent');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_other =
    const PresenceEventClientsInnerClientKindEnum._('other');
const PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnum_unknownDefaultOpenApi =
    const PresenceEventClientsInnerClientKindEnum._('unknownDefaultOpenApi');

PresenceEventClientsInnerClientKindEnum
_$presenceEventClientsInnerClientKindEnumValueOf(String name) {
  switch (name) {
    case 'globe':
      return _$presenceEventClientsInnerClientKindEnum_globe;
    case 'map':
      return _$presenceEventClientsInnerClientKindEnum_map;
    case 'analyst':
      return _$presenceEventClientsInnerClientKindEnum_analyst;
    case 'satellite':
      return _$presenceEventClientsInnerClientKindEnum_satellite;
    case 'rf':
      return _$presenceEventClientsInnerClientKindEnum_rf;
    case 'mobile':
      return _$presenceEventClientsInnerClientKindEnum_mobile;
    case 'agent':
      return _$presenceEventClientsInnerClientKindEnum_agent;
    case 'other':
      return _$presenceEventClientsInnerClientKindEnum_other;
    case 'unknownDefaultOpenApi':
      return _$presenceEventClientsInnerClientKindEnum_unknownDefaultOpenApi;
    default:
      return _$presenceEventClientsInnerClientKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PresenceEventClientsInnerClientKindEnum>
_$presenceEventClientsInnerClientKindEnumValues =
    BuiltSet<PresenceEventClientsInnerClientKindEnum>(
      const <PresenceEventClientsInnerClientKindEnum>[
        _$presenceEventClientsInnerClientKindEnum_globe,
        _$presenceEventClientsInnerClientKindEnum_map,
        _$presenceEventClientsInnerClientKindEnum_analyst,
        _$presenceEventClientsInnerClientKindEnum_satellite,
        _$presenceEventClientsInnerClientKindEnum_rf,
        _$presenceEventClientsInnerClientKindEnum_mobile,
        _$presenceEventClientsInnerClientKindEnum_agent,
        _$presenceEventClientsInnerClientKindEnum_other,
        _$presenceEventClientsInnerClientKindEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PresenceEventClientsInnerClientKindEnum>
_$presenceEventClientsInnerClientKindEnumSerializer =
    _$PresenceEventClientsInnerClientKindEnumSerializer();

class _$PresenceEventClientsInnerClientKindEnumSerializer
    implements PrimitiveSerializer<PresenceEventClientsInnerClientKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'globe': 'globe',
    'map': 'map',
    'analyst': 'analyst',
    'satellite': 'satellite',
    'rf': 'rf',
    'mobile': 'mobile',
    'agent': 'agent',
    'other': 'other',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'globe': 'globe',
    'map': 'map',
    'analyst': 'analyst',
    'satellite': 'satellite',
    'rf': 'rf',
    'mobile': 'mobile',
    'agent': 'agent',
    'other': 'other',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PresenceEventClientsInnerClientKindEnum,
  ];
  @override
  final String wireName = 'PresenceEventClientsInnerClientKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PresenceEventClientsInnerClientKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PresenceEventClientsInnerClientKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PresenceEventClientsInnerClientKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PresenceEventClientsInner extends PresenceEventClientsInner {
  @override
  final String clientId;
  @override
  final PresenceEventClientsInnerClientKindEnum clientKind;
  @override
  final String? principal;
  @override
  final DateTime connectedAt;

  factory _$PresenceEventClientsInner([
    void Function(PresenceEventClientsInnerBuilder)? updates,
  ]) => (PresenceEventClientsInnerBuilder()..update(updates))._build();

  _$PresenceEventClientsInner._({
    required this.clientId,
    required this.clientKind,
    this.principal,
    required this.connectedAt,
  }) : super._();
  @override
  PresenceEventClientsInner rebuild(
    void Function(PresenceEventClientsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PresenceEventClientsInnerBuilder toBuilder() =>
      PresenceEventClientsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresenceEventClientsInner &&
        clientId == other.clientId &&
        clientKind == other.clientKind &&
        principal == other.principal &&
        connectedAt == other.connectedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientKind.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, connectedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresenceEventClientsInner')
          ..add('clientId', clientId)
          ..add('clientKind', clientKind)
          ..add('principal', principal)
          ..add('connectedAt', connectedAt))
        .toString();
  }
}

class PresenceEventClientsInnerBuilder
    implements
        Builder<PresenceEventClientsInner, PresenceEventClientsInnerBuilder> {
  _$PresenceEventClientsInner? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  PresenceEventClientsInnerClientKindEnum? _clientKind;
  PresenceEventClientsInnerClientKindEnum? get clientKind => _$this._clientKind;
  set clientKind(PresenceEventClientsInnerClientKindEnum? clientKind) =>
      _$this._clientKind = clientKind;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  DateTime? _connectedAt;
  DateTime? get connectedAt => _$this._connectedAt;
  set connectedAt(DateTime? connectedAt) => _$this._connectedAt = connectedAt;

  PresenceEventClientsInnerBuilder() {
    PresenceEventClientsInner._defaults(this);
  }

  PresenceEventClientsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientKind = $v.clientKind;
      _principal = $v.principal;
      _connectedAt = $v.connectedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresenceEventClientsInner other) {
    _$v = other as _$PresenceEventClientsInner;
  }

  @override
  void update(void Function(PresenceEventClientsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresenceEventClientsInner build() => _build();

  _$PresenceEventClientsInner _build() {
    final _$result =
        _$v ??
        _$PresenceEventClientsInner._(
          clientId: BuiltValueNullFieldError.checkNotNull(
            clientId,
            r'PresenceEventClientsInner',
            'clientId',
          ),
          clientKind: BuiltValueNullFieldError.checkNotNull(
            clientKind,
            r'PresenceEventClientsInner',
            'clientKind',
          ),
          principal: principal,
          connectedAt: BuiltValueNullFieldError.checkNotNull(
            connectedAt,
            r'PresenceEventClientsInner',
            'connectedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
