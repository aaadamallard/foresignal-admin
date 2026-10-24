//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/source_relevance.dart';
import 'package:foresignal_api/src/model/source_relevance_analysis_shared.dart';
import 'package:foresignal_api/src/model/source_relevance_analysis_template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_relevance_analysis.g.dart';

/// Advisory relevance of a rule's candidate sources (`analyzeTriggerSources`). Nothing is changed by it.
///
/// Properties:
/// * [advisory] - Always true: the verdicts are suggestions; the caller keeps or omits each source
/// * [summary] - The model's one sentence on what the set as a whole watches; null when it gave none
/// * [sources] - Every requested source exactly once, in request order
/// * [shared]
/// * [model] - The model that answered; null when none was asked
/// * [template]
@BuiltValue()
abstract class SourceRelevanceAnalysis
    implements Built<SourceRelevanceAnalysis, SourceRelevanceAnalysisBuilder> {
  /// Always true: the verdicts are suggestions; the caller keeps or omits each source
  @BuiltValueField(wireName: r'advisory')
  bool get advisory;

  /// The model's one sentence on what the set as a whole watches; null when it gave none
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  /// Every requested source exactly once, in request order
  @BuiltValueField(wireName: r'sources')
  BuiltList<SourceRelevance> get sources;

  @BuiltValueField(wireName: r'shared')
  SourceRelevanceAnalysisShared get shared;

  /// The model that answered; null when none was asked
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'template')
  SourceRelevanceAnalysisTemplate get template;

  SourceRelevanceAnalysis._();

  factory SourceRelevanceAnalysis([
    void updates(SourceRelevanceAnalysisBuilder b),
  ]) = _$SourceRelevanceAnalysis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceRelevanceAnalysisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceRelevanceAnalysis> get serializer =>
      _$SourceRelevanceAnalysisSerializer();
}

class _$SourceRelevanceAnalysisSerializer
    implements PrimitiveSerializer<SourceRelevanceAnalysis> {
  @override
  final Iterable<Type> types = const [
    SourceRelevanceAnalysis,
    _$SourceRelevanceAnalysis,
  ];

  @override
  final String wireName = r'SourceRelevanceAnalysis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceRelevanceAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'advisory';
    yield serializers.serialize(
      object.advisory,
      specifiedType: const FullType(bool),
    );
    yield r'summary';
    yield object.summary == null
        ? null
        : serializers.serialize(
            object.summary,
            specifiedType: const FullType.nullable(String),
          );
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(SourceRelevance)]),
    );
    yield r'shared';
    yield serializers.serialize(
      object.shared,
      specifiedType: const FullType(SourceRelevanceAnalysisShared),
    );
    yield r'model';
    yield object.model == null
        ? null
        : serializers.serialize(
            object.model,
            specifiedType: const FullType.nullable(String),
          );
    yield r'template';
    yield serializers.serialize(
      object.template,
      specifiedType: const FullType(SourceRelevanceAnalysisTemplate),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceRelevanceAnalysis object, {
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
    required SourceRelevanceAnalysisBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'advisory':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.advisory = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SourceRelevance),
                    ]),
                  )
                  as BuiltList<SourceRelevance>;
          result.sources.replace(valueDes);
          break;
        case r'shared':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SourceRelevanceAnalysisShared,
                    ),
                  )
                  as SourceRelevanceAnalysisShared;
          result.shared.replace(valueDes);
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
        case r'template':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SourceRelevanceAnalysisTemplate,
                    ),
                  )
                  as SourceRelevanceAnalysisTemplate;
          result.template.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceRelevanceAnalysis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceRelevanceAnalysisBuilder();
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
