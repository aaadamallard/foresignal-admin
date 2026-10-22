//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/assessment_bundle_objects_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/assessment.dart';
import 'package:foresignal_api/src/model/analysis_manifest.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_bundle.g.dart';

/// An assessment with its cited objects, provenance and manifests
///
/// Properties:
/// * [assessment]
/// * [generatedAt]
/// * [objects]
/// * [manifests]
@BuiltValue()
abstract class AssessmentBundle
    implements Built<AssessmentBundle, AssessmentBundleBuilder> {
  @BuiltValueField(wireName: r'assessment')
  Assessment get assessment;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'objects')
  BuiltList<AssessmentBundleObjectsInner> get objects;

  @BuiltValueField(wireName: r'manifests')
  BuiltList<AnalysisManifest>? get manifests;

  AssessmentBundle._();

  factory AssessmentBundle([void updates(AssessmentBundleBuilder b)]) =
      _$AssessmentBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentBundle> get serializer =>
      _$AssessmentBundleSerializer();
}

class _$AssessmentBundleSerializer
    implements PrimitiveSerializer<AssessmentBundle> {
  @override
  final Iterable<Type> types = const [AssessmentBundle, _$AssessmentBundle];

  @override
  final String wireName = r'AssessmentBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assessment';
    yield serializers.serialize(
      object.assessment,
      specifiedType: const FullType(Assessment),
    );
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'objects';
    yield serializers.serialize(
      object.objects,
      specifiedType: const FullType(BuiltList, [
        FullType(AssessmentBundleObjectsInner),
      ]),
    );
    if (object.manifests != null) {
      yield r'manifests';
      yield serializers.serialize(
        object.manifests,
        specifiedType: const FullType(BuiltList, [FullType(AnalysisManifest)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentBundle object, {
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
    required AssessmentBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assessment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Assessment),
                  )
                  as Assessment;
          result.assessment.replace(valueDes);
          break;
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'objects':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(AssessmentBundleObjectsInner),
                    ]),
                  )
                  as BuiltList<AssessmentBundleObjectsInner>;
          result.objects.replace(valueDes);
          break;
        case r'manifests':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnalysisManifest),
                    ]),
                  )
                  as BuiltList<AnalysisManifest>?;
          if (valueDes == null) continue;
          result.manifests.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentBundleBuilder();
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
