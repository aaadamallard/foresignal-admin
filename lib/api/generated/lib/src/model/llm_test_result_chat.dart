//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_test_result_chat.g.dart';

/// Chat probe result
///
/// Properties:
/// * [model]
/// * [latencyMs]
/// * [inputTokens]
/// * [outputTokens]
/// * [text]
/// * [cachedTokens]
/// * [stopReason]
@BuiltValue()
abstract class LlmTestResultChat
    implements Built<LlmTestResultChat, LlmTestResultChatBuilder> {
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'latencyMs')
  int? get latencyMs;

  @BuiltValueField(wireName: r'inputTokens')
  int? get inputTokens;

  @BuiltValueField(wireName: r'outputTokens')
  int? get outputTokens;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'cachedTokens')
  int? get cachedTokens;

  @BuiltValueField(wireName: r'stopReason')
  LlmTestResultChatStopReasonEnum? get stopReason;
  // enum stopReasonEnum {  end,  tool_use,  max_tokens,  refusal,  error,  };

  LlmTestResultChat._();

  factory LlmTestResultChat([void updates(LlmTestResultChatBuilder b)]) =
      _$LlmTestResultChat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmTestResultChatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmTestResultChat> get serializer =>
      _$LlmTestResultChatSerializer();
}

class _$LlmTestResultChatSerializer
    implements PrimitiveSerializer<LlmTestResultChat> {
  @override
  final Iterable<Type> types = const [LlmTestResultChat, _$LlmTestResultChat];

  @override
  final String wireName = r'LlmTestResultChat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmTestResultChat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.latencyMs != null) {
      yield r'latencyMs';
      yield serializers.serialize(
        object.latencyMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.inputTokens != null) {
      yield r'inputTokens';
      yield serializers.serialize(
        object.inputTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.outputTokens != null) {
      yield r'outputTokens';
      yield serializers.serialize(
        object.outputTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.cachedTokens != null) {
      yield r'cachedTokens';
      yield serializers.serialize(
        object.cachedTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.stopReason != null) {
      yield r'stopReason';
      yield serializers.serialize(
        object.stopReason,
        specifiedType: const FullType(LlmTestResultChatStopReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmTestResultChat object, {
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
    required LlmTestResultChatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'latencyMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.latencyMs = valueDes;
          break;
        case r'inputTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.inputTokens = valueDes;
          break;
        case r'outputTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.outputTokens = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'cachedTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cachedTokens = valueDes;
          break;
        case r'stopReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      LlmTestResultChatStopReasonEnum,
                    ),
                  )
                  as LlmTestResultChatStopReasonEnum?;
          if (valueDes == null) continue;
          result.stopReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmTestResultChat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmTestResultChatBuilder();
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

class LlmTestResultChatStopReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'end')
  static const LlmTestResultChatStopReasonEnum end =
      _$llmTestResultChatStopReasonEnum_end;
  @BuiltValueEnumConst(wireName: r'tool_use')
  static const LlmTestResultChatStopReasonEnum toolUse =
      _$llmTestResultChatStopReasonEnum_toolUse;
  @BuiltValueEnumConst(wireName: r'max_tokens')
  static const LlmTestResultChatStopReasonEnum maxTokens =
      _$llmTestResultChatStopReasonEnum_maxTokens;
  @BuiltValueEnumConst(wireName: r'refusal')
  static const LlmTestResultChatStopReasonEnum refusal =
      _$llmTestResultChatStopReasonEnum_refusal;
  @BuiltValueEnumConst(wireName: r'error')
  static const LlmTestResultChatStopReasonEnum error =
      _$llmTestResultChatStopReasonEnum_error;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LlmTestResultChatStopReasonEnum unknownDefaultOpenApi =
      _$llmTestResultChatStopReasonEnum_unknownDefaultOpenApi;

  static Serializer<LlmTestResultChatStopReasonEnum> get serializer =>
      _$llmTestResultChatStopReasonEnumSerializer;

  const LlmTestResultChatStopReasonEnum._(String name) : super(name);

  static BuiltSet<LlmTestResultChatStopReasonEnum> get values =>
      _$llmTestResultChatStopReasonEnumValues;
  static LlmTestResultChatStopReasonEnum valueOf(String name) =>
      _$llmTestResultChatStopReasonEnumValueOf(name);
}
