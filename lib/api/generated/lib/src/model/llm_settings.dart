//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_settings.g.dart';

/// LlmSettings
///
/// Properties:
/// * [chatProvider]
/// * [embeddingProvider]
/// * [askEnabled]
/// * [enrichmentEnabled]
/// * [logContent]
/// * [askMaxTokens]
/// * [allowPrivateLocal] - Allow private-source records in prompts for providers classified as local (039): Ollama or `options.local`, whose base URL resolves only to loopback or private addresses. Never for remote providers. Default false.
/// * [ttsProvider] - Provider of the `tts` role (141): an enabled `openai-compatible` provider whose `/audio/speech` endpoint synthesizes audio briefings (OpenAI, Kokoro-FastAPI, openedai-speech). Budgeted by characters (`options.ttsCharactersPerDay`) and by the provider's requests per minute.
@BuiltValue()
abstract class LlmSettings implements Built<LlmSettings, LlmSettingsBuilder> {
  @BuiltValueField(wireName: r'chatProvider')
  String? get chatProvider;

  @BuiltValueField(wireName: r'embeddingProvider')
  String? get embeddingProvider;

  @BuiltValueField(wireName: r'askEnabled')
  bool? get askEnabled;

  @BuiltValueField(wireName: r'enrichmentEnabled')
  bool? get enrichmentEnabled;

  @BuiltValueField(wireName: r'logContent')
  bool? get logContent;

  @BuiltValueField(wireName: r'askMaxTokens')
  int? get askMaxTokens;

  /// Allow private-source records in prompts for providers classified as local (039): Ollama or `options.local`, whose base URL resolves only to loopback or private addresses. Never for remote providers. Default false.
  @BuiltValueField(wireName: r'allowPrivateLocal')
  bool? get allowPrivateLocal;

  /// Provider of the `tts` role (141): an enabled `openai-compatible` provider whose `/audio/speech` endpoint synthesizes audio briefings (OpenAI, Kokoro-FastAPI, openedai-speech). Budgeted by characters (`options.ttsCharactersPerDay`) and by the provider's requests per minute.
  @BuiltValueField(wireName: r'ttsProvider')
  String? get ttsProvider;

  LlmSettings._();

  factory LlmSettings([void updates(LlmSettingsBuilder b)]) = _$LlmSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmSettings> get serializer => _$LlmSettingsSerializer();
}

class _$LlmSettingsSerializer implements PrimitiveSerializer<LlmSettings> {
  @override
  final Iterable<Type> types = const [LlmSettings, _$LlmSettings];

  @override
  final String wireName = r'LlmSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chatProvider != null) {
      yield r'chatProvider';
      yield serializers.serialize(
        object.chatProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.embeddingProvider != null) {
      yield r'embeddingProvider';
      yield serializers.serialize(
        object.embeddingProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.askEnabled != null) {
      yield r'askEnabled';
      yield serializers.serialize(
        object.askEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enrichmentEnabled != null) {
      yield r'enrichmentEnabled';
      yield serializers.serialize(
        object.enrichmentEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.logContent != null) {
      yield r'logContent';
      yield serializers.serialize(
        object.logContent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.askMaxTokens != null) {
      yield r'askMaxTokens';
      yield serializers.serialize(
        object.askMaxTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.allowPrivateLocal != null) {
      yield r'allowPrivateLocal';
      yield serializers.serialize(
        object.allowPrivateLocal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ttsProvider != null) {
      yield r'ttsProvider';
      yield serializers.serialize(
        object.ttsProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmSettings object, {
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
    required LlmSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chatProvider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.chatProvider = valueDes;
          break;
        case r'embeddingProvider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.embeddingProvider = valueDes;
          break;
        case r'askEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.askEnabled = valueDes;
          break;
        case r'enrichmentEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enrichmentEnabled = valueDes;
          break;
        case r'logContent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.logContent = valueDes;
          break;
        case r'askMaxTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.askMaxTokens = valueDes;
          break;
        case r'allowPrivateLocal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowPrivateLocal = valueDes;
          break;
        case r'ttsProvider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ttsProvider = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmSettingsBuilder();
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
