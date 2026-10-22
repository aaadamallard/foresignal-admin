//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_score_interval_hits.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_score.g.dart';

/// Scores of one forecaster on one resolved question
///
/// Properties:
/// * [questionId] - ULID identifier
/// * [forecasterId]
/// * [brier]
/// * [logScore]
/// * [rps]
/// * [crps]
/// * [pinball] - Pinball loss per quantile level
/// * [intervalHits]
/// * [timeAveragedBrier]
/// * [nDays]
/// * [finalProbability]
/// * [scorerVersion]
/// * [computedAt]
@BuiltValue()
abstract class ForecastScore
    implements Built<ForecastScore, ForecastScoreBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'brier')
  num? get brier;

  @BuiltValueField(wireName: r'logScore')
  num? get logScore;

  @BuiltValueField(wireName: r'rps')
  num? get rps;

  @BuiltValueField(wireName: r'crps')
  num? get crps;

  /// Pinball loss per quantile level
  @BuiltValueField(wireName: r'pinball')
  BuiltMap<String, num>? get pinball;

  @BuiltValueField(wireName: r'intervalHits')
  ForecastScoreIntervalHits? get intervalHits;

  @BuiltValueField(wireName: r'timeAveragedBrier')
  num? get timeAveragedBrier;

  @BuiltValueField(wireName: r'nDays')
  int get nDays;

  @BuiltValueField(wireName: r'finalProbability')
  num? get finalProbability;

  @BuiltValueField(wireName: r'scorerVersion')
  String get scorerVersion;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  ForecastScore._();

  factory ForecastScore([void updates(ForecastScoreBuilder b)]) =
      _$ForecastScore;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastScoreBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastScore> get serializer =>
      _$ForecastScoreSerializer();
}

class _$ForecastScoreSerializer implements PrimitiveSerializer<ForecastScore> {
  @override
  final Iterable<Type> types = const [ForecastScore, _$ForecastScore];

  @override
  final String wireName = r'ForecastScore';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastScore object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    if (object.brier != null) {
      yield r'brier';
      yield serializers.serialize(
        object.brier,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.logScore != null) {
      yield r'logScore';
      yield serializers.serialize(
        object.logScore,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.rps != null) {
      yield r'rps';
      yield serializers.serialize(
        object.rps,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.crps != null) {
      yield r'crps';
      yield serializers.serialize(
        object.crps,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.pinball != null) {
      yield r'pinball';
      yield serializers.serialize(
        object.pinball,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(num)]),
      );
    }
    if (object.intervalHits != null) {
      yield r'intervalHits';
      yield serializers.serialize(
        object.intervalHits,
        specifiedType: const FullType.nullable(ForecastScoreIntervalHits),
      );
    }
    if (object.timeAveragedBrier != null) {
      yield r'timeAveragedBrier';
      yield serializers.serialize(
        object.timeAveragedBrier,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'nDays';
    yield serializers.serialize(
      object.nDays,
      specifiedType: const FullType(int),
    );
    if (object.finalProbability != null) {
      yield r'finalProbability';
      yield serializers.serialize(
        object.finalProbability,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'scorerVersion';
    yield serializers.serialize(
      object.scorerVersion,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastScore object, {
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
    required ForecastScoreBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'forecasterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forecasterId = valueDes;
          break;
        case r'brier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.brier = valueDes;
          break;
        case r'logScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.logScore = valueDes;
          break;
        case r'rps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rps = valueDes;
          break;
        case r'crps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.crps = valueDes;
          break;
        case r'pinball':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(num)]),
          ) as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.pinball.replace(valueDes);
          break;
        case r'intervalHits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ForecastScoreIntervalHits),
          ) as ForecastScoreIntervalHits?;
          if (valueDes == null) continue;
          result.intervalHits.replace(valueDes);
          break;
        case r'timeAveragedBrier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.timeAveragedBrier = valueDes;
          break;
        case r'nDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nDays = valueDes;
          break;
        case r'finalProbability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.finalProbability = valueDes;
          break;
        case r'scorerVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scorerVersion = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastScore deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastScoreBuilder();
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
