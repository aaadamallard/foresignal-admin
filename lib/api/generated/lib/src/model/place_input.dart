//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/place_input_attributes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_input.g.dart';

/// Create or replace a named place (036)
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
@BuiltValue()
abstract class PlaceInput implements Built<PlaceInput, PlaceInputBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'shape')
  PlaceInputShapeEnum get shape;
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
  PlaceInputKindEnum? get kind;
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

  PlaceInput._();

  factory PlaceInput([void updates(PlaceInputBuilder b)]) = _$PlaceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceInput> get serializer => _$PlaceInputSerializer();
}

class _$PlaceInputSerializer implements PrimitiveSerializer<PlaceInput> {
  @override
  final Iterable<Type> types = const [PlaceInput, _$PlaceInput];

  @override
  final String wireName = r'PlaceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceInput object, {
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
      specifiedType: const FullType(PlaceInputShapeEnum),
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
        specifiedType: const FullType(PlaceInputKindEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceInput object, {
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
    required PlaceInputBuilder result,
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
                    specifiedType: const FullType(PlaceInputShapeEnum),
                  )
                  as PlaceInputShapeEnum;
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
                    specifiedType: const FullType.nullable(PlaceInputKindEnum),
                  )
                  as PlaceInputKindEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceInputBuilder();
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

class PlaceInputShapeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'point')
  static const PlaceInputShapeEnum point = _$placeInputShapeEnum_point;
  @BuiltValueEnumConst(wireName: r'polygon')
  static const PlaceInputShapeEnum polygon = _$placeInputShapeEnum_polygon;
  @BuiltValueEnumConst(wireName: r'route')
  static const PlaceInputShapeEnum route = _$placeInputShapeEnum_route;

  static Serializer<PlaceInputShapeEnum> get serializer =>
      _$placeInputShapeEnumSerializer;

  const PlaceInputShapeEnum._(String name) : super(name);

  static BuiltSet<PlaceInputShapeEnum> get values =>
      _$placeInputShapeEnumValues;
  static PlaceInputShapeEnum valueOf(String name) =>
      _$placeInputShapeEnumValueOf(name);
}

class PlaceInputKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const PlaceInputKindEnum user = _$placeInputKindEnum_user;
  @BuiltValueEnumConst(wireName: r'airport')
  static const PlaceInputKindEnum airport = _$placeInputKindEnum_airport;
  @BuiltValueEnumConst(wireName: r'asset')
  static const PlaceInputKindEnum asset = _$placeInputKindEnum_asset;

  static Serializer<PlaceInputKindEnum> get serializer =>
      _$placeInputKindEnumSerializer;

  const PlaceInputKindEnum._(String name) : super(name);

  static BuiltSet<PlaceInputKindEnum> get values => _$placeInputKindEnumValues;
  static PlaceInputKindEnum valueOf(String name) =>
      _$placeInputKindEnumValueOf(name);
}
