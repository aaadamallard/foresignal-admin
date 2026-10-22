//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_prompt_templates_inner.g.dart';

/// 116 prompt template
///
/// Properties:
/// * [id]
/// * [version]
@BuiltValue()
abstract class AssessmentPromptTemplatesInner
    implements
        Built<AssessmentPromptTemplatesInner,
            AssessmentPromptTemplatesInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'version')
  String get version;

  AssessmentPromptTemplatesInner._();

  factory AssessmentPromptTemplatesInner(
          [void updates(AssessmentPromptTemplatesInnerBuilder b)]) =
      _$AssessmentPromptTemplatesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentPromptTemplatesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentPromptTemplatesInner> get serializer =>
      _$AssessmentPromptTemplatesInnerSerializer();
}

class _$AssessmentPromptTemplatesInnerSerializer
    implements PrimitiveSerializer<AssessmentPromptTemplatesInner> {
  @override
  final Iterable<Type> types = const [
    AssessmentPromptTemplatesInner,
    _$AssessmentPromptTemplatesInner
  ];

  @override
  final String wireName = r'AssessmentPromptTemplatesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentPromptTemplatesInner object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentPromptTemplatesInner object, {
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
    required AssessmentPromptTemplatesInnerBuilder result,
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentPromptTemplatesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentPromptTemplatesInnerBuilder();
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
