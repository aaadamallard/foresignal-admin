//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/llm_test_result_chat.dart';
import 'package:foresignal_api/src/model/llm_test_result_embedding.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_test_result.g.dart';

/// LlmTestResult
///
/// Properties:
/// * [success]
/// * [chat]
/// * [embedding]
/// * [error]
/// * [refusalCategory]
@BuiltValue()
abstract class LlmTestResult
    implements Built<LlmTestResult, LlmTestResultBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'chat')
  LlmTestResultChat? get chat;

  @BuiltValueField(wireName: r'embedding')
  LlmTestResultEmbedding? get embedding;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'refusalCategory')
  String? get refusalCategory;

  LlmTestResult._();

  factory LlmTestResult([void updates(LlmTestResultBuilder b)]) =
      _$LlmTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmTestResult> get serializer =>
      _$LlmTestResultSerializer();
}

class _$LlmTestResultSerializer implements PrimitiveSerializer<LlmTestResult> {
  @override
  final Iterable<Type> types = const [LlmTestResult, _$LlmTestResult];

  @override
  final String wireName = r'LlmTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.chat != null) {
      yield r'chat';
      yield serializers.serialize(
        object.chat,
        specifiedType: const FullType(LlmTestResultChat),
      );
    }
    if (object.embedding != null) {
      yield r'embedding';
      yield serializers.serialize(
        object.embedding,
        specifiedType: const FullType.nullable(LlmTestResultEmbedding),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.refusalCategory != null) {
      yield r'refusalCategory';
      yield serializers.serialize(
        object.refusalCategory,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmTestResult object, {
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
    required LlmTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'chat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LlmTestResultChat),
          ) as LlmTestResultChat?;
          if (valueDes == null) continue;
          result.chat.replace(valueDes);
          break;
        case r'embedding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LlmTestResultEmbedding),
          ) as LlmTestResultEmbedding?;
          if (valueDes == null) continue;
          result.embedding.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'refusalCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refusalCategory = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmTestResultBuilder();
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
