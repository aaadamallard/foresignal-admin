//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mqtt_channel_config.g.dart';

/// `ChannelInput.config` for type `mqtt` (060). Secrets (in `secrets`): `username`, `password`, `caCertPem`. A public broker without TLS or credentials yields the warning `MQTT_INSECURE_PUBLIC_BROKER` on the channel.
///
/// Properties:
/// * [brokerUrl] - mqtt://, mqtts://, ws:// or wss:// (WebSocket URLs may carry a path); no credentials, query or fragment. The host passes the outbound URL policy (profile LAN_ALLOWED)
/// * [topicPrefix] - Topic prefix; leading and trailing slashes are dropped. No + or # wildcards
/// * [qos] - QoS of event messages; a delivery succeeds on PUBACK (1) or a completed write (0). Retained state and discovery always use QoS 1
/// * [protocolVersion]
/// * [messageExpiry] - MQTT 5 message expiry of non-retained event messages (ignored on 3.1.1). ISO-8601 duration or shorthand
/// * [payloadTemplate] - Optional JSON with JSON-escaped {{…}} placeholders, like webhook `bodyTemplate`; replaces every event payload except the channel test
/// * [publishHealth]
/// * [publishSummary]
/// * [summaryInterval] - How often `{prefix}/summary` is checked (at least 10s); it is published only when the glance changed. ISO-8601 duration (PT1M) or shorthand (60s, 15m)
/// * [haDiscovery]
/// * [haPrefix] - Home Assistant discovery prefix; Foresignal subscribes to `{haPrefix}/status` for the birth message
/// * [haMaxRules] - Most enabled rules given a `problem` binary_sensor, critical first, then by name
/// * [haMaxSources] - Most non-private, non-disabled sources given a `problem` binary_sensor, by id
/// * [haRetainDiscovery] - Retain the discovery config. Off by default: Home Assistant prefers discovery re-published on its birth message, because retained configs can leave ghost entities
@BuiltValue()
abstract class MqttChannelConfig
    implements Built<MqttChannelConfig, MqttChannelConfigBuilder> {
  /// mqtt://, mqtts://, ws:// or wss:// (WebSocket URLs may carry a path); no credentials, query or fragment. The host passes the outbound URL policy (profile LAN_ALLOWED)
  @BuiltValueField(wireName: r'brokerUrl')
  String get brokerUrl;

  /// Topic prefix; leading and trailing slashes are dropped. No + or # wildcards
  @BuiltValueField(wireName: r'topicPrefix')
  String? get topicPrefix;

  /// QoS of event messages; a delivery succeeds on PUBACK (1) or a completed write (0). Retained state and discovery always use QoS 1
  @BuiltValueField(wireName: r'qos')
  MqttChannelConfigQosEnum? get qos;
  // enum qosEnum {  0,  1,  };

  @BuiltValueField(wireName: r'protocolVersion')
  MqttChannelConfigProtocolVersionEnum? get protocolVersion;
  // enum protocolVersionEnum {  5,  3.1.1,  };

  /// MQTT 5 message expiry of non-retained event messages (ignored on 3.1.1). ISO-8601 duration or shorthand
  @BuiltValueField(wireName: r'messageExpiry')
  String? get messageExpiry;

  /// Optional JSON with JSON-escaped {{…}} placeholders, like webhook `bodyTemplate`; replaces every event payload except the channel test
  @BuiltValueField(wireName: r'payloadTemplate')
  String? get payloadTemplate;

  @BuiltValueField(wireName: r'publishHealth')
  bool? get publishHealth;

  @BuiltValueField(wireName: r'publishSummary')
  bool? get publishSummary;

  /// How often `{prefix}/summary` is checked (at least 10s); it is published only when the glance changed. ISO-8601 duration (PT1M) or shorthand (60s, 15m)
  @BuiltValueField(wireName: r'summaryInterval')
  String? get summaryInterval;

  @BuiltValueField(wireName: r'haDiscovery')
  bool? get haDiscovery;

  /// Home Assistant discovery prefix; Foresignal subscribes to `{haPrefix}/status` for the birth message
  @BuiltValueField(wireName: r'haPrefix')
  String? get haPrefix;

  /// Most enabled rules given a `problem` binary_sensor, critical first, then by name
  @BuiltValueField(wireName: r'haMaxRules')
  int? get haMaxRules;

  /// Most non-private, non-disabled sources given a `problem` binary_sensor, by id
  @BuiltValueField(wireName: r'haMaxSources')
  int? get haMaxSources;

  /// Retain the discovery config. Off by default: Home Assistant prefers discovery re-published on its birth message, because retained configs can leave ghost entities
  @BuiltValueField(wireName: r'haRetainDiscovery')
  bool? get haRetainDiscovery;

  MqttChannelConfig._();

  factory MqttChannelConfig([void updates(MqttChannelConfigBuilder b)]) =
      _$MqttChannelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MqttChannelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MqttChannelConfig> get serializer =>
      _$MqttChannelConfigSerializer();
}

class _$MqttChannelConfigSerializer
    implements PrimitiveSerializer<MqttChannelConfig> {
  @override
  final Iterable<Type> types = const [MqttChannelConfig, _$MqttChannelConfig];

  @override
  final String wireName = r'MqttChannelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MqttChannelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'brokerUrl';
    yield serializers.serialize(
      object.brokerUrl,
      specifiedType: const FullType(String),
    );
    if (object.topicPrefix != null) {
      yield r'topicPrefix';
      yield serializers.serialize(
        object.topicPrefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.qos != null) {
      yield r'qos';
      yield serializers.serialize(
        object.qos,
        specifiedType: const FullType(MqttChannelConfigQosEnum),
      );
    }
    if (object.protocolVersion != null) {
      yield r'protocolVersion';
      yield serializers.serialize(
        object.protocolVersion,
        specifiedType: const FullType(MqttChannelConfigProtocolVersionEnum),
      );
    }
    if (object.messageExpiry != null) {
      yield r'messageExpiry';
      yield serializers.serialize(
        object.messageExpiry,
        specifiedType: const FullType(String),
      );
    }
    if (object.payloadTemplate != null) {
      yield r'payloadTemplate';
      yield serializers.serialize(
        object.payloadTemplate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publishHealth != null) {
      yield r'publishHealth';
      yield serializers.serialize(
        object.publishHealth,
        specifiedType: const FullType(bool),
      );
    }
    if (object.publishSummary != null) {
      yield r'publishSummary';
      yield serializers.serialize(
        object.publishSummary,
        specifiedType: const FullType(bool),
      );
    }
    if (object.summaryInterval != null) {
      yield r'summaryInterval';
      yield serializers.serialize(
        object.summaryInterval,
        specifiedType: const FullType(String),
      );
    }
    if (object.haDiscovery != null) {
      yield r'haDiscovery';
      yield serializers.serialize(
        object.haDiscovery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.haPrefix != null) {
      yield r'haPrefix';
      yield serializers.serialize(
        object.haPrefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.haMaxRules != null) {
      yield r'haMaxRules';
      yield serializers.serialize(
        object.haMaxRules,
        specifiedType: const FullType(int),
      );
    }
    if (object.haMaxSources != null) {
      yield r'haMaxSources';
      yield serializers.serialize(
        object.haMaxSources,
        specifiedType: const FullType(int),
      );
    }
    if (object.haRetainDiscovery != null) {
      yield r'haRetainDiscovery';
      yield serializers.serialize(
        object.haRetainDiscovery,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MqttChannelConfig object, {
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
    required MqttChannelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'brokerUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.brokerUrl = valueDes;
          break;
        case r'topicPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.topicPrefix = valueDes;
          break;
        case r'qos':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MqttChannelConfigQosEnum,
                    ),
                  )
                  as MqttChannelConfigQosEnum?;
          if (valueDes == null) continue;
          result.qos = valueDes;
          break;
        case r'protocolVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MqttChannelConfigProtocolVersionEnum,
                    ),
                  )
                  as MqttChannelConfigProtocolVersionEnum?;
          if (valueDes == null) continue;
          result.protocolVersion = valueDes;
          break;
        case r'messageExpiry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.messageExpiry = valueDes;
          break;
        case r'payloadTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.payloadTemplate = valueDes;
          break;
        case r'publishHealth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.publishHealth = valueDes;
          break;
        case r'publishSummary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.publishSummary = valueDes;
          break;
        case r'summaryInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summaryInterval = valueDes;
          break;
        case r'haDiscovery':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.haDiscovery = valueDes;
          break;
        case r'haPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.haPrefix = valueDes;
          break;
        case r'haMaxRules':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.haMaxRules = valueDes;
          break;
        case r'haMaxSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.haMaxSources = valueDes;
          break;
        case r'haRetainDiscovery':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.haRetainDiscovery = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MqttChannelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MqttChannelConfigBuilder();
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

/// QoS of event messages; a delivery succeeds on PUBACK (1) or a completed write (0). Retained state and discovery always use QoS 1
class MqttChannelConfigQosEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 0)
  static const MqttChannelConfigQosEnum number0 =
      _$mqttChannelConfigQosEnum_number0;
  @BuiltValueEnumConst(wireNumber: 1)
  static const MqttChannelConfigQosEnum number1 =
      _$mqttChannelConfigQosEnum_number1;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const MqttChannelConfigQosEnum unknownDefaultOpenApi =
      _$mqttChannelConfigQosEnum_unknownDefaultOpenApi;

  static Serializer<MqttChannelConfigQosEnum> get serializer =>
      _$mqttChannelConfigQosEnumSerializer;

  const MqttChannelConfigQosEnum._(String name) : super(name);

  static BuiltSet<MqttChannelConfigQosEnum> get values =>
      _$mqttChannelConfigQosEnumValues;
  static MqttChannelConfigQosEnum valueOf(String name) =>
      _$mqttChannelConfigQosEnumValueOf(name);
}

class MqttChannelConfigProtocolVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'5')
  static const MqttChannelConfigProtocolVersionEnum n5 =
      _$mqttChannelConfigProtocolVersionEnum_n5;
  @BuiltValueEnumConst(wireName: r'3.1.1')
  static const MqttChannelConfigProtocolVersionEnum n3period1Period1 =
      _$mqttChannelConfigProtocolVersionEnum_n3period1Period1;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MqttChannelConfigProtocolVersionEnum unknownDefaultOpenApi =
      _$mqttChannelConfigProtocolVersionEnum_unknownDefaultOpenApi;

  static Serializer<MqttChannelConfigProtocolVersionEnum> get serializer =>
      _$mqttChannelConfigProtocolVersionEnumSerializer;

  const MqttChannelConfigProtocolVersionEnum._(String name) : super(name);

  static BuiltSet<MqttChannelConfigProtocolVersionEnum> get values =>
      _$mqttChannelConfigProtocolVersionEnumValues;
  static MqttChannelConfigProtocolVersionEnum valueOf(String name) =>
      _$mqttChannelConfigProtocolVersionEnumValueOf(name);
}
