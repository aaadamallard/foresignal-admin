//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_loop_frames_inner.g.dart';

/// Loop frame
///
/// Properties:
/// * [productId]
/// * [time]
/// * [timeKey]
/// * [frameKey]
/// * [kind]
/// * [run]
/// * [step]
/// * [url] - Expanded `/image` URL for this frame
/// * [bytes] - Image size when already rendered
/// * [expiresAt]
@BuiltValue()
abstract class ProductLoopFramesInner
    implements Built<ProductLoopFramesInner, ProductLoopFramesInnerBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'timeKey')
  String? get timeKey;

  @BuiltValueField(wireName: r'frameKey')
  String get frameKey;

  @BuiltValueField(wireName: r'kind')
  ProductLoopFramesInnerKindEnum get kind;
  // enum kindEnum {  observed,  forecast,  };

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'step')
  int? get step;

  /// Expanded `/image` URL for this frame
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Image size when already rendered
  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ProductLoopFramesInner._();

  factory ProductLoopFramesInner([
    void updates(ProductLoopFramesInnerBuilder b),
  ]) = _$ProductLoopFramesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductLoopFramesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductLoopFramesInner> get serializer =>
      _$ProductLoopFramesInnerSerializer();
}

class _$ProductLoopFramesInnerSerializer
    implements PrimitiveSerializer<ProductLoopFramesInner> {
  @override
  final Iterable<Type> types = const [
    ProductLoopFramesInner,
    _$ProductLoopFramesInner,
  ];

  @override
  final String wireName = r'ProductLoopFramesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductLoopFramesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    if (object.timeKey != null) {
      yield r'timeKey';
      yield serializers.serialize(
        object.timeKey,
        specifiedType: const FullType(String),
      );
    }
    yield r'frameKey';
    yield serializers.serialize(
      object.frameKey,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ProductLoopFramesInnerKindEnum),
    );
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductLoopFramesInner object, {
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
    required ProductLoopFramesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.productId = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        case r'timeKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timeKey = valueDes;
          break;
        case r'frameKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.frameKey = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ProductLoopFramesInnerKindEnum,
                    ),
                  )
                  as ProductLoopFramesInnerKindEnum;
          result.kind = valueDes;
          break;
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.url = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductLoopFramesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductLoopFramesInnerBuilder();
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

class ProductLoopFramesInnerKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observed')
  static const ProductLoopFramesInnerKindEnum observed =
      _$productLoopFramesInnerKindEnum_observed;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const ProductLoopFramesInnerKindEnum forecast =
      _$productLoopFramesInnerKindEnum_forecast;

  static Serializer<ProductLoopFramesInnerKindEnum> get serializer =>
      _$productLoopFramesInnerKindEnumSerializer;

  const ProductLoopFramesInnerKindEnum._(String name) : super(name);

  static BuiltSet<ProductLoopFramesInnerKindEnum> get values =>
      _$productLoopFramesInnerKindEnumValues;
  static ProductLoopFramesInnerKindEnum valueOf(String name) =>
      _$productLoopFramesInnerKindEnumValueOf(name);
}
