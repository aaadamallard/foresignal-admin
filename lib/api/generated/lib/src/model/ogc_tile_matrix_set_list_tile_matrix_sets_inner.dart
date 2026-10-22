//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_matrix_set_list_tile_matrix_sets_inner.g.dart';

/// Set reference
///
/// Properties:
/// * [id]
/// * [title]
/// * [uri]
/// * [links]
@BuiltValue()
abstract class OgcTileMatrixSetListTileMatrixSetsInner
    implements
        Built<OgcTileMatrixSetListTileMatrixSetsInner,
            OgcTileMatrixSetListTileMatrixSetsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  OgcTileMatrixSetListTileMatrixSetsInnerIdEnum get id;
  // enum idEnum {  WebMercatorQuad,  WorldCRS84Quad,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'uri')
  String? get uri;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  OgcTileMatrixSetListTileMatrixSetsInner._();

  factory OgcTileMatrixSetListTileMatrixSetsInner(
          [void updates(OgcTileMatrixSetListTileMatrixSetsInnerBuilder b)]) =
      _$OgcTileMatrixSetListTileMatrixSetsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileMatrixSetListTileMatrixSetsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileMatrixSetListTileMatrixSetsInner> get serializer =>
      _$OgcTileMatrixSetListTileMatrixSetsInnerSerializer();
}

class _$OgcTileMatrixSetListTileMatrixSetsInnerSerializer
    implements PrimitiveSerializer<OgcTileMatrixSetListTileMatrixSetsInner> {
  @override
  final Iterable<Type> types = const [
    OgcTileMatrixSetListTileMatrixSetsInner,
    _$OgcTileMatrixSetListTileMatrixSetsInner
  ];

  @override
  final String wireName = r'OgcTileMatrixSetListTileMatrixSetsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileMatrixSetListTileMatrixSetsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType:
          const FullType(OgcTileMatrixSetListTileMatrixSetsInnerIdEnum),
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
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileMatrixSetListTileMatrixSetsInner object, {
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
    required OgcTileMatrixSetListTileMatrixSetsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(OgcTileMatrixSetListTileMatrixSetsInnerIdEnum),
          ) as OgcTileMatrixSetListTileMatrixSetsInnerIdEnum;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uri = valueDes;
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
          ) as BuiltList<OgcLink>;
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
  OgcTileMatrixSetListTileMatrixSetsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileMatrixSetListTileMatrixSetsInnerBuilder();
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

class OgcTileMatrixSetListTileMatrixSetsInnerIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WebMercatorQuad')
  static const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum webMercatorQuad =
      _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_webMercatorQuad;
  @BuiltValueEnumConst(wireName: r'WorldCRS84Quad')
  static const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum worldCRS84Quad =
      _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_worldCRS84Quad;

  static Serializer<OgcTileMatrixSetListTileMatrixSetsInnerIdEnum>
      get serializer =>
          _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnumSerializer;

  const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum._(String name)
      : super(name);

  static BuiltSet<OgcTileMatrixSetListTileMatrixSetsInnerIdEnum> get values =>
      _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnumValues;
  static OgcTileMatrixSetListTileMatrixSetsInnerIdEnum valueOf(String name) =>
      _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnumValueOf(name);
}
