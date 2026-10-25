//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor_test_result_lag.dart';
import 'package:foresignal_api/src/model/precursor_test_result_reverse.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/backtest_caveat.dart';
import 'package:foresignal_api/src/model/precursor_test_result_hit_rate_ci.dart';
import 'package:foresignal_api/src/model/precursor_test_result_multiple_testing.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_result.g.dart';

/// Descriptive statistics of an association in stored data; not causation and not a calibrated probability
///
/// Properties:
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
/// * [caveats]
@BuiltValue()
abstract class PrecursorTestResult
    implements Built<PrecursorTestResult, PrecursorTestResultBuilder> {
  @BuiltValueField(wireName: r'testerVersion')
  String get testerVersion;

  @BuiltValueField(wireName: r'nAntecedent')
  int get nAntecedent;

  @BuiltValueField(wireName: r'nConsequent')
  int? get nConsequent;

  @BuiltValueField(wireName: r'hits')
  int get hits;

  @BuiltValueField(wireName: r'hitRate')
  num? get hitRate;

  @BuiltValueField(wireName: r'hitRateCi')
  PrecursorTestResultHitRateCi? get hitRateCi;

  @BuiltValueField(wireName: r'lag')
  PrecursorTestResultLag? get lag;

  /// Mean hit rate of 200 circular time-shifted copies
  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  @BuiltValueField(wireName: r'lift')
  num? get lift;

  /// (1 + #shifted ≥ observed) ÷ 201
  @BuiltValueField(wireName: r'pValue')
  num? get pValue;

  @BuiltValueField(wireName: r'permutations')
  PrecursorTestResultPermutationsEnum? get permutations;
  // enum permutationsEnum {  200,  };

  /// Deterministic seed (hash of definition + range)
  @BuiltValueField(wireName: r'seed')
  String? get seed;

  @BuiltValueField(wireName: r'reverse')
  PrecursorTestResultReverse? get reverse;

  @BuiltValueField(wireName: r'coOccurrenceNotPrecedence')
  bool? get coOccurrenceNotPrecedence;

  @BuiltValueField(wireName: r'verdict')
  PrecursorTestResultVerdictEnum get verdict;
  // enum verdictEnum {  insufficient,  no-evidence-of-precedence,  weak,  notable,  };

  @BuiltValueField(wireName: r'multipleTesting')
  PrecursorTestResultMultipleTesting? get multipleTesting;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<BacktestCaveat> get caveats;

  PrecursorTestResult._();

  factory PrecursorTestResult([void updates(PrecursorTestResultBuilder b)]) =
      _$PrecursorTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestResult> get serializer =>
      _$PrecursorTestResultSerializer();
}

class _$PrecursorTestResultSerializer
    implements PrimitiveSerializer<PrecursorTestResult> {
  @override
  final Iterable<Type> types = const [
    PrecursorTestResult,
    _$PrecursorTestResult,
  ];

  @override
  final String wireName = r'PrecursorTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'testerVersion';
    yield serializers.serialize(
      object.testerVersion,
      specifiedType: const FullType(String),
    );
    yield r'nAntecedent';
    yield serializers.serialize(
      object.nAntecedent,
      specifiedType: const FullType(int),
    );
    if (object.nConsequent != null) {
      yield r'nConsequent';
      yield serializers.serialize(
        object.nConsequent,
        specifiedType: const FullType(int),
      );
    }
    yield r'hits';
    yield serializers.serialize(
      object.hits,
      specifiedType: const FullType(int),
    );
    if (object.hitRate != null) {
      yield r'hitRate';
      yield serializers.serialize(
        object.hitRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.hitRateCi != null) {
      yield r'hitRateCi';
      yield serializers.serialize(
        object.hitRateCi,
        specifiedType: const FullType(PrecursorTestResultHitRateCi),
      );
    }
    if (object.lag != null) {
      yield r'lag';
      yield serializers.serialize(
        object.lag,
        specifiedType: const FullType(PrecursorTestResultLag),
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
    if (object.pValue != null) {
      yield r'pValue';
      yield serializers.serialize(
        object.pValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.permutations != null) {
      yield r'permutations';
      yield serializers.serialize(
        object.permutations,
        specifiedType: const FullType(PrecursorTestResultPermutationsEnum),
      );
    }
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType(String),
      );
    }
    if (object.reverse != null) {
      yield r'reverse';
      yield serializers.serialize(
        object.reverse,
        specifiedType: const FullType(PrecursorTestResultReverse),
      );
    }
    if (object.coOccurrenceNotPrecedence != null) {
      yield r'coOccurrenceNotPrecedence';
      yield serializers.serialize(
        object.coOccurrenceNotPrecedence,
        specifiedType: const FullType(bool),
      );
    }
    yield r'verdict';
    yield serializers.serialize(
      object.verdict,
      specifiedType: const FullType(PrecursorTestResultVerdictEnum),
    );
    if (object.multipleTesting != null) {
      yield r'multipleTesting';
      yield serializers.serialize(
        object.multipleTesting,
        specifiedType: const FullType(PrecursorTestResultMultipleTesting),
      );
    }
    yield r'statement';
    yield serializers.serialize(
      object.statement,
      specifiedType: const FullType(String),
    );
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(BacktestCaveat)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResult object, {
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
    required PrecursorTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'testerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.testerVersion = valueDes;
          break;
        case r'nAntecedent':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nAntecedent = valueDes;
          break;
        case r'nConsequent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nConsequent = valueDes;
          break;
        case r'hits':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.hits = valueDes;
          break;
        case r'hitRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.hitRate = valueDes;
          break;
        case r'hitRateCi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorTestResultHitRateCi,
                    ),
                  )
                  as PrecursorTestResultHitRateCi?;
          if (valueDes == null) continue;
          result.hitRateCi.replace(valueDes);
          break;
        case r'lag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorTestResultLag,
                    ),
                  )
                  as PrecursorTestResultLag?;
          if (valueDes == null) continue;
          result.lag.replace(valueDes);
          break;
        case r'baseRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
          break;
        case r'lift':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lift = valueDes;
          break;
        case r'pValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pValue = valueDes;
          break;
        case r'permutations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorTestResultPermutationsEnum,
                    ),
                  )
                  as PrecursorTestResultPermutationsEnum?;
          if (valueDes == null) continue;
          result.permutations = valueDes;
          break;
        case r'seed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.seed = valueDes;
          break;
        case r'reverse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorTestResultReverse,
                    ),
                  )
                  as PrecursorTestResultReverse?;
          if (valueDes == null) continue;
          result.reverse.replace(valueDes);
          break;
        case r'coOccurrenceNotPrecedence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.coOccurrenceNotPrecedence = valueDes;
          break;
        case r'verdict':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PrecursorTestResultVerdictEnum,
                    ),
                  )
                  as PrecursorTestResultVerdictEnum;
          result.verdict = valueDes;
          break;
        case r'multipleTesting':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorTestResultMultipleTesting,
                    ),
                  )
                  as PrecursorTestResultMultipleTesting?;
          if (valueDes == null) continue;
          result.multipleTesting.replace(valueDes);
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
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(BacktestCaveat),
                    ]),
                  )
                  as BuiltList<BacktestCaveat>;
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
  PrecursorTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestResultBuilder();
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

class PrecursorTestResultPermutationsEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 200)
  static const PrecursorTestResultPermutationsEnum number200 =
      _$precursorTestResultPermutationsEnum_number200;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const PrecursorTestResultPermutationsEnum unknownDefaultOpenApi =
      _$precursorTestResultPermutationsEnum_unknownDefaultOpenApi;

  static Serializer<PrecursorTestResultPermutationsEnum> get serializer =>
      _$precursorTestResultPermutationsEnumSerializer;

  const PrecursorTestResultPermutationsEnum._(String name) : super(name);

  static BuiltSet<PrecursorTestResultPermutationsEnum> get values =>
      _$precursorTestResultPermutationsEnumValues;
  static PrecursorTestResultPermutationsEnum valueOf(String name) =>
      _$precursorTestResultPermutationsEnumValueOf(name);
}

class PrecursorTestResultVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const PrecursorTestResultVerdictEnum insufficient =
      _$precursorTestResultVerdictEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'no-evidence-of-precedence')
  static const PrecursorTestResultVerdictEnum noEvidenceOfPrecedence =
      _$precursorTestResultVerdictEnum_noEvidenceOfPrecedence;
  @BuiltValueEnumConst(wireName: r'weak')
  static const PrecursorTestResultVerdictEnum weak =
      _$precursorTestResultVerdictEnum_weak;
  @BuiltValueEnumConst(wireName: r'notable')
  static const PrecursorTestResultVerdictEnum notable =
      _$precursorTestResultVerdictEnum_notable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrecursorTestResultVerdictEnum unknownDefaultOpenApi =
      _$precursorTestResultVerdictEnum_unknownDefaultOpenApi;

  static Serializer<PrecursorTestResultVerdictEnum> get serializer =>
      _$precursorTestResultVerdictEnumSerializer;

  const PrecursorTestResultVerdictEnum._(String name) : super(name);

  static BuiltSet<PrecursorTestResultVerdictEnum> get values =>
      _$precursorTestResultVerdictEnumValues;
  static PrecursorTestResultVerdictEnum valueOf(String name) =>
      _$precursorTestResultVerdictEnumValueOf(name);
}
