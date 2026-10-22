//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/map_style_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_style.g.dart';

/// MapLibre Style Spec version-8 overlay document generated from kind display hints (058). Overlay only: no `glyphs`, no text layers, no basemap.
///
/// Properties:
/// * [version]
/// * [name]
/// * [sources] - One `vector` source per requested layer (`url` = 016 per-layer TileJSON) plus `agg=hex` sources used below `aggBelowZoom`
/// * [sprite] - `<base>/v1/map/sprites/foresignal-{sha8}` (MapLibre appends `.json`/`.png` and `@2x`)
/// * [layers] - MapLibre layers: `symbol` (SDF icon, colour match, rotation), `circle` (zoom/size interpolation), `line`, `fill` (opacity 0.25) plus outline, and aggregation `fill` ramps
/// * [metadata]
@BuiltValue()
abstract class MapStyle implements Built<MapStyle, MapStyleBuilder> {
  @BuiltValueField(wireName: r'version')
  MapStyleVersionEnum get version;
  // enum versionEnum {  8,  };

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// One `vector` source per requested layer (`url` = 016 per-layer TileJSON) plus `agg=hex` sources used below `aggBelowZoom`
  @BuiltValueField(wireName: r'sources')
  BuiltMap<String, BuiltMap<String, JsonObject?>> get sources;

  /// `<base>/v1/map/sprites/foresignal-{sha8}` (MapLibre appends `.json`/`.png` and `@2x`)
  @BuiltValueField(wireName: r'sprite')
  String get sprite;

  /// MapLibre layers: `symbol` (SDF icon, colour match, rotation), `circle` (zoom/size interpolation), `line`, `fill` (opacity 0.25) plus outline, and aggregation `fill` ramps
  @BuiltValueField(wireName: r'layers')
  BuiltList<BuiltMap<String, JsonObject?>> get layers;

  @BuiltValueField(wireName: r'metadata')
  MapStyleMetadata get metadata;

  MapStyle._();

  factory MapStyle([void updates(MapStyleBuilder b)]) = _$MapStyle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapStyleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapStyle> get serializer => _$MapStyleSerializer();
}

class _$MapStyleSerializer implements PrimitiveSerializer<MapStyle> {
  @override
  final Iterable<Type> types = const [MapStyle, _$MapStyle];

  @override
  final String wireName = r'MapStyle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapStyle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(MapStyleVersionEnum),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
      ]),
    );
    yield r'sprite';
    yield serializers.serialize(
      object.sprite,
      specifiedType: const FullType(String),
    );
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType: const FullType(BuiltList, [
        FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
      ]),
    );
    yield r'metadata';
    yield serializers.serialize(
      object.metadata,
      specifiedType: const FullType(MapStyleMetadata),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MapStyle object, {
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
    required MapStyleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MapStyleVersionEnum),
          ) as MapStyleVersionEnum;
          result.version = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [
              FullType(String),
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltMap<String, BuiltMap<String, JsonObject?>>;
          result.sources.replace(valueDes);
          break;
        case r'sprite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sprite = valueDes;
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.layers.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MapStyleMetadata),
          ) as MapStyleMetadata;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MapStyle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapStyleBuilder();
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

class MapStyleVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 8)
  static const MapStyleVersionEnum number8 = _$mapStyleVersionEnum_number8;

  static Serializer<MapStyleVersionEnum> get serializer =>
      _$mapStyleVersionEnumSerializer;

  const MapStyleVersionEnum._(String name) : super(name);

  static BuiltSet<MapStyleVersionEnum> get values =>
      _$mapStyleVersionEnumValues;
  static MapStyleVersionEnum valueOf(String name) =>
      _$mapStyleVersionEnumValueOf(name);
}
