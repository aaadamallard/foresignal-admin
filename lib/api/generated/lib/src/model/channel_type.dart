//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/channel_type_capabilities.dart';
import 'package:foresignal_api/src/model/channel_type_config_fields_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_type.g.dart';

/// ChannelType
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [configFields]
/// * [secretFields] - Write-only fields; a name of the form `prefix.<Name>` is a wildcard (webhook `header.<Name>` sends any such secret as the header <Name>)
/// * [events]
/// * [capabilities]
@BuiltValue()
abstract class ChannelType implements Built<ChannelType, ChannelTypeBuilder> {
  @BuiltValueField(wireName: r'id')
  ChannelTypeIdEnum get id;
  // enum idEnum {  webhook,  slack,  mattermost,  discord,  teams,  google-chat,  telegram,  matrix,  ntfy,  gotify,  pushover,  email,  webpush,  homeassistant,  apprise,  zulip,  mqtt,  meshtastic,  meshcore,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'configFields')
  BuiltList<ChannelTypeConfigFieldsInner> get configFields;

  /// Write-only fields; a name of the form `prefix.<Name>` is a wildcard (webhook `header.<Name>` sends any such secret as the header <Name>)
  @BuiltValueField(wireName: r'secretFields')
  BuiltList<ChannelTypeConfigFieldsInner> get secretFields;

  @BuiltValueField(wireName: r'events')
  BuiltList<ChannelTypeEventsEnum>? get events;
  // enum eventsEnum {  alert,  briefing,  system,  };

  @BuiltValueField(wireName: r'capabilities')
  ChannelTypeCapabilities? get capabilities;

  ChannelType._();

  factory ChannelType([void updates(ChannelTypeBuilder b)]) = _$ChannelType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelType> get serializer => _$ChannelTypeSerializer();
}

class _$ChannelTypeSerializer implements PrimitiveSerializer<ChannelType> {
  @override
  final Iterable<Type> types = const [ChannelType, _$ChannelType];

  @override
  final String wireName = r'ChannelType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(ChannelTypeIdEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'configFields';
    yield serializers.serialize(
      object.configFields,
      specifiedType:
          const FullType(BuiltList, [FullType(ChannelTypeConfigFieldsInner)]),
    );
    yield r'secretFields';
    yield serializers.serialize(
      object.secretFields,
      specifiedType:
          const FullType(BuiltList, [FullType(ChannelTypeConfigFieldsInner)]),
    );
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType:
            const FullType(BuiltList, [FullType(ChannelTypeEventsEnum)]),
      );
    }
    if (object.capabilities != null) {
      yield r'capabilities';
      yield serializers.serialize(
        object.capabilities,
        specifiedType: const FullType(ChannelTypeCapabilities),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelType object, {
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
    required ChannelTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChannelTypeIdEnum),
          ) as ChannelTypeIdEnum;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'configFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChannelTypeConfigFieldsInner)]),
          ) as BuiltList<ChannelTypeConfigFieldsInner>;
          result.configFields.replace(valueDes);
          break;
        case r'secretFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChannelTypeConfigFieldsInner)]),
          ) as BuiltList<ChannelTypeConfigFieldsInner>;
          result.secretFields.replace(valueDes);
          break;
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChannelTypeEventsEnum)]),
          ) as BuiltList<ChannelTypeEventsEnum>?;
          if (valueDes == null) continue;
          result.events.replace(valueDes);
          break;
        case r'capabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChannelTypeCapabilities),
          ) as ChannelTypeCapabilities?;
          if (valueDes == null) continue;
          result.capabilities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelTypeBuilder();
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

class ChannelTypeIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'webhook')
  static const ChannelTypeIdEnum webhook = _$channelTypeIdEnum_webhook;
  @BuiltValueEnumConst(wireName: r'slack')
  static const ChannelTypeIdEnum slack = _$channelTypeIdEnum_slack;
  @BuiltValueEnumConst(wireName: r'mattermost')
  static const ChannelTypeIdEnum mattermost = _$channelTypeIdEnum_mattermost;
  @BuiltValueEnumConst(wireName: r'discord')
  static const ChannelTypeIdEnum discord = _$channelTypeIdEnum_discord;
  @BuiltValueEnumConst(wireName: r'teams')
  static const ChannelTypeIdEnum teams = _$channelTypeIdEnum_teams;
  @BuiltValueEnumConst(wireName: r'google-chat')
  static const ChannelTypeIdEnum googleChat = _$channelTypeIdEnum_googleChat;
  @BuiltValueEnumConst(wireName: r'telegram')
  static const ChannelTypeIdEnum telegram = _$channelTypeIdEnum_telegram;
  @BuiltValueEnumConst(wireName: r'matrix')
  static const ChannelTypeIdEnum matrix = _$channelTypeIdEnum_matrix;
  @BuiltValueEnumConst(wireName: r'ntfy')
  static const ChannelTypeIdEnum ntfy = _$channelTypeIdEnum_ntfy;
  @BuiltValueEnumConst(wireName: r'gotify')
  static const ChannelTypeIdEnum gotify = _$channelTypeIdEnum_gotify;
  @BuiltValueEnumConst(wireName: r'pushover')
  static const ChannelTypeIdEnum pushover = _$channelTypeIdEnum_pushover;
  @BuiltValueEnumConst(wireName: r'email')
  static const ChannelTypeIdEnum email = _$channelTypeIdEnum_email;
  @BuiltValueEnumConst(wireName: r'webpush')
  static const ChannelTypeIdEnum webpush = _$channelTypeIdEnum_webpush;
  @BuiltValueEnumConst(wireName: r'homeassistant')
  static const ChannelTypeIdEnum homeassistant =
      _$channelTypeIdEnum_homeassistant;
  @BuiltValueEnumConst(wireName: r'apprise')
  static const ChannelTypeIdEnum apprise = _$channelTypeIdEnum_apprise;
  @BuiltValueEnumConst(wireName: r'zulip')
  static const ChannelTypeIdEnum zulip = _$channelTypeIdEnum_zulip;
  @BuiltValueEnumConst(wireName: r'mqtt')
  static const ChannelTypeIdEnum mqtt = _$channelTypeIdEnum_mqtt;
  @BuiltValueEnumConst(wireName: r'meshtastic')
  static const ChannelTypeIdEnum meshtastic = _$channelTypeIdEnum_meshtastic;
  @BuiltValueEnumConst(wireName: r'meshcore')
  static const ChannelTypeIdEnum meshcore = _$channelTypeIdEnum_meshcore;

  static Serializer<ChannelTypeIdEnum> get serializer =>
      _$channelTypeIdEnumSerializer;

  const ChannelTypeIdEnum._(String name) : super(name);

  static BuiltSet<ChannelTypeIdEnum> get values => _$channelTypeIdEnumValues;
  static ChannelTypeIdEnum valueOf(String name) =>
      _$channelTypeIdEnumValueOf(name);
}

class ChannelTypeEventsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const ChannelTypeEventsEnum alert = _$channelTypeEventsEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const ChannelTypeEventsEnum briefing =
      _$channelTypeEventsEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const ChannelTypeEventsEnum system = _$channelTypeEventsEnum_system;

  static Serializer<ChannelTypeEventsEnum> get serializer =>
      _$channelTypeEventsEnumSerializer;

  const ChannelTypeEventsEnum._(String name) : super(name);

  static BuiltSet<ChannelTypeEventsEnum> get values =>
      _$channelTypeEventsEnumValues;
  static ChannelTypeEventsEnum valueOf(String name) =>
      _$channelTypeEventsEnumValueOf(name);
}
