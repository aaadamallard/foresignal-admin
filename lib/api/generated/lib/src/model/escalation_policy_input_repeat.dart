//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'escalation_policy_input_repeat.g.dart';

/// Optional repeat of the last step
///
/// Properties:
/// * [everyMinutes]
/// * [maxTimes]
@BuiltValue()
abstract class EscalationPolicyInputRepeat
    implements
        Built<EscalationPolicyInputRepeat, EscalationPolicyInputRepeatBuilder> {
  @BuiltValueField(wireName: r'everyMinutes')
  int get everyMinutes;

  @BuiltValueField(wireName: r'maxTimes')
  int get maxTimes;

  EscalationPolicyInputRepeat._();

  factory EscalationPolicyInputRepeat([
    void updates(EscalationPolicyInputRepeatBuilder b),
  ]) = _$EscalationPolicyInputRepeat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalationPolicyInputRepeatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EscalationPolicyInputRepeat> get serializer =>
      _$EscalationPolicyInputRepeatSerializer();
}

class _$EscalationPolicyInputRepeatSerializer
    implements PrimitiveSerializer<EscalationPolicyInputRepeat> {
  @override
  final Iterable<Type> types = const [
    EscalationPolicyInputRepeat,
    _$EscalationPolicyInputRepeat,
  ];

  @override
  final String wireName = r'EscalationPolicyInputRepeat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EscalationPolicyInputRepeat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'everyMinutes';
    yield serializers.serialize(
      object.everyMinutes,
      specifiedType: const FullType(int),
    );
    yield r'maxTimes';
    yield serializers.serialize(
      object.maxTimes,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EscalationPolicyInputRepeat object, {
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
    required EscalationPolicyInputRepeatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'everyMinutes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.everyMinutes = valueDes;
          break;
        case r'maxTimes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.maxTimes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EscalationPolicyInputRepeat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalationPolicyInputRepeatBuilder();
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
