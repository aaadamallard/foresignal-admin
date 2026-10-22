//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_preference_channel.g.dart';

/// The principal-owned 018 channel definition (own ntfy topic, email address, Matrix room, webhook…)
///
/// Properties:
/// * [channelId] - Id of the 018 channel row owned by the principal
/// * [type]
/// * [config] - Non-secret settings per the channel type's configFields
/// * [secretFields]
/// * [language] - BCP 47 language for translated notifications (141)
@BuiltValue()
abstract class NotificationPreferenceChannel
    implements
        Built<
          NotificationPreferenceChannel,
          NotificationPreferenceChannelBuilder
        > {
  /// Id of the 018 channel row owned by the principal
  @BuiltValueField(wireName: r'channelId')
  String? get channelId;

  @BuiltValueField(wireName: r'type')
  NotificationPreferenceChannelTypeEnum get type;
  // enum typeEnum {  webhook,  slack,  mattermost,  discord,  teams,  google-chat,  telegram,  matrix,  ntfy,  gotify,  pushover,  email,  webpush,  };

  /// Non-secret settings per the channel type's configFields
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  @BuiltValueField(wireName: r'secretFields')
  BuiltList<String>? get secretFields;

  /// BCP 47 language for translated notifications (141)
  @BuiltValueField(wireName: r'language')
  String? get language;

  NotificationPreferenceChannel._();

  factory NotificationPreferenceChannel([
    void updates(NotificationPreferenceChannelBuilder b),
  ]) = _$NotificationPreferenceChannel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPreferenceChannelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPreferenceChannel> get serializer =>
      _$NotificationPreferenceChannelSerializer();
}

class _$NotificationPreferenceChannelSerializer
    implements PrimitiveSerializer<NotificationPreferenceChannel> {
  @override
  final Iterable<Type> types = const [
    NotificationPreferenceChannel,
    _$NotificationPreferenceChannel,
  ];

  @override
  final String wireName = r'NotificationPreferenceChannel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPreferenceChannel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.channelId != null) {
      yield r'channelId';
      yield serializers.serialize(
        object.channelId,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NotificationPreferenceChannelTypeEnum),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.secretFields != null) {
      yield r'secretFields';
      yield serializers.serialize(
        object.secretFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationPreferenceChannel object, {
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
    required NotificationPreferenceChannelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'channelId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.channelId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationPreferenceChannelTypeEnum,
                    ),
                  )
                  as NotificationPreferenceChannelTypeEnum;
          result.type = valueDes;
          break;
        case r'config':
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
          result.config.replace(valueDes);
          break;
        case r'secretFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretFields.replace(valueDes);
          break;
        case r'language':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationPreferenceChannel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPreferenceChannelBuilder();
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

class NotificationPreferenceChannelTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'webhook')
  static const NotificationPreferenceChannelTypeEnum webhook =
      _$notificationPreferenceChannelTypeEnum_webhook;
  @BuiltValueEnumConst(wireName: r'slack')
  static const NotificationPreferenceChannelTypeEnum slack =
      _$notificationPreferenceChannelTypeEnum_slack;
  @BuiltValueEnumConst(wireName: r'mattermost')
  static const NotificationPreferenceChannelTypeEnum mattermost =
      _$notificationPreferenceChannelTypeEnum_mattermost;
  @BuiltValueEnumConst(wireName: r'discord')
  static const NotificationPreferenceChannelTypeEnum discord =
      _$notificationPreferenceChannelTypeEnum_discord;
  @BuiltValueEnumConst(wireName: r'teams')
  static const NotificationPreferenceChannelTypeEnum teams =
      _$notificationPreferenceChannelTypeEnum_teams;
  @BuiltValueEnumConst(wireName: r'google-chat')
  static const NotificationPreferenceChannelTypeEnum googleChat =
      _$notificationPreferenceChannelTypeEnum_googleChat;
  @BuiltValueEnumConst(wireName: r'telegram')
  static const NotificationPreferenceChannelTypeEnum telegram =
      _$notificationPreferenceChannelTypeEnum_telegram;
  @BuiltValueEnumConst(wireName: r'matrix')
  static const NotificationPreferenceChannelTypeEnum matrix =
      _$notificationPreferenceChannelTypeEnum_matrix;
  @BuiltValueEnumConst(wireName: r'ntfy')
  static const NotificationPreferenceChannelTypeEnum ntfy =
      _$notificationPreferenceChannelTypeEnum_ntfy;
  @BuiltValueEnumConst(wireName: r'gotify')
  static const NotificationPreferenceChannelTypeEnum gotify =
      _$notificationPreferenceChannelTypeEnum_gotify;
  @BuiltValueEnumConst(wireName: r'pushover')
  static const NotificationPreferenceChannelTypeEnum pushover =
      _$notificationPreferenceChannelTypeEnum_pushover;
  @BuiltValueEnumConst(wireName: r'email')
  static const NotificationPreferenceChannelTypeEnum email =
      _$notificationPreferenceChannelTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'webpush')
  static const NotificationPreferenceChannelTypeEnum webpush =
      _$notificationPreferenceChannelTypeEnum_webpush;

  static Serializer<NotificationPreferenceChannelTypeEnum> get serializer =>
      _$notificationPreferenceChannelTypeEnumSerializer;

  const NotificationPreferenceChannelTypeEnum._(String name) : super(name);

  static BuiltSet<NotificationPreferenceChannelTypeEnum> get values =>
      _$notificationPreferenceChannelTypeEnumValues;
  static NotificationPreferenceChannelTypeEnum valueOf(String name) =>
      _$notificationPreferenceChannelTypeEnumValueOf(name);
}
