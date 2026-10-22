//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_preference_input_channel.g.dart';

/// Channel definition owned by the principal
///
/// Properties:
/// * [type]
/// * [config]
/// * [secrets] - Write-only secret settings; omitted secrets keep their stored values
/// * [language] - BCP 47 (141)
@BuiltValue()
abstract class NotificationPreferenceInputChannel
    implements
        Built<NotificationPreferenceInputChannel,
            NotificationPreferenceInputChannelBuilder> {
  @BuiltValueField(wireName: r'type')
  NotificationPreferenceInputChannelTypeEnum get type;
  // enum typeEnum {  webhook,  slack,  mattermost,  discord,  teams,  google-chat,  telegram,  matrix,  ntfy,  gotify,  pushover,  email,  webpush,  };

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// Write-only secret settings; omitted secrets keep their stored values
  @BuiltValueField(wireName: r'secrets')
  BuiltMap<String, String>? get secrets;

  /// BCP 47 (141)
  @BuiltValueField(wireName: r'language')
  String? get language;

  NotificationPreferenceInputChannel._();

  factory NotificationPreferenceInputChannel(
          [void updates(NotificationPreferenceInputChannelBuilder b)]) =
      _$NotificationPreferenceInputChannel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPreferenceInputChannelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPreferenceInputChannel> get serializer =>
      _$NotificationPreferenceInputChannelSerializer();
}

class _$NotificationPreferenceInputChannelSerializer
    implements PrimitiveSerializer<NotificationPreferenceInputChannel> {
  @override
  final Iterable<Type> types = const [
    NotificationPreferenceInputChannel,
    _$NotificationPreferenceInputChannel
  ];

  @override
  final String wireName = r'NotificationPreferenceInputChannel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPreferenceInputChannel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NotificationPreferenceInputChannelTypeEnum),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
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
    NotificationPreferenceInputChannel object, {
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
    required NotificationPreferenceInputChannelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(NotificationPreferenceInputChannelTypeEnum),
          ) as NotificationPreferenceInputChannelTypeEnum;
          result.type = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'secrets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.secrets.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  NotificationPreferenceInputChannel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPreferenceInputChannelBuilder();
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

class NotificationPreferenceInputChannelTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'webhook')
  static const NotificationPreferenceInputChannelTypeEnum webhook =
      _$notificationPreferenceInputChannelTypeEnum_webhook;
  @BuiltValueEnumConst(wireName: r'slack')
  static const NotificationPreferenceInputChannelTypeEnum slack =
      _$notificationPreferenceInputChannelTypeEnum_slack;
  @BuiltValueEnumConst(wireName: r'mattermost')
  static const NotificationPreferenceInputChannelTypeEnum mattermost =
      _$notificationPreferenceInputChannelTypeEnum_mattermost;
  @BuiltValueEnumConst(wireName: r'discord')
  static const NotificationPreferenceInputChannelTypeEnum discord =
      _$notificationPreferenceInputChannelTypeEnum_discord;
  @BuiltValueEnumConst(wireName: r'teams')
  static const NotificationPreferenceInputChannelTypeEnum teams =
      _$notificationPreferenceInputChannelTypeEnum_teams;
  @BuiltValueEnumConst(wireName: r'google-chat')
  static const NotificationPreferenceInputChannelTypeEnum googleChat =
      _$notificationPreferenceInputChannelTypeEnum_googleChat;
  @BuiltValueEnumConst(wireName: r'telegram')
  static const NotificationPreferenceInputChannelTypeEnum telegram =
      _$notificationPreferenceInputChannelTypeEnum_telegram;
  @BuiltValueEnumConst(wireName: r'matrix')
  static const NotificationPreferenceInputChannelTypeEnum matrix =
      _$notificationPreferenceInputChannelTypeEnum_matrix;
  @BuiltValueEnumConst(wireName: r'ntfy')
  static const NotificationPreferenceInputChannelTypeEnum ntfy =
      _$notificationPreferenceInputChannelTypeEnum_ntfy;
  @BuiltValueEnumConst(wireName: r'gotify')
  static const NotificationPreferenceInputChannelTypeEnum gotify =
      _$notificationPreferenceInputChannelTypeEnum_gotify;
  @BuiltValueEnumConst(wireName: r'pushover')
  static const NotificationPreferenceInputChannelTypeEnum pushover =
      _$notificationPreferenceInputChannelTypeEnum_pushover;
  @BuiltValueEnumConst(wireName: r'email')
  static const NotificationPreferenceInputChannelTypeEnum email =
      _$notificationPreferenceInputChannelTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'webpush')
  static const NotificationPreferenceInputChannelTypeEnum webpush =
      _$notificationPreferenceInputChannelTypeEnum_webpush;

  static Serializer<NotificationPreferenceInputChannelTypeEnum>
      get serializer => _$notificationPreferenceInputChannelTypeEnumSerializer;

  const NotificationPreferenceInputChannelTypeEnum._(String name) : super(name);

  static BuiltSet<NotificationPreferenceInputChannelTypeEnum> get values =>
      _$notificationPreferenceInputChannelTypeEnumValues;
  static NotificationPreferenceInputChannelTypeEnum valueOf(String name) =>
      _$notificationPreferenceInputChannelTypeEnumValueOf(name);
}
