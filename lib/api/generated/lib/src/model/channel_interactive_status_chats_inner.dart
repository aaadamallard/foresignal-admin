//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_interactive_status_chats_inner.g.dart';

/// One allowlisted chat and whether it is served
///
/// Properties:
/// * [chatId]
/// * [name]
/// * [scope]
/// * [userIds]
/// * [privateAccess]
/// * [active] - false when ignored (e.g. an encrypted Matrix room)
/// * [reason]
@BuiltValue()
abstract class ChannelInteractiveStatusChatsInner
    implements
        Built<
          ChannelInteractiveStatusChatsInner,
          ChannelInteractiveStatusChatsInnerBuilder
        > {
  @BuiltValueField(wireName: r'chatId')
  String get chatId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'scope')
  ChannelInteractiveStatusChatsInnerScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  };

  @BuiltValueField(wireName: r'userIds')
  BuiltList<String>? get userIds;

  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  /// false when ignored (e.g. an encrypted Matrix room)
  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ChannelInteractiveStatusChatsInner._();

  factory ChannelInteractiveStatusChatsInner([
    void updates(ChannelInteractiveStatusChatsInnerBuilder b),
  ]) = _$ChannelInteractiveStatusChatsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelInteractiveStatusChatsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelInteractiveStatusChatsInner> get serializer =>
      _$ChannelInteractiveStatusChatsInnerSerializer();
}

class _$ChannelInteractiveStatusChatsInnerSerializer
    implements PrimitiveSerializer<ChannelInteractiveStatusChatsInner> {
  @override
  final Iterable<Type> types = const [
    ChannelInteractiveStatusChatsInner,
    _$ChannelInteractiveStatusChatsInner,
  ];

  @override
  final String wireName = r'ChannelInteractiveStatusChatsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelInteractiveStatusChatsInner object, {
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
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(
        ChannelInteractiveStatusChatsInnerScopeEnum,
      ),
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
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelInteractiveStatusChatsInner object, {
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
    required ChannelInteractiveStatusChatsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chatId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.chatId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChannelInteractiveStatusChatsInnerScopeEnum,
                    ),
                  )
                  as ChannelInteractiveStatusChatsInnerScopeEnum;
          result.scope = valueDes;
          break;
        case r'userIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.userIds.replace(valueDes);
          break;
        case r'privateAccess':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.privateAccess = valueDes;
          break;
        case r'active':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.active = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelInteractiveStatusChatsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelInteractiveStatusChatsInnerBuilder();
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

class ChannelInteractiveStatusChatsInnerScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const ChannelInteractiveStatusChatsInnerScopeEnum read =
      _$channelInteractiveStatusChatsInnerScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ChannelInteractiveStatusChatsInnerScopeEnum agent =
      _$channelInteractiveStatusChatsInnerScopeEnum_agent;

  static Serializer<ChannelInteractiveStatusChatsInnerScopeEnum>
  get serializer => _$channelInteractiveStatusChatsInnerScopeEnumSerializer;

  const ChannelInteractiveStatusChatsInnerScopeEnum._(String name)
    : super(name);

  static BuiltSet<ChannelInteractiveStatusChatsInnerScopeEnum> get values =>
      _$channelInteractiveStatusChatsInnerScopeEnumValues;
  static ChannelInteractiveStatusChatsInnerScopeEnum valueOf(String name) =>
      _$channelInteractiveStatusChatsInnerScopeEnumValueOf(name);
}
