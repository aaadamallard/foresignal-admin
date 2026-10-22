//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_patch_probability_override.g.dart';

/// Operator override (cause `operator`)
///
/// Properties:
/// * [probability]
/// * [rationale]
/// * [exceedCap] - Allow a speculative link above its cap (logged and labelled)
@BuiltValue()
abstract class HypothesisPatchProbabilityOverride
    implements
        Built<
          HypothesisPatchProbabilityOverride,
          HypothesisPatchProbabilityOverrideBuilder
        > {
  @BuiltValueField(wireName: r'probability')
  num get probability;

  @BuiltValueField(wireName: r'rationale')
  String get rationale;

  /// Allow a speculative link above its cap (logged and labelled)
  @BuiltValueField(wireName: r'exceedCap')
  bool? get exceedCap;

  HypothesisPatchProbabilityOverride._();

  factory HypothesisPatchProbabilityOverride([
    void updates(HypothesisPatchProbabilityOverrideBuilder b),
  ]) = _$HypothesisPatchProbabilityOverride;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisPatchProbabilityOverrideBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisPatchProbabilityOverride> get serializer =>
      _$HypothesisPatchProbabilityOverrideSerializer();
}

class _$HypothesisPatchProbabilityOverrideSerializer
    implements PrimitiveSerializer<HypothesisPatchProbabilityOverride> {
  @override
  final Iterable<Type> types = const [
    HypothesisPatchProbabilityOverride,
    _$HypothesisPatchProbabilityOverride,
  ];

  @override
  final String wireName = r'HypothesisPatchProbabilityOverride';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisPatchProbabilityOverride object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'probability';
    yield serializers.serialize(
      object.probability,
      specifiedType: const FullType(num),
    );
    yield r'rationale';
    yield serializers.serialize(
      object.rationale,
      specifiedType: const FullType(String),
    );
    if (object.exceedCap != null) {
      yield r'exceedCap';
      yield serializers.serialize(
        object.exceedCap,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisPatchProbabilityOverride object, {
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
    required HypothesisPatchProbabilityOverrideBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'probability':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.probability = valueDes;
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rationale = valueDes;
          break;
        case r'exceedCap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exceedCap = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisPatchProbabilityOverride deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisPatchProbabilityOverrideBuilder();
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
