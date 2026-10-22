//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:foresignal_api/src/model/confidence_level.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_probability_state.g.dart';

/// A hypothesis's probability, term and confidence at one point
///
/// Properties:
/// * [hypothesisId] - ULID identifier
/// * [label]
/// * [probability]
/// * [estimativeTerm]
/// * [confidence]
@BuiltValue()
abstract class HypothesisProbabilityState
    implements
        Built<HypothesisProbabilityState, HypothesisProbabilityStateBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisId')
  String get hypothesisId;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'probability')
  num get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'confidence')
  ConfidenceLevel? get confidence;
  // enum confidenceEnum {  low,  moderate,  high,  };

  HypothesisProbabilityState._();

  factory HypothesisProbabilityState([
    void updates(HypothesisProbabilityStateBuilder b),
  ]) = _$HypothesisProbabilityState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisProbabilityStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisProbabilityState> get serializer =>
      _$HypothesisProbabilityStateSerializer();
}

class _$HypothesisProbabilityStateSerializer
    implements PrimitiveSerializer<HypothesisProbabilityState> {
  @override
  final Iterable<Type> types = const [
    HypothesisProbabilityState,
    _$HypothesisProbabilityState,
  ];

  @override
  final String wireName = r'HypothesisProbabilityState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisProbabilityState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hypothesisId';
    yield serializers.serialize(
      object.hypothesisId,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'probability';
    yield serializers.serialize(
      object.probability,
      specifiedType: const FullType(num),
    );
    yield r'estimativeTerm';
    yield serializers.serialize(
      object.estimativeTerm,
      specifiedType: const FullType(IcdTerm),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(ConfidenceLevel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisProbabilityState object, {
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
    required HypothesisProbabilityStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hypothesisId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.hypothesisId = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IcdTerm),
                  )
                  as IcdTerm;
          result.estimativeTerm = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ConfidenceLevel),
                  )
                  as ConfidenceLevel?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisProbabilityState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisProbabilityStateBuilder();
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
