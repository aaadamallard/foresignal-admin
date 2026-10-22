//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_coincidence_baseline.dart';
import 'package:foresignal_api/src/model/hypothesis_input_prior_basis.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_input.g.dart';

/// A hypothesis to create (inside a set or added to one)
///
/// Properties:
/// * [label]
/// * [statement]
/// * [type]
/// * [prior]
/// * [priorBasis]
/// * [ledgerOutcome]
/// * [linkedFindingIds]
/// * [coincidenceBaseline]
/// * [alternatives] - Ids or labels of ≥ 2 other hypotheses in the same set (labels when created together with the set)
@BuiltValue()
abstract class HypothesisInput
    implements Built<HypothesisInput, HypothesisInputBuilder> {
  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'type')
  HypothesisInputTypeEnum get type;
  // enum typeEnum {  outcome,  explanation,  speculative-link,  other,  };

  @BuiltValueField(wireName: r'prior')
  num get prior;

  @BuiltValueField(wireName: r'priorBasis')
  HypothesisInputPriorBasis get priorBasis;

  @BuiltValueField(wireName: r'ledgerOutcome')
  String? get ledgerOutcome;

  @BuiltValueField(wireName: r'linkedFindingIds')
  BuiltList<String>? get linkedFindingIds;

  @BuiltValueField(wireName: r'coincidenceBaseline')
  HypothesisCoincidenceBaseline? get coincidenceBaseline;

  /// Ids or labels of ≥ 2 other hypotheses in the same set (labels when created together with the set)
  @BuiltValueField(wireName: r'alternatives')
  BuiltList<String>? get alternatives;

  HypothesisInput._();

  factory HypothesisInput([void updates(HypothesisInputBuilder b)]) =
      _$HypothesisInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisInput> get serializer =>
      _$HypothesisInputSerializer();
}

class _$HypothesisInputSerializer
    implements PrimitiveSerializer<HypothesisInput> {
  @override
  final Iterable<Type> types = const [HypothesisInput, _$HypothesisInput];

  @override
  final String wireName = r'HypothesisInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'statement';
    yield serializers.serialize(
      object.statement,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(HypothesisInputTypeEnum),
    );
    yield r'prior';
    yield serializers.serialize(
      object.prior,
      specifiedType: const FullType(num),
    );
    yield r'priorBasis';
    yield serializers.serialize(
      object.priorBasis,
      specifiedType: const FullType(HypothesisInputPriorBasis),
    );
    if (object.ledgerOutcome != null) {
      yield r'ledgerOutcome';
      yield serializers.serialize(
        object.ledgerOutcome,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.linkedFindingIds != null) {
      yield r'linkedFindingIds';
      yield serializers.serialize(
        object.linkedFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.coincidenceBaseline != null) {
      yield r'coincidenceBaseline';
      yield serializers.serialize(
        object.coincidenceBaseline,
        specifiedType: const FullType.nullable(HypothesisCoincidenceBaseline),
      );
    }
    if (object.alternatives != null) {
      yield r'alternatives';
      yield serializers.serialize(
        object.alternatives,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisInput object, {
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
    required HypothesisInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'statement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.statement = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisInputTypeEnum),
                  )
                  as HypothesisInputTypeEnum;
          result.type = valueDes;
          break;
        case r'prior':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.prior = valueDes;
          break;
        case r'priorBasis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisInputPriorBasis),
                  )
                  as HypothesisInputPriorBasis;
          result.priorBasis.replace(valueDes);
          break;
        case r'ledgerOutcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ledgerOutcome = valueDes;
          break;
        case r'linkedFindingIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.linkedFindingIds.replace(valueDes);
          break;
        case r'coincidenceBaseline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisCoincidenceBaseline,
                    ),
                  )
                  as HypothesisCoincidenceBaseline?;
          if (valueDes == null) continue;
          result.coincidenceBaseline.replace(valueDes);
          break;
        case r'alternatives':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.alternatives.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisInputBuilder();
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

class HypothesisInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'outcome')
  static const HypothesisInputTypeEnum outcome =
      _$hypothesisInputTypeEnum_outcome;
  @BuiltValueEnumConst(wireName: r'explanation')
  static const HypothesisInputTypeEnum explanation =
      _$hypothesisInputTypeEnum_explanation;
  @BuiltValueEnumConst(wireName: r'speculative-link')
  static const HypothesisInputTypeEnum speculativeLink =
      _$hypothesisInputTypeEnum_speculativeLink;
  @BuiltValueEnumConst(wireName: r'other')
  static const HypothesisInputTypeEnum other = _$hypothesisInputTypeEnum_other;

  static Serializer<HypothesisInputTypeEnum> get serializer =>
      _$hypothesisInputTypeEnumSerializer;

  const HypothesisInputTypeEnum._(String name) : super(name);

  static BuiltSet<HypothesisInputTypeEnum> get values =>
      _$hypothesisInputTypeEnumValues;
  static HypothesisInputTypeEnum valueOf(String name) =>
      _$hypothesisInputTypeEnumValueOf(name);
}
