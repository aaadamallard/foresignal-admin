//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/approach_condition_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'approach_condition.g.dart';

/// Trigger condition `approach`: fires `enter` when dcpa ≤ withinMeters and tcpa ≤ withinMinutes; evaluated in Java by the persist gate; stale or ambiguous state is conservative (114)
///
/// Properties:
/// * [type]
/// * [target]
/// * [withinMeters]
/// * [withinMinutes]
@BuiltValue()
abstract class ApproachCondition
    implements Built<ApproachCondition, ApproachConditionBuilder> {
  @BuiltValueField(wireName: r'type')
  ApproachConditionTypeEnum get type;
  // enum typeEnum {  approach,  };

  @BuiltValueField(wireName: r'target')
  ApproachConditionTarget get target;

  @BuiltValueField(wireName: r'withinMeters')
  num get withinMeters;

  @BuiltValueField(wireName: r'withinMinutes')
  num get withinMinutes;

  ApproachCondition._();

  factory ApproachCondition([void updates(ApproachConditionBuilder b)]) =
      _$ApproachCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApproachConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApproachCondition> get serializer =>
      _$ApproachConditionSerializer();
}

class _$ApproachConditionSerializer
    implements PrimitiveSerializer<ApproachCondition> {
  @override
  final Iterable<Type> types = const [ApproachCondition, _$ApproachCondition];

  @override
  final String wireName = r'ApproachCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApproachCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ApproachConditionTypeEnum),
    );
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(ApproachConditionTarget),
    );
    yield r'withinMeters';
    yield serializers.serialize(
      object.withinMeters,
      specifiedType: const FullType(num),
    );
    yield r'withinMinutes';
    yield serializers.serialize(
      object.withinMinutes,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApproachCondition object, {
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
    required ApproachConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ApproachConditionTypeEnum),
                  )
                  as ApproachConditionTypeEnum;
          result.type = valueDes;
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ApproachConditionTarget),
                  )
                  as ApproachConditionTarget;
          result.target.replace(valueDes);
          break;
        case r'withinMeters':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.withinMeters = valueDes;
          break;
        case r'withinMinutes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.withinMinutes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApproachCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApproachConditionBuilder();
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

class ApproachConditionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'approach')
  static const ApproachConditionTypeEnum approach =
      _$approachConditionTypeEnum_approach;

  static Serializer<ApproachConditionTypeEnum> get serializer =>
      _$approachConditionTypeEnumSerializer;

  const ApproachConditionTypeEnum._(String name) : super(name);

  static BuiltSet<ApproachConditionTypeEnum> get values =>
      _$approachConditionTypeEnumValues;
  static ApproachConditionTypeEnum valueOf(String name) =>
      _$approachConditionTypeEnumValueOf(name);
}
