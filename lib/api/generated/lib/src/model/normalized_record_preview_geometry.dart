//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'normalized_record_preview_geometry.g.dart';

/// GeoJSON geometry (RFC 7946), WGS84
///
/// Properties:
/// * [type]
/// * [coordinates]
@BuiltValue()
abstract class NormalizedRecordPreviewGeometry
    implements
        Built<
          NormalizedRecordPreviewGeometry,
          NormalizedRecordPreviewGeometryBuilder
        > {
  @BuiltValueField(wireName: r'type')
  NormalizedRecordPreviewGeometryTypeEnum get type;
  // enum typeEnum {  Point,  MultiPoint,  LineString,  MultiLineString,  Polygon,  MultiPolygon,  GeometryCollection,  };

  @BuiltValueField(wireName: r'coordinates')
  BuiltList<JsonObject?>? get coordinates;

  NormalizedRecordPreviewGeometry._();

  factory NormalizedRecordPreviewGeometry([
    void updates(NormalizedRecordPreviewGeometryBuilder b),
  ]) = _$NormalizedRecordPreviewGeometry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NormalizedRecordPreviewGeometryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NormalizedRecordPreviewGeometry> get serializer =>
      _$NormalizedRecordPreviewGeometrySerializer();
}

class _$NormalizedRecordPreviewGeometrySerializer
    implements PrimitiveSerializer<NormalizedRecordPreviewGeometry> {
  @override
  final Iterable<Type> types = const [
    NormalizedRecordPreviewGeometry,
    _$NormalizedRecordPreviewGeometry,
  ];

  @override
  final String wireName = r'NormalizedRecordPreviewGeometry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NormalizedRecordPreviewGeometry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NormalizedRecordPreviewGeometryTypeEnum),
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
    NormalizedRecordPreviewGeometry object, {
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
    required NormalizedRecordPreviewGeometryBuilder result,
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
                    specifiedType: const FullType(
                      NormalizedRecordPreviewGeometryTypeEnum,
                    ),
                  )
                  as NormalizedRecordPreviewGeometryTypeEnum;
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
  NormalizedRecordPreviewGeometry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NormalizedRecordPreviewGeometryBuilder();
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

class NormalizedRecordPreviewGeometryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Point')
  static const NormalizedRecordPreviewGeometryTypeEnum point =
      _$normalizedRecordPreviewGeometryTypeEnum_point;
  @BuiltValueEnumConst(wireName: r'MultiPoint')
  static const NormalizedRecordPreviewGeometryTypeEnum multiPoint =
      _$normalizedRecordPreviewGeometryTypeEnum_multiPoint;
  @BuiltValueEnumConst(wireName: r'LineString')
  static const NormalizedRecordPreviewGeometryTypeEnum lineString =
      _$normalizedRecordPreviewGeometryTypeEnum_lineString;
  @BuiltValueEnumConst(wireName: r'MultiLineString')
  static const NormalizedRecordPreviewGeometryTypeEnum multiLineString =
      _$normalizedRecordPreviewGeometryTypeEnum_multiLineString;
  @BuiltValueEnumConst(wireName: r'Polygon')
  static const NormalizedRecordPreviewGeometryTypeEnum polygon =
      _$normalizedRecordPreviewGeometryTypeEnum_polygon;
  @BuiltValueEnumConst(wireName: r'MultiPolygon')
  static const NormalizedRecordPreviewGeometryTypeEnum multiPolygon =
      _$normalizedRecordPreviewGeometryTypeEnum_multiPolygon;
  @BuiltValueEnumConst(wireName: r'GeometryCollection')
  static const NormalizedRecordPreviewGeometryTypeEnum geometryCollection =
      _$normalizedRecordPreviewGeometryTypeEnum_geometryCollection;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NormalizedRecordPreviewGeometryTypeEnum unknownDefaultOpenApi =
      _$normalizedRecordPreviewGeometryTypeEnum_unknownDefaultOpenApi;

  static Serializer<NormalizedRecordPreviewGeometryTypeEnum> get serializer =>
      _$normalizedRecordPreviewGeometryTypeEnumSerializer;

  const NormalizedRecordPreviewGeometryTypeEnum._(String name) : super(name);

  static BuiltSet<NormalizedRecordPreviewGeometryTypeEnum> get values =>
      _$normalizedRecordPreviewGeometryTypeEnumValues;
  static NormalizedRecordPreviewGeometryTypeEnum valueOf(String name) =>
      _$normalizedRecordPreviewGeometryTypeEnumValueOf(name);
}
