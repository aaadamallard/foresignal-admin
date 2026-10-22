//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/timeline_tick.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_timeline.g.dart';

/// Cross-product timeline (`/v1/products/timeline`, 051)
///
/// Properties:
/// * [mode]
/// * [products]
/// * [from]
/// * [to]
/// * [runs] - Run used per forecast product (one run, never mixed)
/// * [nowIndex] - Index of the tick nearest now
/// * [ticks]
/// * [serverTime]
@BuiltValue()
abstract class ProductTimeline
    implements Built<ProductTimeline, ProductTimelineBuilder> {
  @BuiltValueField(wireName: r'mode')
  ProductTimelineModeEnum get mode;
  // enum modeEnum {  products,  seamless,  };

  @BuiltValueField(wireName: r'products')
  BuiltList<String> get products;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  /// Run used per forecast product (one run, never mixed)
  @BuiltValueField(wireName: r'runs')
  BuiltMap<String, String>? get runs;

  /// Index of the tick nearest now
  @BuiltValueField(wireName: r'nowIndex')
  int? get nowIndex;

  @BuiltValueField(wireName: r'ticks')
  BuiltList<TimelineTick> get ticks;

  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  ProductTimeline._();

  factory ProductTimeline([void updates(ProductTimelineBuilder b)]) =
      _$ProductTimeline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductTimelineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductTimeline> get serializer =>
      _$ProductTimelineSerializer();
}

class _$ProductTimelineSerializer
    implements PrimitiveSerializer<ProductTimeline> {
  @override
  final Iterable<Type> types = const [ProductTimeline, _$ProductTimeline];

  @override
  final String wireName = r'ProductTimeline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductTimeline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(ProductTimelineModeEnum),
    );
    yield r'products';
    yield serializers.serialize(
      object.products,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
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
    if (object.nowIndex != null) {
      yield r'nowIndex';
      yield serializers.serialize(
        object.nowIndex,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'ticks';
    yield serializers.serialize(
      object.ticks,
      specifiedType: const FullType(BuiltList, [FullType(TimelineTick)]),
    );
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductTimeline object, {
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
    required ProductTimelineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductTimelineModeEnum),
          ) as ProductTimelineModeEnum;
          result.mode = valueDes;
          break;
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.products.replace(valueDes);
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
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
        case r'nowIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.nowIndex = valueDes;
          break;
        case r'ticks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TimelineTick)]),
          ) as BuiltList<TimelineTick>;
          result.ticks.replace(valueDes);
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
  ProductTimeline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductTimelineBuilder();
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

class ProductTimelineModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'products')
  static const ProductTimelineModeEnum products =
      _$productTimelineModeEnum_products;
  @BuiltValueEnumConst(wireName: r'seamless')
  static const ProductTimelineModeEnum seamless =
      _$productTimelineModeEnum_seamless;

  static Serializer<ProductTimelineModeEnum> get serializer =>
      _$productTimelineModeEnumSerializer;

  const ProductTimelineModeEnum._(String name) : super(name);

  static BuiltSet<ProductTimelineModeEnum> get values =>
      _$productTimelineModeEnumValues;
  static ProductTimelineModeEnum valueOf(String name) =>
      _$productTimelineModeEnumValueOf(name);
}
