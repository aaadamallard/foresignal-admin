//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'geometry.g.dart';

/// GeoJSON geometry (RFC 7946), WGS84
///
/// Properties:
/// * [type]
/// * [coordinates]
@BuiltValue()
abstract class Geometry implements Built<Geometry, GeometryBuilder> {
  @BuiltValueField(wireName: r'type')
  GeometryTypeEnum get type;
  // enum typeEnum {  Point,  MultiPoint,  LineString,  MultiLineString,  Polygon,  MultiPolygon,  GeometryCollection,  };

  @BuiltValueField(wireName: r'coordinates')
  BuiltList<JsonObject?>? get coordinates;

  Geometry._();

  factory Geometry([void updates(GeometryBuilder b)]) = _$Geometry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeometryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Geometry> get serializer => _$GeometrySerializer();
}

class _$GeometrySerializer implements PrimitiveSerializer<Geometry> {
  @override
  final Iterable<Type> types = const [Geometry, _$Geometry];

  @override
  final String wireName = r'Geometry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Geometry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(GeometryTypeEnum),
    );
    if (object.coordinates != null) {
      yield r'coordinates';
      yield serializers.serialize(
        object.coordinates,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Geometry object, {
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
    required GeometryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GeometryTypeEnum),
                  )
                  as GeometryTypeEnum;
          result.type = valueDes;
          break;
        case r'coordinates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.coordinates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Geometry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeometryBuilder();
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

class GeometryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Point')
  static const GeometryTypeEnum point = _$geometryTypeEnum_point;
  @BuiltValueEnumConst(wireName: r'MultiPoint')
  static const GeometryTypeEnum multiPoint = _$geometryTypeEnum_multiPoint;
  @BuiltValueEnumConst(wireName: r'LineString')
  static const GeometryTypeEnum lineString = _$geometryTypeEnum_lineString;
  @BuiltValueEnumConst(wireName: r'MultiLineString')
  static const GeometryTypeEnum multiLineString =
      _$geometryTypeEnum_multiLineString;
  @BuiltValueEnumConst(wireName: r'Polygon')
  static const GeometryTypeEnum polygon = _$geometryTypeEnum_polygon;
  @BuiltValueEnumConst(wireName: r'MultiPolygon')
  static const GeometryTypeEnum multiPolygon = _$geometryTypeEnum_multiPolygon;
  @BuiltValueEnumConst(wireName: r'GeometryCollection')
  static const GeometryTypeEnum geometryCollection =
      _$geometryTypeEnum_geometryCollection;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GeometryTypeEnum unknownDefaultOpenApi =
      _$geometryTypeEnum_unknownDefaultOpenApi;

  static Serializer<GeometryTypeEnum> get serializer =>
      _$geometryTypeEnumSerializer;

  const GeometryTypeEnum._(String name) : super(name);

  static BuiltSet<GeometryTypeEnum> get values => _$geometryTypeEnumValues;
  static GeometryTypeEnum valueOf(String name) =>
      _$geometryTypeEnumValueOf(name);
}
