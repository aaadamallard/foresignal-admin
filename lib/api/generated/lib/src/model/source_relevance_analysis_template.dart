//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_relevance_analysis_template.g.dart';

/// The prompt template asked
///
/// Properties:
/// * [templateId]
/// * [version]
@BuiltValue()
abstract class SourceRelevanceAnalysisTemplate
    implements
        Built<
          SourceRelevanceAnalysisTemplate,
          SourceRelevanceAnalysisTemplateBuilder
        > {
  @BuiltValueField(wireName: r'templateId')
  String get templateId;

  @BuiltValueField(wireName: r'version')
  String get version;

  SourceRelevanceAnalysisTemplate._();

  factory SourceRelevanceAnalysisTemplate([
    void updates(SourceRelevanceAnalysisTemplateBuilder b),
  ]) = _$SourceRelevanceAnalysisTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceRelevanceAnalysisTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceRelevanceAnalysisTemplate> get serializer =>
      _$SourceRelevanceAnalysisTemplateSerializer();
}

class _$SourceRelevanceAnalysisTemplateSerializer
    implements PrimitiveSerializer<SourceRelevanceAnalysisTemplate> {
  @override
  final Iterable<Type> types = const [
    SourceRelevanceAnalysisTemplate,
    _$SourceRelevanceAnalysisTemplate,
  ];

  @override
  final String wireName = r'SourceRelevanceAnalysisTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceRelevanceAnalysisTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'templateId';
    yield serializers.serialize(
      object.templateId,
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
    SourceRelevanceAnalysisTemplate object, {
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
    required SourceRelevanceAnalysisTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'templateId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.templateId = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceRelevanceAnalysisTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceRelevanceAnalysisTemplateBuilder();
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
