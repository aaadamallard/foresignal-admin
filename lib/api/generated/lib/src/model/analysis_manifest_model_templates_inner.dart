//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_manifest_model_templates_inner.g.dart';

/// Prompt template used
///
/// Properties:
/// * [templateId]
/// * [version]
@BuiltValue()
abstract class AnalysisManifestModelTemplatesInner
    implements
        Built<AnalysisManifestModelTemplatesInner,
            AnalysisManifestModelTemplatesInnerBuilder> {
  @BuiltValueField(wireName: r'templateId')
  String get templateId;

  @BuiltValueField(wireName: r'version')
  String get version;

  AnalysisManifestModelTemplatesInner._();

  factory AnalysisManifestModelTemplatesInner(
          [void updates(AnalysisManifestModelTemplatesInnerBuilder b)]) =
      _$AnalysisManifestModelTemplatesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisManifestModelTemplatesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisManifestModelTemplatesInner> get serializer =>
      _$AnalysisManifestModelTemplatesInnerSerializer();
}

class _$AnalysisManifestModelTemplatesInnerSerializer
    implements PrimitiveSerializer<AnalysisManifestModelTemplatesInner> {
  @override
  final Iterable<Type> types = const [
    AnalysisManifestModelTemplatesInner,
    _$AnalysisManifestModelTemplatesInner
  ];

  @override
  final String wireName = r'AnalysisManifestModelTemplatesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisManifestModelTemplatesInner object, {
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
    AnalysisManifestModelTemplatesInner object, {
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
    required AnalysisManifestModelTemplatesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'templateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateId = valueDes;
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
  AnalysisManifestModelTemplatesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisManifestModelTemplatesInnerBuilder();
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
