//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_result_outcome_distribution.g.dart';

/// Outcome frequency among analogs, shrunk toward the base rate by k ÷ (k + 10)
///
/// Properties:
/// * [outcome] - Target outcome: `critical` (situation reaches critical) or `{family}/P{n}D` (a family within n days), e.g. `conflict:battles/P30D`
/// * [analogCount]
/// * [hits]
/// * [frequency]
/// * [baseRate]
/// * [baseRateId] - ULID identifier
/// * [probability]
/// * [interval]
@BuiltValue()
abstract class AnalogResultOutcomeDistribution
    implements
        Built<AnalogResultOutcomeDistribution,
            AnalogResultOutcomeDistributionBuilder> {
  /// Target outcome: `critical` (situation reaches critical) or `{family}/P{n}D` (a family within n days), e.g. `conflict:battles/P30D`
  @BuiltValueField(wireName: r'outcome')
  String get outcome;

  @BuiltValueField(wireName: r'analogCount')
  int get analogCount;

  @BuiltValueField(wireName: r'hits')
  int get hits;

  @BuiltValueField(wireName: r'frequency')
  num? get frequency;

  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  /// ULID identifier
  @BuiltValueField(wireName: r'baseRateId')
  String? get baseRateId;

  @BuiltValueField(wireName: r'probability')
  num get probability;

  @BuiltValueField(wireName: r'interval')
  StatInterval get interval;

  AnalogResultOutcomeDistribution._();

  factory AnalogResultOutcomeDistribution(
          [void updates(AnalogResultOutcomeDistributionBuilder b)]) =
      _$AnalogResultOutcomeDistribution;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogResultOutcomeDistributionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogResultOutcomeDistribution> get serializer =>
      _$AnalogResultOutcomeDistributionSerializer();
}

class _$AnalogResultOutcomeDistributionSerializer
    implements PrimitiveSerializer<AnalogResultOutcomeDistribution> {
  @override
  final Iterable<Type> types = const [
    AnalogResultOutcomeDistribution,
    _$AnalogResultOutcomeDistribution
  ];

  @override
  final String wireName = r'AnalogResultOutcomeDistribution';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogResultOutcomeDistribution object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'outcome';
    yield serializers.serialize(
      object.outcome,
      specifiedType: const FullType(String),
    );
    yield r'analogCount';
    yield serializers.serialize(
      object.analogCount,
      specifiedType: const FullType(int),
    );
    yield r'hits';
    yield serializers.serialize(
      object.hits,
      specifiedType: const FullType(int),
    );
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baseRate != null) {
      yield r'baseRate';
      yield serializers.serialize(
        object.baseRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baseRateId != null) {
      yield r'baseRateId';
      yield serializers.serialize(
        object.baseRateId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'probability';
    yield serializers.serialize(
      object.probability,
      specifiedType: const FullType(num),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(StatInterval),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogResultOutcomeDistribution object, {
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
    required AnalogResultOutcomeDistributionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outcome = valueDes;
          break;
        case r'analogCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.analogCount = valueDes;
          break;
        case r'hits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.hits = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        case r'baseRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
          break;
        case r'baseRateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.baseRateId = valueDes;
          break;
        case r'probability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.probability = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatInterval),
          ) as StatInterval;
          result.interval.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogResultOutcomeDistribution deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogResultOutcomeDistributionBuilder();
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
