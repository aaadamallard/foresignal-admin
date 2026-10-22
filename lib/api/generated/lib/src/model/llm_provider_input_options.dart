//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_input_options.g.dart';

/// LlmProviderInputOptions
///
/// Properties:
/// * [effort]
/// * [maxTokens]
/// * [temperature] - Sampling temperature 0–2 for openai-compatible and ollama providers; refused for anthropic (current Claude models control depth with effort)
/// * [extraHeaders] - Extra request headers (for example OpenRouter `HTTP-Referer`); Authorization, x-api-key, Content-Type and the anthropic-* headers are reserved
/// * [local] - Treat this provider as local for LLM egress (private-source records may be sent to it, 026/039); `ollama` is always local
/// * [ttsModel] - Speech model for the `tts` role (141), sent as `model` to `{baseUrl}/audio/speech`; openai-compatible only (for example `tts-1`, `gpt-4o-mini-tts`, `kokoro`)
/// * [ttsCharactersPerDay] - Daily character budget of the `tts` role (141), per UTC day
@BuiltValue()
abstract class LlmProviderInputOptions
    implements Built<LlmProviderInputOptions, LlmProviderInputOptionsBuilder> {
  @BuiltValueField(wireName: r'effort')
  LlmProviderInputOptionsEffortEnum? get effort;
  // enum effortEnum {  low,  medium,  high,  xhigh,  max,  };

  @BuiltValueField(wireName: r'maxTokens')
  int? get maxTokens;

  /// Sampling temperature 0–2 for openai-compatible and ollama providers; refused for anthropic (current Claude models control depth with effort)
  @BuiltValueField(wireName: r'temperature')
  num? get temperature;

  /// Extra request headers (for example OpenRouter `HTTP-Referer`); Authorization, x-api-key, Content-Type and the anthropic-* headers are reserved
  @BuiltValueField(wireName: r'extraHeaders')
  BuiltMap<String, String>? get extraHeaders;

  /// Treat this provider as local for LLM egress (private-source records may be sent to it, 026/039); `ollama` is always local
  @BuiltValueField(wireName: r'local')
  bool? get local;

  /// Speech model for the `tts` role (141), sent as `model` to `{baseUrl}/audio/speech`; openai-compatible only (for example `tts-1`, `gpt-4o-mini-tts`, `kokoro`)
  @BuiltValueField(wireName: r'ttsModel')
  String? get ttsModel;

  /// Daily character budget of the `tts` role (141), per UTC day
  @BuiltValueField(wireName: r'ttsCharactersPerDay')
  int? get ttsCharactersPerDay;

  LlmProviderInputOptions._();

  factory LlmProviderInputOptions(
          [void updates(LlmProviderInputOptionsBuilder b)]) =
      _$LlmProviderInputOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderInputOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderInputOptions> get serializer =>
      _$LlmProviderInputOptionsSerializer();
}

class _$LlmProviderInputOptionsSerializer
    implements PrimitiveSerializer<LlmProviderInputOptions> {
  @override
  final Iterable<Type> types = const [
    LlmProviderInputOptions,
    _$LlmProviderInputOptions
  ];

  @override
  final String wireName = r'LlmProviderInputOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderInputOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType(LlmProviderInputOptionsEffortEnum),
      );
    }
    if (object.maxTokens != null) {
      yield r'maxTokens';
      yield serializers.serialize(
        object.maxTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.temperature != null) {
      yield r'temperature';
      yield serializers.serialize(
        object.temperature,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.extraHeaders != null) {
      yield r'extraHeaders';
      yield serializers.serialize(
        object.extraHeaders,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ttsModel != null) {
      yield r'ttsModel';
      yield serializers.serialize(
        object.ttsModel,
        specifiedType: const FullType(String),
      );
    }
    if (object.ttsCharactersPerDay != null) {
      yield r'ttsCharactersPerDay';
      yield serializers.serialize(
        object.ttsCharactersPerDay,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderInputOptions object, {
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
    required LlmProviderInputOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'effort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(LlmProviderInputOptionsEffortEnum),
          ) as LlmProviderInputOptionsEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        case r'maxTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTokens = valueDes;
          break;
        case r'temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.temperature = valueDes;
          break;
        case r'extraHeaders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.extraHeaders.replace(valueDes);
          break;
        case r'local':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.local = valueDes;
          break;
        case r'ttsModel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ttsModel = valueDes;
          break;
        case r'ttsCharactersPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ttsCharactersPerDay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderInputOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderInputOptionsBuilder();
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

class LlmProviderInputOptionsEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const LlmProviderInputOptionsEffortEnum low =
      _$llmProviderInputOptionsEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const LlmProviderInputOptionsEffortEnum medium =
      _$llmProviderInputOptionsEffortEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const LlmProviderInputOptionsEffortEnum high =
      _$llmProviderInputOptionsEffortEnum_high;
  @BuiltValueEnumConst(wireName: r'xhigh')
  static const LlmProviderInputOptionsEffortEnum xhigh =
      _$llmProviderInputOptionsEffortEnum_xhigh;
  @BuiltValueEnumConst(wireName: r'max')
  static const LlmProviderInputOptionsEffortEnum max =
      _$llmProviderInputOptionsEffortEnum_max;

  static Serializer<LlmProviderInputOptionsEffortEnum> get serializer =>
      _$llmProviderInputOptionsEffortEnumSerializer;

  const LlmProviderInputOptionsEffortEnum._(String name) : super(name);

  static BuiltSet<LlmProviderInputOptionsEffortEnum> get values =>
      _$llmProviderInputOptionsEffortEnumValues;
  static LlmProviderInputOptionsEffortEnum valueOf(String name) =>
      _$llmProviderInputOptionsEffortEnumValueOf(name);
}
