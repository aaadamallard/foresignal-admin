//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/benchmark_case_expectations_questions_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/benchmark_case_expectations_precursors_inner.dart';
import 'package:foresignal_api/src/model/benchmark_case_expectations_findings_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case_expectations.g.dart';

/// Expected outcomes for a historical case
///
/// Properties:
/// * [findings]
/// * [precursors]
/// * [questions]
/// * [notes]
@BuiltValue()
abstract class BenchmarkCaseExpectations
    implements
        Built<BenchmarkCaseExpectations, BenchmarkCaseExpectationsBuilder> {
  @BuiltValueField(wireName: r'findings')
  BuiltList<BenchmarkCaseExpectationsFindingsInner>? get findings;

  @BuiltValueField(wireName: r'precursors')
  BuiltList<BenchmarkCaseExpectationsPrecursorsInner>? get precursors;

  @BuiltValueField(wireName: r'questions')
  BuiltList<BenchmarkCaseExpectationsQuestionsInner>? get questions;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  BenchmarkCaseExpectations._();

  factory BenchmarkCaseExpectations([
    void updates(BenchmarkCaseExpectationsBuilder b),
  ]) = _$BenchmarkCaseExpectations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCaseExpectationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCaseExpectations> get serializer =>
      _$BenchmarkCaseExpectationsSerializer();
}

class _$BenchmarkCaseExpectationsSerializer
    implements PrimitiveSerializer<BenchmarkCaseExpectations> {
  @override
  final Iterable<Type> types = const [
    BenchmarkCaseExpectations,
    _$BenchmarkCaseExpectations,
  ];

  @override
  final String wireName = r'BenchmarkCaseExpectations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCaseExpectations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.findings != null) {
      yield r'findings';
      yield serializers.serialize(
        object.findings,
        specifiedType: const FullType(BuiltList, [
          FullType(BenchmarkCaseExpectationsFindingsInner),
        ]),
      );
    }
    if (object.precursors != null) {
      yield r'precursors';
      yield serializers.serialize(
        object.precursors,
        specifiedType: const FullType(BuiltList, [
          FullType(BenchmarkCaseExpectationsPrecursorsInner),
        ]),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType: const FullType(BuiltList, [
          FullType(BenchmarkCaseExpectationsQuestionsInner),
        ]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseExpectations object, {
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
    required BenchmarkCaseExpectationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'findings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BenchmarkCaseExpectationsFindingsInner),
                    ]),
                  )
                  as BuiltList<BenchmarkCaseExpectationsFindingsInner>?;
          if (valueDes == null) continue;
          result.findings.replace(valueDes);
          break;
        case r'precursors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BenchmarkCaseExpectationsPrecursorsInner),
                    ]),
                  )
                  as BuiltList<BenchmarkCaseExpectationsPrecursorsInner>?;
          if (valueDes == null) continue;
          result.precursors.replace(valueDes);
          break;
        case r'questions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BenchmarkCaseExpectationsQuestionsInner),
                    ]),
                  )
                  as BuiltList<BenchmarkCaseExpectationsQuestionsInner>?;
          if (valueDes == null) continue;
          result.questions.replace(valueDes);
          break;
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCaseExpectations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCaseExpectationsBuilder();
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
