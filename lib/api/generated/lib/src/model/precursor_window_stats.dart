//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor_window_stats_reverse.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_window_stats.g.dart';

/// Test statistics of a precursor on one window (discovery or validation)
///
/// Properties:
/// * [window]
/// * [n] - Antecedent occurrences (events) or overlapping points (series)
/// * [hits]
/// * [hitRate]
/// * [hitRateInterval]
/// * [baseRate] - Hit rate expected by chance (circular-shift baseline)
/// * [lift]
/// * [correlation] - Series: cross-correlation at the best lag
/// * [bestLag] - ISO-8601 duration
/// * [p] - Raw p-value
/// * [adjustedP] - BH or BY adjusted p within the batch
/// * [verdict]
/// * [reverse]
/// * [lowDetectabilityExcluded] - Antecedent occurrences excluded under `LOW_DETECTABILITY`
/// * [coverageGapFraction] - Share of the window touched by coverage gaps (events: involved sources; series: missing buckets)
/// * [blockLength] - Series: surrogate block length in buckets
/// * [reason] - Why the window was insufficient
@BuiltValue()
abstract class PrecursorWindowStats
    implements Built<PrecursorWindowStats, PrecursorWindowStatsBuilder> {
  @BuiltValueField(wireName: r'window')
  TimeRange get window;

  /// Antecedent occurrences (events) or overlapping points (series)
  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'hits')
  int? get hits;

  @BuiltValueField(wireName: r'hitRate')
  num? get hitRate;

  @BuiltValueField(wireName: r'hitRateInterval')
  StatInterval? get hitRateInterval;

  /// Hit rate expected by chance (circular-shift baseline)
  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  @BuiltValueField(wireName: r'lift')
  num? get lift;

  /// Series: cross-correlation at the best lag
  @BuiltValueField(wireName: r'correlation')
  num? get correlation;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'bestLag')
  String? get bestLag;

  /// Raw p-value
  @BuiltValueField(wireName: r'p')
  num? get p;

  /// BH or BY adjusted p within the batch
  @BuiltValueField(wireName: r'adjustedP')
  num? get adjustedP;

  @BuiltValueField(wireName: r'verdict')
  PrecursorWindowStatsVerdictEnum get verdict;
  // enum verdictEnum {  insufficient,  no-evidence-of-precedence,  weak,  notable,  validated,  failed,  };

  @BuiltValueField(wireName: r'reverse')
  PrecursorWindowStatsReverse? get reverse;

  /// Antecedent occurrences excluded under `LOW_DETECTABILITY`
  @BuiltValueField(wireName: r'lowDetectabilityExcluded')
  int? get lowDetectabilityExcluded;

  /// Share of the window touched by coverage gaps (events: involved sources; series: missing buckets)
  @BuiltValueField(wireName: r'coverageGapFraction')
  num? get coverageGapFraction;

  /// Series: surrogate block length in buckets
  @BuiltValueField(wireName: r'blockLength')
  int? get blockLength;

  /// Why the window was insufficient
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  PrecursorWindowStats._();

  factory PrecursorWindowStats([void updates(PrecursorWindowStatsBuilder b)]) =
      _$PrecursorWindowStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorWindowStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorWindowStats> get serializer =>
      _$PrecursorWindowStatsSerializer();
}

class _$PrecursorWindowStatsSerializer
    implements PrimitiveSerializer<PrecursorWindowStats> {
  @override
  final Iterable<Type> types = const [
    PrecursorWindowStats,
    _$PrecursorWindowStats
  ];

  @override
  final String wireName = r'PrecursorWindowStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorWindowStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(TimeRange),
    );
    yield r'n';
    yield serializers.serialize(
      object.n,
      specifiedType: const FullType(int),
    );
    if (object.hits != null) {
      yield r'hits';
      yield serializers.serialize(
        object.hits,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.hitRate != null) {
      yield r'hitRate';
      yield serializers.serialize(
        object.hitRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.hitRateInterval != null) {
      yield r'hitRateInterval';
      yield serializers.serialize(
        object.hitRateInterval,
        specifiedType: const FullType.nullable(StatInterval),
      );
    }
    if (object.baseRate != null) {
      yield r'baseRate';
      yield serializers.serialize(
        object.baseRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lift != null) {
      yield r'lift';
      yield serializers.serialize(
        object.lift,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.correlation != null) {
      yield r'correlation';
      yield serializers.serialize(
        object.correlation,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.bestLag != null) {
      yield r'bestLag';
      yield serializers.serialize(
        object.bestLag,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.p != null) {
      yield r'p';
      yield serializers.serialize(
        object.p,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.adjustedP != null) {
      yield r'adjustedP';
      yield serializers.serialize(
        object.adjustedP,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'verdict';
    yield serializers.serialize(
      object.verdict,
      specifiedType: const FullType(PrecursorWindowStatsVerdictEnum),
    );
    if (object.reverse != null) {
      yield r'reverse';
      yield serializers.serialize(
        object.reverse,
        specifiedType: const FullType.nullable(PrecursorWindowStatsReverse),
      );
    }
    if (object.lowDetectabilityExcluded != null) {
      yield r'lowDetectabilityExcluded';
      yield serializers.serialize(
        object.lowDetectabilityExcluded,
        specifiedType: const FullType(int),
      );
    }
    if (object.coverageGapFraction != null) {
      yield r'coverageGapFraction';
      yield serializers.serialize(
        object.coverageGapFraction,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.blockLength != null) {
      yield r'blockLength';
      yield serializers.serialize(
        object.blockLength,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorWindowStats object, {
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
    required PrecursorWindowStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeRange),
          ) as TimeRange;
          result.window.replace(valueDes);
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n = valueDes;
          break;
        case r'hits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.hits = valueDes;
          break;
        case r'hitRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.hitRate = valueDes;
          break;
        case r'hitRateInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatInterval),
          ) as StatInterval?;
          if (valueDes == null) continue;
          result.hitRateInterval.replace(valueDes);
          break;
        case r'baseRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
          break;
        case r'lift':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lift = valueDes;
          break;
        case r'correlation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.correlation = valueDes;
          break;
        case r'bestLag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bestLag = valueDes;
          break;
        case r'p':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p = valueDes;
          break;
        case r'adjustedP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.adjustedP = valueDes;
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorWindowStatsVerdictEnum),
          ) as PrecursorWindowStatsVerdictEnum;
          result.verdict = valueDes;
          break;
        case r'reverse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrecursorWindowStatsReverse),
          ) as PrecursorWindowStatsReverse?;
          if (valueDes == null) continue;
          result.reverse.replace(valueDes);
          break;
        case r'lowDetectabilityExcluded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lowDetectabilityExcluded = valueDes;
          break;
        case r'coverageGapFraction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.coverageGapFraction = valueDes;
          break;
        case r'blockLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.blockLength = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorWindowStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorWindowStatsBuilder();
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

class PrecursorWindowStatsVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const PrecursorWindowStatsVerdictEnum insufficient =
      _$precursorWindowStatsVerdictEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'no-evidence-of-precedence')
  static const PrecursorWindowStatsVerdictEnum noEvidenceOfPrecedence =
      _$precursorWindowStatsVerdictEnum_noEvidenceOfPrecedence;
  @BuiltValueEnumConst(wireName: r'weak')
  static const PrecursorWindowStatsVerdictEnum weak =
      _$precursorWindowStatsVerdictEnum_weak;
  @BuiltValueEnumConst(wireName: r'notable')
  static const PrecursorWindowStatsVerdictEnum notable =
      _$precursorWindowStatsVerdictEnum_notable;
  @BuiltValueEnumConst(wireName: r'validated')
  static const PrecursorWindowStatsVerdictEnum validated =
      _$precursorWindowStatsVerdictEnum_validated;
  @BuiltValueEnumConst(wireName: r'failed')
  static const PrecursorWindowStatsVerdictEnum failed =
      _$precursorWindowStatsVerdictEnum_failed;

  static Serializer<PrecursorWindowStatsVerdictEnum> get serializer =>
      _$precursorWindowStatsVerdictEnumSerializer;

  const PrecursorWindowStatsVerdictEnum._(String name) : super(name);

  static BuiltSet<PrecursorWindowStatsVerdictEnum> get values =>
      _$precursorWindowStatsVerdictEnumValues;
  static PrecursorWindowStatsVerdictEnum valueOf(String name) =>
      _$precursorWindowStatsVerdictEnumValueOf(name);
}
