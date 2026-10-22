//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_corroboration_situation_activation.g.dart';

/// The rule that moves a situation from emerging to active (118)
///
/// Properties:
/// * [minFamilies] - Distinct signal families activation needs (default 2)
/// * [minGroups] - Independent evidence groups activation needs (default 2)
@BuiltValue()
abstract class IntelCorroborationSituationActivation
    implements
        Built<
          IntelCorroborationSituationActivation,
          IntelCorroborationSituationActivationBuilder
        > {
  /// Distinct signal families activation needs (default 2)
  @BuiltValueField(wireName: r'minFamilies')
  int? get minFamilies;

  /// Independent evidence groups activation needs (default 2)
  @BuiltValueField(wireName: r'minGroups')
  int? get minGroups;

  IntelCorroborationSituationActivation._();

  factory IntelCorroborationSituationActivation([
    void updates(IntelCorroborationSituationActivationBuilder b),
  ]) = _$IntelCorroborationSituationActivation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCorroborationSituationActivationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCorroborationSituationActivation> get serializer =>
      _$IntelCorroborationSituationActivationSerializer();
}

class _$IntelCorroborationSituationActivationSerializer
    implements PrimitiveSerializer<IntelCorroborationSituationActivation> {
  @override
  final Iterable<Type> types = const [
    IntelCorroborationSituationActivation,
    _$IntelCorroborationSituationActivation,
  ];

  @override
  final String wireName = r'IntelCorroborationSituationActivation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCorroborationSituationActivation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minFamilies != null) {
      yield r'minFamilies';
      yield serializers.serialize(
        object.minFamilies,
        specifiedType: const FullType(int),
      );
    }
    if (object.minGroups != null) {
      yield r'minGroups';
      yield serializers.serialize(
        object.minGroups,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelCorroborationSituationActivation object, {
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
    required IntelCorroborationSituationActivationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minFamilies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minFamilies = valueDes;
          break;
        case r'minGroups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minGroups = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelCorroborationSituationActivation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCorroborationSituationActivationBuilder();
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
