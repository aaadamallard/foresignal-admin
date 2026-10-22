//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_model_info.g.dart';

/// LlmModelInfo
///
/// Properties:
/// * [id]
/// * [displayName]
/// * [contextWindow]
/// * [supportsTools]
/// * [supportsEmbeddings]
@BuiltValue()
abstract class LlmModelInfo
    implements Built<LlmModelInfo, LlmModelInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'contextWindow')
  int? get contextWindow;

  @BuiltValueField(wireName: r'supportsTools')
  bool? get supportsTools;

  @BuiltValueField(wireName: r'supportsEmbeddings')
  bool? get supportsEmbeddings;

  LlmModelInfo._();

  factory LlmModelInfo([void updates(LlmModelInfoBuilder b)]) = _$LlmModelInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmModelInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmModelInfo> get serializer => _$LlmModelInfoSerializer();
}

class _$LlmModelInfoSerializer implements PrimitiveSerializer<LlmModelInfo> {
  @override
  final Iterable<Type> types = const [LlmModelInfo, _$LlmModelInfo];

  @override
  final String wireName = r'LlmModelInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmModelInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contextWindow != null) {
      yield r'contextWindow';
      yield serializers.serialize(
        object.contextWindow,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.supportsTools != null) {
      yield r'supportsTools';
      yield serializers.serialize(
        object.supportsTools,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.supportsEmbeddings != null) {
      yield r'supportsEmbeddings';
      yield serializers.serialize(
        object.supportsEmbeddings,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmModelInfo object, {
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
    required LlmModelInfoBuilder result,
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
        case r'displayName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'contextWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.contextWindow = valueDes;
          break;
        case r'supportsTools':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.supportsTools = valueDes;
          break;
        case r'supportsEmbeddings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.supportsEmbeddings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmModelInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmModelInfoBuilder();
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
