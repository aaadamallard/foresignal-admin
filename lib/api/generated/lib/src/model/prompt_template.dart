//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prompt_template.g.dart';

/// A versioned LLM prompt template (src/main/resources/llm/templates/{id}@{version}.md) (116)
///
/// Properties:
/// * [id]
/// * [version]
/// * [role]
/// * [sha256]
/// * [text]
/// * [versions] - All available versions
/// * [instructions] - Operator instructions; returned to agent scope only
@BuiltValue()
abstract class PromptTemplate
    implements Built<PromptTemplate, PromptTemplateBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  @BuiltValueField(wireName: r'text')
  String get text;

  /// All available versions
  @BuiltValueField(wireName: r'versions')
  BuiltList<String>? get versions;

  /// Operator instructions; returned to agent scope only
  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  PromptTemplate._();

  factory PromptTemplate([void updates(PromptTemplateBuilder b)]) =
      _$PromptTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PromptTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PromptTemplate> get serializer =>
      _$PromptTemplateSerializer();
}

class _$PromptTemplateSerializer
    implements PrimitiveSerializer<PromptTemplate> {
  @override
  final Iterable<Type> types = const [PromptTemplate, _$PromptTemplate];

  @override
  final String wireName = r'PromptTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PromptTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.instructions != null) {
      yield r'instructions';
      yield serializers.serialize(
        object.instructions,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PromptTemplate object, {
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
    required PromptTemplateBuilder result,
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
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sha256 = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        case r'versions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.versions.replace(valueDes);
          break;
        case r'instructions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instructions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PromptTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PromptTemplateBuilder();
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
