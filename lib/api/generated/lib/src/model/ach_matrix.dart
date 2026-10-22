//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ach_matrix_hypotheses_inner.dart';
import 'package:foresignal_api/src/model/ach_evidence.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ach_matrix.g.dart';

/// Audit view of evidence × hypotheses with weighted inconsistency scores
///
/// Properties:
/// * [setId] - ULID identifier
/// * [computedAt]
/// * [hypotheses]
/// * [rows]
/// * [scores] - Inconsistency score per hypothesis id
/// * [leastInconsistentHypothesisId] - ULID identifier
/// * [nonDiagnosticEvidenceIds]
/// * [note]
@BuiltValue()
abstract class AchMatrix implements Built<AchMatrix, AchMatrixBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  @BuiltValueField(wireName: r'hypotheses')
  BuiltList<AchMatrixHypothesesInner> get hypotheses;

  @BuiltValueField(wireName: r'rows')
  BuiltList<AchEvidence> get rows;

  /// Inconsistency score per hypothesis id
  @BuiltValueField(wireName: r'scores')
  BuiltMap<String, num> get scores;

  /// ULID identifier
  @BuiltValueField(wireName: r'leastInconsistentHypothesisId')
  String? get leastInconsistentHypothesisId;

  @BuiltValueField(wireName: r'nonDiagnosticEvidenceIds')
  BuiltList<String>? get nonDiagnosticEvidenceIds;

  @BuiltValueField(wireName: r'note')
  String? get note;

  AchMatrix._();

  factory AchMatrix([void updates(AchMatrixBuilder b)]) = _$AchMatrix;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AchMatrixBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AchMatrix> get serializer => _$AchMatrixSerializer();
}

class _$AchMatrixSerializer implements PrimitiveSerializer<AchMatrix> {
  @override
  final Iterable<Type> types = const [AchMatrix, _$AchMatrix];

  @override
  final String wireName = r'AchMatrix';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AchMatrix object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'hypotheses';
    yield serializers.serialize(
      object.hypotheses,
      specifiedType:
          const FullType(BuiltList, [FullType(AchMatrixHypothesesInner)]),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [FullType(AchEvidence)]),
    );
    yield r'scores';
    yield serializers.serialize(
      object.scores,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(num)]),
    );
    if (object.leastInconsistentHypothesisId != null) {
      yield r'leastInconsistentHypothesisId';
      yield serializers.serialize(
        object.leastInconsistentHypothesisId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nonDiagnosticEvidenceIds != null) {
      yield r'nonDiagnosticEvidenceIds';
      yield serializers.serialize(
        object.nonDiagnosticEvidenceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AchMatrix object, {
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
    required AchMatrixBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setId = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.computedAt = valueDes;
          break;
        case r'hypotheses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AchMatrixHypothesesInner)]),
          ) as BuiltList<AchMatrixHypothesesInner>;
          result.hypotheses.replace(valueDes);
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AchEvidence)]),
          ) as BuiltList<AchEvidence>;
          result.rows.replace(valueDes);
          break;
        case r'scores':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(num)]),
          ) as BuiltMap<String, num>;
          result.scores.replace(valueDes);
          break;
        case r'leastInconsistentHypothesisId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.leastInconsistentHypothesisId = valueDes;
          break;
        case r'nonDiagnosticEvidenceIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.nonDiagnosticEvidenceIds.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AchMatrix deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AchMatrixBuilder();
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
