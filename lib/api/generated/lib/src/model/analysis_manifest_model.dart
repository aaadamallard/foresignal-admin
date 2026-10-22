//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analysis_manifest_model_templates_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_manifest_model.g.dart';

/// LLM metadata; model output is not reproducible
///
/// Properties:
/// * [provider]
/// * [model]
/// * [effort]
/// * [promptHash]
/// * [toolsHash]
/// * [samples]
/// * [templates]
@BuiltValue()
abstract class AnalysisManifestModel
    implements Built<AnalysisManifestModel, AnalysisManifestModelBuilder> {
  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'effort')
  String? get effort;

  @BuiltValueField(wireName: r'promptHash')
  String? get promptHash;

  @BuiltValueField(wireName: r'toolsHash')
  String? get toolsHash;

  @BuiltValueField(wireName: r'samples')
  int? get samples;

  @BuiltValueField(wireName: r'templates')
  BuiltList<AnalysisManifestModelTemplatesInner>? get templates;

  AnalysisManifestModel._();

  factory AnalysisManifestModel([
    void updates(AnalysisManifestModelBuilder b),
  ]) = _$AnalysisManifestModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisManifestModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisManifestModel> get serializer =>
      _$AnalysisManifestModelSerializer();
}

class _$AnalysisManifestModelSerializer
    implements PrimitiveSerializer<AnalysisManifestModel> {
  @override
  final Iterable<Type> types = const [
    AnalysisManifestModel,
    _$AnalysisManifestModel,
  ];

  @override
  final String wireName = r'AnalysisManifestModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisManifestModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.promptHash != null) {
      yield r'promptHash';
      yield serializers.serialize(
        object.promptHash,
        specifiedType: const FullType(String),
      );
    }
    if (object.toolsHash != null) {
      yield r'toolsHash';
      yield serializers.serialize(
        object.toolsHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.templates != null) {
      yield r'templates';
      yield serializers.serialize(
        object.templates,
        specifiedType: const FullType(BuiltList, [
          FullType(AnalysisManifestModelTemplatesInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisManifestModel object, {
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
    required AnalysisManifestModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.provider = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.model = valueDes;
          break;
        case r'effort':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        case r'promptHash':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.promptHash = valueDes;
          break;
        case r'toolsHash':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.toolsHash = valueDes;
          break;
        case r'samples':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.samples = valueDes;
          break;
        case r'templates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnalysisManifestModelTemplatesInner),
                    ]),
                  )
                  as BuiltList<AnalysisManifestModelTemplatesInner>?;
          if (valueDes == null) continue;
          result.templates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisManifestModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisManifestModelBuilder();
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
