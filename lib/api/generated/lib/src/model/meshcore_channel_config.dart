//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/mesh_channel_common_config_airtime_custom.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meshcore_channel_config.g.dart';

/// `ChannelInput.config` for type `meshcore`: MeshCore companion protocol over the 083 shared link (084). Slot 0, `Public`, `#…` names and all-zero secrets are refused with 400 `MESH_PUBLIC_CHANNEL`.
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
/// * [companionUrl] - LAN_URL tcp://host:port (explicit port, private address)
/// * [channelIndex]
/// * [dmContactPrefix]
/// * [requireAck] - DM only; unacknowledged deliveries end `unacked`
/// * [dataType] - Channel-datagram data type for the CBOR profile (0xFF45)
@BuiltValue()
abstract class MeshcoreChannelConfig
    implements Built<MeshcoreChannelConfig, MeshcoreChannelConfigBuilder> {
  @BuiltValueField(wireName: r'region')
  MeshcoreChannelConfigRegionEnum get region;
  // enum regionEnum {  EU_868,  EU_433,  UK_868,  US,  ANZ,  OTHER,  };

  /// Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
  @BuiltValueField(wireName: r'airtimePreset')
  MeshcoreChannelConfigAirtimePresetEnum? get airtimePreset;
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
  MeshcoreChannelConfigProfileEnum? get profile;
  // enum profileEnum {  text,  cbor,  };

  /// The channel takes nothing below this severity, whatever its top-level minSeverity
  @BuiltValueField(wireName: r'minSeverity')
  MeshcoreChannelConfigMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'reportsEnabled')
  bool? get reportsEnabled;

  /// Sender to role. A sender is a Meshtastic node id (`!xxxxxxxx`), a MeshCore key prefix (`mc:` + 12 hex) or `name:` + the advertised name: MeshCore channel messages name their sender only by its advertised name, so a MeshCore channel report is matched by `name:` (084)
  @BuiltValueField(wireName: r'allowedSenders')
  BuiltMap<String, MeshcoreChannelConfigAllowedSendersEnum>? get allowedSenders;
  // enum allowedSendersEnum {  report,  ack,  };

  /// Also send the federation compact messages (fired and resolved alerts, intelligence events) within this channel's airtime budget, through its profile (113)
  @BuiltValueField(wireName: r'compactEvents')
  bool? get compactEvents;

  /// LAN_URL tcp://host:port (explicit port, private address)
  @BuiltValueField(wireName: r'companionUrl')
  String get companionUrl;

  @BuiltValueField(wireName: r'channelIndex')
  int get channelIndex;

  @BuiltValueField(wireName: r'dmContactPrefix')
  String? get dmContactPrefix;

  /// DM only; unacknowledged deliveries end `unacked`
  @BuiltValueField(wireName: r'requireAck')
  bool? get requireAck;

  /// Channel-datagram data type for the CBOR profile (0xFF45)
  @BuiltValueField(wireName: r'dataType')
  int? get dataType;

  MeshcoreChannelConfig._();

  factory MeshcoreChannelConfig([
    void updates(MeshcoreChannelConfigBuilder b),
  ]) = _$MeshcoreChannelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeshcoreChannelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeshcoreChannelConfig> get serializer =>
      _$MeshcoreChannelConfigSerializer();
}

class _$MeshcoreChannelConfigSerializer
    implements PrimitiveSerializer<MeshcoreChannelConfig> {
  @override
  final Iterable<Type> types = const [
    MeshcoreChannelConfig,
    _$MeshcoreChannelConfig,
  ];

  @override
  final String wireName = r'MeshcoreChannelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeshcoreChannelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(MeshcoreChannelConfigRegionEnum),
    );
    if (object.airtimePreset != null) {
      yield r'airtimePreset';
      yield serializers.serialize(
        object.airtimePreset,
        specifiedType: const FullType(MeshcoreChannelConfigAirtimePresetEnum),
      );
    }
    if (object.airtimeCustom != null) {
      yield r'airtimeCustom';
      yield serializers.serialize(
        object.airtimeCustom,
        specifiedType: const FullType.nullable(
          MeshChannelCommonConfigAirtimeCustom,
        ),
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
        specifiedType: const FullType(MeshcoreChannelConfigProfileEnum),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(MeshcoreChannelConfigMinSeverityEnum),
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
          FullType(MeshcoreChannelConfigAllowedSendersEnum),
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
    yield r'companionUrl';
    yield serializers.serialize(
      object.companionUrl,
      specifiedType: const FullType(String),
    );
    yield r'channelIndex';
    yield serializers.serialize(
      object.channelIndex,
      specifiedType: const FullType(int),
    );
    if (object.dmContactPrefix != null) {
      yield r'dmContactPrefix';
      yield serializers.serialize(
        object.dmContactPrefix,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.requireAck != null) {
      yield r'requireAck';
      yield serializers.serialize(
        object.requireAck,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dataType != null) {
      yield r'dataType';
      yield serializers.serialize(
        object.dataType,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MeshcoreChannelConfig object, {
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
    required MeshcoreChannelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      MeshcoreChannelConfigRegionEnum,
                    ),
                  )
                  as MeshcoreChannelConfigRegionEnum;
          result.region = valueDes;
          break;
        case r'airtimePreset':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MeshcoreChannelConfigAirtimePresetEnum,
                    ),
                  )
                  as MeshcoreChannelConfigAirtimePresetEnum?;
          if (valueDes == null) continue;
          result.airtimePreset = valueDes;
          break;
        case r'airtimeCustom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MeshChannelCommonConfigAirtimeCustom,
                    ),
                  )
                  as MeshChannelCommonConfigAirtimeCustom?;
          if (valueDes == null) continue;
          result.airtimeCustom.replace(valueDes);
          break;
        case r'dutyCyclePercent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.dutyCyclePercent = valueDes;
          break;
        case r'minSpacing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.minSpacing = valueDes;
          break;
        case r'maxMessagesPerHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxMessagesPerHour = valueDes;
          break;
        case r'profile':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MeshcoreChannelConfigProfileEnum,
                    ),
                  )
                  as MeshcoreChannelConfigProfileEnum?;
          if (valueDes == null) continue;
          result.profile = valueDes;
          break;
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MeshcoreChannelConfigMinSeverityEnum,
                    ),
                  )
                  as MeshcoreChannelConfigMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'reportsEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.reportsEnabled = valueDes;
          break;
        case r'allowedSenders':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(MeshcoreChannelConfigAllowedSendersEnum),
                    ]),
                  )
                  as BuiltMap<String, MeshcoreChannelConfigAllowedSendersEnum>?;
          if (valueDes == null) continue;
          result.allowedSenders.replace(valueDes);
          break;
        case r'compactEvents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.compactEvents = valueDes;
          break;
        case r'companionUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.companionUrl = valueDes;
          break;
        case r'channelIndex':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.channelIndex = valueDes;
          break;
        case r'dmContactPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dmContactPrefix = valueDes;
          break;
        case r'requireAck':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.requireAck = valueDes;
          break;
        case r'dataType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dataType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeshcoreChannelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeshcoreChannelConfigBuilder();
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

class MeshcoreChannelConfigRegionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EU_868')
  static const MeshcoreChannelConfigRegionEnum EU_868 =
      _$meshcoreChannelConfigRegionEnum_EU_868;
  @BuiltValueEnumConst(wireName: r'EU_433')
  static const MeshcoreChannelConfigRegionEnum EU_433 =
      _$meshcoreChannelConfigRegionEnum_EU_433;
  @BuiltValueEnumConst(wireName: r'UK_868')
  static const MeshcoreChannelConfigRegionEnum UK_868 =
      _$meshcoreChannelConfigRegionEnum_UK_868;
  @BuiltValueEnumConst(wireName: r'US')
  static const MeshcoreChannelConfigRegionEnum US =
      _$meshcoreChannelConfigRegionEnum_US;
  @BuiltValueEnumConst(wireName: r'ANZ')
  static const MeshcoreChannelConfigRegionEnum ANZ =
      _$meshcoreChannelConfigRegionEnum_ANZ;
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const MeshcoreChannelConfigRegionEnum OTHER =
      _$meshcoreChannelConfigRegionEnum_OTHER;

  static Serializer<MeshcoreChannelConfigRegionEnum> get serializer =>
      _$meshcoreChannelConfigRegionEnumSerializer;

  const MeshcoreChannelConfigRegionEnum._(String name) : super(name);

  static BuiltSet<MeshcoreChannelConfigRegionEnum> get values =>
      _$meshcoreChannelConfigRegionEnumValues;
  static MeshcoreChannelConfigRegionEnum valueOf(String name) =>
      _$meshcoreChannelConfigRegionEnumValueOf(name);
}

/// Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
class MeshcoreChannelConfigAirtimePresetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'meshtastic-longfast')
  static const MeshcoreChannelConfigAirtimePresetEnum meshtasticLongfast =
      _$meshcoreChannelConfigAirtimePresetEnum_meshtasticLongfast;
  @BuiltValueEnumConst(wireName: r'meshtastic-mediumfast')
  static const MeshcoreChannelConfigAirtimePresetEnum meshtasticMediumfast =
      _$meshcoreChannelConfigAirtimePresetEnum_meshtasticMediumfast;
  @BuiltValueEnumConst(wireName: r'custom')
  static const MeshcoreChannelConfigAirtimePresetEnum custom =
      _$meshcoreChannelConfigAirtimePresetEnum_custom;

  static Serializer<MeshcoreChannelConfigAirtimePresetEnum> get serializer =>
      _$meshcoreChannelConfigAirtimePresetEnumSerializer;

  const MeshcoreChannelConfigAirtimePresetEnum._(String name) : super(name);

  static BuiltSet<MeshcoreChannelConfigAirtimePresetEnum> get values =>
      _$meshcoreChannelConfigAirtimePresetEnumValues;
  static MeshcoreChannelConfigAirtimePresetEnum valueOf(String name) =>
      _$meshcoreChannelConfigAirtimePresetEnumValueOf(name);
}

class MeshcoreChannelConfigProfileEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text')
  static const MeshcoreChannelConfigProfileEnum text =
      _$meshcoreChannelConfigProfileEnum_text;
  @BuiltValueEnumConst(wireName: r'cbor')
  static const MeshcoreChannelConfigProfileEnum cbor =
      _$meshcoreChannelConfigProfileEnum_cbor;

  static Serializer<MeshcoreChannelConfigProfileEnum> get serializer =>
      _$meshcoreChannelConfigProfileEnumSerializer;

  const MeshcoreChannelConfigProfileEnum._(String name) : super(name);

  static BuiltSet<MeshcoreChannelConfigProfileEnum> get values =>
      _$meshcoreChannelConfigProfileEnumValues;
  static MeshcoreChannelConfigProfileEnum valueOf(String name) =>
      _$meshcoreChannelConfigProfileEnumValueOf(name);
}

/// The channel takes nothing below this severity, whatever its top-level minSeverity
class MeshcoreChannelConfigMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const MeshcoreChannelConfigMinSeverityEnum info =
      _$meshcoreChannelConfigMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const MeshcoreChannelConfigMinSeverityEnum warning =
      _$meshcoreChannelConfigMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const MeshcoreChannelConfigMinSeverityEnum critical =
      _$meshcoreChannelConfigMinSeverityEnum_critical;

  static Serializer<MeshcoreChannelConfigMinSeverityEnum> get serializer =>
      _$meshcoreChannelConfigMinSeverityEnumSerializer;

  const MeshcoreChannelConfigMinSeverityEnum._(String name) : super(name);

  static BuiltSet<MeshcoreChannelConfigMinSeverityEnum> get values =>
      _$meshcoreChannelConfigMinSeverityEnumValues;
  static MeshcoreChannelConfigMinSeverityEnum valueOf(String name) =>
      _$meshcoreChannelConfigMinSeverityEnumValueOf(name);
}

class MeshcoreChannelConfigAllowedSendersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const MeshcoreChannelConfigAllowedSendersEnum report =
      _$meshcoreChannelConfigAllowedSendersEnum_report;
  @BuiltValueEnumConst(wireName: r'ack')
  static const MeshcoreChannelConfigAllowedSendersEnum ack =
      _$meshcoreChannelConfigAllowedSendersEnum_ack;

  static Serializer<MeshcoreChannelConfigAllowedSendersEnum> get serializer =>
      _$meshcoreChannelConfigAllowedSendersEnumSerializer;

  const MeshcoreChannelConfigAllowedSendersEnum._(String name) : super(name);

  static BuiltSet<MeshcoreChannelConfigAllowedSendersEnum> get values =>
      _$meshcoreChannelConfigAllowedSendersEnumValues;
  static MeshcoreChannelConfigAllowedSendersEnum valueOf(String name) =>
      _$meshcoreChannelConfigAllowedSendersEnumValueOf(name);
}
