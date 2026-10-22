//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider.g.dart';

/// LlmProvider
///
/// Properties:
/// * [id]
/// * [type]
/// * [baseUrl]
/// * [chatModel]
/// * [embeddingModel]
/// * [embeddingDimensions]
/// * [apiKeySet]
/// * [options]
/// * [requestsPerMinute]
/// * [tokensPerDay]
/// * [enabled]
/// * [roles]
/// * [status]
/// * [tokensToday]
/// * [lastError]
/// * [updatedAt]
/// * [supportsTools] - False when the chat model rejected tools; Ask then runs retrieval-only
/// * [knowledgeCutoff] - Training-data cutoff of the chat model; required for leak-free retrospective evaluation of LLM forecasters
/// * [lastSuccessAt]
/// * [lastErrorAt]
/// * [consecutiveFailures]
/// * [local] - Treated as local for LLM egress (ollama, or `options.local=true`)
@BuiltValue()
abstract class LlmProvider implements Built<LlmProvider, LlmProviderBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  LlmProviderTypeEnum get type;
  // enum typeEnum {  anthropic,  openai-compatible,  ollama,  };

  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'chatModel')
  String? get chatModel;

  @BuiltValueField(wireName: r'embeddingModel')
  String? get embeddingModel;

  @BuiltValueField(wireName: r'embeddingDimensions')
  int? get embeddingDimensions;

  @BuiltValueField(wireName: r'apiKeySet')
  bool? get apiKeySet;

  @BuiltValueField(wireName: r'options')
  BuiltMap<String, JsonObject?>? get options;

  @BuiltValueField(wireName: r'requestsPerMinute')
  int? get requestsPerMinute;

  @BuiltValueField(wireName: r'tokensPerDay')
  int? get tokensPerDay;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'roles')
  BuiltList<LlmProviderRolesEnum>? get roles;
  // enum rolesEnum {  chat,  embedding,  tts,  };

  @BuiltValueField(wireName: r'status')
  LlmProviderStatusEnum get status;
  // enum statusEnum {  healthy,  degraded,  failing,  idle,  disabled,  };

  @BuiltValueField(wireName: r'tokensToday')
  int? get tokensToday;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  /// False when the chat model rejected tools; Ask then runs retrieval-only
  @BuiltValueField(wireName: r'supportsTools')
  bool? get supportsTools;

  /// Training-data cutoff of the chat model; required for leak-free retrospective evaluation of LLM forecasters
  @BuiltValueField(wireName: r'knowledgeCutoff')
  Date? get knowledgeCutoff;

  @BuiltValueField(wireName: r'lastSuccessAt')
  DateTime? get lastSuccessAt;

  @BuiltValueField(wireName: r'lastErrorAt')
  DateTime? get lastErrorAt;

  @BuiltValueField(wireName: r'consecutiveFailures')
  int? get consecutiveFailures;

  /// Treated as local for LLM egress (ollama, or `options.local=true`)
  @BuiltValueField(wireName: r'local')
  bool? get local;

  LlmProvider._();

  factory LlmProvider([void updates(LlmProviderBuilder b)]) = _$LlmProvider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProvider> get serializer => _$LlmProviderSerializer();
}

class _$LlmProviderSerializer implements PrimitiveSerializer<LlmProvider> {
  @override
  final Iterable<Type> types = const [LlmProvider, _$LlmProvider];

  @override
  final String wireName = r'LlmProvider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProvider object, {
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
      specifiedType: const FullType(LlmProviderTypeEnum),
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
    if (object.apiKeySet != null) {
      yield r'apiKeySet';
      yield serializers.serialize(
        object.apiKeySet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType:
            const FullType(BuiltList, [FullType(LlmProviderRolesEnum)]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(LlmProviderStatusEnum),
    );
    if (object.tokensToday != null) {
      yield r'tokensToday';
      yield serializers.serialize(
        object.tokensToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.supportsTools != null) {
      yield r'supportsTools';
      yield serializers.serialize(
        object.supportsTools,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.knowledgeCutoff != null) {
      yield r'knowledgeCutoff';
      yield serializers.serialize(
        object.knowledgeCutoff,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.lastSuccessAt != null) {
      yield r'lastSuccessAt';
      yield serializers.serialize(
        object.lastSuccessAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastErrorAt != null) {
      yield r'lastErrorAt';
      yield serializers.serialize(
        object.lastErrorAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.consecutiveFailures != null) {
      yield r'consecutiveFailures';
      yield serializers.serialize(
        object.consecutiveFailures,
        specifiedType: const FullType(int),
      );
    }
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProvider object, {
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
    required LlmProviderBuilder result,
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
            specifiedType: const FullType(LlmProviderTypeEnum),
          ) as LlmProviderTypeEnum;
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
        case r'apiKeySet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.apiKeySet = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
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
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LlmProviderRolesEnum)]),
          ) as BuiltList<LlmProviderRolesEnum>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LlmProviderStatusEnum),
          ) as LlmProviderStatusEnum;
          result.status = valueDes;
          break;
        case r'tokensToday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tokensToday = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'supportsTools':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.supportsTools = valueDes;
          break;
        case r'knowledgeCutoff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        case r'lastSuccessAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastSuccessAt = valueDes;
          break;
        case r'lastErrorAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastErrorAt = valueDes;
          break;
        case r'consecutiveFailures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.consecutiveFailures = valueDes;
          break;
        case r'local':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.local = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderBuilder();
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

class LlmProviderTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'anthropic')
  static const LlmProviderTypeEnum anthropic = _$llmProviderTypeEnum_anthropic;
  @BuiltValueEnumConst(wireName: r'openai-compatible')
  static const LlmProviderTypeEnum openaiCompatible =
      _$llmProviderTypeEnum_openaiCompatible;
  @BuiltValueEnumConst(wireName: r'ollama')
  static const LlmProviderTypeEnum ollama = _$llmProviderTypeEnum_ollama;

  static Serializer<LlmProviderTypeEnum> get serializer =>
      _$llmProviderTypeEnumSerializer;

  const LlmProviderTypeEnum._(String name) : super(name);

  static BuiltSet<LlmProviderTypeEnum> get values =>
      _$llmProviderTypeEnumValues;
  static LlmProviderTypeEnum valueOf(String name) =>
      _$llmProviderTypeEnumValueOf(name);
}

class LlmProviderRolesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'chat')
  static const LlmProviderRolesEnum chat = _$llmProviderRolesEnum_chat;
  @BuiltValueEnumConst(wireName: r'embedding')
  static const LlmProviderRolesEnum embedding =
      _$llmProviderRolesEnum_embedding;
  @BuiltValueEnumConst(wireName: r'tts')
  static const LlmProviderRolesEnum tts = _$llmProviderRolesEnum_tts;

  static Serializer<LlmProviderRolesEnum> get serializer =>
      _$llmProviderRolesEnumSerializer;

  const LlmProviderRolesEnum._(String name) : super(name);

  static BuiltSet<LlmProviderRolesEnum> get values =>
      _$llmProviderRolesEnumValues;
  static LlmProviderRolesEnum valueOf(String name) =>
      _$llmProviderRolesEnumValueOf(name);
}

class LlmProviderStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'healthy')
  static const LlmProviderStatusEnum healthy = _$llmProviderStatusEnum_healthy;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const LlmProviderStatusEnum degraded =
      _$llmProviderStatusEnum_degraded;
  @BuiltValueEnumConst(wireName: r'failing')
  static const LlmProviderStatusEnum failing = _$llmProviderStatusEnum_failing;
  @BuiltValueEnumConst(wireName: r'idle')
  static const LlmProviderStatusEnum idle = _$llmProviderStatusEnum_idle;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const LlmProviderStatusEnum disabled =
      _$llmProviderStatusEnum_disabled;

  static Serializer<LlmProviderStatusEnum> get serializer =>
      _$llmProviderStatusEnumSerializer;

  const LlmProviderStatusEnum._(String name) : super(name);

  static BuiltSet<LlmProviderStatusEnum> get values =>
      _$llmProviderStatusEnumValues;
  static LlmProviderStatusEnum valueOf(String name) =>
      _$llmProviderStatusEnumValueOf(name);
}
