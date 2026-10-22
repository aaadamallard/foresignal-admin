//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'escalation_policy_input_stop_on.g.dart';

/// Stop conditions; acknowledgement always stops
///
/// Properties:
/// * [resolve]
/// * [snooze]
@BuiltValue()
abstract class EscalationPolicyInputStopOn
    implements
        Built<EscalationPolicyInputStopOn, EscalationPolicyInputStopOnBuilder> {
  @BuiltValueField(wireName: r'resolve')
  bool? get resolve;

  @BuiltValueField(wireName: r'snooze')
  bool? get snooze;

  EscalationPolicyInputStopOn._();

  factory EscalationPolicyInputStopOn([
    void updates(EscalationPolicyInputStopOnBuilder b),
  ]) = _$EscalationPolicyInputStopOn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalationPolicyInputStopOnBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EscalationPolicyInputStopOn> get serializer =>
      _$EscalationPolicyInputStopOnSerializer();
}

class _$EscalationPolicyInputStopOnSerializer
    implements PrimitiveSerializer<EscalationPolicyInputStopOn> {
  @override
  final Iterable<Type> types = const [
    EscalationPolicyInputStopOn,
    _$EscalationPolicyInputStopOn,
  ];

  @override
  final String wireName = r'EscalationPolicyInputStopOn';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EscalationPolicyInputStopOn object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resolve != null) {
      yield r'resolve';
      yield serializers.serialize(
        object.resolve,
        specifiedType: const FullType(bool),
      );
    }
    if (object.snooze != null) {
      yield r'snooze';
      yield serializers.serialize(
        object.snooze,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EscalationPolicyInputStopOn object, {
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
    required EscalationPolicyInputStopOnBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resolve':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.resolve = valueDes;
          break;
        case r'snooze':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.snooze = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EscalationPolicyInputStopOn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalationPolicyInputStopOnBuilder();
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
