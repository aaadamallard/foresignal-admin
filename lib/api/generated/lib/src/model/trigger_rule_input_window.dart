//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/count_window.dart';
import 'package:foresignal_api/src/model/anomaly_window.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/absence_window.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'trigger_rule_input_window.g.dart';

/// Window spec for count, absence and anomaly rules; the rule `type` selects the variant
///
/// Properties:
/// * [window] - Window length, 1m to 7d. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [step] - Evaluation period; default min(window/4, 5m), minimum 30s. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [distinctBy] - `entity` (098 entity, else descriptor entityKeys, else source+externalId), `externalId`, or a payload path. Versions are never counted.
/// * [groupBy] - null | `source` | `place` | `h3:<res 3..8>` | `admin1` | `country` | a payload path
/// * [maxGroups]
/// * [op]
/// * [threshold]
/// * [coverageMin]
/// * [bucket]
/// * [slotMode]
/// * [direction]
/// * [sensitivity] - α 1e-4 / 1e-3 / 1e-2
/// * [minAbsoluteDelta]
/// * [minWeeks]
@BuiltValue()
abstract class TriggerRuleInputWindow
    implements Built<TriggerRuleInputWindow, TriggerRuleInputWindowBuilder> {
  /// One Of [AbsenceWindow], [AnomalyWindow], [CountWindow]
  OneOf get oneOf;

  TriggerRuleInputWindow._();

  factory TriggerRuleInputWindow([
    void updates(TriggerRuleInputWindowBuilder b),
  ]) = _$TriggerRuleInputWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerRuleInputWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerRuleInputWindow> get serializer =>
      _$TriggerRuleInputWindowSerializer();
}

class _$TriggerRuleInputWindowSerializer
    implements PrimitiveSerializer<TriggerRuleInputWindow> {
  @override
  final Iterable<Type> types = const [
    TriggerRuleInputWindow,
    _$TriggerRuleInputWindow,
  ];

  @override
  final String wireName = r'TriggerRuleInputWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerRuleInputWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  TriggerRuleInputWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerRuleInputWindowBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(CountWindow),
      FullType(AbsenceWindow),
      FullType(AnomalyWindow),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class TriggerRuleInputWindowBucketEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'15m')
  static const TriggerRuleInputWindowBucketEnum n15m =
      _$triggerRuleInputWindowBucketEnum_n15m;
  @BuiltValueEnumConst(wireName: r'1h')
  static const TriggerRuleInputWindowBucketEnum n1h =
      _$triggerRuleInputWindowBucketEnum_n1h;

  static Serializer<TriggerRuleInputWindowBucketEnum> get serializer =>
      _$triggerRuleInputWindowBucketEnumSerializer;

  const TriggerRuleInputWindowBucketEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputWindowBucketEnum> get values =>
      _$triggerRuleInputWindowBucketEnumValues;
  static TriggerRuleInputWindowBucketEnum valueOf(String name) =>
      _$triggerRuleInputWindowBucketEnumValueOf(name);
}

class TriggerRuleInputWindowSlotModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour-of-week')
  static const TriggerRuleInputWindowSlotModeEnum hourOfWeek =
      _$triggerRuleInputWindowSlotModeEnum_hourOfWeek;
  @BuiltValueEnumConst(wireName: r'hour-of-day')
  static const TriggerRuleInputWindowSlotModeEnum hourOfDay =
      _$triggerRuleInputWindowSlotModeEnum_hourOfDay;

  static Serializer<TriggerRuleInputWindowSlotModeEnum> get serializer =>
      _$triggerRuleInputWindowSlotModeEnumSerializer;

  const TriggerRuleInputWindowSlotModeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputWindowSlotModeEnum> get values =>
      _$triggerRuleInputWindowSlotModeEnumValues;
  static TriggerRuleInputWindowSlotModeEnum valueOf(String name) =>
      _$triggerRuleInputWindowSlotModeEnumValueOf(name);
}

class TriggerRuleInputWindowDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'up')
  static const TriggerRuleInputWindowDirectionEnum up =
      _$triggerRuleInputWindowDirectionEnum_up;
  @BuiltValueEnumConst(wireName: r'down')
  static const TriggerRuleInputWindowDirectionEnum down =
      _$triggerRuleInputWindowDirectionEnum_down;
  @BuiltValueEnumConst(wireName: r'both')
  static const TriggerRuleInputWindowDirectionEnum both =
      _$triggerRuleInputWindowDirectionEnum_both;

  static Serializer<TriggerRuleInputWindowDirectionEnum> get serializer =>
      _$triggerRuleInputWindowDirectionEnumSerializer;

  const TriggerRuleInputWindowDirectionEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputWindowDirectionEnum> get values =>
      _$triggerRuleInputWindowDirectionEnumValues;
  static TriggerRuleInputWindowDirectionEnum valueOf(String name) =>
      _$triggerRuleInputWindowDirectionEnumValueOf(name);
}

/// α 1e-4 / 1e-3 / 1e-2
class TriggerRuleInputWindowSensitivityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const TriggerRuleInputWindowSensitivityEnum low =
      _$triggerRuleInputWindowSensitivityEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const TriggerRuleInputWindowSensitivityEnum medium =
      _$triggerRuleInputWindowSensitivityEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const TriggerRuleInputWindowSensitivityEnum high =
      _$triggerRuleInputWindowSensitivityEnum_high;

  static Serializer<TriggerRuleInputWindowSensitivityEnum> get serializer =>
      _$triggerRuleInputWindowSensitivityEnumSerializer;

  const TriggerRuleInputWindowSensitivityEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputWindowSensitivityEnum> get values =>
      _$triggerRuleInputWindowSensitivityEnumValues;
  static TriggerRuleInputWindowSensitivityEnum valueOf(String name) =>
      _$triggerRuleInputWindowSensitivityEnumValueOf(name);
}
