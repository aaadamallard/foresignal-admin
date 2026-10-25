//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/tile_json_vector_layers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_json.g.dart';

/// TileJSON 3.0.0 document for one vector-tile layer (snake_case keys per the TileJSON spec)
///
/// Properties:
/// * [tilejson]
/// * [name]
/// * [description]
/// * [version] - Foresignal version
/// * [attribution] - Distinct descriptor attributions joined with \" · \"
/// * [scheme]
/// * [tiles] - Tile URL templates
/// * [minzoom]
/// * [maxzoom]
/// * [bounds]
/// * [vectorLayers]
/// * [foresignalColonAggBelowZoom]
/// * [foresignalColonProperties] - Feature property names
/// * [tileSize] - Raster products: 256
/// * [foresignalColonTiles2x] - Raster products: the `@2x` (512 px) template
/// * [foresignalColonFrameKey] - Raster products: resolved content-addressed frame key
/// * [foresignalColonStyle] - Raster products: versioned style `name@v`
/// * [foresignalColonRun] - Raster products: pinned forecast run
/// * [foresignalColonExpiresAt]
/// * [tms]
/// * [encoding] - Data tiles only
/// * [redFactor]
/// * [greenFactor]
/// * [blueFactor]
/// * [baseShift]
/// * [units]
/// * [nodata]
@BuiltValue()
abstract class TileJson implements Built<TileJson, TileJsonBuilder> {
  @BuiltValueField(wireName: r'tilejson')
  TileJsonTilejsonEnum get tilejson;
  // enum tilejsonEnum {  3.0.0,  };

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Foresignal version
  @BuiltValueField(wireName: r'version')
  String? get version;

  /// Distinct descriptor attributions joined with \" · \"
  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'scheme')
  TileJsonSchemeEnum? get scheme;
  // enum schemeEnum {  xyz,  };

  /// Tile URL templates
  @BuiltValueField(wireName: r'tiles')
  BuiltList<String> get tiles;

  @BuiltValueField(wireName: r'minzoom')
  int? get minzoom;

  @BuiltValueField(wireName: r'maxzoom')
  int? get maxzoom;

  @BuiltValueField(wireName: r'bounds')
  BuiltList<num>? get bounds;

  @BuiltValueField(wireName: r'vector_layers')
  BuiltList<TileJsonVectorLayersInner>? get vectorLayers;

  @BuiltValueField(wireName: r'foresignal:aggBelowZoom')
  int? get foresignalColonAggBelowZoom;

  /// Feature property names
  @BuiltValueField(wireName: r'foresignal:properties')
  BuiltList<String>? get foresignalColonProperties;

  /// Raster products: 256
  @BuiltValueField(wireName: r'tileSize')
  TileJsonTileSizeEnum? get tileSize;
  // enum tileSizeEnum {  256,  512,  };

  /// Raster products: the `@2x` (512 px) template
  @BuiltValueField(wireName: r'foresignal:tiles2x')
  BuiltList<String>? get foresignalColonTiles2x;

  /// Raster products: resolved content-addressed frame key
  @BuiltValueField(wireName: r'foresignal:frameKey')
  String? get foresignalColonFrameKey;

  /// Raster products: versioned style `name@v`
  @BuiltValueField(wireName: r'foresignal:style')
  String? get foresignalColonStyle;

  /// Raster products: pinned forecast run
  @BuiltValueField(wireName: r'foresignal:run')
  String? get foresignalColonRun;

  @BuiltValueField(wireName: r'foresignal:expiresAt')
  DateTime? get foresignalColonExpiresAt;

  @BuiltValueField(wireName: r'tms')
  TileJsonTmsEnum? get tms;
  // enum tmsEnum {  WebMercatorQuad,  WorldCRS84Quad,  };

  /// Data tiles only
  @BuiltValueField(wireName: r'encoding')
  TileJsonEncodingEnum? get encoding;
  // enum encodingEnum {  custom,  terrarium,  };

  @BuiltValueField(wireName: r'redFactor')
  num? get redFactor;

  @BuiltValueField(wireName: r'greenFactor')
  num? get greenFactor;

  @BuiltValueField(wireName: r'blueFactor')
  num? get blueFactor;

  @BuiltValueField(wireName: r'baseShift')
  num? get baseShift;

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'nodata')
  num? get nodata;

  TileJson._();

  factory TileJson([void updates(TileJsonBuilder b)]) = _$TileJson;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileJsonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileJson> get serializer => _$TileJsonSerializer();
}

class _$TileJsonSerializer implements PrimitiveSerializer<TileJson> {
  @override
  final Iterable<Type> types = const [TileJson, _$TileJson];

  @override
  final String wireName = r'TileJson';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileJson object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tilejson';
    yield serializers.serialize(
      object.tilejson,
      specifiedType: const FullType(TileJsonTilejsonEnum),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(String),
      );
    }
    if (object.scheme != null) {
      yield r'scheme';
      yield serializers.serialize(
        object.scheme,
        specifiedType: const FullType(TileJsonSchemeEnum),
      );
    }
    yield r'tiles';
    yield serializers.serialize(
      object.tiles,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.minzoom != null) {
      yield r'minzoom';
      yield serializers.serialize(
        object.minzoom,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxzoom != null) {
      yield r'maxzoom';
      yield serializers.serialize(
        object.maxzoom,
        specifiedType: const FullType(int),
      );
    }
    if (object.bounds != null) {
      yield r'bounds';
      yield serializers.serialize(
        object.bounds,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.vectorLayers != null) {
      yield r'vector_layers';
      yield serializers.serialize(
        object.vectorLayers,
        specifiedType: const FullType(BuiltList, [
          FullType(TileJsonVectorLayersInner),
        ]),
      );
    }
    if (object.foresignalColonAggBelowZoom != null) {
      yield r'foresignal:aggBelowZoom';
      yield serializers.serialize(
        object.foresignalColonAggBelowZoom,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.foresignalColonProperties != null) {
      yield r'foresignal:properties';
      yield serializers.serialize(
        object.foresignalColonProperties,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.tileSize != null) {
      yield r'tileSize';
      yield serializers.serialize(
        object.tileSize,
        specifiedType: const FullType(TileJsonTileSizeEnum),
      );
    }
    if (object.foresignalColonTiles2x != null) {
      yield r'foresignal:tiles2x';
      yield serializers.serialize(
        object.foresignalColonTiles2x,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.foresignalColonFrameKey != null) {
      yield r'foresignal:frameKey';
      yield serializers.serialize(
        object.foresignalColonFrameKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.foresignalColonStyle != null) {
      yield r'foresignal:style';
      yield serializers.serialize(
        object.foresignalColonStyle,
        specifiedType: const FullType(String),
      );
    }
    if (object.foresignalColonRun != null) {
      yield r'foresignal:run';
      yield serializers.serialize(
        object.foresignalColonRun,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.foresignalColonExpiresAt != null) {
      yield r'foresignal:expiresAt';
      yield serializers.serialize(
        object.foresignalColonExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tms != null) {
      yield r'tms';
      yield serializers.serialize(
        object.tms,
        specifiedType: const FullType(TileJsonTmsEnum),
      );
    }
    if (object.encoding != null) {
      yield r'encoding';
      yield serializers.serialize(
        object.encoding,
        specifiedType: const FullType.nullable(TileJsonEncodingEnum),
      );
    }
    if (object.redFactor != null) {
      yield r'redFactor';
      yield serializers.serialize(
        object.redFactor,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.greenFactor != null) {
      yield r'greenFactor';
      yield serializers.serialize(
        object.greenFactor,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.blueFactor != null) {
      yield r'blueFactor';
      yield serializers.serialize(
        object.blueFactor,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baseShift != null) {
      yield r'baseShift';
      yield serializers.serialize(
        object.baseShift,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nodata != null) {
      yield r'nodata';
      yield serializers.serialize(
        object.nodata,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TileJson object, {
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
    required TileJsonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tilejson':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TileJsonTilejsonEnum),
                  )
                  as TileJsonTilejsonEnum;
          result.tilejson = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'scheme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TileJsonSchemeEnum),
                  )
                  as TileJsonSchemeEnum?;
          if (valueDes == null) continue;
          result.scheme = valueDes;
          break;
        case r'tiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.tiles.replace(valueDes);
          break;
        case r'minzoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minzoom = valueDes;
          break;
        case r'maxzoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxzoom = valueDes;
          break;
        case r'bounds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bounds.replace(valueDes);
          break;
        case r'vector_layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TileJsonVectorLayersInner),
                    ]),
                  )
                  as BuiltList<TileJsonVectorLayersInner>?;
          if (valueDes == null) continue;
          result.vectorLayers.replace(valueDes);
          break;
        case r'foresignal:aggBelowZoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.foresignalColonAggBelowZoom = valueDes;
          break;
        case r'foresignal:properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.foresignalColonProperties.replace(valueDes);
          break;
        case r'tileSize':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TileJsonTileSizeEnum,
                    ),
                  )
                  as TileJsonTileSizeEnum?;
          if (valueDes == null) continue;
          result.tileSize = valueDes;
          break;
        case r'foresignal:tiles2x':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.foresignalColonTiles2x.replace(valueDes);
          break;
        case r'foresignal:frameKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.foresignalColonFrameKey = valueDes;
          break;
        case r'foresignal:style':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.foresignalColonStyle = valueDes;
          break;
        case r'foresignal:run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.foresignalColonRun = valueDes;
          break;
        case r'foresignal:expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.foresignalColonExpiresAt = valueDes;
          break;
        case r'tms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TileJsonTmsEnum),
                  )
                  as TileJsonTmsEnum?;
          if (valueDes == null) continue;
          result.tms = valueDes;
          break;
        case r'encoding':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TileJsonEncodingEnum,
                    ),
                  )
                  as TileJsonEncodingEnum?;
          if (valueDes == null) continue;
          result.encoding = valueDes;
          break;
        case r'redFactor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.redFactor = valueDes;
          break;
        case r'greenFactor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.greenFactor = valueDes;
          break;
        case r'blueFactor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.blueFactor = valueDes;
          break;
        case r'baseShift':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baseShift = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'nodata':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.nodata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileJson deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileJsonBuilder();
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

class TileJsonTilejsonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'3.0.0')
  static const TileJsonTilejsonEnum n3period0Period0 =
      _$tileJsonTilejsonEnum_n3period0Period0;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TileJsonTilejsonEnum unknownDefaultOpenApi =
      _$tileJsonTilejsonEnum_unknownDefaultOpenApi;

  static Serializer<TileJsonTilejsonEnum> get serializer =>
      _$tileJsonTilejsonEnumSerializer;

  const TileJsonTilejsonEnum._(String name) : super(name);

  static BuiltSet<TileJsonTilejsonEnum> get values =>
      _$tileJsonTilejsonEnumValues;
  static TileJsonTilejsonEnum valueOf(String name) =>
      _$tileJsonTilejsonEnumValueOf(name);
}

class TileJsonSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'xyz')
  static const TileJsonSchemeEnum xyz = _$tileJsonSchemeEnum_xyz;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TileJsonSchemeEnum unknownDefaultOpenApi =
      _$tileJsonSchemeEnum_unknownDefaultOpenApi;

  static Serializer<TileJsonSchemeEnum> get serializer =>
      _$tileJsonSchemeEnumSerializer;

  const TileJsonSchemeEnum._(String name) : super(name);

  static BuiltSet<TileJsonSchemeEnum> get values => _$tileJsonSchemeEnumValues;
  static TileJsonSchemeEnum valueOf(String name) =>
      _$tileJsonSchemeEnumValueOf(name);
}

/// Raster products: 256
class TileJsonTileSizeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 256)
  static const TileJsonTileSizeEnum number256 =
      _$tileJsonTileSizeEnum_number256;
  @BuiltValueEnumConst(wireNumber: 512)
  static const TileJsonTileSizeEnum number512 =
      _$tileJsonTileSizeEnum_number512;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const TileJsonTileSizeEnum unknownDefaultOpenApi =
      _$tileJsonTileSizeEnum_unknownDefaultOpenApi;

  static Serializer<TileJsonTileSizeEnum> get serializer =>
      _$tileJsonTileSizeEnumSerializer;

  const TileJsonTileSizeEnum._(String name) : super(name);

  static BuiltSet<TileJsonTileSizeEnum> get values =>
      _$tileJsonTileSizeEnumValues;
  static TileJsonTileSizeEnum valueOf(String name) =>
      _$tileJsonTileSizeEnumValueOf(name);
}

class TileJsonTmsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WebMercatorQuad')
  static const TileJsonTmsEnum webMercatorQuad =
      _$tileJsonTmsEnum_webMercatorQuad;
  @BuiltValueEnumConst(wireName: r'WorldCRS84Quad')
  static const TileJsonTmsEnum worldCRS84Quad =
      _$tileJsonTmsEnum_worldCRS84Quad;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TileJsonTmsEnum unknownDefaultOpenApi =
      _$tileJsonTmsEnum_unknownDefaultOpenApi;

  static Serializer<TileJsonTmsEnum> get serializer =>
      _$tileJsonTmsEnumSerializer;

  const TileJsonTmsEnum._(String name) : super(name);

  static BuiltSet<TileJsonTmsEnum> get values => _$tileJsonTmsEnumValues;
  static TileJsonTmsEnum valueOf(String name) => _$tileJsonTmsEnumValueOf(name);
}

/// Data tiles only
class TileJsonEncodingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'custom')
  static const TileJsonEncodingEnum custom = _$tileJsonEncodingEnum_custom;
  @BuiltValueEnumConst(wireName: r'terrarium')
  static const TileJsonEncodingEnum terrarium =
      _$tileJsonEncodingEnum_terrarium;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TileJsonEncodingEnum unknownDefaultOpenApi =
      _$tileJsonEncodingEnum_unknownDefaultOpenApi;

  static Serializer<TileJsonEncodingEnum> get serializer =>
      _$tileJsonEncodingEnumSerializer;

  const TileJsonEncodingEnum._(String name) : super(name);

  static BuiltSet<TileJsonEncodingEnum> get values =>
      _$tileJsonEncodingEnumValues;
  static TileJsonEncodingEnum valueOf(String name) =>
      _$tileJsonEncodingEnumValueOf(name);
}
