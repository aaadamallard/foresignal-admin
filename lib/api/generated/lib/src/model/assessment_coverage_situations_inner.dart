//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/coverage_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_coverage_situations_inner.g.dart';

/// Coverage of a top situation
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [coverage]
@BuiltValue()
abstract class AssessmentCoverageSituationsInner
    implements
        Built<
          AssessmentCoverageSituationsInner,
          AssessmentCoverageSituationsInnerBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String get situationId;

  @BuiltValueField(wireName: r'coverage')
  CoverageStats get coverage;

  AssessmentCoverageSituationsInner._();

  factory AssessmentCoverageSituationsInner([
    void updates(AssessmentCoverageSituationsInnerBuilder b),
  ]) = _$AssessmentCoverageSituationsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentCoverageSituationsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentCoverageSituationsInner> get serializer =>
      _$AssessmentCoverageSituationsInnerSerializer();
}

class _$AssessmentCoverageSituationsInnerSerializer
    implements PrimitiveSerializer<AssessmentCoverageSituationsInner> {
  @override
  final Iterable<Type> types = const [
    AssessmentCoverageSituationsInner,
    _$AssessmentCoverageSituationsInner,
  ];

  @override
  final String wireName = r'AssessmentCoverageSituationsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentCoverageSituationsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'situationId';
    yield serializers.serialize(
      object.situationId,
      specifiedType: const FullType(String),
    );
    yield r'coverage';
    yield serializers.serialize(
      object.coverage,
      specifiedType: const FullType(CoverageStats),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentCoverageSituationsInner object, {
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
    required AssessmentCoverageSituationsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.situationId = valueDes;
          break;
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoverageStats),
                  )
                  as CoverageStats;
          result.coverage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentCoverageSituationsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentCoverageSituationsInnerBuilder();
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
