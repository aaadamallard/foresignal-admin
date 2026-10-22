//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/escalation_step.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/escalation_policy_input_stop_on.dart';
import 'package:foresignal_api/src/model/escalation_policy_input_repeat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'escalation_policy.g.dart';

/// An escalation policy (033)
///
/// Properties:
/// * [name]
/// * [steps]
/// * [repeat]
/// * [stopOn]
/// * [id]
/// * [createdAt]
/// * [updatedAt]
/// * [ruleCount] - Rules referencing it
@BuiltValue()
abstract class EscalationPolicy
    implements Built<EscalationPolicy, EscalationPolicyBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'steps')
  BuiltList<EscalationStep> get steps;

  @BuiltValueField(wireName: r'repeat')
  EscalationPolicyInputRepeat? get repeat;

  @BuiltValueField(wireName: r'stopOn')
  EscalationPolicyInputStopOn? get stopOn;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Rules referencing it
  @BuiltValueField(wireName: r'ruleCount')
  int? get ruleCount;

  EscalationPolicy._();

  factory EscalationPolicy([void updates(EscalationPolicyBuilder b)]) =
      _$EscalationPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalationPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EscalationPolicy> get serializer =>
      _$EscalationPolicySerializer();
}

class _$EscalationPolicySerializer
    implements PrimitiveSerializer<EscalationPolicy> {
  @override
  final Iterable<Type> types = const [EscalationPolicy, _$EscalationPolicy];

  @override
  final String wireName = r'EscalationPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EscalationPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'steps';
    yield serializers.serialize(
      object.steps,
      specifiedType: const FullType(BuiltList, [FullType(EscalationStep)]),
    );
    if (object.repeat != null) {
      yield r'repeat';
      yield serializers.serialize(
        object.repeat,
        specifiedType: const FullType.nullable(EscalationPolicyInputRepeat),
      );
    }
    if (object.stopOn != null) {
      yield r'stopOn';
      yield serializers.serialize(
        object.stopOn,
        specifiedType: const FullType(EscalationPolicyInputStopOn),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.ruleCount != null) {
      yield r'ruleCount';
      yield serializers.serialize(
        object.ruleCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EscalationPolicy object, {
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
    required EscalationPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(EscalationStep)]),
          ) as BuiltList<EscalationStep>;
          result.steps.replace(valueDes);
          break;
        case r'repeat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EscalationPolicyInputRepeat),
          ) as EscalationPolicyInputRepeat?;
          if (valueDes == null) continue;
          result.repeat.replace(valueDes);
          break;
        case r'stopOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EscalationPolicyInputStopOn),
          ) as EscalationPolicyInputStopOn?;
          if (valueDes == null) continue;
          result.stopOn.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'ruleCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ruleCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EscalationPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalationPolicyBuilder();
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
