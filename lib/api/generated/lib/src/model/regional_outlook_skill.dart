//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_outlook_skill.g.dart';

/// Latest out-of-sample accuracy from the ledger
///
/// Properties:
/// * [evaluatedWeeks]
/// * [n]
/// * [meanPinballLoss]
/// * [crps]
/// * [skillVsSeasonalNaive]
/// * [skillVsClimatology]
/// * [intervalCoverageP10P90]
/// * [label]
/// * [backtest] - The monthly rolling-origin evaluation (last 26 weeks) against seasonal naive and climatology
@BuiltValue()
abstract class RegionalOutlookSkill
    implements Built<RegionalOutlookSkill, RegionalOutlookSkillBuilder> {
  @BuiltValueField(wireName: r'evaluatedWeeks')
  int? get evaluatedWeeks;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'meanPinballLoss')
  num? get meanPinballLoss;

  @BuiltValueField(wireName: r'crps')
  num? get crps;

  @BuiltValueField(wireName: r'skillVsSeasonalNaive')
  num? get skillVsSeasonalNaive;

  @BuiltValueField(wireName: r'skillVsClimatology')
  num? get skillVsClimatology;

  @BuiltValueField(wireName: r'intervalCoverageP10P90')
  num? get intervalCoverageP10P90;

  @BuiltValueField(wireName: r'label')
  RegionalOutlookSkillLabelEnum get label;
  // enum labelEnum {  ok,  insufficient,  };

  /// The monthly rolling-origin evaluation (last 26 weeks) against seasonal naive and climatology
  @BuiltValueField(wireName: r'backtest')
  BuiltMap<String, JsonObject?>? get backtest;

  RegionalOutlookSkill._();

  factory RegionalOutlookSkill([void updates(RegionalOutlookSkillBuilder b)]) =
      _$RegionalOutlookSkill;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalOutlookSkillBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalOutlookSkill> get serializer =>
      _$RegionalOutlookSkillSerializer();
}

class _$RegionalOutlookSkillSerializer
    implements PrimitiveSerializer<RegionalOutlookSkill> {
  @override
  final Iterable<Type> types = const [
    RegionalOutlookSkill,
    _$RegionalOutlookSkill
  ];

  @override
  final String wireName = r'RegionalOutlookSkill';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalOutlookSkill object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.evaluatedWeeks != null) {
      yield r'evaluatedWeeks';
      yield serializers.serialize(
        object.evaluatedWeeks,
        specifiedType: const FullType(int),
      );
    }
    yield r'n';
    yield serializers.serialize(
      object.n,
      specifiedType: const FullType(int),
    );
    if (object.meanPinballLoss != null) {
      yield r'meanPinballLoss';
      yield serializers.serialize(
        object.meanPinballLoss,
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
    if (object.skillVsSeasonalNaive != null) {
      yield r'skillVsSeasonalNaive';
      yield serializers.serialize(
        object.skillVsSeasonalNaive,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.skillVsClimatology != null) {
      yield r'skillVsClimatology';
      yield serializers.serialize(
        object.skillVsClimatology,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.intervalCoverageP10P90 != null) {
      yield r'intervalCoverageP10P90';
      yield serializers.serialize(
        object.intervalCoverageP10P90,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(RegionalOutlookSkillLabelEnum),
    );
    if (object.backtest != null) {
      yield r'backtest';
      yield serializers.serialize(
        object.backtest,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalOutlookSkill object, {
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
    required RegionalOutlookSkillBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evaluatedWeeks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.evaluatedWeeks = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n = valueDes;
          break;
        case r'meanPinballLoss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meanPinballLoss = valueDes;
          break;
        case r'crps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.crps = valueDes;
          break;
        case r'skillVsSeasonalNaive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.skillVsSeasonalNaive = valueDes;
          break;
        case r'skillVsClimatology':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.skillVsClimatology = valueDes;
          break;
        case r'intervalCoverageP10P90':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.intervalCoverageP10P90 = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegionalOutlookSkillLabelEnum),
          ) as RegionalOutlookSkillLabelEnum;
          result.label = valueDes;
          break;
        case r'backtest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.backtest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalOutlookSkill deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalOutlookSkillBuilder();
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

class RegionalOutlookSkillLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const RegionalOutlookSkillLabelEnum ok =
      _$regionalOutlookSkillLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const RegionalOutlookSkillLabelEnum insufficient =
      _$regionalOutlookSkillLabelEnum_insufficient;

  static Serializer<RegionalOutlookSkillLabelEnum> get serializer =>
      _$regionalOutlookSkillLabelEnumSerializer;

  const RegionalOutlookSkillLabelEnum._(String name) : super(name);

  static BuiltSet<RegionalOutlookSkillLabelEnum> get values =>
      _$regionalOutlookSkillLabelEnumValues;
  static RegionalOutlookSkillLabelEnum valueOf(String name) =>
      _$regionalOutlookSkillLabelEnumValueOf(name);
}
