//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/product_loop_frames_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_loop.g.dart';

/// Animation loop: one snapped bbox and a list of `/image` frame URLs (mobile and animation path)
///
/// Properties:
/// * [crs]
/// * [bounds] - Snapped bounds [w, s, e, n]
/// * [coordinates] - Corner coordinates [[tl], [tr], [br], [bl]] as [lon, lat] for image overlays
/// * [width]
/// * [height]
/// * [products]
/// * [runs] - Forecast run used per product (never mixed)
/// * [frames]
/// * [legendUrl]
/// * [attribution]
/// * [serverTime]
@BuiltValue()
abstract class ProductLoop implements Built<ProductLoop, ProductLoopBuilder> {
  @BuiltValueField(wireName: r'crs')
  String get crs;

  /// Snapped bounds [w, s, e, n]
  @BuiltValueField(wireName: r'bounds')
  BuiltList<num> get bounds;

  /// Corner coordinates [[tl], [tr], [br], [bl]] as [lon, lat] for image overlays
  @BuiltValueField(wireName: r'coordinates')
  BuiltList<BuiltList<num>> get coordinates;

  @BuiltValueField(wireName: r'width')
  int get width;

  @BuiltValueField(wireName: r'height')
  int get height;

  @BuiltValueField(wireName: r'products')
  BuiltList<String>? get products;

  /// Forecast run used per product (never mixed)
  @BuiltValueField(wireName: r'runs')
  BuiltMap<String, String>? get runs;

  @BuiltValueField(wireName: r'frames')
  BuiltList<ProductLoopFramesInner> get frames;

  @BuiltValueField(wireName: r'legendUrl')
  String? get legendUrl;

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  ProductLoop._();

  factory ProductLoop([void updates(ProductLoopBuilder b)]) = _$ProductLoop;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductLoopBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductLoop> get serializer => _$ProductLoopSerializer();
}

class _$ProductLoopSerializer implements PrimitiveSerializer<ProductLoop> {
  @override
  final Iterable<Type> types = const [ProductLoop, _$ProductLoop];

  @override
  final String wireName = r'ProductLoop';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductLoop object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'crs';
    yield serializers.serialize(
      object.crs,
      specifiedType: const FullType(String),
    );
    yield r'bounds';
    yield serializers.serialize(
      object.bounds,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    yield r'coordinates';
    yield serializers.serialize(
      object.coordinates,
      specifiedType: const FullType(BuiltList, [
        FullType(BuiltList, [FullType(num)])
      ]),
    );
    yield r'width';
    yield serializers.serialize(
      object.width,
      specifiedType: const FullType(int),
    );
    yield r'height';
    yield serializers.serialize(
      object.height,
      specifiedType: const FullType(int),
    );
    if (object.products != null) {
      yield r'products';
      yield serializers.serialize(
        object.products,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.runs != null) {
      yield r'runs';
      yield serializers.serialize(
        object.runs,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    yield r'frames';
    yield serializers.serialize(
      object.frames,
      specifiedType:
          const FullType(BuiltList, [FullType(ProductLoopFramesInner)]),
    );
    if (object.legendUrl != null) {
      yield r'legendUrl';
      yield serializers.serialize(
        object.legendUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductLoop object, {
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
    required ProductLoopBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'crs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.crs = valueDes;
          break;
        case r'bounds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.bounds.replace(valueDes);
          break;
        case r'coordinates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(BuiltList, [FullType(num)])
            ]),
          ) as BuiltList<BuiltList<num>>;
          result.coordinates.replace(valueDes);
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.height = valueDes;
          break;
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.products.replace(valueDes);
          break;
        case r'runs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.runs.replace(valueDes);
          break;
        case r'frames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ProductLoopFramesInner)]),
          ) as BuiltList<ProductLoopFramesInner>;
          result.frames.replace(valueDes);
          break;
        case r'legendUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.legendUrl = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Attribution)]),
          ) as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'serverTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.serverTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductLoop deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductLoopBuilder();
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
