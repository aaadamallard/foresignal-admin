//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prompt_template_summary.g.dart';

/// One bundled prompt template without its text (listPromptTemplates)
///
/// Properties:
/// * [id]
/// * [role] - The LLM role that sends it
/// * [version] - The newest version
/// * [versions] - Every bundled version, oldest first
@BuiltValue()
abstract class PromptTemplateSummary
    implements Built<PromptTemplateSummary, PromptTemplateSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The LLM role that sends it
  @BuiltValueField(wireName: r'role')
  String? get role;

  /// The newest version
  @BuiltValueField(wireName: r'version')
  String get version;

  /// Every bundled version, oldest first
  @BuiltValueField(wireName: r'versions')
  BuiltList<String> get versions;

  PromptTemplateSummary._();

  factory PromptTemplateSummary([
    void updates(PromptTemplateSummaryBuilder b),
  ]) = _$PromptTemplateSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PromptTemplateSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PromptTemplateSummary> get serializer =>
      _$PromptTemplateSummarySerializer();
}

class _$PromptTemplateSummarySerializer
    implements PrimitiveSerializer<PromptTemplateSummary> {
  @override
  final Iterable<Type> types = const [
    PromptTemplateSummary,
    _$PromptTemplateSummary,
  ];

  @override
  final String wireName = r'PromptTemplateSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PromptTemplateSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield object.role == null
        ? null
        : serializers.serialize(
            object.role,
            specifiedType: const FullType.nullable(String),
          );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'versions';
    yield serializers.serialize(
      object.versions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PromptTemplateSummary object, {
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
    required PromptTemplateSummaryBuilder result,
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
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'versions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.versions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PromptTemplateSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PromptTemplateSummaryBuilder();
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
