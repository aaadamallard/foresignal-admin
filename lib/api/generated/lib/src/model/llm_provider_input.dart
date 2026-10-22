//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/llm_provider_input_options.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_input.g.dart';

/// LlmProviderInput
///
/// Properties:
/// * [id]
/// * [type]
/// * [baseUrl] - Defaults: anthropic → https://api.anthropic.com, ollama → http://ollama:11434
/// * [chatModel]
/// * [embeddingModel]
/// * [embeddingDimensions]
/// * [apiKey] - Write-only
/// * [options]
/// * [requestsPerMinute]
/// * [tokensPerDay]
/// * [enabled]
/// * [knowledgeCutoff] - Training-data cutoff of the chat model (`YYYY-MM-DD`)
@BuiltValue()
abstract class LlmProviderInput
    implements Built<LlmProviderInput, LlmProviderInputBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  LlmProviderInputTypeEnum get type;
  // enum typeEnum {  anthropic,  openai-compatible,  ollama,  };

  /// Defaults: anthropic → https://api.anthropic.com, ollama → http://ollama:11434
  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'chatModel')
  String? get chatModel;

  @BuiltValueField(wireName: r'embeddingModel')
  String? get embeddingModel;

  @BuiltValueField(wireName: r'embeddingDimensions')
  int? get embeddingDimensions;

  /// Write-only
  @BuiltValueField(wireName: r'apiKey')
  String? get apiKey;

  @BuiltValueField(wireName: r'options')
  LlmProviderInputOptions? get options;

  @BuiltValueField(wireName: r'requestsPerMinute')
  int? get requestsPerMinute;

  @BuiltValueField(wireName: r'tokensPerDay')
  int? get tokensPerDay;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Training-data cutoff of the chat model (`YYYY-MM-DD`)
  @BuiltValueField(wireName: r'knowledgeCutoff')
  Date? get knowledgeCutoff;

  LlmProviderInput._();

  factory LlmProviderInput([void updates(LlmProviderInputBuilder b)]) =
      _$LlmProviderInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderInput> get serializer =>
      _$LlmProviderInputSerializer();
}

class _$LlmProviderInputSerializer
    implements PrimitiveSerializer<LlmProviderInput> {
  @override
  final Iterable<Type> types = const [LlmProviderInput, _$LlmProviderInput];

  @override
  final String wireName = r'LlmProviderInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(LlmProviderInputTypeEnum),
    );
    if (object.baseUrl != null) {
      yield r'baseUrl';
      yield serializers.serialize(
        object.baseUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.chatModel != null) {
      yield r'chatModel';
      yield serializers.serialize(
        object.chatModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.embeddingModel != null) {
      yield r'embeddingModel';
      yield serializers.serialize(
        object.embeddingModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.embeddingDimensions != null) {
      yield r'embeddingDimensions';
      yield serializers.serialize(
        object.embeddingDimensions,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.apiKey != null) {
      yield r'apiKey';
      yield serializers.serialize(
        object.apiKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(LlmProviderInputOptions),
      );
    }
    if (object.requestsPerMinute != null) {
      yield r'requestsPerMinute';
      yield serializers.serialize(
        object.requestsPerMinute,
        specifiedType: const FullType(int),
      );
    }
    if (object.tokensPerDay != null) {
      yield r'tokensPerDay';
      yield serializers.serialize(
        object.tokensPerDay,
        specifiedType: const FullType(int),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.knowledgeCutoff != null) {
      yield r'knowledgeCutoff';
      yield serializers.serialize(
        object.knowledgeCutoff,
        specifiedType: const FullType.nullable(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderInput object, {
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
    required LlmProviderInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LlmProviderInputTypeEnum),
          ) as LlmProviderInputTypeEnum;
          result.type = valueDes;
          break;
        case r'baseUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.baseUrl = valueDes;
          break;
        case r'chatModel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chatModel = valueDes;
          break;
        case r'embeddingModel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.embeddingModel = valueDes;
          break;
        case r'embeddingDimensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.embeddingDimensions = valueDes;
          break;
        case r'apiKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.apiKey = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LlmProviderInputOptions),
          ) as LlmProviderInputOptions?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        case r'requestsPerMinute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.requestsPerMinute = valueDes;
          break;
        case r'tokensPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tokensPerDay = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'knowledgeCutoff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderInputBuilder();
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

class LlmProviderInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'anthropic')
  static const LlmProviderInputTypeEnum anthropic =
      _$llmProviderInputTypeEnum_anthropic;
  @BuiltValueEnumConst(wireName: r'openai-compatible')
  static const LlmProviderInputTypeEnum openaiCompatible =
      _$llmProviderInputTypeEnum_openaiCompatible;
  @BuiltValueEnumConst(wireName: r'ollama')
  static const LlmProviderInputTypeEnum ollama =
      _$llmProviderInputTypeEnum_ollama;

  static Serializer<LlmProviderInputTypeEnum> get serializer =>
      _$llmProviderInputTypeEnumSerializer;

  const LlmProviderInputTypeEnum._(String name) : super(name);

  static BuiltSet<LlmProviderInputTypeEnum> get values =>
      _$llmProviderInputTypeEnumValues;
  static LlmProviderInputTypeEnum valueOf(String name) =>
      _$llmProviderInputTypeEnumValueOf(name);
}
