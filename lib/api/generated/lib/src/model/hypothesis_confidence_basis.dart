//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_confidence_basis.g.dart';

/// Inputs to the rule-based confidence (`ConfidenceAssessor` 1.2.0)
///
/// Properties:
/// * [observedIndicators]
/// * [families]
/// * [evidenceQuality]
/// * [sourceReliability] - Worst 109 reliability grade among sources
/// * [coverage]
/// * [reportingDensity] - `ok` or `LOW_REPORTING_DENSITY`
/// * [forecasterAgreement]
/// * [brokenLinchpin]
/// * [rule] - The rule that set the level
/// * [newsCoverage] - `ok` or `SKEWED_COVERAGE` (133)
/// * [circularReporting] - `ok` or `CIRCULAR_REPORTING` (134): support of one origin counted once
/// * [circularSupports] - Live ACH rows of the set marked CIRCULAR_REPORTING (134)
@BuiltValue()
abstract class HypothesisConfidenceBasis
    implements
        Built<HypothesisConfidenceBasis, HypothesisConfidenceBasisBuilder> {
  @BuiltValueField(wireName: r'observedIndicators')
  int? get observedIndicators;

  @BuiltValueField(wireName: r'families')
  int? get families;

  @BuiltValueField(wireName: r'evidenceQuality')
  String? get evidenceQuality;

  /// Worst 109 reliability grade among sources
  @BuiltValueField(wireName: r'sourceReliability')
  String? get sourceReliability;

  @BuiltValueField(wireName: r'coverage')
  String? get coverage;

  /// `ok` or `LOW_REPORTING_DENSITY`
  @BuiltValueField(wireName: r'reportingDensity')
  String? get reportingDensity;

  @BuiltValueField(wireName: r'forecasterAgreement')
  num? get forecasterAgreement;

  @BuiltValueField(wireName: r'brokenLinchpin')
  bool? get brokenLinchpin;

  /// The rule that set the level
  @BuiltValueField(wireName: r'rule')
  String? get rule;

  /// `ok` or `SKEWED_COVERAGE` (133)
  @BuiltValueField(wireName: r'newsCoverage')
  String? get newsCoverage;

  /// `ok` or `CIRCULAR_REPORTING` (134): support of one origin counted once
  @BuiltValueField(wireName: r'circularReporting')
  String? get circularReporting;

  /// Live ACH rows of the set marked CIRCULAR_REPORTING (134)
  @BuiltValueField(wireName: r'circularSupports')
  int? get circularSupports;

  HypothesisConfidenceBasis._();

  factory HypothesisConfidenceBasis([
    void updates(HypothesisConfidenceBasisBuilder b),
  ]) = _$HypothesisConfidenceBasis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisConfidenceBasisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisConfidenceBasis> get serializer =>
      _$HypothesisConfidenceBasisSerializer();
}

class _$HypothesisConfidenceBasisSerializer
    implements PrimitiveSerializer<HypothesisConfidenceBasis> {
  @override
  final Iterable<Type> types = const [
    HypothesisConfidenceBasis,
    _$HypothesisConfidenceBasis,
  ];

  @override
  final String wireName = r'HypothesisConfidenceBasis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisConfidenceBasis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.observedIndicators != null) {
      yield r'observedIndicators';
      yield serializers.serialize(
        object.observedIndicators,
        specifiedType: const FullType(int),
      );
    }
    if (object.families != null) {
      yield r'families';
      yield serializers.serialize(
        object.families,
        specifiedType: const FullType(int),
      );
    }
    if (object.evidenceQuality != null) {
      yield r'evidenceQuality';
      yield serializers.serialize(
        object.evidenceQuality,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceReliability != null) {
      yield r'sourceReliability';
      yield serializers.serialize(
        object.sourceReliability,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reportingDensity != null) {
      yield r'reportingDensity';
      yield serializers.serialize(
        object.reportingDensity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.forecasterAgreement != null) {
      yield r'forecasterAgreement';
      yield serializers.serialize(
        object.forecasterAgreement,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.brokenLinchpin != null) {
      yield r'brokenLinchpin';
      yield serializers.serialize(
        object.brokenLinchpin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rule != null) {
      yield r'rule';
      yield serializers.serialize(
        object.rule,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.newsCoverage != null) {
      yield r'newsCoverage';
      yield serializers.serialize(
        object.newsCoverage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.circularReporting != null) {
      yield r'circularReporting';
      yield serializers.serialize(
        object.circularReporting,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.circularSupports != null) {
      yield r'circularSupports';
      yield serializers.serialize(
        object.circularSupports,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisConfidenceBasis object, {
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
    required HypothesisConfidenceBasisBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'observedIndicators':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.observedIndicators = valueDes;
          break;
        case r'families':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.families = valueDes;
          break;
        case r'evidenceQuality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.evidenceQuality = valueDes;
          break;
        case r'sourceReliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceReliability = valueDes;
          break;
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.coverage = valueDes;
          break;
        case r'reportingDensity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reportingDensity = valueDes;
          break;
        case r'forecasterAgreement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.forecasterAgreement = valueDes;
          break;
        case r'brokenLinchpin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.brokenLinchpin = valueDes;
          break;
        case r'rule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rule = valueDes;
          break;
        case r'newsCoverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.newsCoverage = valueDes;
          break;
        case r'circularReporting':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.circularReporting = valueDes;
          break;
        case r'circularSupports':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.circularSupports = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisConfidenceBasis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisConfidenceBasisBuilder();
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
