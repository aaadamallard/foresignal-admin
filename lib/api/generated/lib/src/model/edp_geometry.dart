//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_geometry.g.dart';

/// GeoJSON geometry (RFC 7946, WGS84 lon/lat, optional altitude in metres). GeometryCollection is not accepted. The server also checks bounds, ring closure, vertex count (≤ 10,000) and that the type matches the stream's declared geometry.
///
/// Properties:
/// * [type]
/// * [coordinates]
@BuiltValue()
abstract class EdpGeometry implements Built<EdpGeometry, EdpGeometryBuilder> {
  @BuiltValueField(wireName: r'type')
  EdpGeometryTypeEnum get type;
  // enum typeEnum {  Point,  MultiPoint,  LineString,  MultiLineString,  Polygon,  MultiPolygon,  };

  @BuiltValueField(wireName: r'coordinates')
  BuiltList<String> get coordinates;

  EdpGeometry._();

  factory EdpGeometry([void updates(EdpGeometryBuilder b)]) = _$EdpGeometry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpGeometryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpGeometry> get serializer => _$EdpGeometrySerializer();
}

class _$EdpGeometrySerializer implements PrimitiveSerializer<EdpGeometry> {
  @override
  final Iterable<Type> types = const [EdpGeometry, _$EdpGeometry];

  @override
  final String wireName = r'EdpGeometry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpGeometry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EdpGeometryTypeEnum),
    );
    yield r'coordinates';
    yield serializers.serialize(
      object.coordinates,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpGeometry object, {
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
    required EdpGeometryBuilder result,
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
                    specifiedType: const FullType(EdpGeometryTypeEnum),
                  )
                  as EdpGeometryTypeEnum;
          result.type = valueDes;
          break;
        case r'coordinates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
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
  EdpGeometry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpGeometryBuilder();
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

class EdpGeometryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Point')
  static const EdpGeometryTypeEnum point = _$edpGeometryTypeEnum_point;
  @BuiltValueEnumConst(wireName: r'MultiPoint')
  static const EdpGeometryTypeEnum multiPoint =
      _$edpGeometryTypeEnum_multiPoint;
  @BuiltValueEnumConst(wireName: r'LineString')
  static const EdpGeometryTypeEnum lineString =
      _$edpGeometryTypeEnum_lineString;
  @BuiltValueEnumConst(wireName: r'MultiLineString')
  static const EdpGeometryTypeEnum multiLineString =
      _$edpGeometryTypeEnum_multiLineString;
  @BuiltValueEnumConst(wireName: r'Polygon')
  static const EdpGeometryTypeEnum polygon = _$edpGeometryTypeEnum_polygon;
  @BuiltValueEnumConst(wireName: r'MultiPolygon')
  static const EdpGeometryTypeEnum multiPolygon =
      _$edpGeometryTypeEnum_multiPolygon;

  static Serializer<EdpGeometryTypeEnum> get serializer =>
      _$edpGeometryTypeEnumSerializer;

  const EdpGeometryTypeEnum._(String name) : super(name);

  static BuiltSet<EdpGeometryTypeEnum> get values =>
      _$edpGeometryTypeEnumValues;
  static EdpGeometryTypeEnum valueOf(String name) =>
      _$edpGeometryTypeEnumValueOf(name);
}
