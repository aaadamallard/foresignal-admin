//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/product_temporal_retention_ladder_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_temporal_retention.g.dart';

/// Frame retention ladder
///
/// Properties:
/// * [ladder] - Thinning rungs, ascending
/// * [maxAge] - Frames older than this are deleted (observation products); null keeps them until the disk quota evicts them. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [runs] - Complete forecast runs kept (forecasts: 2)
/// * [summary] - One-line description
@BuiltValue()
abstract class ProductTemporalRetention
    implements
        Built<ProductTemporalRetention, ProductTemporalRetentionBuilder> {
  /// Thinning rungs, ascending
  @BuiltValueField(wireName: r'ladder')
  BuiltList<ProductTemporalRetentionLadderInner>? get ladder;

  /// Frames older than this are deleted (observation products); null keeps them until the disk quota evicts them. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'maxAge')
  String? get maxAge;

  /// Complete forecast runs kept (forecasts: 2)
  @BuiltValueField(wireName: r'runs')
  int? get runs;

  /// One-line description
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  ProductTemporalRetention._();

  factory ProductTemporalRetention(
          [void updates(ProductTemporalRetentionBuilder b)]) =
      _$ProductTemporalRetention;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductTemporalRetentionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductTemporalRetention> get serializer =>
      _$ProductTemporalRetentionSerializer();
}

class _$ProductTemporalRetentionSerializer
    implements PrimitiveSerializer<ProductTemporalRetention> {
  @override
  final Iterable<Type> types = const [
    ProductTemporalRetention,
    _$ProductTemporalRetention
  ];

  @override
  final String wireName = r'ProductTemporalRetention';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductTemporalRetention object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ladder != null) {
      yield r'ladder';
      yield serializers.serialize(
        object.ladder,
        specifiedType: const FullType(
            BuiltList, [FullType(ProductTemporalRetentionLadderInner)]),
      );
    }
    if (object.maxAge != null) {
      yield r'maxAge';
      yield serializers.serialize(
        object.maxAge,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runs != null) {
      yield r'runs';
      yield serializers.serialize(
        object.runs,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductTemporalRetention object, {
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
    required ProductTemporalRetentionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ladder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ProductTemporalRetentionLadderInner)]),
          ) as BuiltList<ProductTemporalRetentionLadderInner>?;
          if (valueDes == null) continue;
          result.ladder.replace(valueDes);
          break;
        case r'maxAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maxAge = valueDes;
          break;
        case r'runs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.runs = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductTemporalRetention deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductTemporalRetentionBuilder();
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
