//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_pricing.g.dart';

/// A provider's prices in USD per million tokens (162). Every price is optional; an unset price counts those tokens at zero. The spend the USD caps enforce is each call's metered tokens at these prices: input at inputUsdPerMillionTokens, output at outputUsdPerMillionTokens, and cached input (Anthropic cache reads, OpenAI `prompt_tokens_details.cached_tokens`) at cachedInputUsdPerMillionTokens, or the input price when that is unset; embedding calls at embeddingUsdPerMillionTokens. Prices take at most 6 decimal places, from 0 to 100000.
///
/// Properties:
/// * [inputUsdPerMillionTokens] - USD per million input tokens
/// * [outputUsdPerMillionTokens] - USD per million output tokens (thinking included)
/// * [cachedInputUsdPerMillionTokens] - USD per million cached input tokens; the input price when unset
/// * [embeddingUsdPerMillionTokens] - USD per million embedding input tokens; refused for anthropic, which has no embeddings endpoint
@BuiltValue()
abstract class LlmPricing implements Built<LlmPricing, LlmPricingBuilder> {
  /// USD per million input tokens
  @BuiltValueField(wireName: r'inputUsdPerMillionTokens')
  num? get inputUsdPerMillionTokens;

  /// USD per million output tokens (thinking included)
  @BuiltValueField(wireName: r'outputUsdPerMillionTokens')
  num? get outputUsdPerMillionTokens;

  /// USD per million cached input tokens; the input price when unset
  @BuiltValueField(wireName: r'cachedInputUsdPerMillionTokens')
  num? get cachedInputUsdPerMillionTokens;

  /// USD per million embedding input tokens; refused for anthropic, which has no embeddings endpoint
  @BuiltValueField(wireName: r'embeddingUsdPerMillionTokens')
  num? get embeddingUsdPerMillionTokens;

  LlmPricing._();

  factory LlmPricing([void updates(LlmPricingBuilder b)]) = _$LlmPricing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmPricingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmPricing> get serializer => _$LlmPricingSerializer();
}

class _$LlmPricingSerializer implements PrimitiveSerializer<LlmPricing> {
  @override
  final Iterable<Type> types = const [LlmPricing, _$LlmPricing];

  @override
  final String wireName = r'LlmPricing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmPricing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inputUsdPerMillionTokens != null) {
      yield r'inputUsdPerMillionTokens';
      yield serializers.serialize(
        object.inputUsdPerMillionTokens,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.outputUsdPerMillionTokens != null) {
      yield r'outputUsdPerMillionTokens';
      yield serializers.serialize(
        object.outputUsdPerMillionTokens,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.cachedInputUsdPerMillionTokens != null) {
      yield r'cachedInputUsdPerMillionTokens';
      yield serializers.serialize(
        object.cachedInputUsdPerMillionTokens,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.embeddingUsdPerMillionTokens != null) {
      yield r'embeddingUsdPerMillionTokens';
      yield serializers.serialize(
        object.embeddingUsdPerMillionTokens,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmPricing object, {
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
    required LlmPricingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inputUsdPerMillionTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.inputUsdPerMillionTokens = valueDes;
          break;
        case r'outputUsdPerMillionTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.outputUsdPerMillionTokens = valueDes;
          break;
        case r'cachedInputUsdPerMillionTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.cachedInputUsdPerMillionTokens = valueDes;
          break;
        case r'embeddingUsdPerMillionTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.embeddingUsdPerMillionTokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmPricing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmPricingBuilder();
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
