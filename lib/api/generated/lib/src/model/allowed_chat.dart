//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allowed_chat.g.dart';

/// One allowlisted chat (Telegram chat id or Matrix room id) and its scope (061). Groups and rooms with more than two members must list `userIds`.
///
/// Properties:
/// * [chatId] - Telegram numeric chat id as a string (negative for groups) or Matrix `!room:server`
/// * [name]
/// * [scope] - `read`: /help, /status, /alerts, /alert, /ask (proposed actions listed, not executable), /brief, /sources. `agent`: also /ack, /resolve, /snooze, /brief run and confirming proposed actions. Checked against the same AccessPolicy rule as the REST operation each command mirrors.
/// * [userIds] - Allowed senders (Telegram user ids or Matrix MXIDs)
/// * [privateAccess] - The 039 private grant: the chat may see private sources (Ask still follows the LLM egress rules)
@BuiltValue()
abstract class AllowedChat implements Built<AllowedChat, AllowedChatBuilder> {
  /// Telegram numeric chat id as a string (negative for groups) or Matrix `!room:server`
  @BuiltValueField(wireName: r'chatId')
  String get chatId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// `read`: /help, /status, /alerts, /alert, /ask (proposed actions listed, not executable), /brief, /sources. `agent`: also /ack, /resolve, /snooze, /brief run and confirming proposed actions. Checked against the same AccessPolicy rule as the REST operation each command mirrors.
  @BuiltValueField(wireName: r'scope')
  AllowedChatScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  };

  /// Allowed senders (Telegram user ids or Matrix MXIDs)
  @BuiltValueField(wireName: r'userIds')
  BuiltList<String>? get userIds;

  /// The 039 private grant: the chat may see private sources (Ask still follows the LLM egress rules)
  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  AllowedChat._();

  factory AllowedChat([void updates(AllowedChatBuilder b)]) = _$AllowedChat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllowedChatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AllowedChat> get serializer => _$AllowedChatSerializer();
}

class _$AllowedChatSerializer implements PrimitiveSerializer<AllowedChat> {
  @override
  final Iterable<Type> types = const [AllowedChat, _$AllowedChat];

  @override
  final String wireName = r'AllowedChat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AllowedChat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chatId';
    yield serializers.serialize(
      object.chatId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(AllowedChatScopeEnum),
    );
    if (object.userIds != null) {
      yield r'userIds';
      yield serializers.serialize(
        object.userIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.privateAccess != null) {
      yield r'privateAccess';
      yield serializers.serialize(
        object.privateAccess,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AllowedChat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AllowedChatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chatId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chatId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AllowedChatScopeEnum),
          ) as AllowedChatScopeEnum;
          result.scope = valueDes;
          break;
        case r'userIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.userIds.replace(valueDes);
          break;
        case r'privateAccess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.privateAccess = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AllowedChat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllowedChatBuilder();
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

/// `read`: /help, /status, /alerts, /alert, /ask (proposed actions listed, not executable), /brief, /sources. `agent`: also /ack, /resolve, /snooze, /brief run and confirming proposed actions. Checked against the same AccessPolicy rule as the REST operation each command mirrors.
class AllowedChatScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const AllowedChatScopeEnum read = _$allowedChatScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const AllowedChatScopeEnum agent = _$allowedChatScopeEnum_agent;

  static Serializer<AllowedChatScopeEnum> get serializer =>
      _$allowedChatScopeEnumSerializer;

  const AllowedChatScopeEnum._(String name) : super(name);

  static BuiltSet<AllowedChatScopeEnum> get values =>
      _$allowedChatScopeEnumValues;
  static AllowedChatScopeEnum valueOf(String name) =>
      _$allowedChatScopeEnumValueOf(name);
}
