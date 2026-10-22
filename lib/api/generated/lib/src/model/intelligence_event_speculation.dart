//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_event_alternative.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intelligence_event_speculation.g.dart';

/// Alternatives and any LLM narrative, always labelled
///
/// Properties:
/// * [label]
/// * [alternatives]
/// * [narrative] - Optional LLM text (102 annotate_event appends here)
/// * [narrativeOrigin]
@BuiltValue()
abstract class IntelligenceEventSpeculation
    implements
        Built<IntelligenceEventSpeculation,
            IntelligenceEventSpeculationBuilder> {
  @BuiltValueField(wireName: r'label')
  IntelligenceEventSpeculationLabelEnum get label;
  // enum labelEnum {  speculation,  };

  @BuiltValueField(wireName: r'alternatives')
  BuiltList<IntelEventAlternative> get alternatives;

  /// Optional LLM text (102 annotate_event appends here)
  @BuiltValueField(wireName: r'narrative')
  String? get narrative;

  @BuiltValueField(wireName: r'narrativeOrigin')
  IntelligenceEventSpeculationNarrativeOriginEnum? get narrativeOrigin;
  // enum narrativeOriginEnum {  llm,  };

  IntelligenceEventSpeculation._();

  factory IntelligenceEventSpeculation(
          [void updates(IntelligenceEventSpeculationBuilder b)]) =
      _$IntelligenceEventSpeculation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelligenceEventSpeculationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelligenceEventSpeculation> get serializer =>
      _$IntelligenceEventSpeculationSerializer();
}

class _$IntelligenceEventSpeculationSerializer
    implements PrimitiveSerializer<IntelligenceEventSpeculation> {
  @override
  final Iterable<Type> types = const [
    IntelligenceEventSpeculation,
    _$IntelligenceEventSpeculation
  ];

  @override
  final String wireName = r'IntelligenceEventSpeculation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelligenceEventSpeculation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(IntelligenceEventSpeculationLabelEnum),
    );
    yield r'alternatives';
    yield serializers.serialize(
      object.alternatives,
      specifiedType:
          const FullType(BuiltList, [FullType(IntelEventAlternative)]),
    );
    if (object.narrative != null) {
      yield r'narrative';
      yield serializers.serialize(
        object.narrative,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.narrativeOrigin != null) {
      yield r'narrativeOrigin';
      yield serializers.serialize(
        object.narrativeOrigin,
        specifiedType: const FullType.nullable(
            IntelligenceEventSpeculationNarrativeOriginEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventSpeculation object, {
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
    required IntelligenceEventSpeculationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(IntelligenceEventSpeculationLabelEnum),
          ) as IntelligenceEventSpeculationLabelEnum;
          result.label = valueDes;
          break;
        case r'alternatives':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(IntelEventAlternative)]),
          ) as BuiltList<IntelEventAlternative>;
          result.alternatives.replace(valueDes);
          break;
        case r'narrative':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.narrative = valueDes;
          break;
        case r'narrativeOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                IntelligenceEventSpeculationNarrativeOriginEnum),
          ) as IntelligenceEventSpeculationNarrativeOriginEnum?;
          if (valueDes == null) continue;
          result.narrativeOrigin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelligenceEventSpeculation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligenceEventSpeculationBuilder();
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

class IntelligenceEventSpeculationLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'speculation')
  static const IntelligenceEventSpeculationLabelEnum speculation =
      _$intelligenceEventSpeculationLabelEnum_speculation;

  static Serializer<IntelligenceEventSpeculationLabelEnum> get serializer =>
      _$intelligenceEventSpeculationLabelEnumSerializer;

  const IntelligenceEventSpeculationLabelEnum._(String name) : super(name);

  static BuiltSet<IntelligenceEventSpeculationLabelEnum> get values =>
      _$intelligenceEventSpeculationLabelEnumValues;
  static IntelligenceEventSpeculationLabelEnum valueOf(String name) =>
      _$intelligenceEventSpeculationLabelEnumValueOf(name);
}

class IntelligenceEventSpeculationNarrativeOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'llm')
  static const IntelligenceEventSpeculationNarrativeOriginEnum llm =
      _$intelligenceEventSpeculationNarrativeOriginEnum_llm;

  static Serializer<IntelligenceEventSpeculationNarrativeOriginEnum>
      get serializer =>
          _$intelligenceEventSpeculationNarrativeOriginEnumSerializer;

  const IntelligenceEventSpeculationNarrativeOriginEnum._(String name)
      : super(name);

  static BuiltSet<IntelligenceEventSpeculationNarrativeOriginEnum> get values =>
      _$intelligenceEventSpeculationNarrativeOriginEnumValues;
  static IntelligenceEventSpeculationNarrativeOriginEnum valueOf(String name) =>
      _$intelligenceEventSpeculationNarrativeOriginEnumValueOf(name);
}
