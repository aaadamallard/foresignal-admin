//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:foresignal_api/src/model/ogc_tile_set_tile_matrix_set_limits_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_set.g.dart';

/// Tileset metadata (OGC API – Tiles 20-057) for one product and tile matrix set
///
/// Properties:
/// * [title]
/// * [dataType]
/// * [crs]
/// * [tileMatrixSetURI]
/// * [tileMatrixSetLimits]
/// * [links]
/// * [attribution]
@BuiltValue()
abstract class OgcTileSet implements Built<OgcTileSet, OgcTileSetBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'dataType')
  OgcTileSetDataTypeEnum get dataType;
  // enum dataTypeEnum {  map,  };

  @BuiltValueField(wireName: r'crs')
  String get crs;

  @BuiltValueField(wireName: r'tileMatrixSetURI')
  String? get tileMatrixSetURI;

  @BuiltValueField(wireName: r'tileMatrixSetLimits')
  BuiltList<OgcTileSetTileMatrixSetLimitsInner>? get tileMatrixSetLimits;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  OgcTileSet._();

  factory OgcTileSet([void updates(OgcTileSetBuilder b)]) = _$OgcTileSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileSet> get serializer => _$OgcTileSetSerializer();
}

class _$OgcTileSetSerializer implements PrimitiveSerializer<OgcTileSet> {
  @override
  final Iterable<Type> types = const [OgcTileSet, _$OgcTileSet];

  @override
  final String wireName = r'OgcTileSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'dataType';
    yield serializers.serialize(
      object.dataType,
      specifiedType: const FullType(OgcTileSetDataTypeEnum),
    );
    yield r'crs';
    yield serializers.serialize(
      object.crs,
      specifiedType: const FullType(String),
    );
    if (object.tileMatrixSetURI != null) {
      yield r'tileMatrixSetURI';
      yield serializers.serialize(
        object.tileMatrixSetURI,
        specifiedType: const FullType(String),
      );
    }
    if (object.tileMatrixSetLimits != null) {
      yield r'tileMatrixSetLimits';
      yield serializers.serialize(
        object.tileMatrixSetLimits,
        specifiedType: const FullType(BuiltList, [
          FullType(OgcTileSetTileMatrixSetLimitsInner),
        ]),
      );
    }
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileSet object, {
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
    required OgcTileSetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'dataType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OgcTileSetDataTypeEnum),
                  )
                  as OgcTileSetDataTypeEnum;
          result.dataType = valueDes;
          break;
        case r'crs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.crs = valueDes;
          break;
        case r'tileMatrixSetURI':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tileMatrixSetURI = valueDes;
          break;
        case r'tileMatrixSetLimits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(OgcTileSetTileMatrixSetLimitsInner),
                    ]),
                  )
                  as BuiltList<OgcTileSetTileMatrixSetLimitsInner>?;
          if (valueDes == null) continue;
          result.tileMatrixSetLimits.replace(valueDes);
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OgcLink),
                    ]),
                  )
                  as BuiltList<OgcLink>;
          result.links.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileSetBuilder();
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

class OgcTileSetDataTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'map')
  static const OgcTileSetDataTypeEnum map = _$ogcTileSetDataTypeEnum_map;

  static Serializer<OgcTileSetDataTypeEnum> get serializer =>
      _$ogcTileSetDataTypeEnumSerializer;

  const OgcTileSetDataTypeEnum._(String name) : super(name);

  static BuiltSet<OgcTileSetDataTypeEnum> get values =>
      _$ogcTileSetDataTypeEnumValues;
  static OgcTileSetDataTypeEnum valueOf(String name) =>
      _$ogcTileSetDataTypeEnumValueOf(name);
}
