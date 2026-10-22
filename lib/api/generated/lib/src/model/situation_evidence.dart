//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_evidence_families_inner.dart';
import 'package:foresignal_api/src/model/situation_evidence_member_counts.dart';
import 'package:foresignal_api/src/model/situation_evidence_corroboration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_evidence.g.dart';

/// Evidence: members grouped by signal family, with the corroboration roll-up
///
/// Properties:
/// * [memberCounts]
/// * [families]
/// * [corroboration]
@BuiltValue()
abstract class SituationEvidence
    implements Built<SituationEvidence, SituationEvidenceBuilder> {
  @BuiltValueField(wireName: r'memberCounts')
  SituationEvidenceMemberCounts get memberCounts;

  @BuiltValueField(wireName: r'families')
  BuiltList<SituationEvidenceFamiliesInner> get families;

  @BuiltValueField(wireName: r'corroboration')
  SituationEvidenceCorroboration get corroboration;

  SituationEvidence._();

  factory SituationEvidence([void updates(SituationEvidenceBuilder b)]) =
      _$SituationEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationEvidence> get serializer =>
      _$SituationEvidenceSerializer();
}

class _$SituationEvidenceSerializer
    implements PrimitiveSerializer<SituationEvidence> {
  @override
  final Iterable<Type> types = const [SituationEvidence, _$SituationEvidence];

  @override
  final String wireName = r'SituationEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberCounts';
    yield serializers.serialize(
      object.memberCounts,
      specifiedType: const FullType(SituationEvidenceMemberCounts),
    );
    yield r'families';
    yield serializers.serialize(
      object.families,
      specifiedType:
          const FullType(BuiltList, [FullType(SituationEvidenceFamiliesInner)]),
    );
    yield r'corroboration';
    yield serializers.serialize(
      object.corroboration,
      specifiedType: const FullType(SituationEvidenceCorroboration),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationEvidence object, {
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
    required SituationEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'memberCounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationEvidenceMemberCounts),
          ) as SituationEvidenceMemberCounts;
          result.memberCounts.replace(valueDes);
          break;
        case r'families':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(SituationEvidenceFamiliesInner)]),
          ) as BuiltList<SituationEvidenceFamiliesInner>;
          result.families.replace(valueDes);
          break;
        case r'corroboration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationEvidenceCorroboration),
          ) as SituationEvidenceCorroboration;
          result.corroboration.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationEvidenceBuilder();
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
