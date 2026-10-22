//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'escalation.g.dart';

/// Escalation state of one alert (033)
///
/// Properties:
/// * [alertId]
/// * [policyId]
/// * [nextStep]
/// * [nextAt]
/// * [repeatsDone]
/// * [state]
/// * [stoppedReason]
/// * [updatedAt]
@BuiltValue()
abstract class Escalation implements Built<Escalation, EscalationBuilder> {
  @BuiltValueField(wireName: r'alertId')
  int get alertId;

  @BuiltValueField(wireName: r'policyId')
  String get policyId;

  @BuiltValueField(wireName: r'nextStep')
  int? get nextStep;

  @BuiltValueField(wireName: r'nextAt')
  DateTime? get nextAt;

  @BuiltValueField(wireName: r'repeatsDone')
  int? get repeatsDone;

  @BuiltValueField(wireName: r'state')
  EscalationStateEnum get state;
  // enum stateEnum {  active,  stopped,  exhausted,  };

  @BuiltValueField(wireName: r'stoppedReason')
  String? get stoppedReason;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Escalation._();

  factory Escalation([void updates(EscalationBuilder b)]) = _$Escalation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Escalation> get serializer => _$EscalationSerializer();
}

class _$EscalationSerializer implements PrimitiveSerializer<Escalation> {
  @override
  final Iterable<Type> types = const [Escalation, _$Escalation];

  @override
  final String wireName = r'Escalation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Escalation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alertId';
    yield serializers.serialize(
      object.alertId,
      specifiedType: const FullType(int),
    );
    yield r'policyId';
    yield serializers.serialize(
      object.policyId,
      specifiedType: const FullType(String),
    );
    if (object.nextStep != null) {
      yield r'nextStep';
      yield serializers.serialize(
        object.nextStep,
        specifiedType: const FullType(int),
      );
    }
    if (object.nextAt != null) {
      yield r'nextAt';
      yield serializers.serialize(
        object.nextAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.repeatsDone != null) {
      yield r'repeatsDone';
      yield serializers.serialize(
        object.repeatsDone,
        specifiedType: const FullType(int),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(EscalationStateEnum),
    );
    if (object.stoppedReason != null) {
      yield r'stoppedReason';
      yield serializers.serialize(
        object.stoppedReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Escalation object, {
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
    required EscalationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alertId':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.alertId = valueDes;
          break;
        case r'policyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.policyId = valueDes;
          break;
        case r'nextStep':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nextStep = valueDes;
          break;
        case r'nextAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.nextAt = valueDes;
          break;
        case r'repeatsDone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.repeatsDone = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EscalationStateEnum),
                  )
                  as EscalationStateEnum;
          result.state = valueDes;
          break;
        case r'stoppedReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.stoppedReason = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Escalation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalationBuilder();
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

class EscalationStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const EscalationStateEnum active = _$escalationStateEnum_active;
  @BuiltValueEnumConst(wireName: r'stopped')
  static const EscalationStateEnum stopped = _$escalationStateEnum_stopped;
  @BuiltValueEnumConst(wireName: r'exhausted')
  static const EscalationStateEnum exhausted = _$escalationStateEnum_exhausted;

  static Serializer<EscalationStateEnum> get serializer =>
      _$escalationStateEnumSerializer;

  const EscalationStateEnum._(String name) : super(name);

  static BuiltSet<EscalationStateEnum> get values =>
      _$escalationStateEnumValues;
  static EscalationStateEnum valueOf(String name) =>
      _$escalationStateEnumValueOf(name);
}
