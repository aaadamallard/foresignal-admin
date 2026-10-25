//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/rule_backtest_result_overlap.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_samples_inner.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_variants_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_anomaly.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_actual.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_per_day_inner.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_window.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_top_entities_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result.g.dart';

/// What a rule would have fired over the range (record, windowed or anomaly rules), with variants side by side
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
@BuiltValue()
abstract class RuleBacktestResult
    implements Built<RuleBacktestResult, RuleBacktestResultBuilder> {
  @BuiltValueField(wireName: r'ruleType')
  RuleBacktestResultRuleTypeEnum get ruleType;
  // enum ruleTypeEnum {  record,  count,  absence,  anomaly,  };

  @BuiltValueField(wireName: r'wouldFire')
  int get wouldFire;

  @BuiltValueField(wireName: r'perDay')
  BuiltList<RuleBacktestResultPerDayInner>? get perDay;

  @BuiltValueField(wireName: r'topEntities')
  BuiltList<RuleBacktestResultTopEntitiesInner>? get topEntities;

  @BuiltValueField(wireName: r'samples')
  BuiltList<RuleBacktestResultSamplesInner>? get samples;

  @BuiltValueField(wireName: r'actual')
  RuleBacktestResultActual? get actual;

  @BuiltValueField(wireName: r'overlap')
  RuleBacktestResultOverlap? get overlap;

  @BuiltValueField(wireName: r'window')
  RuleBacktestResultWindow? get window;

  @BuiltValueField(wireName: r'anomaly')
  RuleBacktestResultAnomaly? get anomaly;

  @BuiltValueField(wireName: r'variants')
  BuiltList<RuleBacktestResultVariantsInner>? get variants;

  RuleBacktestResult._();

  factory RuleBacktestResult([void updates(RuleBacktestResultBuilder b)]) =
      _$RuleBacktestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResult> get serializer =>
      _$RuleBacktestResultSerializer();
}

class _$RuleBacktestResultSerializer
    implements PrimitiveSerializer<RuleBacktestResult> {
  @override
  final Iterable<Type> types = const [RuleBacktestResult, _$RuleBacktestResult];

  @override
  final String wireName = r'RuleBacktestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleType';
    yield serializers.serialize(
      object.ruleType,
      specifiedType: const FullType(RuleBacktestResultRuleTypeEnum),
    );
    yield r'wouldFire';
    yield serializers.serialize(
      object.wouldFire,
      specifiedType: const FullType(int),
    );
    if (object.perDay != null) {
      yield r'perDay';
      yield serializers.serialize(
        object.perDay,
        specifiedType: const FullType(BuiltList, [
          FullType(RuleBacktestResultPerDayInner),
        ]),
      );
    }
    if (object.topEntities != null) {
      yield r'topEntities';
      yield serializers.serialize(
        object.topEntities,
        specifiedType: const FullType(BuiltList, [
          FullType(RuleBacktestResultTopEntitiesInner),
        ]),
      );
    }
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType(BuiltList, [
          FullType(RuleBacktestResultSamplesInner),
        ]),
      );
    }
    if (object.actual != null) {
      yield r'actual';
      yield serializers.serialize(
        object.actual,
        specifiedType: const FullType(RuleBacktestResultActual),
      );
    }
    if (object.overlap != null) {
      yield r'overlap';
      yield serializers.serialize(
        object.overlap,
        specifiedType: const FullType(RuleBacktestResultOverlap),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType.nullable(RuleBacktestResultWindow),
      );
    }
    if (object.anomaly != null) {
      yield r'anomaly';
      yield serializers.serialize(
        object.anomaly,
        specifiedType: const FullType.nullable(RuleBacktestResultAnomaly),
      );
    }
    if (object.variants != null) {
      yield r'variants';
      yield serializers.serialize(
        object.variants,
        specifiedType: const FullType(BuiltList, [
          FullType(RuleBacktestResultVariantsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResult object, {
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
    required RuleBacktestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      RuleBacktestResultRuleTypeEnum,
                    ),
                  )
                  as RuleBacktestResultRuleTypeEnum;
          result.ruleType = valueDes;
          break;
        case r'wouldFire':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.wouldFire = valueDes;
          break;
        case r'perDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleBacktestResultPerDayInner),
                    ]),
                  )
                  as BuiltList<RuleBacktestResultPerDayInner>?;
          if (valueDes == null) continue;
          result.perDay.replace(valueDes);
          break;
        case r'topEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleBacktestResultTopEntitiesInner),
                    ]),
                  )
                  as BuiltList<RuleBacktestResultTopEntitiesInner>?;
          if (valueDes == null) continue;
          result.topEntities.replace(valueDes);
          break;
        case r'samples':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleBacktestResultSamplesInner),
                    ]),
                  )
                  as BuiltList<RuleBacktestResultSamplesInner>?;
          if (valueDes == null) continue;
          result.samples.replace(valueDes);
          break;
        case r'actual':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleBacktestResultActual,
                    ),
                  )
                  as RuleBacktestResultActual?;
          if (valueDes == null) continue;
          result.actual.replace(valueDes);
          break;
        case r'overlap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleBacktestResultOverlap,
                    ),
                  )
                  as RuleBacktestResultOverlap?;
          if (valueDes == null) continue;
          result.overlap.replace(valueDes);
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleBacktestResultWindow,
                    ),
                  )
                  as RuleBacktestResultWindow?;
          if (valueDes == null) continue;
          result.window.replace(valueDes);
          break;
        case r'anomaly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleBacktestResultAnomaly,
                    ),
                  )
                  as RuleBacktestResultAnomaly?;
          if (valueDes == null) continue;
          result.anomaly.replace(valueDes);
          break;
        case r'variants':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleBacktestResultVariantsInner),
                    ]),
                  )
                  as BuiltList<RuleBacktestResultVariantsInner>?;
          if (valueDes == null) continue;
          result.variants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultBuilder();
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

class RuleBacktestResultRuleTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const RuleBacktestResultRuleTypeEnum record =
      _$ruleBacktestResultRuleTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'count')
  static const RuleBacktestResultRuleTypeEnum count =
      _$ruleBacktestResultRuleTypeEnum_count;
  @BuiltValueEnumConst(wireName: r'absence')
  static const RuleBacktestResultRuleTypeEnum absence =
      _$ruleBacktestResultRuleTypeEnum_absence;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const RuleBacktestResultRuleTypeEnum anomaly =
      _$ruleBacktestResultRuleTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RuleBacktestResultRuleTypeEnum unknownDefaultOpenApi =
      _$ruleBacktestResultRuleTypeEnum_unknownDefaultOpenApi;

  static Serializer<RuleBacktestResultRuleTypeEnum> get serializer =>
      _$ruleBacktestResultRuleTypeEnumSerializer;

  const RuleBacktestResultRuleTypeEnum._(String name) : super(name);

  static BuiltSet<RuleBacktestResultRuleTypeEnum> get values =>
      _$ruleBacktestResultRuleTypeEnumValues;
  static RuleBacktestResultRuleTypeEnum valueOf(String name) =>
      _$ruleBacktestResultRuleTypeEnumValueOf(name);
}
