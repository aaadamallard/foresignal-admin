//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hypothesis_prior_basis.dart';
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_coincidence_baseline.dart';
import 'package:foresignal_api/src/model/confidence_level.dart';
import 'package:foresignal_api/src/model/hypothesis_confidence_basis.dart';
import 'package:foresignal_api/src/model/coverage_stats.dart';
import 'package:foresignal_api/src/model/hypothesis_cap_override.dart';
import 'package:foresignal_api/src/model/hypothesis_change.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis.g.dart';

/// One competing answer to a set's key question
///
/// Properties:
/// * [id] - ULID identifier
/// * [setId] - ULID identifier
/// * [label]
/// * [statement]
/// * [type]
/// * [prior]
/// * [priorBasis]
/// * [probability]
/// * [estimativeTerm]
/// * [confidence]
/// * [confidenceBasis]
/// * [ledgerOutcome] - Outcome of the linked question this hypothesis maps to
/// * [status]
/// * [change]
/// * [linkedFindingIds] - Speculative links: ≥ 1 linked 119 findings
/// * [coincidenceBaseline]
/// * [alternatives] - Speculative links: ≥ 2 other hypotheses in the same set
/// * [probabilityCap] - Speculative links: computed cap the updater never exceeds
/// * [capOverride]
/// * [version]
/// * [newsCoverage] - Lean and state-affiliation balance of the hypothesis's supporting news evidence; SKEWED_COVERAGE caveat when skewed
@BuiltValue()
abstract class Hypothesis implements Built<Hypothesis, HypothesisBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'type')
  HypothesisTypeEnum get type;
  // enum typeEnum {  outcome,  explanation,  speculative-link,  other,  };

  @BuiltValueField(wireName: r'prior')
  num get prior;

  @BuiltValueField(wireName: r'priorBasis')
  HypothesisPriorBasis get priorBasis;

  @BuiltValueField(wireName: r'probability')
  num get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'confidence')
  ConfidenceLevel get confidence;
  // enum confidenceEnum {  low,  moderate,  high,  };

  @BuiltValueField(wireName: r'confidenceBasis')
  HypothesisConfidenceBasis? get confidenceBasis;

  /// Outcome of the linked question this hypothesis maps to
  @BuiltValueField(wireName: r'ledgerOutcome')
  String? get ledgerOutcome;

  @BuiltValueField(wireName: r'status')
  HypothesisStatusEnum get status;
  // enum statusEnum {  open,  confirmed,  refuted,  expired,  };

  @BuiltValueField(wireName: r'change')
  HypothesisChange? get change;

  /// Speculative links: ≥ 1 linked 119 findings
  @BuiltValueField(wireName: r'linkedFindingIds')
  BuiltList<String>? get linkedFindingIds;

  @BuiltValueField(wireName: r'coincidenceBaseline')
  HypothesisCoincidenceBaseline? get coincidenceBaseline;

  /// Speculative links: ≥ 2 other hypotheses in the same set
  @BuiltValueField(wireName: r'alternatives')
  BuiltList<String>? get alternatives;

  /// Speculative links: computed cap the updater never exceeds
  @BuiltValueField(wireName: r'probabilityCap')
  num? get probabilityCap;

  @BuiltValueField(wireName: r'capOverride')
  HypothesisCapOverride? get capOverride;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Lean and state-affiliation balance of the hypothesis's supporting news evidence; SKEWED_COVERAGE caveat when skewed
  @BuiltValueField(wireName: r'newsCoverage')
  CoverageStats? get newsCoverage;

  Hypothesis._();

  factory Hypothesis([void updates(HypothesisBuilder b)]) = _$Hypothesis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Hypothesis> get serializer => _$HypothesisSerializer();
}

class _$HypothesisSerializer implements PrimitiveSerializer<Hypothesis> {
  @override
  final Iterable<Type> types = const [Hypothesis, _$Hypothesis];

  @override
  final String wireName = r'Hypothesis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Hypothesis object, {
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
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'statement';
    yield serializers.serialize(
      object.statement,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(HypothesisTypeEnum),
    );
    yield r'prior';
    yield serializers.serialize(
      object.prior,
      specifiedType: const FullType(num),
    );
    yield r'priorBasis';
    yield serializers.serialize(
      object.priorBasis,
      specifiedType: const FullType(HypothesisPriorBasis),
    );
    yield r'probability';
    yield serializers.serialize(
      object.probability,
      specifiedType: const FullType(num),
    );
    yield r'estimativeTerm';
    yield serializers.serialize(
      object.estimativeTerm,
      specifiedType: const FullType(IcdTerm),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(ConfidenceLevel),
    );
    if (object.confidenceBasis != null) {
      yield r'confidenceBasis';
      yield serializers.serialize(
        object.confidenceBasis,
        specifiedType: const FullType(HypothesisConfidenceBasis),
      );
    }
    if (object.ledgerOutcome != null) {
      yield r'ledgerOutcome';
      yield serializers.serialize(
        object.ledgerOutcome,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HypothesisStatusEnum),
    );
    if (object.change != null) {
      yield r'change';
      yield serializers.serialize(
        object.change,
        specifiedType: const FullType.nullable(HypothesisChange),
      );
    }
    if (object.linkedFindingIds != null) {
      yield r'linkedFindingIds';
      yield serializers.serialize(
        object.linkedFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.coincidenceBaseline != null) {
      yield r'coincidenceBaseline';
      yield serializers.serialize(
        object.coincidenceBaseline,
        specifiedType: const FullType.nullable(HypothesisCoincidenceBaseline),
      );
    }
    if (object.alternatives != null) {
      yield r'alternatives';
      yield serializers.serialize(
        object.alternatives,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.probabilityCap != null) {
      yield r'probabilityCap';
      yield serializers.serialize(
        object.probabilityCap,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.capOverride != null) {
      yield r'capOverride';
      yield serializers.serialize(
        object.capOverride,
        specifiedType: const FullType.nullable(HypothesisCapOverride),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.newsCoverage != null) {
      yield r'newsCoverage';
      yield serializers.serialize(
        object.newsCoverage,
        specifiedType: const FullType.nullable(CoverageStats),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Hypothesis object, {
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
    required HypothesisBuilder result,
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
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'statement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.statement = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisTypeEnum),
                  )
                  as HypothesisTypeEnum;
          result.type = valueDes;
          break;
        case r'prior':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.prior = valueDes;
          break;
        case r'priorBasis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisPriorBasis),
                  )
                  as HypothesisPriorBasis;
          result.priorBasis.replace(valueDes);
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IcdTerm),
                  )
                  as IcdTerm;
          result.estimativeTerm = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ConfidenceLevel),
                  )
                  as ConfidenceLevel;
          result.confidence = valueDes;
          break;
        case r'confidenceBasis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisConfidenceBasis,
                    ),
                  )
                  as HypothesisConfidenceBasis?;
          if (valueDes == null) continue;
          result.confidenceBasis.replace(valueDes);
          break;
        case r'ledgerOutcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ledgerOutcome = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisStatusEnum),
                  )
                  as HypothesisStatusEnum;
          result.status = valueDes;
          break;
        case r'change':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HypothesisChange),
                  )
                  as HypothesisChange?;
          if (valueDes == null) continue;
          result.change.replace(valueDes);
          break;
        case r'linkedFindingIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.linkedFindingIds.replace(valueDes);
          break;
        case r'coincidenceBaseline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisCoincidenceBaseline,
                    ),
                  )
                  as HypothesisCoincidenceBaseline?;
          if (valueDes == null) continue;
          result.coincidenceBaseline.replace(valueDes);
          break;
        case r'alternatives':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.alternatives.replace(valueDes);
          break;
        case r'probabilityCap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probabilityCap = valueDes;
          break;
        case r'capOverride':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisCapOverride,
                    ),
                  )
                  as HypothesisCapOverride?;
          if (valueDes == null) continue;
          result.capOverride.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'newsCoverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CoverageStats),
                  )
                  as CoverageStats?;
          if (valueDes == null) continue;
          result.newsCoverage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Hypothesis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisBuilder();
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

class HypothesisTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'outcome')
  static const HypothesisTypeEnum outcome = _$hypothesisTypeEnum_outcome;
  @BuiltValueEnumConst(wireName: r'explanation')
  static const HypothesisTypeEnum explanation =
      _$hypothesisTypeEnum_explanation;
  @BuiltValueEnumConst(wireName: r'speculative-link')
  static const HypothesisTypeEnum speculativeLink =
      _$hypothesisTypeEnum_speculativeLink;
  @BuiltValueEnumConst(wireName: r'other')
  static const HypothesisTypeEnum other = _$hypothesisTypeEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const HypothesisTypeEnum unknownDefaultOpenApi =
      _$hypothesisTypeEnum_unknownDefaultOpenApi;

  static Serializer<HypothesisTypeEnum> get serializer =>
      _$hypothesisTypeEnumSerializer;

  const HypothesisTypeEnum._(String name) : super(name);

  static BuiltSet<HypothesisTypeEnum> get values => _$hypothesisTypeEnumValues;
  static HypothesisTypeEnum valueOf(String name) =>
      _$hypothesisTypeEnumValueOf(name);
}

class HypothesisStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const HypothesisStatusEnum open = _$hypothesisStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const HypothesisStatusEnum confirmed =
      _$hypothesisStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'refuted')
  static const HypothesisStatusEnum refuted = _$hypothesisStatusEnum_refuted;
  @BuiltValueEnumConst(wireName: r'expired')
  static const HypothesisStatusEnum expired = _$hypothesisStatusEnum_expired;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const HypothesisStatusEnum unknownDefaultOpenApi =
      _$hypothesisStatusEnum_unknownDefaultOpenApi;

  static Serializer<HypothesisStatusEnum> get serializer =>
      _$hypothesisStatusEnumSerializer;

  const HypothesisStatusEnum._(String name) : super(name);

  static BuiltSet<HypothesisStatusEnum> get values =>
      _$hypothesisStatusEnumValues;
  static HypothesisStatusEnum valueOf(String name) =>
      _$hypothesisStatusEnumValueOf(name);
}
