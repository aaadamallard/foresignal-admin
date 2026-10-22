//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_links.g.dart';

/// Fully expanded links (clients never build URLs)
///
/// Properties:
/// * [self]
/// * [frames]
/// * [latest]
/// * [tilejson]
/// * [legend]
/// * [timeline]
@BuiltValue()
abstract class ProductLinks
    implements Built<ProductLinks, ProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  String? get self;

  @BuiltValueField(wireName: r'frames')
  String? get frames;

  @BuiltValueField(wireName: r'latest')
  String? get latest;

  @BuiltValueField(wireName: r'tilejson')
  String? get tilejson;

  @BuiltValueField(wireName: r'legend')
  String? get legend;

  @BuiltValueField(wireName: r'timeline')
  String? get timeline;

  ProductLinks._();

  factory ProductLinks([void updates(ProductLinksBuilder b)]) = _$ProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductLinks> get serializer => _$ProductLinksSerializer();
}

class _$ProductLinksSerializer implements PrimitiveSerializer<ProductLinks> {
  @override
  final Iterable<Type> types = const [ProductLinks, _$ProductLinks];

  @override
  final String wireName = r'ProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(String),
      );
    }
    if (object.frames != null) {
      yield r'frames';
      yield serializers.serialize(
        object.frames,
        specifiedType: const FullType(String),
      );
    }
    if (object.latest != null) {
      yield r'latest';
      yield serializers.serialize(
        object.latest,
        specifiedType: const FullType(String),
      );
    }
    if (object.tilejson != null) {
      yield r'tilejson';
      yield serializers.serialize(
        object.tilejson,
        specifiedType: const FullType(String),
      );
    }
    if (object.legend != null) {
      yield r'legend';
      yield serializers.serialize(
        object.legend,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeline != null) {
      yield r'timeline';
      yield serializers.serialize(
        object.timeline,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductLinks object, {
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
    required ProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.self = valueDes;
          break;
        case r'frames':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.frames = valueDes;
          break;
        case r'latest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latest = valueDes;
          break;
        case r'tilejson':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tilejson = valueDes;
          break;
        case r'legend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.legend = valueDes;
          break;
        case r'timeline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timeline = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductLinksBuilder();
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
