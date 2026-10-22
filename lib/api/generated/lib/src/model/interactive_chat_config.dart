//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/allowed_chat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interactive_chat_config.g.dart';

/// Interactive-command fields added to `ChannelInput.config` for types `telegram` and `matrix` (061). Global kill switch: `NotificationSettings.chatops.enabled`.
///
/// Properties:
/// * [interactive] - Accept commands from `allowedChats` (`/alerts`, `/alert`, `/ack`, `/resolve`, `/snooze`, `/ask`, `/brief`, `/status`, `/sources`, `/help`, plus `/confirm` and `/reject` codes on Matrix). Telegram needs a bot used only by this Foresignal instance; Matrix rooms must be unencrypted.
/// * [allowedChats] - The chats that may command, each mapped to `read` or `agent` scope (never `admin`). Messages from any other chat or user are ignored silently. Telegram groups (negative ids) must list `userIds`; a Matrix room with more than two members and no `userIds` is ignored when the connector starts.
/// * [askRateLimitPerHour] - `/ask` questions per chat per hour (0 turns `/ask` off for chats); the LLM budget applies as well
/// * [commandRateLimit] - Commands per chat per 10 minutes
/// * [takeOverWebhook] - Telegram: delete a foreign webhook at start
/// * [discoveryMode] - `/whoami` answers any chat with its ids; auto-off after 10 minutes
@BuiltValue()
abstract class InteractiveChatConfig
    implements Built<InteractiveChatConfig, InteractiveChatConfigBuilder> {
  /// Accept commands from `allowedChats` (`/alerts`, `/alert`, `/ack`, `/resolve`, `/snooze`, `/ask`, `/brief`, `/status`, `/sources`, `/help`, plus `/confirm` and `/reject` codes on Matrix). Telegram needs a bot used only by this Foresignal instance; Matrix rooms must be unencrypted.
  @BuiltValueField(wireName: r'interactive')
  bool? get interactive;

  /// The chats that may command, each mapped to `read` or `agent` scope (never `admin`). Messages from any other chat or user are ignored silently. Telegram groups (negative ids) must list `userIds`; a Matrix room with more than two members and no `userIds` is ignored when the connector starts.
  @BuiltValueField(wireName: r'allowedChats')
  BuiltList<AllowedChat>? get allowedChats;

  /// `/ask` questions per chat per hour (0 turns `/ask` off for chats); the LLM budget applies as well
  @BuiltValueField(wireName: r'askRateLimitPerHour')
  int? get askRateLimitPerHour;

  /// Commands per chat per 10 minutes
  @BuiltValueField(wireName: r'commandRateLimit')
  int? get commandRateLimit;

  /// Telegram: delete a foreign webhook at start
  @BuiltValueField(wireName: r'takeOverWebhook')
  bool? get takeOverWebhook;

  /// `/whoami` answers any chat with its ids; auto-off after 10 minutes
  @BuiltValueField(wireName: r'discoveryMode')
  bool? get discoveryMode;

  InteractiveChatConfig._();

  factory InteractiveChatConfig([
    void updates(InteractiveChatConfigBuilder b),
  ]) = _$InteractiveChatConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InteractiveChatConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InteractiveChatConfig> get serializer =>
      _$InteractiveChatConfigSerializer();
}

class _$InteractiveChatConfigSerializer
    implements PrimitiveSerializer<InteractiveChatConfig> {
  @override
  final Iterable<Type> types = const [
    InteractiveChatConfig,
    _$InteractiveChatConfig,
  ];

  @override
  final String wireName = r'InteractiveChatConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InteractiveChatConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interactive != null) {
      yield r'interactive';
      yield serializers.serialize(
        object.interactive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowedChats != null) {
      yield r'allowedChats';
      yield serializers.serialize(
        object.allowedChats,
        specifiedType: const FullType(BuiltList, [FullType(AllowedChat)]),
      );
    }
    if (object.askRateLimitPerHour != null) {
      yield r'askRateLimitPerHour';
      yield serializers.serialize(
        object.askRateLimitPerHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.commandRateLimit != null) {
      yield r'commandRateLimit';
      yield serializers.serialize(
        object.commandRateLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.takeOverWebhook != null) {
      yield r'takeOverWebhook';
      yield serializers.serialize(
        object.takeOverWebhook,
        specifiedType: const FullType(bool),
      );
    }
    if (object.discoveryMode != null) {
      yield r'discoveryMode';
      yield serializers.serialize(
        object.discoveryMode,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InteractiveChatConfig object, {
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
    required InteractiveChatConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interactive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.interactive = valueDes;
          break;
        case r'allowedChats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AllowedChat),
                    ]),
                  )
                  as BuiltList<AllowedChat>?;
          if (valueDes == null) continue;
          result.allowedChats.replace(valueDes);
          break;
        case r'askRateLimitPerHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.askRateLimitPerHour = valueDes;
          break;
        case r'commandRateLimit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.commandRateLimit = valueDes;
          break;
        case r'takeOverWebhook':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.takeOverWebhook = valueDes;
          break;
        case r'discoveryMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.discoveryMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InteractiveChatConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InteractiveChatConfigBuilder();
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
