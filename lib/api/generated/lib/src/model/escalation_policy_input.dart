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

part 'escalation_policy_input.g.dart';

/// Create or replace an escalation policy (033)
///
/// Properties:
/// * [name]
/// * [steps]
/// * [repeat]
/// * [stopOn]
@BuiltValue()
abstract class EscalationPolicyInput
    implements Built<EscalationPolicyInput, EscalationPolicyInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'steps')
  BuiltList<EscalationStep> get steps;

  @BuiltValueField(wireName: r'repeat')
  EscalationPolicyInputRepeat? get repeat;

  @BuiltValueField(wireName: r'stopOn')
  EscalationPolicyInputStopOn? get stopOn;

  EscalationPolicyInput._();

  factory EscalationPolicyInput([
    void updates(EscalationPolicyInputBuilder b),
  ]) = _$EscalationPolicyInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalationPolicyInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EscalationPolicyInput> get serializer =>
      _$EscalationPolicyInputSerializer();
}

class _$EscalationPolicyInputSerializer
    implements PrimitiveSerializer<EscalationPolicyInput> {
  @override
  final Iterable<Type> types = const [
    EscalationPolicyInput,
    _$EscalationPolicyInput,
  ];

  @override
  final String wireName = r'EscalationPolicyInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EscalationPolicyInput object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    EscalationPolicyInput object, {
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
    required EscalationPolicyInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'steps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(EscalationStep),
                    ]),
                  )
                  as BuiltList<EscalationStep>;
          result.steps.replace(valueDes);
          break;
        case r'repeat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EscalationPolicyInputRepeat,
                    ),
                  )
                  as EscalationPolicyInputRepeat?;
          if (valueDes == null) continue;
          result.repeat.replace(valueDes);
          break;
        case r'stopOn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EscalationPolicyInputStopOn,
                    ),
                  )
                  as EscalationPolicyInputStopOn?;
          if (valueDes == null) continue;
          result.stopOn.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EscalationPolicyInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalationPolicyInputBuilder();
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
