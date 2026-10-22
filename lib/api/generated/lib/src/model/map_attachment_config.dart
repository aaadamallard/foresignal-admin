//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_attachment_config.g.dart';

/// Map-attachment keys accepted in every channel's `config` (055)
///
/// Properties:
/// * [attachMap] - Attach a static map to geolocated alerts (cloud chat channels are opt-in)
/// * [mapProducts] - Products drawn (default [\"mrms-reflectivity\"] or the product that matched the rule)
/// * [mapRadiusKm]
/// * [maxAttachmentBytes] - Per-type default: discord 8 MB, telegram 10 MB, ntfy 15 MB, pushover 5,242,880, email 10 MB
@BuiltValue()
abstract class MapAttachmentConfig
    implements Built<MapAttachmentConfig, MapAttachmentConfigBuilder> {
  /// Attach a static map to geolocated alerts (cloud chat channels are opt-in)
  @BuiltValueField(wireName: r'attachMap')
  MapAttachmentConfigAttachMapEnum? get attachMap;
  // enum attachMapEnum {  none,  static,  };

  /// Products drawn (default [\"mrms-reflectivity\"] or the product that matched the rule)
  @BuiltValueField(wireName: r'mapProducts')
  BuiltList<String>? get mapProducts;

  @BuiltValueField(wireName: r'mapRadiusKm')
  num? get mapRadiusKm;

  /// Per-type default: discord 8 MB, telegram 10 MB, ntfy 15 MB, pushover 5,242,880, email 10 MB
  @BuiltValueField(wireName: r'maxAttachmentBytes')
  int? get maxAttachmentBytes;

  MapAttachmentConfig._();

  factory MapAttachmentConfig([void updates(MapAttachmentConfigBuilder b)]) =
      _$MapAttachmentConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapAttachmentConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapAttachmentConfig> get serializer =>
      _$MapAttachmentConfigSerializer();
}

class _$MapAttachmentConfigSerializer
    implements PrimitiveSerializer<MapAttachmentConfig> {
  @override
  final Iterable<Type> types = const [
    MapAttachmentConfig,
    _$MapAttachmentConfig,
  ];

  @override
  final String wireName = r'MapAttachmentConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapAttachmentConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachMap != null) {
      yield r'attachMap';
      yield serializers.serialize(
        object.attachMap,
        specifiedType: const FullType(MapAttachmentConfigAttachMapEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    MapAttachmentConfig object, {
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
    required MapAttachmentConfigBuilder result,
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
                      MapAttachmentConfigAttachMapEnum,
                    ),
                  )
                  as MapAttachmentConfigAttachMapEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MapAttachmentConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapAttachmentConfigBuilder();
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
class MapAttachmentConfigAttachMapEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const MapAttachmentConfigAttachMapEnum none =
      _$mapAttachmentConfigAttachMapEnum_none;
  @BuiltValueEnumConst(wireName: r'static')
  static const MapAttachmentConfigAttachMapEnum static_ =
      _$mapAttachmentConfigAttachMapEnum_static_;

  static Serializer<MapAttachmentConfigAttachMapEnum> get serializer =>
      _$mapAttachmentConfigAttachMapEnumSerializer;

  const MapAttachmentConfigAttachMapEnum._(String name) : super(name);

  static BuiltSet<MapAttachmentConfigAttachMapEnum> get values =>
      _$mapAttachmentConfigAttachMapEnumValues;
  static MapAttachmentConfigAttachMapEnum valueOf(String name) =>
      _$mapAttachmentConfigAttachMapEnumValueOf(name);
}
