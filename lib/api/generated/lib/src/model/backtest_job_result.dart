//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor_test_result_lag.dart';
import 'package:foresignal_api/src/model/rule_backtest_result.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_samples_inner.dart';
import 'package:foresignal_api/src/model/precursor_test_result_reverse.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_per_day_inner.dart';
import 'package:foresignal_api/src/model/replay_result.dart';
import 'package:foresignal_api/src/model/recipe_backtest_result_overlap.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_variants_inner.dart';
import 'package:foresignal_api/src/model/precursor_batch.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_actual.dart';
import 'package:foresignal_api/src/model/precursor_test_result_hit_rate_ci.dart';
import 'package:foresignal_api/src/model/precursor_test_result_multiple_testing.dart';
import 'package:foresignal_api/src/model/precursor_test_result.dart';
import 'package:foresignal_api/src/model/event_study_result_events_inner.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/event_study_result_caar.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/recipe_backtest_result.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_window.dart';
import 'package:foresignal_api/src/model/reference_import.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_anomaly.dart';
import 'package:foresignal_api/src/model/rule_quality_daily.dart';
import 'package:foresignal_api/src/model/base_rate_refresh_result.dart';
import 'package:foresignal_api/src/model/rule_quality_signals.dart';
import 'package:foresignal_api/src/model/rule_quality_precision_ci.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/event_study_result.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_top_entities_inner.dart';
import 'package:foresignal_api/src/model/rule_quality.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'backtest_job_result.g.dart';

/// By job type; ≤ 1 MB
///
/// Properties:
/// * [ruleType]
/// * [wouldFire]
/// * [perDay]
/// * [topEntities]
/// * [samples]
/// * [actual]
/// * [overlap]
/// * [window]
/// * [anomaly]
/// * [variants]
/// * [recipeId]
/// * [recipeVersion]
/// * [events]
/// * [countsByType]
/// * [testerVersion]
/// * [nAntecedent]
/// * [nConsequent]
/// * [hits]
/// * [hitRate]
/// * [hitRateCi]
/// * [lag]
/// * [baseRate] - Mean hit rate of 200 circular time-shifted copies
/// * [lift]
/// * [pValue] - (1 + #shifted ≥ observed) ÷ 201
/// * [permutations]
/// * [seed] - Deterministic seed (hash of definition + range)
/// * [reverse]
/// * [coOccurrenceNotPrecedence]
/// * [verdict]
/// * [multipleTesting]
/// * [statement]
/// * [caveats] - 103 caveats plus `FEW_EVENTS`, `LAGGED_PUBLICATION`, `DAILY_RESOLUTION_ONLY`
/// * [ruleId]
/// * [since]
/// * [alerts]
/// * [labeled]
/// * [labeledShare]
/// * [positive]
/// * [negative]
/// * [neutral]
/// * [precision] - positive ÷ (positive + negative); null when labeled < 5
/// * [precisionCi]
/// * [medianTimeToAck] - ISO-8601 duration
/// * [medianTimeToResolve] - ISO-8601 duration
/// * [flapping] - enter → exit within 10 min
/// * [duplicates] - Same entity within 2 × cooldown
/// * [severityDistribution]
/// * [feedbackMapping]
/// * [signals]
/// * [signalScore] - Weighted implicit-signal score (ACK_FAST +0.5, SNOOZED −0.5, FLAP −0.5, UNOPENED −0.25), shown next to, never mixed into, feedback precision
/// * [daily] - Daily trend rows since `since`
/// * [signalWeights] - The weight table of signalScore (ACK_FAST 0.5, SNOOZED -0.5, FLAP -0.5, UNOPENED -0.25); signalScore = sum(weight x count) / alerts
/// * [jobId] - ULID identifier
/// * [manifestId] - ULID identifier
/// * [status]
/// * [outcome]
/// * [reason] - When not-replayable
/// * [diffSummary] - When differs
/// * [message]
/// * [startedAt]
/// * [finishedAt]
/// * [detector]
/// * [definitionHash]
/// * [target] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [frequency]
/// * [transform]
/// * [windows] - The global range and its split (`start`, `split`, `end`, `discoveryFraction`); for a re-test, `split` starts the re-test window
/// * [range]
/// * [asOfSeq]
/// * [placeboSeed] - Deterministic seed (hash of definition and range)
/// * [nEvents]
/// * [nClusters]
/// * [nExcluded]
/// * [caar]
/// * [valuesWithheld]
/// * [truncated]
/// * [id] - ULID identifier
/// * [mode]
/// * [trigger]
/// * [candidatesGenerated]
/// * [tested]
/// * [capped] - Candidates dropped by `analysis.precursors.maxTestsPerRun`
/// * [insufficient] - Candidates skipped as insufficient (range under 60 days, coverage gaps over 30%, fewer than 10 antecedents or too little series overlap)
/// * [survivors]
/// * [validated]
/// * [q]
/// * [method]
/// * [error]
/// * [dataset]
/// * [params]
/// * [statusReason] - e.g. `credentials absent` for ACLED
/// * [progress]
/// * [fileSha256]
/// * [rowsRead]
/// * [rowsWritten]
/// * [periodFrom]
/// * [periodTo]
/// * [licence] - e.g. `CC-BY-4.0`, `ACLED-EULA`, `public-domain`
/// * [egress]
/// * [createdBy]
/// * [createdAt]
/// * [profiles] - Region profiles written
/// * [rates] - Automatic rates written (family × region × window)
/// * [skipped] - Family-region pairs with under 52 covered weeks
/// * [removed] - Automatic rates no longer produced and removed
/// * [families]
/// * [regions] - Regions with at least one automatic rate
/// * [computer]
@BuiltValue()
abstract class BacktestJobResult
    implements Built<BacktestJobResult, BacktestJobResultBuilder> {
  /// One Of [BaseRateRefreshResult], [EventStudyResult], [PrecursorBatch], [PrecursorTestResult], [RecipeBacktestResult], [ReferenceImport], [ReplayResult], [RuleBacktestResult], [RuleQuality]
  OneOf get oneOf;

  BacktestJobResult._();

  factory BacktestJobResult([void updates(BacktestJobResultBuilder b)]) =
      _$BacktestJobResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BacktestJobResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BacktestJobResult> get serializer =>
      _$BacktestJobResultSerializer();
}

class _$BacktestJobResultSerializer
    implements PrimitiveSerializer<BacktestJobResult> {
  @override
  final Iterable<Type> types = const [BacktestJobResult, _$BacktestJobResult];

  @override
  final String wireName = r'BacktestJobResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BacktestJobResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    BacktestJobResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  BacktestJobResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BacktestJobResultBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(RuleBacktestResult),
      FullType(RecipeBacktestResult),
      FullType(PrecursorTestResult),
      FullType(RuleQuality),
      FullType(ReplayResult),
      FullType(EventStudyResult),
      FullType(PrecursorBatch),
      FullType(ReferenceImport),
      FullType(BaseRateRefreshResult),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class BacktestJobResultRuleTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const BacktestJobResultRuleTypeEnum record =
      _$backtestJobResultRuleTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'count')
  static const BacktestJobResultRuleTypeEnum count =
      _$backtestJobResultRuleTypeEnum_count;
  @BuiltValueEnumConst(wireName: r'absence')
  static const BacktestJobResultRuleTypeEnum absence =
      _$backtestJobResultRuleTypeEnum_absence;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const BacktestJobResultRuleTypeEnum anomaly =
      _$backtestJobResultRuleTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultRuleTypeEnum unknownDefaultOpenApi =
      _$backtestJobResultRuleTypeEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultRuleTypeEnum> get serializer =>
      _$backtestJobResultRuleTypeEnumSerializer;

  const BacktestJobResultRuleTypeEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultRuleTypeEnum> get values =>
      _$backtestJobResultRuleTypeEnumValues;
  static BacktestJobResultRuleTypeEnum valueOf(String name) =>
      _$backtestJobResultRuleTypeEnumValueOf(name);
}

class BacktestJobResultPermutationsEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 200)
  static const BacktestJobResultPermutationsEnum number200 =
      _$backtestJobResultPermutationsEnum_number200;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const BacktestJobResultPermutationsEnum unknownDefaultOpenApi =
      _$backtestJobResultPermutationsEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultPermutationsEnum> get serializer =>
      _$backtestJobResultPermutationsEnumSerializer;

  const BacktestJobResultPermutationsEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultPermutationsEnum> get values =>
      _$backtestJobResultPermutationsEnumValues;
  static BacktestJobResultPermutationsEnum valueOf(String name) =>
      _$backtestJobResultPermutationsEnumValueOf(name);
}

class BacktestJobResultVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const BacktestJobResultVerdictEnum insufficient =
      _$backtestJobResultVerdictEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'no-evidence-of-precedence')
  static const BacktestJobResultVerdictEnum noEvidenceOfPrecedence =
      _$backtestJobResultVerdictEnum_noEvidenceOfPrecedence;
  @BuiltValueEnumConst(wireName: r'weak')
  static const BacktestJobResultVerdictEnum weak =
      _$backtestJobResultVerdictEnum_weak;
  @BuiltValueEnumConst(wireName: r'notable')
  static const BacktestJobResultVerdictEnum notable =
      _$backtestJobResultVerdictEnum_notable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultVerdictEnum unknownDefaultOpenApi =
      _$backtestJobResultVerdictEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultVerdictEnum> get serializer =>
      _$backtestJobResultVerdictEnumSerializer;

  const BacktestJobResultVerdictEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultVerdictEnum> get values =>
      _$backtestJobResultVerdictEnumValues;
  static BacktestJobResultVerdictEnum valueOf(String name) =>
      _$backtestJobResultVerdictEnumValueOf(name);
}

class BacktestJobResultFeedbackMappingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'positive')
  static const BacktestJobResultFeedbackMappingEnum positive =
      _$backtestJobResultFeedbackMappingEnum_positive;
  @BuiltValueEnumConst(wireName: r'negative')
  static const BacktestJobResultFeedbackMappingEnum negative =
      _$backtestJobResultFeedbackMappingEnum_negative;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const BacktestJobResultFeedbackMappingEnum neutral =
      _$backtestJobResultFeedbackMappingEnum_neutral;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultFeedbackMappingEnum unknownDefaultOpenApi =
      _$backtestJobResultFeedbackMappingEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultFeedbackMappingEnum> get serializer =>
      _$backtestJobResultFeedbackMappingEnumSerializer;

  const BacktestJobResultFeedbackMappingEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultFeedbackMappingEnum> get values =>
      _$backtestJobResultFeedbackMappingEnumValues;
  static BacktestJobResultFeedbackMappingEnum valueOf(String name) =>
      _$backtestJobResultFeedbackMappingEnumValueOf(name);
}

class BacktestJobResultStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const BacktestJobResultStatusEnum queued =
      _$backtestJobResultStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const BacktestJobResultStatusEnum running =
      _$backtestJobResultStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const BacktestJobResultStatusEnum done =
      _$backtestJobResultStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BacktestJobResultStatusEnum failed =
      _$backtestJobResultStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const BacktestJobResultStatusEnum skipped =
      _$backtestJobResultStatusEnum_skipped;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const BacktestJobResultStatusEnum cancelled =
      _$backtestJobResultStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultStatusEnum unknownDefaultOpenApi =
      _$backtestJobResultStatusEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultStatusEnum> get serializer =>
      _$backtestJobResultStatusEnumSerializer;

  const BacktestJobResultStatusEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultStatusEnum> get values =>
      _$backtestJobResultStatusEnumValues;
  static BacktestJobResultStatusEnum valueOf(String name) =>
      _$backtestJobResultStatusEnumValueOf(name);
}

class BacktestJobResultOutcomeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'identical')
  static const BacktestJobResultOutcomeEnum identical =
      _$backtestJobResultOutcomeEnum_identical;
  @BuiltValueEnumConst(wireName: r'differs')
  static const BacktestJobResultOutcomeEnum differs =
      _$backtestJobResultOutcomeEnum_differs;
  @BuiltValueEnumConst(wireName: r'not-replayable')
  static const BacktestJobResultOutcomeEnum notReplayable =
      _$backtestJobResultOutcomeEnum_notReplayable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultOutcomeEnum unknownDefaultOpenApi =
      _$backtestJobResultOutcomeEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultOutcomeEnum> get serializer =>
      _$backtestJobResultOutcomeEnumSerializer;

  const BacktestJobResultOutcomeEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultOutcomeEnum> get values =>
      _$backtestJobResultOutcomeEnumValues;
  static BacktestJobResultOutcomeEnum valueOf(String name) =>
      _$backtestJobResultOutcomeEnumValueOf(name);
}

/// When not-replayable
class BacktestJobResultReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'inputs-purged')
  static const BacktestJobResultReasonEnum inputsPurged =
      _$backtestJobResultReasonEnum_inputsPurged;
  @BuiltValueEnumConst(wireName: r'component-removed')
  static const BacktestJobResultReasonEnum componentRemoved =
      _$backtestJobResultReasonEnum_componentRemoved;
  @BuiltValueEnumConst(wireName: r'llm-output')
  static const BacktestJobResultReasonEnum llmOutput =
      _$backtestJobResultReasonEnum_llmOutput;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultReasonEnum unknownDefaultOpenApi =
      _$backtestJobResultReasonEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultReasonEnum> get serializer =>
      _$backtestJobResultReasonEnumSerializer;

  const BacktestJobResultReasonEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultReasonEnum> get values =>
      _$backtestJobResultReasonEnumValues;
  static BacktestJobResultReasonEnum valueOf(String name) =>
      _$backtestJobResultReasonEnumValueOf(name);
}

class BacktestJobResultFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'day')
  static const BacktestJobResultFrequencyEnum day =
      _$backtestJobResultFrequencyEnum_day;
  @BuiltValueEnumConst(wireName: r'week')
  static const BacktestJobResultFrequencyEnum week =
      _$backtestJobResultFrequencyEnum_week;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultFrequencyEnum unknownDefaultOpenApi =
      _$backtestJobResultFrequencyEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultFrequencyEnum> get serializer =>
      _$backtestJobResultFrequencyEnumSerializer;

  const BacktestJobResultFrequencyEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultFrequencyEnum> get values =>
      _$backtestJobResultFrequencyEnumValues;
  static BacktestJobResultFrequencyEnum valueOf(String name) =>
      _$backtestJobResultFrequencyEnumValueOf(name);
}

class BacktestJobResultTransformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'log-return')
  static const BacktestJobResultTransformEnum logReturn =
      _$backtestJobResultTransformEnum_logReturn;
  @BuiltValueEnumConst(wireName: r'log-level-standardised')
  static const BacktestJobResultTransformEnum logLevelStandardised =
      _$backtestJobResultTransformEnum_logLevelStandardised;
  @BuiltValueEnumConst(wireName: r'weekly-difference-standardised')
  static const BacktestJobResultTransformEnum weeklyDifferenceStandardised =
      _$backtestJobResultTransformEnum_weeklyDifferenceStandardised;
  @BuiltValueEnumConst(wireName: r'anscombe-residual')
  static const BacktestJobResultTransformEnum anscombeResidual =
      _$backtestJobResultTransformEnum_anscombeResidual;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultTransformEnum unknownDefaultOpenApi =
      _$backtestJobResultTransformEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultTransformEnum> get serializer =>
      _$backtestJobResultTransformEnumSerializer;

  const BacktestJobResultTransformEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultTransformEnum> get values =>
      _$backtestJobResultTransformEnumValues;
  static BacktestJobResultTransformEnum valueOf(String name) =>
      _$backtestJobResultTransformEnumValueOf(name);
}

class BacktestJobResultModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mine')
  static const BacktestJobResultModeEnum mine =
      _$backtestJobResultModeEnum_mine;
  @BuiltValueEnumConst(wireName: r'retest')
  static const BacktestJobResultModeEnum retest =
      _$backtestJobResultModeEnum_retest;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultModeEnum unknownDefaultOpenApi =
      _$backtestJobResultModeEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultModeEnum> get serializer =>
      _$backtestJobResultModeEnumSerializer;

  const BacktestJobResultModeEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultModeEnum> get values =>
      _$backtestJobResultModeEnumValues;
  static BacktestJobResultModeEnum valueOf(String name) =>
      _$backtestJobResultModeEnumValueOf(name);
}

class BacktestJobResultTriggerEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'schedule')
  static const BacktestJobResultTriggerEnum schedule =
      _$backtestJobResultTriggerEnum_schedule;
  @BuiltValueEnumConst(wireName: r'manual')
  static const BacktestJobResultTriggerEnum manual =
      _$backtestJobResultTriggerEnum_manual;
  @BuiltValueEnumConst(wireName: r'cycle')
  static const BacktestJobResultTriggerEnum cycle =
      _$backtestJobResultTriggerEnum_cycle;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultTriggerEnum unknownDefaultOpenApi =
      _$backtestJobResultTriggerEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultTriggerEnum> get serializer =>
      _$backtestJobResultTriggerEnumSerializer;

  const BacktestJobResultTriggerEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultTriggerEnum> get values =>
      _$backtestJobResultTriggerEnumValues;
  static BacktestJobResultTriggerEnum valueOf(String name) =>
      _$backtestJobResultTriggerEnumValueOf(name);
}

class BacktestJobResultMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BH')
  static const BacktestJobResultMethodEnum BH =
      _$backtestJobResultMethodEnum_BH;
  @BuiltValueEnumConst(wireName: r'BY')
  static const BacktestJobResultMethodEnum BY =
      _$backtestJobResultMethodEnum_BY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultMethodEnum unknownDefaultOpenApi =
      _$backtestJobResultMethodEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultMethodEnum> get serializer =>
      _$backtestJobResultMethodEnumSerializer;

  const BacktestJobResultMethodEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultMethodEnum> get values =>
      _$backtestJobResultMethodEnumValues;
  static BacktestJobResultMethodEnum valueOf(String name) =>
      _$backtestJobResultMethodEnumValueOf(name);
}

class BacktestJobResultDatasetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ucdp-ged')
  static const BacktestJobResultDatasetEnum ucdpGed =
      _$backtestJobResultDatasetEnum_ucdpGed;
  @BuiltValueEnumConst(wireName: r'acled')
  static const BacktestJobResultDatasetEnum acled =
      _$backtestJobResultDatasetEnum_acled;
  @BuiltValueEnumConst(wireName: r'usgs-comcat')
  static const BacktestJobResultDatasetEnum usgsComcat =
      _$backtestJobResultDatasetEnum_usgsComcat;
  @BuiltValueEnumConst(wireName: r'gdacs')
  static const BacktestJobResultDatasetEnum gdacs =
      _$backtestJobResultDatasetEnum_gdacs;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultDatasetEnum unknownDefaultOpenApi =
      _$backtestJobResultDatasetEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultDatasetEnum> get serializer =>
      _$backtestJobResultDatasetEnumSerializer;

  const BacktestJobResultDatasetEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultDatasetEnum> get values =>
      _$backtestJobResultDatasetEnumValues;
  static BacktestJobResultDatasetEnum valueOf(String name) =>
      _$backtestJobResultDatasetEnumValueOf(name);
}

class BacktestJobResultEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const BacktestJobResultEgressEnum OPEN =
      _$backtestJobResultEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const BacktestJobResultEgressEnum LOCAL_ONLY =
      _$backtestJobResultEgressEnum_LOCAL_ONLY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestJobResultEgressEnum unknownDefaultOpenApi =
      _$backtestJobResultEgressEnum_unknownDefaultOpenApi;

  static Serializer<BacktestJobResultEgressEnum> get serializer =>
      _$backtestJobResultEgressEnumSerializer;

  const BacktestJobResultEgressEnum._(String name) : super(name);

  static BuiltSet<BacktestJobResultEgressEnum> get values =>
      _$backtestJobResultEgressEnumValues;
  static BacktestJobResultEgressEnum valueOf(String name) =>
      _$backtestJobResultEgressEnumValueOf(name);
}
