//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/mesh_channel_common_config_airtime_custom.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mesh_channel_common_config.g.dart';

/// Fields shared by the `meshtastic` and `meshcore` channel configs: airtime governor, profile and field-report settings (084)
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
@BuiltValue()
abstract class MeshChannelCommonConfig
    implements Built<MeshChannelCommonConfig, MeshChannelCommonConfigBuilder> {
  @BuiltValueField(wireName: r'region')
  MeshChannelCommonConfigRegionEnum get region;
  // enum regionEnum {  EU_868,  EU_433,  UK_868,  US,  ANZ,  OTHER,  };

  /// Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
  @BuiltValueField(wireName: r'airtimePreset')
  MeshChannelCommonConfigAirtimePresetEnum? get airtimePreset;
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
  MeshChannelCommonConfigProfileEnum? get profile;
  // enum profileEnum {  text,  cbor,  };

  /// The channel takes nothing below this severity, whatever its top-level minSeverity
  @BuiltValueField(wireName: r'minSeverity')
  MeshChannelCommonConfigMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'reportsEnabled')
  bool? get reportsEnabled;

  /// Sender to role. A sender is a Meshtastic node id (`!xxxxxxxx`), a MeshCore key prefix (`mc:` + 12 hex) or `name:` + the advertised name: MeshCore channel messages name their sender only by its advertised name, so a MeshCore channel report is matched by `name:` (084)
  @BuiltValueField(wireName: r'allowedSenders')
  BuiltMap<String, MeshChannelCommonConfigAllowedSendersEnum>?
      get allowedSenders;
  // enum allowedSendersEnum {  report,  ack,  };

  /// Also send the federation compact messages (fired and resolved alerts, intelligence events) within this channel's airtime budget, through its profile (113)
  @BuiltValueField(wireName: r'compactEvents')
  bool? get compactEvents;

  MeshChannelCommonConfig._();

  factory MeshChannelCommonConfig(
          [void updates(MeshChannelCommonConfigBuilder b)]) =
      _$MeshChannelCommonConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeshChannelCommonConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeshChannelCommonConfig> get serializer =>
      _$MeshChannelCommonConfigSerializer();
}

class _$MeshChannelCommonConfigSerializer
    implements PrimitiveSerializer<MeshChannelCommonConfig> {
  @override
  final Iterable<Type> types = const [
    MeshChannelCommonConfig,
    _$MeshChannelCommonConfig
  ];

  @override
  final String wireName = r'MeshChannelCommonConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeshChannelCommonConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(MeshChannelCommonConfigRegionEnum),
    );
    if (object.airtimePreset != null) {
      yield r'airtimePreset';
      yield serializers.serialize(
        object.airtimePreset,
        specifiedType: const FullType(MeshChannelCommonConfigAirtimePresetEnum),
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
        specifiedType: const FullType(MeshChannelCommonConfigProfileEnum),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(MeshChannelCommonConfigMinSeverityEnum),
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
          FullType(MeshChannelCommonConfigAllowedSendersEnum)
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
  }

  @override
  Object serialize(
    Serializers serializers,
    MeshChannelCommonConfig object, {
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
    required MeshChannelCommonConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MeshChannelCommonConfigRegionEnum),
          ) as MeshChannelCommonConfigRegionEnum;
          result.region = valueDes;
          break;
        case r'airtimePreset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                MeshChannelCommonConfigAirtimePresetEnum),
          ) as MeshChannelCommonConfigAirtimePresetEnum?;
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
                const FullType.nullable(MeshChannelCommonConfigProfileEnum),
          ) as MeshChannelCommonConfigProfileEnum?;
          if (valueDes == null) continue;
          result.profile = valueDes;
          break;
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(MeshChannelCommonConfigMinSeverityEnum),
          ) as MeshChannelCommonConfigMinSeverityEnum?;
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
              FullType(MeshChannelCommonConfigAllowedSendersEnum)
            ]),
          ) as BuiltMap<String, MeshChannelCommonConfigAllowedSendersEnum>?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeshChannelCommonConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeshChannelCommonConfigBuilder();
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

class MeshChannelCommonConfigRegionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EU_868')
  static const MeshChannelCommonConfigRegionEnum EU_868 =
      _$meshChannelCommonConfigRegionEnum_EU_868;
  @BuiltValueEnumConst(wireName: r'EU_433')
  static const MeshChannelCommonConfigRegionEnum EU_433 =
      _$meshChannelCommonConfigRegionEnum_EU_433;
  @BuiltValueEnumConst(wireName: r'UK_868')
  static const MeshChannelCommonConfigRegionEnum UK_868 =
      _$meshChannelCommonConfigRegionEnum_UK_868;
  @BuiltValueEnumConst(wireName: r'US')
  static const MeshChannelCommonConfigRegionEnum US =
      _$meshChannelCommonConfigRegionEnum_US;
  @BuiltValueEnumConst(wireName: r'ANZ')
  static const MeshChannelCommonConfigRegionEnum ANZ =
      _$meshChannelCommonConfigRegionEnum_ANZ;
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const MeshChannelCommonConfigRegionEnum OTHER =
      _$meshChannelCommonConfigRegionEnum_OTHER;

  static Serializer<MeshChannelCommonConfigRegionEnum> get serializer =>
      _$meshChannelCommonConfigRegionEnumSerializer;

  const MeshChannelCommonConfigRegionEnum._(String name) : super(name);

  static BuiltSet<MeshChannelCommonConfigRegionEnum> get values =>
      _$meshChannelCommonConfigRegionEnumValues;
  static MeshChannelCommonConfigRegionEnum valueOf(String name) =>
      _$meshChannelCommonConfigRegionEnumValueOf(name);
}

/// Default meshtastic-longfast for `meshtastic`, custom for `meshcore`; the operator confirms it matches the node
class MeshChannelCommonConfigAirtimePresetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'meshtastic-longfast')
  static const MeshChannelCommonConfigAirtimePresetEnum meshtasticLongfast =
      _$meshChannelCommonConfigAirtimePresetEnum_meshtasticLongfast;
  @BuiltValueEnumConst(wireName: r'meshtastic-mediumfast')
  static const MeshChannelCommonConfigAirtimePresetEnum meshtasticMediumfast =
      _$meshChannelCommonConfigAirtimePresetEnum_meshtasticMediumfast;
  @BuiltValueEnumConst(wireName: r'custom')
  static const MeshChannelCommonConfigAirtimePresetEnum custom =
      _$meshChannelCommonConfigAirtimePresetEnum_custom;

  static Serializer<MeshChannelCommonConfigAirtimePresetEnum> get serializer =>
      _$meshChannelCommonConfigAirtimePresetEnumSerializer;

  const MeshChannelCommonConfigAirtimePresetEnum._(String name) : super(name);

  static BuiltSet<MeshChannelCommonConfigAirtimePresetEnum> get values =>
      _$meshChannelCommonConfigAirtimePresetEnumValues;
  static MeshChannelCommonConfigAirtimePresetEnum valueOf(String name) =>
      _$meshChannelCommonConfigAirtimePresetEnumValueOf(name);
}

class MeshChannelCommonConfigProfileEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text')
  static const MeshChannelCommonConfigProfileEnum text =
      _$meshChannelCommonConfigProfileEnum_text;
  @BuiltValueEnumConst(wireName: r'cbor')
  static const MeshChannelCommonConfigProfileEnum cbor =
      _$meshChannelCommonConfigProfileEnum_cbor;

  static Serializer<MeshChannelCommonConfigProfileEnum> get serializer =>
      _$meshChannelCommonConfigProfileEnumSerializer;

  const MeshChannelCommonConfigProfileEnum._(String name) : super(name);

  static BuiltSet<MeshChannelCommonConfigProfileEnum> get values =>
      _$meshChannelCommonConfigProfileEnumValues;
  static MeshChannelCommonConfigProfileEnum valueOf(String name) =>
      _$meshChannelCommonConfigProfileEnumValueOf(name);
}

/// The channel takes nothing below this severity, whatever its top-level minSeverity
class MeshChannelCommonConfigMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const MeshChannelCommonConfigMinSeverityEnum info =
      _$meshChannelCommonConfigMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const MeshChannelCommonConfigMinSeverityEnum warning =
      _$meshChannelCommonConfigMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const MeshChannelCommonConfigMinSeverityEnum critical =
      _$meshChannelCommonConfigMinSeverityEnum_critical;

  static Serializer<MeshChannelCommonConfigMinSeverityEnum> get serializer =>
      _$meshChannelCommonConfigMinSeverityEnumSerializer;

  const MeshChannelCommonConfigMinSeverityEnum._(String name) : super(name);

  static BuiltSet<MeshChannelCommonConfigMinSeverityEnum> get values =>
      _$meshChannelCommonConfigMinSeverityEnumValues;
  static MeshChannelCommonConfigMinSeverityEnum valueOf(String name) =>
      _$meshChannelCommonConfigMinSeverityEnumValueOf(name);
}

class MeshChannelCommonConfigAllowedSendersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const MeshChannelCommonConfigAllowedSendersEnum report =
      _$meshChannelCommonConfigAllowedSendersEnum_report;
  @BuiltValueEnumConst(wireName: r'ack')
  static const MeshChannelCommonConfigAllowedSendersEnum ack =
      _$meshChannelCommonConfigAllowedSendersEnum_ack;

  static Serializer<MeshChannelCommonConfigAllowedSendersEnum> get serializer =>
      _$meshChannelCommonConfigAllowedSendersEnumSerializer;

  const MeshChannelCommonConfigAllowedSendersEnum._(String name) : super(name);

  static BuiltSet<MeshChannelCommonConfigAllowedSendersEnum> get values =>
      _$meshChannelCommonConfigAllowedSendersEnumValues;
  static MeshChannelCommonConfigAllowedSendersEnum valueOf(String name) =>
      _$meshChannelCommonConfigAllowedSendersEnumValueOf(name);
}
