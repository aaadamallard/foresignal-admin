//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_legend.g.dart';

/// Legend block and links
///
/// Properties:
/// * [summary] - Short legend text
/// * [url] - JSON legend URL
/// * [pngUrl] - PNG legend URL
@BuiltValue()
abstract class ProductLegend
    implements Built<ProductLegend, ProductLegendBuilder> {
  /// Short legend text
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  /// JSON legend URL
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// PNG legend URL
  @BuiltValueField(wireName: r'pngUrl')
  String? get pngUrl;

  ProductLegend._();

  factory ProductLegend([void updates(ProductLegendBuilder b)]) =
      _$ProductLegend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductLegendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductLegend> get serializer =>
      _$ProductLegendSerializer();
}

class _$ProductLegendSerializer implements PrimitiveSerializer<ProductLegend> {
  @override
  final Iterable<Type> types = const [ProductLegend, _$ProductLegend];

  @override
  final String wireName = r'ProductLegend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductLegend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.pngUrl != null) {
      yield r'pngUrl';
      yield serializers.serialize(
        object.pngUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductLegend object, {
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
    required ProductLegendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'pngUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pngUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductLegend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductLegendBuilder();
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
