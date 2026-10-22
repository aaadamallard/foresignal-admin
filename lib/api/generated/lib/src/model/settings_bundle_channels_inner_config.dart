//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/channel_actions_config.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_bundle_channels_inner_config.g.dart';

/// Non-secret settings per the type's configFields, plus the map-attachment keys
///
/// Properties:
/// * [attachMap] - Attach a static map to geolocated alerts (cloud chat channels are opt-in)
/// * [mapProducts] - Products drawn (default [\"mrms-reflectivity\"] or the product that matched the rule)
/// * [mapRadiusKm]
/// * [maxAttachmentBytes] - Per-type default: discord 8 MB, telegram 10 MB, ntfy 15 MB, pushover 5,242,880, email 10 MB
/// * [actions]
/// * [allowedUserIds] - telegram: who may press action buttons (empty = any chat member)
/// * [allowedSenders] - matrix: an array of user ids who may acknowledge by reaction; meshtastic and meshcore (084): an object of sender (`!xxxxxxxx`, `mc:` + 12 hex, or `name:` + advertised name) to role `report` or `ack`
/// * [privatePayload] - Admin opt-in to include private-source payloads (039); otherwise rule name, severity and a link only
/// * [units] - Units of the {{near.text}} placeholder in this channel's templates (040)
@BuiltValue()
abstract class SettingsBundleChannelsInnerConfig
    implements
        Built<
          SettingsBundleChannelsInnerConfig,
          SettingsBundleChannelsInnerConfigBuilder
        > {
  /// Attach a static map to geolocated alerts (cloud chat channels are opt-in)
  @BuiltValueField(wireName: r'attachMap')
  SettingsBundleChannelsInnerConfigAttachMapEnum? get attachMap;
  // enum attachMapEnum {  none,  static,  };

  /// Products drawn (default [\"mrms-reflectivity\"] or the product that matched the rule)
  @BuiltValueField(wireName: r'mapProducts')
  BuiltList<String>? get mapProducts;

  @BuiltValueField(wireName: r'mapRadiusKm')
  num? get mapRadiusKm;

  /// Per-type default: discord 8 MB, telegram 10 MB, ntfy 15 MB, pushover 5,242,880, email 10 MB
  @BuiltValueField(wireName: r'maxAttachmentBytes')
  int? get maxAttachmentBytes;

  @BuiltValueField(wireName: r'actions')
  ChannelActionsConfig? get actions;

  /// telegram: who may press action buttons (empty = any chat member)
  @BuiltValueField(wireName: r'allowedUserIds')
  BuiltList<int>? get allowedUserIds;

  /// matrix: an array of user ids who may acknowledge by reaction; meshtastic and meshcore (084): an object of sender (`!xxxxxxxx`, `mc:` + 12 hex, or `name:` + advertised name) to role `report` or `ack`
  @BuiltValueField(wireName: r'allowedSenders')
  JsonObject? get allowedSenders;

  /// Admin opt-in to include private-source payloads (039); otherwise rule name, severity and a link only
  @BuiltValueField(wireName: r'privatePayload')
  bool? get privatePayload;

  /// Units of the {{near.text}} placeholder in this channel's templates (040)
  @BuiltValueField(wireName: r'units')
  SettingsBundleChannelsInnerConfigUnitsEnum? get units;
  // enum unitsEnum {  metric,  imperial,  };

  SettingsBundleChannelsInnerConfig._();

  factory SettingsBundleChannelsInnerConfig([
    void updates(SettingsBundleChannelsInnerConfigBuilder b),
  ]) = _$SettingsBundleChannelsInnerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsBundleChannelsInnerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsBundleChannelsInnerConfig> get serializer =>
      _$SettingsBundleChannelsInnerConfigSerializer();
}

class _$SettingsBundleChannelsInnerConfigSerializer
    implements PrimitiveSerializer<SettingsBundleChannelsInnerConfig> {
  @override
  final Iterable<Type> types = const [
    SettingsBundleChannelsInnerConfig,
    _$SettingsBundleChannelsInnerConfig,
  ];

  @override
  final String wireName = r'SettingsBundleChannelsInnerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsBundleChannelsInnerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachMap != null) {
      yield r'attachMap';
      yield serializers.serialize(
        object.attachMap,
        specifiedType: const FullType(
          SettingsBundleChannelsInnerConfigAttachMapEnum,
        ),
      );
    }
    if (object.mapProducts != null) {
      yield r'mapProducts';
      yield serializers.serialize(
        object.mapProducts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mapRadiusKm != null) {
      yield r'mapRadiusKm';
      yield serializers.serialize(
        object.mapRadiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxAttachmentBytes != null) {
      yield r'maxAttachmentBytes';
      yield serializers.serialize(
        object.maxAttachmentBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(ChannelActionsConfig),
      );
    }
    if (object.allowedUserIds != null) {
      yield r'allowedUserIds';
      yield serializers.serialize(
        object.allowedUserIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.allowedSenders != null) {
      yield r'allowedSenders';
      yield serializers.serialize(
        object.allowedSenders,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.privatePayload != null) {
      yield r'privatePayload';
      yield serializers.serialize(
        object.privatePayload,
        specifiedType: const FullType(bool),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(
          SettingsBundleChannelsInnerConfigUnitsEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsBundleChannelsInnerConfig object, {
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
    required SettingsBundleChannelsInnerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachMap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SettingsBundleChannelsInnerConfigAttachMapEnum,
                    ),
                  )
                  as SettingsBundleChannelsInnerConfigAttachMapEnum?;
          if (valueDes == null) continue;
          result.attachMap = valueDes;
          break;
        case r'mapProducts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mapProducts.replace(valueDes);
          break;
        case r'mapRadiusKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.mapRadiusKm = valueDes;
          break;
        case r'maxAttachmentBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxAttachmentBytes = valueDes;
          break;
        case r'actions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChannelActionsConfig,
                    ),
                  )
                  as ChannelActionsConfig?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        case r'allowedUserIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(int),
                    ]),
                  )
                  as BuiltList<int>?;
          if (valueDes == null) continue;
          result.allowedUserIds.replace(valueDes);
          break;
        case r'allowedSenders':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.allowedSenders = valueDes;
          break;
        case r'privatePayload':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.privatePayload = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SettingsBundleChannelsInnerConfigUnitsEnum,
                    ),
                  )
                  as SettingsBundleChannelsInnerConfigUnitsEnum?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsBundleChannelsInnerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsBundleChannelsInnerConfigBuilder();
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

/// Attach a static map to geolocated alerts (cloud chat channels are opt-in)
class SettingsBundleChannelsInnerConfigAttachMapEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const SettingsBundleChannelsInnerConfigAttachMapEnum none =
      _$settingsBundleChannelsInnerConfigAttachMapEnum_none;
  @BuiltValueEnumConst(wireName: r'static')
  static const SettingsBundleChannelsInnerConfigAttachMapEnum static_ =
      _$settingsBundleChannelsInnerConfigAttachMapEnum_static_;

  static Serializer<SettingsBundleChannelsInnerConfigAttachMapEnum>
  get serializer => _$settingsBundleChannelsInnerConfigAttachMapEnumSerializer;

  const SettingsBundleChannelsInnerConfigAttachMapEnum._(String name)
    : super(name);

  static BuiltSet<SettingsBundleChannelsInnerConfigAttachMapEnum> get values =>
      _$settingsBundleChannelsInnerConfigAttachMapEnumValues;
  static SettingsBundleChannelsInnerConfigAttachMapEnum valueOf(String name) =>
      _$settingsBundleChannelsInnerConfigAttachMapEnumValueOf(name);
}

/// Units of the {{near.text}} placeholder in this channel's templates (040)
class SettingsBundleChannelsInnerConfigUnitsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'metric')
  static const SettingsBundleChannelsInnerConfigUnitsEnum metric =
      _$settingsBundleChannelsInnerConfigUnitsEnum_metric;
  @BuiltValueEnumConst(wireName: r'imperial')
  static const SettingsBundleChannelsInnerConfigUnitsEnum imperial =
      _$settingsBundleChannelsInnerConfigUnitsEnum_imperial;

  static Serializer<SettingsBundleChannelsInnerConfigUnitsEnum>
  get serializer => _$settingsBundleChannelsInnerConfigUnitsEnumSerializer;

  const SettingsBundleChannelsInnerConfigUnitsEnum._(String name) : super(name);

  static BuiltSet<SettingsBundleChannelsInnerConfigUnitsEnum> get values =>
      _$settingsBundleChannelsInnerConfigUnitsEnumValues;
  static SettingsBundleChannelsInnerConfigUnitsEnum valueOf(String name) =>
      _$settingsBundleChannelsInnerConfigUnitsEnumValueOf(name);
}
