//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/channel_interactive_status_chats_inner.dart';
import 'package:foresignal_api/src/model/health_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_interactive_status.g.dart';

/// State of an interactive chat channel's connector (061); also embedded as `Channel.interactive`
///
/// Properties:
/// * [interactive]
/// * [chatopsEnabled] - Global `chatops.enabled` kill switch
/// * [connected]
/// * [status]
/// * [statusReason]
/// * [lastPollAt]
/// * [lastError]
/// * [discoveryModeUntil]
/// * [chats]
@BuiltValue()
abstract class ChannelInteractiveStatus
    implements
        Built<ChannelInteractiveStatus, ChannelInteractiveStatusBuilder> {
  @BuiltValueField(wireName: r'interactive')
  bool get interactive;

  /// Global `chatops.enabled` kill switch
  @BuiltValueField(wireName: r'chatopsEnabled')
  bool? get chatopsEnabled;

  @BuiltValueField(wireName: r'connected')
  bool get connected;

  @BuiltValueField(wireName: r'status')
  HealthStatus get status;
  // enum statusEnum {  healthy,  degraded,  failing,  idle,  disabled,  };

  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  @BuiltValueField(wireName: r'lastPollAt')
  DateTime? get lastPollAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'discoveryModeUntil')
  DateTime? get discoveryModeUntil;

  @BuiltValueField(wireName: r'chats')
  BuiltList<ChannelInteractiveStatusChatsInner> get chats;

  ChannelInteractiveStatus._();

  factory ChannelInteractiveStatus(
          [void updates(ChannelInteractiveStatusBuilder b)]) =
      _$ChannelInteractiveStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelInteractiveStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelInteractiveStatus> get serializer =>
      _$ChannelInteractiveStatusSerializer();
}

class _$ChannelInteractiveStatusSerializer
    implements PrimitiveSerializer<ChannelInteractiveStatus> {
  @override
  final Iterable<Type> types = const [
    ChannelInteractiveStatus,
    _$ChannelInteractiveStatus
  ];

  @override
  final String wireName = r'ChannelInteractiveStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelInteractiveStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'interactive';
    yield serializers.serialize(
      object.interactive,
      specifiedType: const FullType(bool),
    );
    if (object.chatopsEnabled != null) {
      yield r'chatopsEnabled';
      yield serializers.serialize(
        object.chatopsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'connected';
    yield serializers.serialize(
      object.connected,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HealthStatus),
    );
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastPollAt != null) {
      yield r'lastPollAt';
      yield serializers.serialize(
        object.lastPollAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.discoveryModeUntil != null) {
      yield r'discoveryModeUntil';
      yield serializers.serialize(
        object.discoveryModeUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'chats';
    yield serializers.serialize(
      object.chats,
      specifiedType: const FullType(
          BuiltList, [FullType(ChannelInteractiveStatusChatsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelInteractiveStatus object, {
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
    required ChannelInteractiveStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interactive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.interactive = valueDes;
          break;
        case r'chatopsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.chatopsEnabled = valueDes;
          break;
        case r'connected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.connected = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthStatus),
          ) as HealthStatus;
          result.status = valueDes;
          break;
        case r'statusReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'lastPollAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastPollAt = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'discoveryModeUntil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.discoveryModeUntil = valueDes;
          break;
        case r'chats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChannelInteractiveStatusChatsInner)]),
          ) as BuiltList<ChannelInteractiveStatusChatsInner>;
          result.chats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelInteractiveStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelInteractiveStatusBuilder();
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
