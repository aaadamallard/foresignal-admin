//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/place_input_attributes.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place.g.dart';

/// A named place: point + radius, polygon or route + buffer, with its derived area (036)
///
/// Properties:
/// * [id]
/// * [name]
/// * [shape]
/// * [geometry] - Point (point), Polygon/MultiPolygon (polygon) or LineString (route), WGS84
/// * [radiusKm] - point only
/// * [bufferM] - route only
/// * [timezone] - IANA zone (default: server timezone)
/// * [kind]
/// * [tags]
/// * [products] - Weather product ids for place-weather (052)
/// * [sensitive]
/// * [attributes]
/// * [area] - Derived MultiPolygon (geography buffer for points and routes; fixed, ≤ 10,000 vertices)
/// * [version] - Bumped on every save
/// * [createdAt]
/// * [updatedAt]
/// * [external_] - Latest values or documents of external streams bound to this place (138)
@BuiltValue()
abstract class Place implements Built<Place, PlaceBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'shape')
  PlaceShapeEnum get shape;
  // enum shapeEnum {  point,  polygon,  route,  };

  /// Point (point), Polygon/MultiPolygon (polygon) or LineString (route), WGS84
  @BuiltValueField(wireName: r'geometry')
  Geometry get geometry;

  /// point only
  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  /// route only
  @BuiltValueField(wireName: r'bufferM')
  num? get bufferM;

  /// IANA zone (default: server timezone)
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'kind')
  PlaceKindEnum? get kind;
  // enum kindEnum {  user,  airport,  asset,  };

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Weather product ids for place-weather (052)
  @BuiltValueField(wireName: r'products')
  BuiltList<String>? get products;

  @BuiltValueField(wireName: r'sensitive')
  bool? get sensitive;

  @BuiltValueField(wireName: r'attributes')
  PlaceInputAttributes? get attributes;

  /// Derived MultiPolygon (geography buffer for points and routes; fixed, ≤ 10,000 vertices)
  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// Bumped on every save
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Latest values or documents of external streams bound to this place (138)
  @BuiltValueField(wireName: r'external')
  BuiltMap<String, JsonObject?>? get external_;

  Place._();

  factory Place([void updates(PlaceBuilder b)]) = _$Place;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Place> get serializer => _$PlaceSerializer();
}

class _$PlaceSerializer implements PrimitiveSerializer<Place> {
  @override
  final Iterable<Type> types = const [Place, _$Place];

  @override
  final String wireName = r'Place';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Place object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'shape';
    yield serializers.serialize(
      object.shape,
      specifiedType: const FullType(PlaceShapeEnum),
    );
    yield r'geometry';
    yield serializers.serialize(
      object.geometry,
      specifiedType: const FullType(Geometry),
    );
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.bufferM != null) {
      yield r'bufferM';
      yield serializers.serialize(
        object.bufferM,
        specifiedType: const FullType(num),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(PlaceKindEnum),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.products != null) {
      yield r'products';
      yield serializers.serialize(
        object.products,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(PlaceInputAttributes),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType(Geometry),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.external_ != null) {
      yield r'external';
      yield serializers.serialize(
        object.external_,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Place object, {
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
    required PlaceBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'shape':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PlaceShapeEnum),
                  )
                  as PlaceShapeEnum;
          result.shape = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Geometry),
                  )
                  as Geometry;
          result.geometry.replace(valueDes);
          break;
        case r'radiusKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        case r'bufferM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bufferM = valueDes;
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PlaceKindEnum),
                  )
                  as PlaceKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'products':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.products.replace(valueDes);
          break;
        case r'sensitive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sensitive = valueDes;
          break;
        case r'attributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlaceInputAttributes,
                    ),
                  )
                  as PlaceInputAttributes?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'external':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.external_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Place deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceBuilder();
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

class PlaceShapeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'point')
  static const PlaceShapeEnum point = _$placeShapeEnum_point;
  @BuiltValueEnumConst(wireName: r'polygon')
  static const PlaceShapeEnum polygon = _$placeShapeEnum_polygon;
  @BuiltValueEnumConst(wireName: r'route')
  static const PlaceShapeEnum route = _$placeShapeEnum_route;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PlaceShapeEnum unknownDefaultOpenApi =
      _$placeShapeEnum_unknownDefaultOpenApi;

  static Serializer<PlaceShapeEnum> get serializer =>
      _$placeShapeEnumSerializer;

  const PlaceShapeEnum._(String name) : super(name);

  static BuiltSet<PlaceShapeEnum> get values => _$placeShapeEnumValues;
  static PlaceShapeEnum valueOf(String name) => _$placeShapeEnumValueOf(name);
}

class PlaceKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const PlaceKindEnum user = _$placeKindEnum_user;
  @BuiltValueEnumConst(wireName: r'airport')
  static const PlaceKindEnum airport = _$placeKindEnum_airport;
  @BuiltValueEnumConst(wireName: r'asset')
  static const PlaceKindEnum asset = _$placeKindEnum_asset;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PlaceKindEnum unknownDefaultOpenApi =
      _$placeKindEnum_unknownDefaultOpenApi;

  static Serializer<PlaceKindEnum> get serializer => _$placeKindEnumSerializer;

  const PlaceKindEnum._(String name) : super(name);

  static BuiltSet<PlaceKindEnum> get values => _$placeKindEnumValues;
  static PlaceKindEnum valueOf(String name) => _$placeKindEnumValueOf(name);
}
