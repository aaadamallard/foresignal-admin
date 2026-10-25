//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_encodings_png_tiles.g.dart';

/// 108: tiled png-uv fields
///
/// Properties:
/// * [template] - …/fields/{frameKey}/{z}/{x}/{y}.png
/// * [tms]
/// * [uMin]
/// * [uMax]
/// * [vMin]
/// * [vMax]
/// * [minzoom]
/// * [maxzoom]
@BuiltValue()
abstract class FieldEncodingsPngTiles
    implements Built<FieldEncodingsPngTiles, FieldEncodingsPngTilesBuilder> {
  /// …/fields/{frameKey}/{z}/{x}/{y}.png
  @BuiltValueField(wireName: r'template')
  String? get template;

  @BuiltValueField(wireName: r'tms')
  FieldEncodingsPngTilesTmsEnum? get tms;
  // enum tmsEnum {  WebMercatorQuad,  WorldCRS84Quad,  };

  @BuiltValueField(wireName: r'uMin')
  num? get uMin;

  @BuiltValueField(wireName: r'uMax')
  num? get uMax;

  @BuiltValueField(wireName: r'vMin')
  num? get vMin;

  @BuiltValueField(wireName: r'vMax')
  num? get vMax;

  @BuiltValueField(wireName: r'minzoom')
  int? get minzoom;

  @BuiltValueField(wireName: r'maxzoom')
  int? get maxzoom;

  FieldEncodingsPngTiles._();

  factory FieldEncodingsPngTiles([
    void updates(FieldEncodingsPngTilesBuilder b),
  ]) = _$FieldEncodingsPngTiles;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldEncodingsPngTilesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldEncodingsPngTiles> get serializer =>
      _$FieldEncodingsPngTilesSerializer();
}

class _$FieldEncodingsPngTilesSerializer
    implements PrimitiveSerializer<FieldEncodingsPngTiles> {
  @override
  final Iterable<Type> types = const [
    FieldEncodingsPngTiles,
    _$FieldEncodingsPngTiles,
  ];

  @override
  final String wireName = r'FieldEncodingsPngTiles';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldEncodingsPngTiles object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.template != null) {
      yield r'template';
      yield serializers.serialize(
        object.template,
        specifiedType: const FullType(String),
      );
    }
    if (object.tms != null) {
      yield r'tms';
      yield serializers.serialize(
        object.tms,
        specifiedType: const FullType(FieldEncodingsPngTilesTmsEnum),
      );
    }
    if (object.uMin != null) {
      yield r'uMin';
      yield serializers.serialize(
        object.uMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.uMax != null) {
      yield r'uMax';
      yield serializers.serialize(
        object.uMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.vMin != null) {
      yield r'vMin';
      yield serializers.serialize(
        object.vMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.vMax != null) {
      yield r'vMax';
      yield serializers.serialize(
        object.vMax,
        specifiedType: const FullType(num),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldEncodingsPngTiles object, {
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
    required FieldEncodingsPngTilesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'template':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.template = valueDes;
          break;
        case r'tms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FieldEncodingsPngTilesTmsEnum,
                    ),
                  )
                  as FieldEncodingsPngTilesTmsEnum?;
          if (valueDes == null) continue;
          result.tms = valueDes;
          break;
        case r'uMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.uMin = valueDes;
          break;
        case r'uMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.uMax = valueDes;
          break;
        case r'vMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.vMin = valueDes;
          break;
        case r'vMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.vMax = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldEncodingsPngTiles deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldEncodingsPngTilesBuilder();
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

class FieldEncodingsPngTilesTmsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WebMercatorQuad')
  static const FieldEncodingsPngTilesTmsEnum webMercatorQuad =
      _$fieldEncodingsPngTilesTmsEnum_webMercatorQuad;
  @BuiltValueEnumConst(wireName: r'WorldCRS84Quad')
  static const FieldEncodingsPngTilesTmsEnum worldCRS84Quad =
      _$fieldEncodingsPngTilesTmsEnum_worldCRS84Quad;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FieldEncodingsPngTilesTmsEnum unknownDefaultOpenApi =
      _$fieldEncodingsPngTilesTmsEnum_unknownDefaultOpenApi;

  static Serializer<FieldEncodingsPngTilesTmsEnum> get serializer =>
      _$fieldEncodingsPngTilesTmsEnumSerializer;

  const FieldEncodingsPngTilesTmsEnum._(String name) : super(name);

  static BuiltSet<FieldEncodingsPngTilesTmsEnum> get values =>
      _$fieldEncodingsPngTilesTmsEnumValues;
  static FieldEncodingsPngTilesTmsEnum valueOf(String name) =>
      _$fieldEncodingsPngTilesTmsEnumValueOf(name);
}
