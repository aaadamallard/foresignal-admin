// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuditEventActorKindEnum _$auditEventActorKindEnum_token =
    const AuditEventActorKindEnum._('token');
const AuditEventActorKindEnum _$auditEventActorKindEnum_ingestKey =
    const AuditEventActorKindEnum._('ingestKey');
const AuditEventActorKindEnum _$auditEventActorKindEnum_pairing =
    const AuditEventActorKindEnum._('pairing');
const AuditEventActorKindEnum _$auditEventActorKindEnum_system =
    const AuditEventActorKindEnum._('system');
const AuditEventActorKindEnum _$auditEventActorKindEnum_action =
    const AuditEventActorKindEnum._('action');
const AuditEventActorKindEnum _$auditEventActorKindEnum_chat =
    const AuditEventActorKindEnum._('chat');
const AuditEventActorKindEnum _$auditEventActorKindEnum_mesh =
    const AuditEventActorKindEnum._('mesh');

AuditEventActorKindEnum _$auditEventActorKindEnumValueOf(String name) {
  switch (name) {
    case 'token':
      return _$auditEventActorKindEnum_token;
    case 'ingestKey':
      return _$auditEventActorKindEnum_ingestKey;
    case 'pairing':
      return _$auditEventActorKindEnum_pairing;
    case 'system':
      return _$auditEventActorKindEnum_system;
    case 'action':
      return _$auditEventActorKindEnum_action;
    case 'chat':
      return _$auditEventActorKindEnum_chat;
    case 'mesh':
      return _$auditEventActorKindEnum_mesh;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuditEventActorKindEnum> _$auditEventActorKindEnumValues =
    BuiltSet<AuditEventActorKindEnum>(const <AuditEventActorKindEnum>[
      _$auditEventActorKindEnum_token,
      _$auditEventActorKindEnum_ingestKey,
      _$auditEventActorKindEnum_pairing,
      _$auditEventActorKindEnum_system,
      _$auditEventActorKindEnum_action,
      _$auditEventActorKindEnum_chat,
      _$auditEventActorKindEnum_mesh,
    ]);

const AuditEventScopeEnum _$auditEventScopeEnum_read =
    const AuditEventScopeEnum._('read');
const AuditEventScopeEnum _$auditEventScopeEnum_agent =
    const AuditEventScopeEnum._('agent');
const AuditEventScopeEnum _$auditEventScopeEnum_admin =
    const AuditEventScopeEnum._('admin');

AuditEventScopeEnum _$auditEventScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$auditEventScopeEnum_read;
    case 'agent':
      return _$auditEventScopeEnum_agent;
    case 'admin':
      return _$auditEventScopeEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuditEventScopeEnum> _$auditEventScopeEnumValues =
    BuiltSet<AuditEventScopeEnum>(const <AuditEventScopeEnum>[
      _$auditEventScopeEnum_read,
      _$auditEventScopeEnum_agent,
      _$auditEventScopeEnum_admin,
    ]);

Serializer<AuditEventActorKindEnum> _$auditEventActorKindEnumSerializer =
    _$AuditEventActorKindEnumSerializer();
Serializer<AuditEventScopeEnum> _$auditEventScopeEnumSerializer =
    _$AuditEventScopeEnumSerializer();

class _$AuditEventActorKindEnumSerializer
    implements PrimitiveSerializer<AuditEventActorKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'token': 'token',
    'ingestKey': 'ingest_key',
    'pairing': 'pairing',
    'system': 'system',
    'action': 'action',
    'chat': 'chat',
    'mesh': 'mesh',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'token': 'token',
    'ingest_key': 'ingestKey',
    'pairing': 'pairing',
    'system': 'system',
    'action': 'action',
    'chat': 'chat',
    'mesh': 'mesh',
  };

  @override
  final Iterable<Type> types = const <Type>[AuditEventActorKindEnum];
  @override
  final String wireName = 'AuditEventActorKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuditEventActorKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuditEventActorKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuditEventActorKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuditEventScopeEnumSerializer
    implements PrimitiveSerializer<AuditEventScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[AuditEventScopeEnum];
  @override
  final String wireName = 'AuditEventScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuditEventScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuditEventScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuditEventScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuditEvent extends AuditEvent {
  @override
  final int id;
  @override
  final DateTime at;
  @override
  final AuditEventActorKindEnum actorKind;
  @override
  final String? tokenId;
  @override
  final String? tokenName;
  @override
  final String? principalId;
  @override
  final AuditEventScopeEnum? scope;
  @override
  final String? method;
  @override
  final String? path;
  @override
  final String? operationId;
  @override
  final int? status;
  @override
  final String? targetType;
  @override
  final String? targetId;
  @override
  final String? remoteIp;
  @override
  final BuiltMap<String, JsonObject?>? detail;

  factory _$AuditEvent([void Function(AuditEventBuilder)? updates]) =>
      (AuditEventBuilder()..update(updates))._build();

  _$AuditEvent._({
    required this.id,
    required this.at,
    required this.actorKind,
    this.tokenId,
    this.tokenName,
    this.principalId,
    this.scope,
    this.method,
    this.path,
    this.operationId,
    this.status,
    this.targetType,
    this.targetId,
    this.remoteIp,
    this.detail,
  }) : super._();
  @override
  AuditEvent rebuild(void Function(AuditEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuditEventBuilder toBuilder() => AuditEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuditEvent &&
        id == other.id &&
        at == other.at &&
        actorKind == other.actorKind &&
        tokenId == other.tokenId &&
        tokenName == other.tokenName &&
        principalId == other.principalId &&
        scope == other.scope &&
        method == other.method &&
        path == other.path &&
        operationId == other.operationId &&
        status == other.status &&
        targetType == other.targetType &&
        targetId == other.targetId &&
        remoteIp == other.remoteIp &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, actorKind.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, tokenName.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jc(_$hash, remoteIp.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuditEvent')
          ..add('id', id)
          ..add('at', at)
          ..add('actorKind', actorKind)
          ..add('tokenId', tokenId)
          ..add('tokenName', tokenName)
          ..add('principalId', principalId)
          ..add('scope', scope)
          ..add('method', method)
          ..add('path', path)
          ..add('operationId', operationId)
          ..add('status', status)
          ..add('targetType', targetType)
          ..add('targetId', targetId)
          ..add('remoteIp', remoteIp)
          ..add('detail', detail))
        .toString();
  }
}

class AuditEventBuilder implements Builder<AuditEvent, AuditEventBuilder> {
  _$AuditEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AuditEventActorKindEnum? _actorKind;
  AuditEventActorKindEnum? get actorKind => _$this._actorKind;
  set actorKind(AuditEventActorKindEnum? actorKind) =>
      _$this._actorKind = actorKind;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  String? _tokenName;
  String? get tokenName => _$this._tokenName;
  set tokenName(String? tokenName) => _$this._tokenName = tokenName;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  AuditEventScopeEnum? _scope;
  AuditEventScopeEnum? get scope => _$this._scope;
  set scope(AuditEventScopeEnum? scope) => _$this._scope = scope;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _targetType;
  String? get targetType => _$this._targetType;
  set targetType(String? targetType) => _$this._targetType = targetType;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  String? _remoteIp;
  String? get remoteIp => _$this._remoteIp;
  set remoteIp(String? remoteIp) => _$this._remoteIp = remoteIp;

  MapBuilder<String, JsonObject?>? _detail;
  MapBuilder<String, JsonObject?> get detail =>
      _$this._detail ??= MapBuilder<String, JsonObject?>();
  set detail(MapBuilder<String, JsonObject?>? detail) =>
      _$this._detail = detail;

  AuditEventBuilder() {
    AuditEvent._defaults(this);
  }

  AuditEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _at = $v.at;
      _actorKind = $v.actorKind;
      _tokenId = $v.tokenId;
      _tokenName = $v.tokenName;
      _principalId = $v.principalId;
      _scope = $v.scope;
      _method = $v.method;
      _path = $v.path;
      _operationId = $v.operationId;
      _status = $v.status;
      _targetType = $v.targetType;
      _targetId = $v.targetId;
      _remoteIp = $v.remoteIp;
      _detail = $v.detail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuditEvent other) {
    _$v = other as _$AuditEvent;
  }

  @override
  void update(void Function(AuditEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuditEvent build() => _build();

  _$AuditEvent _build() {
    _$AuditEvent _$result;
    try {
      _$result =
          _$v ??
          _$AuditEvent._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AuditEvent', 'id'),
            at: BuiltValueNullFieldError.checkNotNull(at, r'AuditEvent', 'at'),
            actorKind: BuiltValueNullFieldError.checkNotNull(
              actorKind,
              r'AuditEvent',
              'actorKind',
            ),
            tokenId: tokenId,
            tokenName: tokenName,
            principalId: principalId,
            scope: scope,
            method: method,
            path: path,
            operationId: operationId,
            status: status,
            targetType: targetType,
            targetId: targetId,
            remoteIp: remoteIp,
            detail: _detail?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detail';
        _detail?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AuditEvent',
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
