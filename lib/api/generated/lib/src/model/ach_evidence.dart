//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/provenance_chain_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ach_evidence.g.dart';

/// One ACH evidence row (one per 116 evidence group)
///
/// Properties:
/// * [id] - ULID identifier
/// * [setId] - ULID identifier
/// * [source_]
/// * [ref] - Object reference or id of the evidence
/// * [evidenceGroupId] - ULID identifier
/// * [description]
/// * [credibility]
/// * [relevance]
/// * [weight] - credibility × relevance (L 0.5, M 1, H 2)
/// * [ratings] - Per hypothesis id
/// * [nonDiagnostic]
/// * [addedBy]
/// * [addedAt]
/// * [removedAt]
/// * [evidenceItemId] - When `source=evidence-item`
/// * [provenanceChain] - 134: chain used by CircularReportingDetector; circular support carries caveat CIRCULAR_REPORTING and counts as one evidence group
/// * [refs] - Every reference attached to the row: the first and the re-reports of the same 116 evidence group, which add no weight
/// * [caveats] - 134: CIRCULAR_REPORTING when the support's provenance chain returns to the consuming analyst, or when a further reference with the same origin attached to the row
@BuiltValue()
abstract class AchEvidence implements Built<AchEvidence, AchEvidenceBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'source')
  AchEvidenceSource_Enum get source_;
  // enum source_Enum {  indicator,  record,  finding,  intel_event,  alert,  manual,  evidence-item,  social-claim,  };

  /// Object reference or id of the evidence
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  /// ULID identifier
  @BuiltValueField(wireName: r'evidenceGroupId')
  String? get evidenceGroupId;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'credibility')
  AchEvidenceCredibilityEnum get credibility;
  // enum credibilityEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'relevance')
  AchEvidenceRelevanceEnum get relevance;
  // enum relevanceEnum {  H,  M,  L,  };

  /// credibility × relevance (L 0.5, M 1, H 2)
  @BuiltValueField(wireName: r'weight')
  num? get weight;

  /// Per hypothesis id
  @BuiltValueField(wireName: r'ratings')
  BuiltMap<String, AchEvidenceRatingsEnum> get ratings;
  // enum ratingsEnum {  CC,  C,  N,  NA,  I,  II,  };

  @BuiltValueField(wireName: r'nonDiagnostic')
  bool? get nonDiagnostic;

  @BuiltValueField(wireName: r'addedBy')
  String get addedBy;

  @BuiltValueField(wireName: r'addedAt')
  DateTime get addedAt;

  @BuiltValueField(wireName: r'removedAt')
  DateTime? get removedAt;

  /// When `source=evidence-item`
  @BuiltValueField(wireName: r'evidenceItemId')
  String? get evidenceItemId;

  /// 134: chain used by CircularReportingDetector; circular support carries caveat CIRCULAR_REPORTING and counts as one evidence group
  @BuiltValueField(wireName: r'provenanceChain')
  BuiltList<ProvenanceChainEntry>? get provenanceChain;

  /// Every reference attached to the row: the first and the re-reports of the same 116 evidence group, which add no weight
  @BuiltValueField(wireName: r'refs')
  BuiltList<String>? get refs;

  /// 134: CIRCULAR_REPORTING when the support's provenance chain returns to the consuming analyst, or when a further reference with the same origin attached to the row
  @BuiltValueField(wireName: r'caveats')
  BuiltList<AchEvidenceCaveatsEnum>? get caveats;
  // enum caveatsEnum {  CIRCULAR_REPORTING,  };

  AchEvidence._();

  factory AchEvidence([void updates(AchEvidenceBuilder b)]) = _$AchEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AchEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AchEvidence> get serializer => _$AchEvidenceSerializer();
}

class _$AchEvidenceSerializer implements PrimitiveSerializer<AchEvidence> {
  @override
  final Iterable<Type> types = const [AchEvidence, _$AchEvidence];

  @override
  final String wireName = r'AchEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AchEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(AchEvidenceSource_Enum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.evidenceGroupId != null) {
      yield r'evidenceGroupId';
      yield serializers.serialize(
        object.evidenceGroupId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'credibility';
    yield serializers.serialize(
      object.credibility,
      specifiedType: const FullType(AchEvidenceCredibilityEnum),
    );
    yield r'relevance';
    yield serializers.serialize(
      object.relevance,
      specifiedType: const FullType(AchEvidenceRelevanceEnum),
    );
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(num),
      );
    }
    yield r'ratings';
    yield serializers.serialize(
      object.ratings,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(AchEvidenceRatingsEnum),
      ]),
    );
    if (object.nonDiagnostic != null) {
      yield r'nonDiagnostic';
      yield serializers.serialize(
        object.nonDiagnostic,
        specifiedType: const FullType(bool),
      );
    }
    yield r'addedBy';
    yield serializers.serialize(
      object.addedBy,
      specifiedType: const FullType(String),
    );
    yield r'addedAt';
    yield serializers.serialize(
      object.addedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.removedAt != null) {
      yield r'removedAt';
      yield serializers.serialize(
        object.removedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.evidenceItemId != null) {
      yield r'evidenceItemId';
      yield serializers.serialize(
        object.evidenceItemId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.provenanceChain != null) {
      yield r'provenanceChain';
      yield serializers.serialize(
        object.provenanceChain,
        specifiedType: const FullType(BuiltList, [
          FullType(ProvenanceChainEntry),
        ]),
      );
    }
    if (object.refs != null) {
      yield r'refs';
      yield serializers.serialize(
        object.refs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [
          FullType(AchEvidenceCaveatsEnum),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AchEvidence object, {
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
    required AchEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AchEvidenceSource_Enum),
                  )
                  as AchEvidenceSource_Enum;
          result.source_ = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'evidenceGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.evidenceGroupId = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.description = valueDes;
          break;
        case r'credibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AchEvidenceCredibilityEnum),
                  )
                  as AchEvidenceCredibilityEnum;
          result.credibility = valueDes;
          break;
        case r'relevance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AchEvidenceRelevanceEnum),
                  )
                  as AchEvidenceRelevanceEnum;
          result.relevance = valueDes;
          break;
        case r'weight':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        case r'ratings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(AchEvidenceRatingsEnum),
                    ]),
                  )
                  as BuiltMap<String, AchEvidenceRatingsEnum>;
          result.ratings.replace(valueDes);
          break;
        case r'nonDiagnostic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.nonDiagnostic = valueDes;
          break;
        case r'addedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.addedBy = valueDes;
          break;
        case r'addedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.addedAt = valueDes;
          break;
        case r'removedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.removedAt = valueDes;
          break;
        case r'evidenceItemId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.evidenceItemId = valueDes;
          break;
        case r'provenanceChain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProvenanceChainEntry),
                    ]),
                  )
                  as BuiltList<ProvenanceChainEntry>?;
          if (valueDes == null) continue;
          result.provenanceChain.replace(valueDes);
          break;
        case r'refs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.refs.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AchEvidenceCaveatsEnum),
                    ]),
                  )
                  as BuiltList<AchEvidenceCaveatsEnum>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AchEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AchEvidenceBuilder();
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

class AchEvidenceSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'indicator')
  static const AchEvidenceSource_Enum indicator =
      _$achEvidenceSourceEnum_indicator;
  @BuiltValueEnumConst(wireName: r'record')
  static const AchEvidenceSource_Enum record = _$achEvidenceSourceEnum_record;
  @BuiltValueEnumConst(wireName: r'finding')
  static const AchEvidenceSource_Enum finding = _$achEvidenceSourceEnum_finding;
  @BuiltValueEnumConst(wireName: r'intel_event')
  static const AchEvidenceSource_Enum intelEvent =
      _$achEvidenceSourceEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'alert')
  static const AchEvidenceSource_Enum alert = _$achEvidenceSourceEnum_alert;
  @BuiltValueEnumConst(wireName: r'manual')
  static const AchEvidenceSource_Enum manual = _$achEvidenceSourceEnum_manual;
  @BuiltValueEnumConst(wireName: r'evidence-item')
  static const AchEvidenceSource_Enum evidenceItem =
      _$achEvidenceSourceEnum_evidenceItem;
  @BuiltValueEnumConst(wireName: r'social-claim')
  static const AchEvidenceSource_Enum socialClaim =
      _$achEvidenceSourceEnum_socialClaim;

  static Serializer<AchEvidenceSource_Enum> get serializer =>
      _$achEvidenceSourceEnumSerializer;

  const AchEvidenceSource_Enum._(String name) : super(name);

  static BuiltSet<AchEvidenceSource_Enum> get values =>
      _$achEvidenceSourceEnumValues;
  static AchEvidenceSource_Enum valueOf(String name) =>
      _$achEvidenceSourceEnumValueOf(name);
}

class AchEvidenceCredibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const AchEvidenceCredibilityEnum H = _$achEvidenceCredibilityEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const AchEvidenceCredibilityEnum M = _$achEvidenceCredibilityEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const AchEvidenceCredibilityEnum L = _$achEvidenceCredibilityEnum_L;

  static Serializer<AchEvidenceCredibilityEnum> get serializer =>
      _$achEvidenceCredibilityEnumSerializer;

  const AchEvidenceCredibilityEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceCredibilityEnum> get values =>
      _$achEvidenceCredibilityEnumValues;
  static AchEvidenceCredibilityEnum valueOf(String name) =>
      _$achEvidenceCredibilityEnumValueOf(name);
}

class AchEvidenceRelevanceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const AchEvidenceRelevanceEnum H = _$achEvidenceRelevanceEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const AchEvidenceRelevanceEnum M = _$achEvidenceRelevanceEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const AchEvidenceRelevanceEnum L = _$achEvidenceRelevanceEnum_L;

  static Serializer<AchEvidenceRelevanceEnum> get serializer =>
      _$achEvidenceRelevanceEnumSerializer;

  const AchEvidenceRelevanceEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceRelevanceEnum> get values =>
      _$achEvidenceRelevanceEnumValues;
  static AchEvidenceRelevanceEnum valueOf(String name) =>
      _$achEvidenceRelevanceEnumValueOf(name);
}

/// ACH consistency rating
class AchEvidenceRatingsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CC')
  static const AchEvidenceRatingsEnum CC = _$achEvidenceRatingsEnum_CC;
  @BuiltValueEnumConst(wireName: r'C')
  static const AchEvidenceRatingsEnum C = _$achEvidenceRatingsEnum_C;
  @BuiltValueEnumConst(wireName: r'N')
  static const AchEvidenceRatingsEnum N = _$achEvidenceRatingsEnum_N;
  @BuiltValueEnumConst(wireName: r'NA')
  static const AchEvidenceRatingsEnum NA = _$achEvidenceRatingsEnum_NA;
  @BuiltValueEnumConst(wireName: r'I')
  static const AchEvidenceRatingsEnum I = _$achEvidenceRatingsEnum_I;
  @BuiltValueEnumConst(wireName: r'II')
  static const AchEvidenceRatingsEnum II = _$achEvidenceRatingsEnum_II;

  static Serializer<AchEvidenceRatingsEnum> get serializer =>
      _$achEvidenceRatingsEnumSerializer;

  const AchEvidenceRatingsEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceRatingsEnum> get values =>
      _$achEvidenceRatingsEnumValues;
  static AchEvidenceRatingsEnum valueOf(String name) =>
      _$achEvidenceRatingsEnumValueOf(name);
}

class AchEvidenceCaveatsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CIRCULAR_REPORTING')
  static const AchEvidenceCaveatsEnum CIRCULAR_REPORTING =
      _$achEvidenceCaveatsEnum_CIRCULAR_REPORTING;

  static Serializer<AchEvidenceCaveatsEnum> get serializer =>
      _$achEvidenceCaveatsEnumSerializer;

  const AchEvidenceCaveatsEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceCaveatsEnum> get values =>
      _$achEvidenceCaveatsEnumValues;
  static AchEvidenceCaveatsEnum valueOf(String name) =>
      _$achEvidenceCaveatsEnumValueOf(name);
}
