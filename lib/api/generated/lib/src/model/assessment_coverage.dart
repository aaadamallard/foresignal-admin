//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/assessment_coverage_situations_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_coverage.g.dart';

/// Deterministic Coverage section
///
/// Properties:
/// * [situations]
/// * [blindspotStoryIds]
/// * [divergenceFindingIds]
@BuiltValue()
abstract class AssessmentCoverage
    implements Built<AssessmentCoverage, AssessmentCoverageBuilder> {
  @BuiltValueField(wireName: r'situations')
  BuiltList<AssessmentCoverageSituationsInner>? get situations;

  @BuiltValueField(wireName: r'blindspotStoryIds')
  BuiltList<String>? get blindspotStoryIds;

  @BuiltValueField(wireName: r'divergenceFindingIds')
  BuiltList<String>? get divergenceFindingIds;

  AssessmentCoverage._();

  factory AssessmentCoverage([void updates(AssessmentCoverageBuilder b)]) =
      _$AssessmentCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentCoverage> get serializer =>
      _$AssessmentCoverageSerializer();
}

class _$AssessmentCoverageSerializer
    implements PrimitiveSerializer<AssessmentCoverage> {
  @override
  final Iterable<Type> types = const [AssessmentCoverage, _$AssessmentCoverage];

  @override
  final String wireName = r'AssessmentCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.situations != null) {
      yield r'situations';
      yield serializers.serialize(
        object.situations,
        specifiedType: const FullType(BuiltList, [
          FullType(AssessmentCoverageSituationsInner),
        ]),
      );
    }
    if (object.blindspotStoryIds != null) {
      yield r'blindspotStoryIds';
      yield serializers.serialize(
        object.blindspotStoryIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.divergenceFindingIds != null) {
      yield r'divergenceFindingIds';
      yield serializers.serialize(
        object.divergenceFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentCoverage object, {
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
    required AssessmentCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AssessmentCoverageSituationsInner),
                    ]),
                  )
                  as BuiltList<AssessmentCoverageSituationsInner>?;
          if (valueDes == null) continue;
          result.situations.replace(valueDes);
          break;
        case r'blindspotStoryIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.blindspotStoryIds.replace(valueDes);
          break;
        case r'divergenceFindingIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.divergenceFindingIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentCoverageBuilder();
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
