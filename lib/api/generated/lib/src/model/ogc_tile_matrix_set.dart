//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_tile_matrix_set_tile_matrices_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_matrix_set.g.dart';

/// Tile matrix set definition (OGC 17-083r4 JSON encoding)
///
/// Properties:
/// * [id]
/// * [title]
/// * [uri]
/// * [crs]
/// * [orderedAxes]
/// * [wellKnownScaleSet]
/// * [tileMatrices]
@BuiltValue()
abstract class OgcTileMatrixSet
    implements Built<OgcTileMatrixSet, OgcTileMatrixSetBuilder> {
  @BuiltValueField(wireName: r'id')
  OgcTileMatrixSetIdEnum get id;
  // enum idEnum {  WebMercatorQuad,  WorldCRS84Quad,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'uri')
  String? get uri;

  @BuiltValueField(wireName: r'crs')
  String get crs;

  @BuiltValueField(wireName: r'orderedAxes')
  BuiltList<String>? get orderedAxes;

  @BuiltValueField(wireName: r'wellKnownScaleSet')
  String? get wellKnownScaleSet;

  @BuiltValueField(wireName: r'tileMatrices')
  BuiltList<OgcTileMatrixSetTileMatricesInner> get tileMatrices;

  OgcTileMatrixSet._();

  factory OgcTileMatrixSet([void updates(OgcTileMatrixSetBuilder b)]) =
      _$OgcTileMatrixSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileMatrixSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileMatrixSet> get serializer =>
      _$OgcTileMatrixSetSerializer();
}

class _$OgcTileMatrixSetSerializer
    implements PrimitiveSerializer<OgcTileMatrixSet> {
  @override
  final Iterable<Type> types = const [OgcTileMatrixSet, _$OgcTileMatrixSet];

  @override
  final String wireName = r'OgcTileMatrixSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileMatrixSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(OgcTileMatrixSetIdEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    yield r'crs';
    yield serializers.serialize(
      object.crs,
      specifiedType: const FullType(String),
    );
    if (object.orderedAxes != null) {
      yield r'orderedAxes';
      yield serializers.serialize(
        object.orderedAxes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.wellKnownScaleSet != null) {
      yield r'wellKnownScaleSet';
      yield serializers.serialize(
        object.wellKnownScaleSet,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'tileMatrices';
    yield serializers.serialize(
      object.tileMatrices,
      specifiedType: const FullType(BuiltList, [
        FullType(OgcTileMatrixSetTileMatricesInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileMatrixSet object, {
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
    required OgcTileMatrixSetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OgcTileMatrixSetIdEnum),
                  )
                  as OgcTileMatrixSetIdEnum;
          result.id = valueDes;
          break;
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
        case r'uri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.uri = valueDes;
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
        case r'orderedAxes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.orderedAxes.replace(valueDes);
          break;
        case r'wellKnownScaleSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.wellKnownScaleSet = valueDes;
          break;
        case r'tileMatrices':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OgcTileMatrixSetTileMatricesInner),
                    ]),
                  )
                  as BuiltList<OgcTileMatrixSetTileMatricesInner>;
          result.tileMatrices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileMatrixSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileMatrixSetBuilder();
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

class OgcTileMatrixSetIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WebMercatorQuad')
  static const OgcTileMatrixSetIdEnum webMercatorQuad =
      _$ogcTileMatrixSetIdEnum_webMercatorQuad;
  @BuiltValueEnumConst(wireName: r'WorldCRS84Quad')
  static const OgcTileMatrixSetIdEnum worldCRS84Quad =
      _$ogcTileMatrixSetIdEnum_worldCRS84Quad;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OgcTileMatrixSetIdEnum unknownDefaultOpenApi =
      _$ogcTileMatrixSetIdEnum_unknownDefaultOpenApi;

  static Serializer<OgcTileMatrixSetIdEnum> get serializer =>
      _$ogcTileMatrixSetIdEnumSerializer;

  const OgcTileMatrixSetIdEnum._(String name) : super(name);

  static BuiltSet<OgcTileMatrixSetIdEnum> get values =>
      _$ogcTileMatrixSetIdEnumValues;
  static OgcTileMatrixSetIdEnum valueOf(String name) =>
      _$ogcTileMatrixSetIdEnumValueOf(name);
}
