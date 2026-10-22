//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_spatial.g.dart';

/// Spatial facts of a product for map clients
///
/// Properties:
/// * [bounds] - [west, south, east, north] in WGS84 degrees
/// * [minZoom]
/// * [maxZoom] - Native max zoom (MRMS 8, GOES C13 7, GFS 4, HRRR 8); clients overzoom above it
/// * [maxZoomForAnimation] - Highest zoom warmed for animation (radar 7, IR 6)
/// * [center] - [lon, lat, zoom]
@BuiltValue()
abstract class ProductSpatial
    implements Built<ProductSpatial, ProductSpatialBuilder> {
  /// [west, south, east, north] in WGS84 degrees
  @BuiltValueField(wireName: r'bounds')
  BuiltList<num> get bounds;

  @BuiltValueField(wireName: r'minZoom')
  int get minZoom;

  /// Native max zoom (MRMS 8, GOES C13 7, GFS 4, HRRR 8); clients overzoom above it
  @BuiltValueField(wireName: r'maxZoom')
  int get maxZoom;

  /// Highest zoom warmed for animation (radar 7, IR 6)
  @BuiltValueField(wireName: r'maxZoomForAnimation')
  int? get maxZoomForAnimation;

  /// [lon, lat, zoom]
  @BuiltValueField(wireName: r'center')
  BuiltList<num>? get center;

  ProductSpatial._();

  factory ProductSpatial([void updates(ProductSpatialBuilder b)]) =
      _$ProductSpatial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductSpatialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductSpatial> get serializer =>
      _$ProductSpatialSerializer();
}

class _$ProductSpatialSerializer
    implements PrimitiveSerializer<ProductSpatial> {
  @override
  final Iterable<Type> types = const [ProductSpatial, _$ProductSpatial];

  @override
  final String wireName = r'ProductSpatial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductSpatial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bounds';
    yield serializers.serialize(
      object.bounds,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    yield r'minZoom';
    yield serializers.serialize(
      object.minZoom,
      specifiedType: const FullType(int),
    );
    yield r'maxZoom';
    yield serializers.serialize(
      object.maxZoom,
      specifiedType: const FullType(int),
    );
    if (object.maxZoomForAnimation != null) {
      yield r'maxZoomForAnimation';
      yield serializers.serialize(
        object.maxZoomForAnimation,
        specifiedType: const FullType(int),
      );
    }
    if (object.center != null) {
      yield r'center';
      yield serializers.serialize(
        object.center,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductSpatial object, {
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
    required ProductSpatialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bounds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [FullType(num)]),
                  )
                  as BuiltList<num>;
          result.bounds.replace(valueDes);
          break;
        case r'minZoom':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.minZoom = valueDes;
          break;
        case r'maxZoom':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.maxZoom = valueDes;
          break;
        case r'maxZoomForAnimation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxZoomForAnimation = valueDes;
          break;
        case r'center':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.center.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductSpatial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductSpatialBuilder();
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
