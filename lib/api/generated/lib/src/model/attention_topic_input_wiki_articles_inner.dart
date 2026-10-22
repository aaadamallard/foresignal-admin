//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_topic_input_wiki_articles_inner.g.dart';

/// A Wikipedia article
///
/// Properties:
/// * [project]
/// * [article]
@BuiltValue()
abstract class AttentionTopicInputWikiArticlesInner
    implements
        Built<AttentionTopicInputWikiArticlesInner,
            AttentionTopicInputWikiArticlesInnerBuilder> {
  @BuiltValueField(wireName: r'project')
  String get project;

  @BuiltValueField(wireName: r'article')
  String get article;

  AttentionTopicInputWikiArticlesInner._();

  factory AttentionTopicInputWikiArticlesInner(
          [void updates(AttentionTopicInputWikiArticlesInnerBuilder b)]) =
      _$AttentionTopicInputWikiArticlesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionTopicInputWikiArticlesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionTopicInputWikiArticlesInner> get serializer =>
      _$AttentionTopicInputWikiArticlesInnerSerializer();
}

class _$AttentionTopicInputWikiArticlesInnerSerializer
    implements PrimitiveSerializer<AttentionTopicInputWikiArticlesInner> {
  @override
  final Iterable<Type> types = const [
    AttentionTopicInputWikiArticlesInner,
    _$AttentionTopicInputWikiArticlesInner
  ];

  @override
  final String wireName = r'AttentionTopicInputWikiArticlesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionTopicInputWikiArticlesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'project';
    yield serializers.serialize(
      object.project,
      specifiedType: const FullType(String),
    );
    yield r'article';
    yield serializers.serialize(
      object.article,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttentionTopicInputWikiArticlesInner object, {
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
    required AttentionTopicInputWikiArticlesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'project':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.project = valueDes;
          break;
        case r'article':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.article = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttentionTopicInputWikiArticlesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionTopicInputWikiArticlesInnerBuilder();
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
