//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/llm_provider_input_options.dart';
import 'package:foresignal_api/src/model/llm_pricing.dart';
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
/// * [pricing] - Prices in USD per million tokens (162); null or omitted means unpriced. Required for a USD cap.
/// * [hourlyCapUsd] - The most this provider may spend in the UTC clock hour (it resets at the top of the hour), in USD, at most 4 decimal places; null means no cap (162). Spend is the provider's self-metered tokens at its `pricing`, so a cap needs pricing. Once a window's spend, with the estimated cost of the calls in flight, reaches its cap, calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset. Applies on top of requestsPerMinute and tokensPerDay.
/// * [dailyCapUsd] - The most this provider may spend in the UTC day (it resets at 00:00 UTC, as tokensPerDay), in USD, at most 4 decimal places; null means no cap (162). Spend is the provider's self-metered tokens at its `pricing`, so a cap needs pricing. Once a window's spend, with the estimated cost of the calls in flight, reaches its cap, calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset. Applies on top of requestsPerMinute and tokensPerDay.
/// * [monthlyCapUsd] - The most this provider may spend in the UTC calendar month (it resets at 00:00 UTC on the 1st), in USD, at most 4 decimal places; null means no cap (162). Spend is the provider's self-metered tokens at its `pricing`, so a cap needs pricing. Once a window's spend, with the estimated cost of the calls in flight, reaches its cap, calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset. Applies on top of requestsPerMinute and tokensPerDay.
/// * [shared] - On create: true for a shared provider (needs `llm.shared.manage`), false for a personal one owned by the caller (needs `self.llm`). Absent, a user holding `self.llm` gets a personal provider and anyone else a shared one; an API token always creates shared providers. Ignored on replace, which keeps the kind (R2-011).
/// * [perUserHourlyCapUsd] - The most each user may spend on this shared provider in the UTC clock hour (it resets at the top of the hour), in USD, at most 4 decimal places; null means no per-user cap (R2-011). It counts only that user's own calls, so one user cannot exhaust the shared budget while the others continue; the provider's own caps still bound the total. Needs `pricing`; refused for a personal provider, whose own caps are already its owner's. Once reached, that user's calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset.
/// * [perUserDailyCapUsd] - The most each user may spend on this shared provider in the UTC day (it resets at 00:00 UTC), in USD, at most 4 decimal places; null means no per-user cap (R2-011). It counts only that user's own calls, so one user cannot exhaust the shared budget while the others continue; the provider's own caps still bound the total. Needs `pricing`; refused for a personal provider, whose own caps are already its owner's. Once reached, that user's calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset.
/// * [perUserMonthlyCapUsd] - The most each user may spend on this shared provider in the UTC calendar month (it resets at 00:00 UTC on the 1st), in USD, at most 4 decimal places; null means no per-user cap (R2-011). It counts only that user's own calls, so one user cannot exhaust the shared budget while the others continue; the provider's own caps still bound the total. Needs `pricing`; refused for a personal provider, whose own caps are already its owner's. Once reached, that user's calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset.
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

  /// Prices in USD per million tokens (162); null or omitted means unpriced. Required for a USD cap.
  @BuiltValueField(wireName: r'pricing')
  LlmPricing? get pricing;

  /// The most this provider may spend in the UTC clock hour (it resets at the top of the hour), in USD, at most 4 decimal places; null means no cap (162). Spend is the provider's self-metered tokens at its `pricing`, so a cap needs pricing. Once a window's spend, with the estimated cost of the calls in flight, reaches its cap, calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset. Applies on top of requestsPerMinute and tokensPerDay.
  @BuiltValueField(wireName: r'hourlyCapUsd')
  num? get hourlyCapUsd;

  /// The most this provider may spend in the UTC day (it resets at 00:00 UTC, as tokensPerDay), in USD, at most 4 decimal places; null means no cap (162). Spend is the provider's self-metered tokens at its `pricing`, so a cap needs pricing. Once a window's spend, with the estimated cost of the calls in flight, reaches its cap, calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset. Applies on top of requestsPerMinute and tokensPerDay.
  @BuiltValueField(wireName: r'dailyCapUsd')
  num? get dailyCapUsd;

  /// The most this provider may spend in the UTC calendar month (it resets at 00:00 UTC on the 1st), in USD, at most 4 decimal places; null means no cap (162). Spend is the provider's self-metered tokens at its `pricing`, so a cap needs pricing. Once a window's spend, with the estimated cost of the calls in flight, reaches its cap, calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset. Applies on top of requestsPerMinute and tokensPerDay.
  @BuiltValueField(wireName: r'monthlyCapUsd')
  num? get monthlyCapUsd;

  /// On create: true for a shared provider (needs `llm.shared.manage`), false for a personal one owned by the caller (needs `self.llm`). Absent, a user holding `self.llm` gets a personal provider and anyone else a shared one; an API token always creates shared providers. Ignored on replace, which keeps the kind (R2-011).
  @BuiltValueField(wireName: r'shared')
  bool? get shared;

  /// The most each user may spend on this shared provider in the UTC clock hour (it resets at the top of the hour), in USD, at most 4 decimal places; null means no per-user cap (R2-011). It counts only that user's own calls, so one user cannot exhaust the shared budget while the others continue; the provider's own caps still bound the total. Needs `pricing`; refused for a personal provider, whose own caps are already its owner's. Once reached, that user's calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset.
  @BuiltValueField(wireName: r'perUserHourlyCapUsd')
  num? get perUserHourlyCapUsd;

  /// The most each user may spend on this shared provider in the UTC day (it resets at 00:00 UTC), in USD, at most 4 decimal places; null means no per-user cap (R2-011). It counts only that user's own calls, so one user cannot exhaust the shared budget while the others continue; the provider's own caps still bound the total. Needs `pricing`; refused for a personal provider, whose own caps are already its owner's. Once reached, that user's calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset.
  @BuiltValueField(wireName: r'perUserDailyCapUsd')
  num? get perUserDailyCapUsd;

  /// The most each user may spend on this shared provider in the UTC calendar month (it resets at 00:00 UTC on the 1st), in USD, at most 4 decimal places; null means no per-user cap (R2-011). It counts only that user's own calls, so one user cannot exhaust the shared budget while the others continue; the provider's own caps still bound the total. Needs `pricing`; refused for a personal provider, whose own caps are already its owner's. Once reached, that user's calls are refused 429 LLM_BUDGET_EXCEEDED with Retry-After at the window's reset.
  @BuiltValueField(wireName: r'perUserMonthlyCapUsd')
  num? get perUserMonthlyCapUsd;

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
    if (object.pricing != null) {
      yield r'pricing';
      yield serializers.serialize(
        object.pricing,
        specifiedType: const FullType.nullable(LlmPricing),
      );
    }
    if (object.hourlyCapUsd != null) {
      yield r'hourlyCapUsd';
      yield serializers.serialize(
        object.hourlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.dailyCapUsd != null) {
      yield r'dailyCapUsd';
      yield serializers.serialize(
        object.dailyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.monthlyCapUsd != null) {
      yield r'monthlyCapUsd';
      yield serializers.serialize(
        object.monthlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.shared != null) {
      yield r'shared';
      yield serializers.serialize(
        object.shared,
        specifiedType: const FullType(bool),
      );
    }
    if (object.perUserHourlyCapUsd != null) {
      yield r'perUserHourlyCapUsd';
      yield serializers.serialize(
        object.perUserHourlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.perUserDailyCapUsd != null) {
      yield r'perUserDailyCapUsd';
      yield serializers.serialize(
        object.perUserDailyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.perUserMonthlyCapUsd != null) {
      yield r'perUserMonthlyCapUsd';
      yield serializers.serialize(
        object.perUserMonthlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderInput object, {
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
    required LlmProviderInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmProviderInputTypeEnum),
                  )
                  as LlmProviderInputTypeEnum;
          result.type = valueDes;
          break;
        case r'baseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.baseUrl = valueDes;
          break;
        case r'chatModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.chatModel = valueDes;
          break;
        case r'embeddingModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.embeddingModel = valueDes;
          break;
        case r'embeddingDimensions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.embeddingDimensions = valueDes;
          break;
        case r'apiKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.apiKey = valueDes;
          break;
        case r'options':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      LlmProviderInputOptions,
                    ),
                  )
                  as LlmProviderInputOptions?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        case r'requestsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.requestsPerMinute = valueDes;
          break;
        case r'tokensPerDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tokensPerDay = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'knowledgeCutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        case r'pricing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LlmPricing),
                  )
                  as LlmPricing?;
          if (valueDes == null) continue;
          result.pricing.replace(valueDes);
          break;
        case r'hourlyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.hourlyCapUsd = valueDes;
          break;
        case r'dailyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.dailyCapUsd = valueDes;
          break;
        case r'monthlyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.monthlyCapUsd = valueDes;
          break;
        case r'shared':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.shared = valueDes;
          break;
        case r'perUserHourlyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.perUserHourlyCapUsd = valueDes;
          break;
        case r'perUserDailyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.perUserDailyCapUsd = valueDes;
          break;
        case r'perUserMonthlyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.perUserMonthlyCapUsd = valueDes;
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
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LlmProviderInputTypeEnum unknownDefaultOpenApi =
      _$llmProviderInputTypeEnum_unknownDefaultOpenApi;

  static Serializer<LlmProviderInputTypeEnum> get serializer =>
      _$llmProviderInputTypeEnumSerializer;

  const LlmProviderInputTypeEnum._(String name) : super(name);

  static BuiltSet<LlmProviderInputTypeEnum> get values =>
      _$llmProviderInputTypeEnumValues;
  static LlmProviderInputTypeEnum valueOf(String name) =>
      _$llmProviderInputTypeEnumValueOf(name);
}
