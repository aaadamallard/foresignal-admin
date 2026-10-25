//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_set_list_tilesets_inner.g.dart';

/// Tileset summary
///
/// Properties:
/// * [title]
/// * [dataType]
/// * [crs]
/// * [tileMatrixSetURI]
/// * [links]
@BuiltValue()
abstract class OgcTileSetListTilesetsInner
    implements
        Built<OgcTileSetListTilesetsInner, OgcTileSetListTilesetsInnerBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'dataType')
  OgcTileSetListTilesetsInnerDataTypeEnum get dataType;
  // enum dataTypeEnum {  map,  };

  @BuiltValueField(wireName: r'crs')
  String? get crs;

  @BuiltValueField(wireName: r'tileMatrixSetURI')
  String? get tileMatrixSetURI;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  OgcTileSetListTilesetsInner._();

  factory OgcTileSetListTilesetsInner([
    void updates(OgcTileSetListTilesetsInnerBuilder b),
  ]) = _$OgcTileSetListTilesetsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileSetListTilesetsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileSetListTilesetsInner> get serializer =>
      _$OgcTileSetListTilesetsInnerSerializer();
}

class _$OgcTileSetListTilesetsInnerSerializer
    implements PrimitiveSerializer<OgcTileSetListTilesetsInner> {
  @override
  final Iterable<Type> types = const [
    OgcTileSetListTilesetsInner,
    _$OgcTileSetListTilesetsInner,
  ];

  @override
  final String wireName = r'OgcTileSetListTilesetsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileSetListTilesetsInner object, {
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
      specifiedType: const FullType(OgcTileSetListTilesetsInnerDataTypeEnum),
    );
    if (object.crs != null) {
      yield r'crs';
      yield serializers.serialize(
        object.crs,
        specifiedType: const FullType(String),
      );
    }
    if (object.tileMatrixSetURI != null) {
      yield r'tileMatrixSetURI';
      yield serializers.serialize(
        object.tileMatrixSetURI,
        specifiedType: const FullType(String),
      );
    }
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileSetListTilesetsInner object, {
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
    required OgcTileSetListTilesetsInnerBuilder result,
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
                    specifiedType: const FullType(
                      OgcTileSetListTilesetsInnerDataTypeEnum,
                    ),
                  )
                  as OgcTileSetListTilesetsInnerDataTypeEnum;
          result.dataType = valueDes;
          break;
        case r'crs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileSetListTilesetsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileSetListTilesetsInnerBuilder();
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

class OgcTileSetListTilesetsInnerDataTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'map')
  static const OgcTileSetListTilesetsInnerDataTypeEnum map =
      _$ogcTileSetListTilesetsInnerDataTypeEnum_map;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OgcTileSetListTilesetsInnerDataTypeEnum unknownDefaultOpenApi =
      _$ogcTileSetListTilesetsInnerDataTypeEnum_unknownDefaultOpenApi;

  static Serializer<OgcTileSetListTilesetsInnerDataTypeEnum> get serializer =>
      _$ogcTileSetListTilesetsInnerDataTypeEnumSerializer;

  const OgcTileSetListTilesetsInnerDataTypeEnum._(String name) : super(name);

  static BuiltSet<OgcTileSetListTilesetsInnerDataTypeEnum> get values =>
      _$ogcTileSetListTilesetsInnerDataTypeEnumValues;
  static OgcTileSetListTilesetsInnerDataTypeEnum valueOf(String name) =>
      _$ogcTileSetListTilesetsInnerDataTypeEnumValueOf(name);
}
