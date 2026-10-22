//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_test_result_embedding.g.dart';

/// LlmTestResultEmbedding
///
/// Properties:
/// * [model]
/// * [dimensions]
/// * [latencyMs]
@BuiltValue()
abstract class LlmTestResultEmbedding
    implements Built<LlmTestResultEmbedding, LlmTestResultEmbeddingBuilder> {
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'dimensions')
  int? get dimensions;

  @BuiltValueField(wireName: r'latencyMs')
  int? get latencyMs;

  LlmTestResultEmbedding._();

  factory LlmTestResultEmbedding(
          [void updates(LlmTestResultEmbeddingBuilder b)]) =
      _$LlmTestResultEmbedding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmTestResultEmbeddingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmTestResultEmbedding> get serializer =>
      _$LlmTestResultEmbeddingSerializer();
}

class _$LlmTestResultEmbeddingSerializer
    implements PrimitiveSerializer<LlmTestResultEmbedding> {
  @override
  final Iterable<Type> types = const [
    LlmTestResultEmbedding,
    _$LlmTestResultEmbedding
  ];

  @override
  final String wireName = r'LlmTestResultEmbedding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmTestResultEmbedding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.dimensions != null) {
      yield r'dimensions';
      yield serializers.serialize(
        object.dimensions,
        specifiedType: const FullType(int),
      );
    }
    if (object.latencyMs != null) {
      yield r'latencyMs';
      yield serializers.serialize(
        object.latencyMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmTestResultEmbedding object, {
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
    required LlmTestResultEmbeddingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'dimensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dimensions = valueDes;
          break;
        case r'latencyMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.latencyMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmTestResultEmbedding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmTestResultEmbeddingBuilder();
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
