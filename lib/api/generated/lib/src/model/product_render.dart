//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_render.g.dart';

/// Rendering defaults
///
/// Properties:
/// * [defaultStyle] - Versioned default style
/// * [styles] - Versioned styles valid for this product
/// * [defaultOpacity]
@BuiltValue()
abstract class ProductRender
    implements Built<ProductRender, ProductRenderBuilder> {
  /// Versioned default style
  @BuiltValueField(wireName: r'defaultStyle')
  String get defaultStyle;

  /// Versioned styles valid for this product
  @BuiltValueField(wireName: r'styles')
  BuiltList<String> get styles;

  @BuiltValueField(wireName: r'defaultOpacity')
  num? get defaultOpacity;

  ProductRender._();

  factory ProductRender([void updates(ProductRenderBuilder b)]) =
      _$ProductRender;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductRenderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductRender> get serializer =>
      _$ProductRenderSerializer();
}

class _$ProductRenderSerializer implements PrimitiveSerializer<ProductRender> {
  @override
  final Iterable<Type> types = const [ProductRender, _$ProductRender];

  @override
  final String wireName = r'ProductRender';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductRender object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'defaultStyle';
    yield serializers.serialize(
      object.defaultStyle,
      specifiedType: const FullType(String),
    );
    yield r'styles';
    yield serializers.serialize(
      object.styles,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.defaultOpacity != null) {
      yield r'defaultOpacity';
      yield serializers.serialize(
        object.defaultOpacity,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductRender object, {
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
    required ProductRenderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultStyle = valueDes;
          break;
        case r'styles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.styles.replace(valueDes);
          break;
        case r'defaultOpacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.defaultOpacity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductRender deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductRenderBuilder();
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
