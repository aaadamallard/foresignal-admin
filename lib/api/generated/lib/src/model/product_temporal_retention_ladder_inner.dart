//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_temporal_retention_ladder_inner.g.dart';

/// Thinning rung: frames older than `olderThan` are kept every `keepEvery`
///
/// Properties:
/// * [olderThan] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [keepEvery] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class ProductTemporalRetentionLadderInner
    implements
        Built<ProductTemporalRetentionLadderInner,
            ProductTemporalRetentionLadderInnerBuilder> {
  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'olderThan')
  String get olderThan;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'keepEvery')
  String get keepEvery;

  ProductTemporalRetentionLadderInner._();

  factory ProductTemporalRetentionLadderInner(
          [void updates(ProductTemporalRetentionLadderInnerBuilder b)]) =
      _$ProductTemporalRetentionLadderInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductTemporalRetentionLadderInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductTemporalRetentionLadderInner> get serializer =>
      _$ProductTemporalRetentionLadderInnerSerializer();
}

class _$ProductTemporalRetentionLadderInnerSerializer
    implements PrimitiveSerializer<ProductTemporalRetentionLadderInner> {
  @override
  final Iterable<Type> types = const [
    ProductTemporalRetentionLadderInner,
    _$ProductTemporalRetentionLadderInner
  ];

  @override
  final String wireName = r'ProductTemporalRetentionLadderInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductTemporalRetentionLadderInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'olderThan';
    yield serializers.serialize(
      object.olderThan,
      specifiedType: const FullType(String),
    );
    yield r'keepEvery';
    yield serializers.serialize(
      object.keepEvery,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductTemporalRetentionLadderInner object, {
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
    required ProductTemporalRetentionLadderInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'olderThan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.olderThan = valueDes;
          break;
        case r'keepEvery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keepEvery = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductTemporalRetentionLadderInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductTemporalRetentionLadderInnerBuilder();
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
