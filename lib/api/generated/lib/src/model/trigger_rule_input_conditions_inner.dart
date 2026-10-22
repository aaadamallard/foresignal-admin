//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/condition.dart';
import 'package:foresignal_api/src/model/approach_condition.dart';
import 'package:foresignal_api/src/model/approach_condition_target.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'trigger_rule_input_conditions_inner.g.dart';

/// TriggerRuleInputConditionsInner
///
/// Properties:
/// * [path] - Dot path into payload. Required for every operator except inWatchlist and notInWatchlist, which without a path read each source's declared identity field (descriptor entityKeys, 036); a source that does not declare the watchlist's identity never matches
/// * [op] - Comparison ops take numbers (== and != also strings and booleans); in/notIn a non-empty homogeneous scalar array (≤ 1000); exists a boolean; startsWith a string ≤ 256; matches a Java regex ≤ 256 without backreferences, lookaround or nested quantifiers (only (?:…) groups and the escapes \\d \\D \\w \\W \\s \\S \\n \\t \\r \\f, so PostgreSQL reads it the same way). A value of another JSON type than the operator expects, a missing path or JSON null never matches (except exists); string operators need a JSON string (the number 5 does not equal \"5\"); != and notIn need the value present. inWatchlist/notInWatchlist (036) take a watchlist id; the payload value must be a JSON string or number (compared by its JSON text after the list's normalization); anything else, a missing path or JSON null never matches either operator.
/// * [value]
/// * [type]
/// * [target]
/// * [withinMeters]
/// * [withinMinutes]
@BuiltValue()
abstract class TriggerRuleInputConditionsInner
    implements
        Built<
          TriggerRuleInputConditionsInner,
          TriggerRuleInputConditionsInnerBuilder
        > {
  /// One Of [ApproachCondition], [Condition]
  OneOf get oneOf;

  TriggerRuleInputConditionsInner._();

  factory TriggerRuleInputConditionsInner([
    void updates(TriggerRuleInputConditionsInnerBuilder b),
  ]) = _$TriggerRuleInputConditionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerRuleInputConditionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerRuleInputConditionsInner> get serializer =>
      _$TriggerRuleInputConditionsInnerSerializer();
}

class _$TriggerRuleInputConditionsInnerSerializer
    implements PrimitiveSerializer<TriggerRuleInputConditionsInner> {
  @override
  final Iterable<Type> types = const [
    TriggerRuleInputConditionsInner,
    _$TriggerRuleInputConditionsInner,
  ];

  @override
  final String wireName = r'TriggerRuleInputConditionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerRuleInputConditionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputConditionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  TriggerRuleInputConditionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerRuleInputConditionsInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Condition),
      FullType(ApproachCondition),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class TriggerRuleInputConditionsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'approach')
  static const TriggerRuleInputConditionsInnerTypeEnum approach =
      _$triggerRuleInputConditionsInnerTypeEnum_approach;

  static Serializer<TriggerRuleInputConditionsInnerTypeEnum> get serializer =>
      _$triggerRuleInputConditionsInnerTypeEnumSerializer;

  const TriggerRuleInputConditionsInnerTypeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputConditionsInnerTypeEnum> get values =>
      _$triggerRuleInputConditionsInnerTypeEnumValues;
  static TriggerRuleInputConditionsInnerTypeEnum valueOf(String name) =>
      _$triggerRuleInputConditionsInnerTypeEnumValueOf(name);
}
