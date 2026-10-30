//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_article_translation_provenance.g.dart';

/// How the translation was made
///
/// Properties:
/// * [engine]
/// * [model]
/// * [at]
@BuiltValue()
abstract class NewsArticleTranslationProvenance
    implements
        Built<
          NewsArticleTranslationProvenance,
          NewsArticleTranslationProvenanceBuilder
        > {
  @BuiltValueField(wireName: r'engine')
  String get engine;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  NewsArticleTranslationProvenance._();

  factory NewsArticleTranslationProvenance([
    void updates(NewsArticleTranslationProvenanceBuilder b),
  ]) = _$NewsArticleTranslationProvenance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsArticleTranslationProvenanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsArticleTranslationProvenance> get serializer =>
      _$NewsArticleTranslationProvenanceSerializer();
}

class _$NewsArticleTranslationProvenanceSerializer
    implements PrimitiveSerializer<NewsArticleTranslationProvenance> {
  @override
  final Iterable<Type> types = const [
    NewsArticleTranslationProvenance,
    _$NewsArticleTranslationProvenance,
  ];

  @override
  final String wireName = r'NewsArticleTranslationProvenance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsArticleTranslationProvenance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'engine';
    yield serializers.serialize(
      object.engine,
      specifiedType: const FullType(String),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsArticleTranslationProvenance object, {
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
    required NewsArticleTranslationProvenanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'engine':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.engine = valueDes;
          break;
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
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsArticleTranslationProvenance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsArticleTranslationProvenanceBuilder();
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
