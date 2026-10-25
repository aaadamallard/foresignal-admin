//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/llm_model_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/llm_test_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_probe_result.g.dart';

/// The result of probeLlmProvider (162): the connection test and the provider's models from one round trip.
///
/// Properties:
/// * [test]
/// * [models] - The provider's models (Anthropic Models API, OpenAI-compatible /models, Ollama /api/tags); empty when it could not list them
/// * [modelsError] - Why the models could not be listed, or null; a provider that cannot enumerate its models answers an empty list with this set
@BuiltValue()
abstract class LlmProbeResult
    implements Built<LlmProbeResult, LlmProbeResultBuilder> {
  @BuiltValueField(wireName: r'test')
  LlmTestResult get test;

  /// The provider's models (Anthropic Models API, OpenAI-compatible /models, Ollama /api/tags); empty when it could not list them
  @BuiltValueField(wireName: r'models')
  BuiltList<LlmModelInfo> get models;

  /// Why the models could not be listed, or null; a provider that cannot enumerate its models answers an empty list with this set
  @BuiltValueField(wireName: r'modelsError')
  String? get modelsError;

  LlmProbeResult._();

  factory LlmProbeResult([void updates(LlmProbeResultBuilder b)]) =
      _$LlmProbeResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProbeResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProbeResult> get serializer =>
      _$LlmProbeResultSerializer();
}

class _$LlmProbeResultSerializer
    implements PrimitiveSerializer<LlmProbeResult> {
  @override
  final Iterable<Type> types = const [LlmProbeResult, _$LlmProbeResult];

  @override
  final String wireName = r'LlmProbeResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProbeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'test';
    yield serializers.serialize(
      object.test,
      specifiedType: const FullType(LlmTestResult),
    );
    yield r'models';
    yield serializers.serialize(
      object.models,
      specifiedType: const FullType(BuiltList, [FullType(LlmModelInfo)]),
    );
    if (object.modelsError != null) {
      yield r'modelsError';
      yield serializers.serialize(
        object.modelsError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProbeResult object, {
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
    required LlmProbeResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'test':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmTestResult),
                  )
                  as LlmTestResult;
          result.test.replace(valueDes);
          break;
        case r'models':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(LlmModelInfo),
                    ]),
                  )
                  as BuiltList<LlmModelInfo>;
          result.models.replace(valueDes);
          break;
        case r'modelsError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.modelsError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProbeResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProbeResultBuilder();
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
