//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_anomaly.g.dart';

/// Anomaly rules
///
/// Properties:
/// * [warmupConsumed]
/// * [byClassification]
/// * [coverageDrops]
@BuiltValue()
abstract class RuleBacktestResultAnomaly
    implements
        Built<RuleBacktestResultAnomaly, RuleBacktestResultAnomalyBuilder> {
  @BuiltValueField(wireName: r'warmupConsumed')
  String? get warmupConsumed;

  @BuiltValueField(wireName: r'byClassification')
  BuiltMap<String, int>? get byClassification;

  @BuiltValueField(wireName: r'coverageDrops')
  int? get coverageDrops;

  RuleBacktestResultAnomaly._();

  factory RuleBacktestResultAnomaly(
          [void updates(RuleBacktestResultAnomalyBuilder b)]) =
      _$RuleBacktestResultAnomaly;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultAnomalyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultAnomaly> get serializer =>
      _$RuleBacktestResultAnomalySerializer();
}

class _$RuleBacktestResultAnomalySerializer
    implements PrimitiveSerializer<RuleBacktestResultAnomaly> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultAnomaly,
    _$RuleBacktestResultAnomaly
  ];

  @override
  final String wireName = r'RuleBacktestResultAnomaly';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultAnomaly object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.warmupConsumed != null) {
      yield r'warmupConsumed';
      yield serializers.serialize(
        object.warmupConsumed,
        specifiedType: const FullType(String),
      );
    }
    if (object.byClassification != null) {
      yield r'byClassification';
      yield serializers.serialize(
        object.byClassification,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.coverageDrops != null) {
      yield r'coverageDrops';
      yield serializers.serialize(
        object.coverageDrops,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultAnomaly object, {
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
    required RuleBacktestResultAnomalyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'warmupConsumed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.warmupConsumed = valueDes;
          break;
        case r'byClassification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byClassification.replace(valueDes);
          break;
        case r'coverageDrops':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.coverageDrops = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResultAnomaly deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultAnomalyBuilder();
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
