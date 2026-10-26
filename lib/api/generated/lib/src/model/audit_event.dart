//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_event.g.dart';

/// One audit log entry (023): authenticated writes, 401/403 on write paths, pairing claims, revocations, MCP tool calls (025), action executions (033), private reads, exports and purges (039)
///
/// Properties:
/// * [id]
/// * [at]
/// * [actorKind] - `user` = a signed-in user (R2-013; `userId` and `userEmail` say who, `tokenId` is the session); `action` = a notification action capability (033); `chat` = a command from an allowlisted chat of an interactive channel (061; `tokenName` is the chat principal `chat:{channelId}:{chatId}[:{userId}]`); `mesh` = an `#E ACK` from an allowlisted sender on a private mesh channel (084; `tokenName` is `mesh:{sender}`)
/// * [tokenId]
/// * [tokenName]
/// * [principalId] - Principal owning the token (v1.3)
/// * [scope]
/// * [method]
/// * [path] - Request path, query stripped
/// * [operationId]
/// * [status]
/// * [targetType]
/// * [targetId]
/// * [remoteIp]
/// * [detail] - Context (e.g. MCP tool name, argument names, duration, outcome); never secrets, token values or request bodies
/// * [userId] - The signed-in user who acted (actor kind `user`, R2-013), or null
/// * [userEmail] - That user's email when the entry was written (kept after the user is renamed or deleted), or null
@BuiltValue()
abstract class AuditEvent implements Built<AuditEvent, AuditEventBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  /// `user` = a signed-in user (R2-013; `userId` and `userEmail` say who, `tokenId` is the session); `action` = a notification action capability (033); `chat` = a command from an allowlisted chat of an interactive channel (061; `tokenName` is the chat principal `chat:{channelId}:{chatId}[:{userId}]`); `mesh` = an `#E ACK` from an allowlisted sender on a private mesh channel (084; `tokenName` is `mesh:{sender}`)
  @BuiltValueField(wireName: r'actorKind')
  AuditEventActorKindEnum get actorKind;
  // enum actorKindEnum {  token,  user,  ingest_key,  pairing,  system,  action,  chat,  mesh,  };

  @BuiltValueField(wireName: r'tokenId')
  String? get tokenId;

  @BuiltValueField(wireName: r'tokenName')
  String? get tokenName;

  /// Principal owning the token (v1.3)
  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  @BuiltValueField(wireName: r'scope')
  AuditEventScopeEnum? get scope;
  // enum scopeEnum {  read,  agent,  admin,  };

  @BuiltValueField(wireName: r'method')
  String? get method;

  /// Request path, query stripped
  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'operationId')
  String? get operationId;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'targetType')
  String? get targetType;

  @BuiltValueField(wireName: r'targetId')
  String? get targetId;

  @BuiltValueField(wireName: r'remoteIp')
  String? get remoteIp;

  /// Context (e.g. MCP tool name, argument names, duration, outcome); never secrets, token values or request bodies
  @BuiltValueField(wireName: r'detail')
  BuiltMap<String, JsonObject?>? get detail;

  /// The signed-in user who acted (actor kind `user`, R2-013), or null
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  /// That user's email when the entry was written (kept after the user is renamed or deleted), or null
  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  AuditEvent._();

  factory AuditEvent([void updates(AuditEventBuilder b)]) = _$AuditEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuditEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuditEvent> get serializer => _$AuditEventSerializer();
}

class _$AuditEventSerializer implements PrimitiveSerializer<AuditEvent> {
  @override
  final Iterable<Type> types = const [AuditEvent, _$AuditEvent];

  @override
  final String wireName = r'AuditEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuditEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'actorKind';
    yield serializers.serialize(
      object.actorKind,
      specifiedType: const FullType(AuditEventActorKindEnum),
    );
    if (object.tokenId != null) {
      yield r'tokenId';
      yield serializers.serialize(
        object.tokenId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokenName != null) {
      yield r'tokenName';
      yield serializers.serialize(
        object.tokenName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.principalId != null) {
      yield r'principalId';
      yield serializers.serialize(
        object.principalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType.nullable(AuditEventScopeEnum),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.operationId != null) {
      yield r'operationId';
      yield serializers.serialize(
        object.operationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.targetType != null) {
      yield r'targetType';
      yield serializers.serialize(
        object.targetType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.targetId != null) {
      yield r'targetId';
      yield serializers.serialize(
        object.targetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remoteIp != null) {
      yield r'remoteIp';
      yield serializers.serialize(
        object.remoteIp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userEmail != null) {
      yield r'userEmail';
      yield serializers.serialize(
        object.userEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuditEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuditEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'actorKind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AuditEventActorKindEnum),
                  )
                  as AuditEventActorKindEnum;
          result.actorKind = valueDes;
          break;
        case r'tokenId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tokenId = valueDes;
          break;
        case r'tokenName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tokenName = valueDes;
          break;
        case r'principalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principalId = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AuditEventScopeEnum),
                  )
                  as AuditEventScopeEnum?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'operationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.operationId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'targetType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.targetType = valueDes;
          break;
        case r'targetId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.targetId = valueDes;
          break;
        case r'remoteIp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.remoteIp = valueDes;
          break;
        case r'detail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.detail.replace(valueDes);
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'userEmail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userEmail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuditEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuditEventBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

/// `user` = a signed-in user (R2-013; `userId` and `userEmail` say who, `tokenId` is the session); `action` = a notification action capability (033); `chat` = a command from an allowlisted chat of an interactive channel (061; `tokenName` is the chat principal `chat:{channelId}:{chatId}[:{userId}]`); `mesh` = an `#E ACK` from an allowlisted sender on a private mesh channel (084; `tokenName` is `mesh:{sender}`)
class AuditEventActorKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'token')
  static const AuditEventActorKindEnum token = _$auditEventActorKindEnum_token;
  @BuiltValueEnumConst(wireName: r'user')
  static const AuditEventActorKindEnum user = _$auditEventActorKindEnum_user;
  @BuiltValueEnumConst(wireName: r'ingest_key')
  static const AuditEventActorKindEnum ingestKey =
      _$auditEventActorKindEnum_ingestKey;
  @BuiltValueEnumConst(wireName: r'pairing')
  static const AuditEventActorKindEnum pairing =
      _$auditEventActorKindEnum_pairing;
  @BuiltValueEnumConst(wireName: r'system')
  static const AuditEventActorKindEnum system =
      _$auditEventActorKindEnum_system;
  @BuiltValueEnumConst(wireName: r'action')
  static const AuditEventActorKindEnum action =
      _$auditEventActorKindEnum_action;
  @BuiltValueEnumConst(wireName: r'chat')
  static const AuditEventActorKindEnum chat = _$auditEventActorKindEnum_chat;
  @BuiltValueEnumConst(wireName: r'mesh')
  static const AuditEventActorKindEnum mesh = _$auditEventActorKindEnum_mesh;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AuditEventActorKindEnum unknownDefaultOpenApi =
      _$auditEventActorKindEnum_unknownDefaultOpenApi;

  static Serializer<AuditEventActorKindEnum> get serializer =>
      _$auditEventActorKindEnumSerializer;

  const AuditEventActorKindEnum._(String name) : super(name);

  static BuiltSet<AuditEventActorKindEnum> get values =>
      _$auditEventActorKindEnumValues;
  static AuditEventActorKindEnum valueOf(String name) =>
      _$auditEventActorKindEnumValueOf(name);
}

class AuditEventScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const AuditEventScopeEnum read = _$auditEventScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const AuditEventScopeEnum agent = _$auditEventScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const AuditEventScopeEnum admin = _$auditEventScopeEnum_admin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AuditEventScopeEnum unknownDefaultOpenApi =
      _$auditEventScopeEnum_unknownDefaultOpenApi;

  static Serializer<AuditEventScopeEnum> get serializer =>
      _$auditEventScopeEnumSerializer;

  const AuditEventScopeEnum._(String name) : super(name);

  static BuiltSet<AuditEventScopeEnum> get values =>
      _$auditEventScopeEnumValues;
  static AuditEventScopeEnum valueOf(String name) =>
      _$auditEventScopeEnumValueOf(name);
}
