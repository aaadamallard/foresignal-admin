//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/mesh_channel_common_config_airtime_custom.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meshtastic_channel_config.g.dart';

/// `ChannelInput.config` for type `meshtastic`: MQTT JSON downlink to the operator's node on a private channel (084). Secrets: `username`, `password`. Public channels are refused with 400 `MESH_PUBLIC_CHANNEL`.
///
/// Properties:
/// * [region]
/// * [airtimePreset] - Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
/// * [airtimeCustom]
/// * [dutyCyclePercent] - Must not exceed the region's regulatory ceiling
/// * [minSpacing] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [maxMessagesPerHour]
/// * [profile]
/// * [minSeverity] - The channel takes nothing below this severity, whatever its top-level minSeverity
/// * [reportsEnabled]
/// * [allowedSenders] - Sender to role. A sender is a Meshtastic node id (`!xxxxxxxx`), a MeshCore key prefix (`mc:` + 12 hex) or `name:` + the advertised name: MeshCore channel messages name their sender only by its advertised name, so a MeshCore channel report is matched by `name:` (084)
/// * [compactEvents] - Also send the federation compact messages (fired and resolved alerts, intelligence events) within this channel's airtime budget, through its profile (113)
/// * [brokerUrl] - LAN_URL broker (never *.meshtastic.org)
/// * [root]
/// * [gatewayNodeNum] - Unsigned decimal node number used as `from`
/// * [channelIndex]
/// * [channelName]
/// * [toNodeNum] - Direct message target
/// * [topicSuffixNodeId]
/// * [licensedMode] - Must be false (ham mode disables encryption)
/// * [privateChannelConfirmed] - Must be true
@BuiltValue()
abstract class MeshtasticChannelConfig
    implements Built<MeshtasticChannelConfig, MeshtasticChannelConfigBuilder> {
  @BuiltValueField(wireName: r'region')
  MeshtasticChannelConfigRegionEnum get region;
  // enum regionEnum {  EU_868,  EU_433,  UK_868,  US,  ANZ,  OTHER,  };

  /// Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
  @BuiltValueField(wireName: r'airtimePreset')
  MeshtasticChannelConfigAirtimePresetEnum? get airtimePreset;
  // enum airtimePresetEnum {  meshtastic-longfast,  meshtastic-mediumfast,  custom,  };

  @BuiltValueField(wireName: r'airtimeCustom')
  MeshChannelCommonConfigAirtimeCustom? get airtimeCustom;

  /// Must not exceed the region's regulatory ceiling
  @BuiltValueField(wireName: r'dutyCyclePercent')
  num? get dutyCyclePercent;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'minSpacing')
  String? get minSpacing;

  @BuiltValueField(wireName: r'maxMessagesPerHour')
  int? get maxMessagesPerHour;

  @BuiltValueField(wireName: r'profile')
  MeshtasticChannelConfigProfileEnum? get profile;
  // enum profileEnum {  text,  cbor,  };

  /// The channel takes nothing below this severity, whatever its top-level minSeverity
  @BuiltValueField(wireName: r'minSeverity')
  MeshtasticChannelConfigMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'reportsEnabled')
  bool? get reportsEnabled;

  /// Sender to role. A sender is a Meshtastic node id (`!xxxxxxxx`), a MeshCore key prefix (`mc:` + 12 hex) or `name:` + the advertised name: MeshCore channel messages name their sender only by its advertised name, so a MeshCore channel report is matched by `name:` (084)
  @BuiltValueField(wireName: r'allowedSenders')
  BuiltMap<String, MeshtasticChannelConfigAllowedSendersEnum>?
      get allowedSenders;
  // enum allowedSendersEnum {  report,  ack,  };

  /// Also send the federation compact messages (fired and resolved alerts, intelligence events) within this channel's airtime budget, through its profile (113)
  @BuiltValueField(wireName: r'compactEvents')
  bool? get compactEvents;

  /// LAN_URL broker (never *.meshtastic.org)
  @BuiltValueField(wireName: r'brokerUrl')
  String get brokerUrl;

  @BuiltValueField(wireName: r'root')
  String? get root;

  /// Unsigned decimal node number used as `from`
  @BuiltValueField(wireName: r'gatewayNodeNum')
  String get gatewayNodeNum;

  @BuiltValueField(wireName: r'channelIndex')
  int get channelIndex;

  @BuiltValueField(wireName: r'channelName')
  String get channelName;

  /// Direct message target
  @BuiltValueField(wireName: r'toNodeNum')
  String? get toNodeNum;

  @BuiltValueField(wireName: r'topicSuffixNodeId')
  bool? get topicSuffixNodeId;

  /// Must be false (ham mode disables encryption)
  @BuiltValueField(wireName: r'licensedMode')
  bool? get licensedMode;

  /// Must be true
  @BuiltValueField(wireName: r'privateChannelConfirmed')
  bool get privateChannelConfirmed;

  MeshtasticChannelConfig._();

  factory MeshtasticChannelConfig(
          [void updates(MeshtasticChannelConfigBuilder b)]) =
      _$MeshtasticChannelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeshtasticChannelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeshtasticChannelConfig> get serializer =>
      _$MeshtasticChannelConfigSerializer();
}

class _$MeshtasticChannelConfigSerializer
    implements PrimitiveSerializer<MeshtasticChannelConfig> {
  @override
  final Iterable<Type> types = const [
    MeshtasticChannelConfig,
    _$MeshtasticChannelConfig
  ];

  @override
  final String wireName = r'MeshtasticChannelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeshtasticChannelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(MeshtasticChannelConfigRegionEnum),
    );
    if (object.airtimePreset != null) {
      yield r'airtimePreset';
      yield serializers.serialize(
        object.airtimePreset,
        specifiedType: const FullType(MeshtasticChannelConfigAirtimePresetEnum),
      );
    }
    if (object.airtimeCustom != null) {
      yield r'airtimeCustom';
      yield serializers.serialize(
        object.airtimeCustom,
        specifiedType:
            const FullType.nullable(MeshChannelCommonConfigAirtimeCustom),
      );
    }
    if (object.dutyCyclePercent != null) {
      yield r'dutyCyclePercent';
      yield serializers.serialize(
        object.dutyCyclePercent,
        specifiedType: const FullType(num),
      );
    }
    if (object.minSpacing != null) {
      yield r'minSpacing';
      yield serializers.serialize(
        object.minSpacing,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxMessagesPerHour != null) {
      yield r'maxMessagesPerHour';
      yield serializers.serialize(
        object.maxMessagesPerHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.profile != null) {
      yield r'profile';
      yield serializers.serialize(
        object.profile,
        specifiedType: const FullType(MeshtasticChannelConfigProfileEnum),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(MeshtasticChannelConfigMinSeverityEnum),
      );
    }
    if (object.reportsEnabled != null) {
      yield r'reportsEnabled';
      yield serializers.serialize(
        object.reportsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowedSenders != null) {
      yield r'allowedSenders';
      yield serializers.serialize(
        object.allowedSenders,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(MeshtasticChannelConfigAllowedSendersEnum)
        ]),
      );
    }
    if (object.compactEvents != null) {
      yield r'compactEvents';
      yield serializers.serialize(
        object.compactEvents,
        specifiedType: const FullType(bool),
      );
    }
    yield r'brokerUrl';
    yield serializers.serialize(
      object.brokerUrl,
      specifiedType: const FullType(String),
    );
    if (object.root != null) {
      yield r'root';
      yield serializers.serialize(
        object.root,
        specifiedType: const FullType(String),
      );
    }
    yield r'gatewayNodeNum';
    yield serializers.serialize(
      object.gatewayNodeNum,
      specifiedType: const FullType(String),
    );
    yield r'channelIndex';
    yield serializers.serialize(
      object.channelIndex,
      specifiedType: const FullType(int),
    );
    yield r'channelName';
    yield serializers.serialize(
      object.channelName,
      specifiedType: const FullType(String),
    );
    if (object.toNodeNum != null) {
      yield r'toNodeNum';
      yield serializers.serialize(
        object.toNodeNum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.topicSuffixNodeId != null) {
      yield r'topicSuffixNodeId';
      yield serializers.serialize(
        object.topicSuffixNodeId,
        specifiedType: const FullType(bool),
      );
    }
    if (object.licensedMode != null) {
      yield r'licensedMode';
      yield serializers.serialize(
        object.licensedMode,
        specifiedType: const FullType(bool),
      );
    }
    yield r'privateChannelConfirmed';
    yield serializers.serialize(
      object.privateChannelConfirmed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MeshtasticChannelConfig object, {
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
    required MeshtasticChannelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MeshtasticChannelConfigRegionEnum),
          ) as MeshtasticChannelConfigRegionEnum;
          result.region = valueDes;
          break;
        case r'airtimePreset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                MeshtasticChannelConfigAirtimePresetEnum),
          ) as MeshtasticChannelConfigAirtimePresetEnum?;
          if (valueDes == null) continue;
          result.airtimePreset = valueDes;
          break;
        case r'airtimeCustom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(MeshChannelCommonConfigAirtimeCustom),
          ) as MeshChannelCommonConfigAirtimeCustom?;
          if (valueDes == null) continue;
          result.airtimeCustom.replace(valueDes);
          break;
        case r'dutyCyclePercent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.dutyCyclePercent = valueDes;
          break;
        case r'minSpacing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.minSpacing = valueDes;
          break;
        case r'maxMessagesPerHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxMessagesPerHour = valueDes;
          break;
        case r'profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(MeshtasticChannelConfigProfileEnum),
          ) as MeshtasticChannelConfigProfileEnum?;
          if (valueDes == null) continue;
          result.profile = valueDes;
          break;
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(MeshtasticChannelConfigMinSeverityEnum),
          ) as MeshtasticChannelConfigMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'reportsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reportsEnabled = valueDes;
          break;
        case r'allowedSenders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(MeshtasticChannelConfigAllowedSendersEnum)
            ]),
          ) as BuiltMap<String, MeshtasticChannelConfigAllowedSendersEnum>?;
          if (valueDes == null) continue;
          result.allowedSenders.replace(valueDes);
          break;
        case r'compactEvents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.compactEvents = valueDes;
          break;
        case r'brokerUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brokerUrl = valueDes;
          break;
        case r'root':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.root = valueDes;
          break;
        case r'gatewayNodeNum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gatewayNodeNum = valueDes;
          break;
        case r'channelIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.channelIndex = valueDes;
          break;
        case r'channelName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.channelName = valueDes;
          break;
        case r'toNodeNum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.toNodeNum = valueDes;
          break;
        case r'topicSuffixNodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.topicSuffixNodeId = valueDes;
          break;
        case r'licensedMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.licensedMode = valueDes;
          break;
        case r'privateChannelConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.privateChannelConfirmed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeshtasticChannelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeshtasticChannelConfigBuilder();
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

class MeshtasticChannelConfigRegionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EU_868')
  static const MeshtasticChannelConfigRegionEnum EU_868 =
      _$meshtasticChannelConfigRegionEnum_EU_868;
  @BuiltValueEnumConst(wireName: r'EU_433')
  static const MeshtasticChannelConfigRegionEnum EU_433 =
      _$meshtasticChannelConfigRegionEnum_EU_433;
  @BuiltValueEnumConst(wireName: r'UK_868')
  static const MeshtasticChannelConfigRegionEnum UK_868 =
      _$meshtasticChannelConfigRegionEnum_UK_868;
  @BuiltValueEnumConst(wireName: r'US')
  static const MeshtasticChannelConfigRegionEnum US =
      _$meshtasticChannelConfigRegionEnum_US;
  @BuiltValueEnumConst(wireName: r'ANZ')
  static const MeshtasticChannelConfigRegionEnum ANZ =
      _$meshtasticChannelConfigRegionEnum_ANZ;
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const MeshtasticChannelConfigRegionEnum OTHER =
      _$meshtasticChannelConfigRegionEnum_OTHER;

  static Serializer<MeshtasticChannelConfigRegionEnum> get serializer =>
      _$meshtasticChannelConfigRegionEnumSerializer;

  const MeshtasticChannelConfigRegionEnum._(String name) : super(name);

  static BuiltSet<MeshtasticChannelConfigRegionEnum> get values =>
      _$meshtasticChannelConfigRegionEnumValues;
  static MeshtasticChannelConfigRegionEnum valueOf(String name) =>
      _$meshtasticChannelConfigRegionEnumValueOf(name);
}

/// Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
class MeshtasticChannelConfigAirtimePresetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'meshtastic-longfast')
  static const MeshtasticChannelConfigAirtimePresetEnum meshtasticLongfast =
      _$meshtasticChannelConfigAirtimePresetEnum_meshtasticLongfast;
  @BuiltValueEnumConst(wireName: r'meshtastic-mediumfast')
  static const MeshtasticChannelConfigAirtimePresetEnum meshtasticMediumfast =
      _$meshtasticChannelConfigAirtimePresetEnum_meshtasticMediumfast;
  @BuiltValueEnumConst(wireName: r'custom')
  static const MeshtasticChannelConfigAirtimePresetEnum custom =
      _$meshtasticChannelConfigAirtimePresetEnum_custom;

  static Serializer<MeshtasticChannelConfigAirtimePresetEnum> get serializer =>
      _$meshtasticChannelConfigAirtimePresetEnumSerializer;

  const MeshtasticChannelConfigAirtimePresetEnum._(String name) : super(name);

  static BuiltSet<MeshtasticChannelConfigAirtimePresetEnum> get values =>
      _$meshtasticChannelConfigAirtimePresetEnumValues;
  static MeshtasticChannelConfigAirtimePresetEnum valueOf(String name) =>
      _$meshtasticChannelConfigAirtimePresetEnumValueOf(name);
}

class MeshtasticChannelConfigProfileEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text')
  static const MeshtasticChannelConfigProfileEnum text =
      _$meshtasticChannelConfigProfileEnum_text;
  @BuiltValueEnumConst(wireName: r'cbor')
  static const MeshtasticChannelConfigProfileEnum cbor =
      _$meshtasticChannelConfigProfileEnum_cbor;

  static Serializer<MeshtasticChannelConfigProfileEnum> get serializer =>
      _$meshtasticChannelConfigProfileEnumSerializer;

  const MeshtasticChannelConfigProfileEnum._(String name) : super(name);

  static BuiltSet<MeshtasticChannelConfigProfileEnum> get values =>
      _$meshtasticChannelConfigProfileEnumValues;
  static MeshtasticChannelConfigProfileEnum valueOf(String name) =>
      _$meshtasticChannelConfigProfileEnumValueOf(name);
}

/// The channel takes nothing below this severity, whatever its top-level minSeverity
class MeshtasticChannelConfigMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const MeshtasticChannelConfigMinSeverityEnum info =
      _$meshtasticChannelConfigMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const MeshtasticChannelConfigMinSeverityEnum warning =
      _$meshtasticChannelConfigMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const MeshtasticChannelConfigMinSeverityEnum critical =
      _$meshtasticChannelConfigMinSeverityEnum_critical;

  static Serializer<MeshtasticChannelConfigMinSeverityEnum> get serializer =>
      _$meshtasticChannelConfigMinSeverityEnumSerializer;

  const MeshtasticChannelConfigMinSeverityEnum._(String name) : super(name);

  static BuiltSet<MeshtasticChannelConfigMinSeverityEnum> get values =>
      _$meshtasticChannelConfigMinSeverityEnumValues;
  static MeshtasticChannelConfigMinSeverityEnum valueOf(String name) =>
      _$meshtasticChannelConfigMinSeverityEnumValueOf(name);
}

class MeshtasticChannelConfigAllowedSendersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const MeshtasticChannelConfigAllowedSendersEnum report =
      _$meshtasticChannelConfigAllowedSendersEnum_report;
  @BuiltValueEnumConst(wireName: r'ack')
  static const MeshtasticChannelConfigAllowedSendersEnum ack =
      _$meshtasticChannelConfigAllowedSendersEnum_ack;

  static Serializer<MeshtasticChannelConfigAllowedSendersEnum> get serializer =>
      _$meshtasticChannelConfigAllowedSendersEnumSerializer;

  const MeshtasticChannelConfigAllowedSendersEnum._(String name) : super(name);

  static BuiltSet<MeshtasticChannelConfigAllowedSendersEnum> get values =>
      _$meshtasticChannelConfigAllowedSendersEnumValues;
  static MeshtasticChannelConfigAllowedSendersEnum valueOf(String name) =>
      _$meshtasticChannelConfigAllowedSendersEnumValueOf(name);
}
