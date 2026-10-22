//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hypothesis_patch_probability_override.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_input_prior_basis.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_patch.g.dart';

/// JSON merge patch for a hypothesis; probability overrides are logged as revisions
///
/// Properties:
/// * [label]
/// * [statement]
/// * [priorBasis]
/// * [ledgerOutcome]
/// * [alternatives]
/// * [probabilityOverride]
/// * [version] - Optimistic lock (409 on mismatch)
@BuiltValue()
abstract class HypothesisPatch
    implements Built<HypothesisPatch, HypothesisPatchBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'statement')
  String? get statement;

  @BuiltValueField(wireName: r'priorBasis')
  HypothesisInputPriorBasis? get priorBasis;

  @BuiltValueField(wireName: r'ledgerOutcome')
  String? get ledgerOutcome;

  @BuiltValueField(wireName: r'alternatives')
  BuiltList<String>? get alternatives;

  @BuiltValueField(wireName: r'probabilityOverride')
  HypothesisPatchProbabilityOverride? get probabilityOverride;

  /// Optimistic lock (409 on mismatch)
  @BuiltValueField(wireName: r'version')
  int? get version;

  HypothesisPatch._();

  factory HypothesisPatch([void updates(HypothesisPatchBuilder b)]) =
      _$HypothesisPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisPatch> get serializer =>
      _$HypothesisPatchSerializer();
}

class _$HypothesisPatchSerializer
    implements PrimitiveSerializer<HypothesisPatch> {
  @override
  final Iterable<Type> types = const [HypothesisPatch, _$HypothesisPatch];

  @override
  final String wireName = r'HypothesisPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.statement != null) {
      yield r'statement';
      yield serializers.serialize(
        object.statement,
        specifiedType: const FullType(String),
      );
    }
    if (object.priorBasis != null) {
      yield r'priorBasis';
      yield serializers.serialize(
        object.priorBasis,
        specifiedType: const FullType(HypothesisInputPriorBasis),
      );
    }
    if (object.ledgerOutcome != null) {
      yield r'ledgerOutcome';
      yield serializers.serialize(
        object.ledgerOutcome,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.alternatives != null) {
      yield r'alternatives';
      yield serializers.serialize(
        object.alternatives,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.probabilityOverride != null) {
      yield r'probabilityOverride';
      yield serializers.serialize(
        object.probabilityOverride,
        specifiedType:
            const FullType.nullable(HypothesisPatchProbabilityOverride),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisPatch object, {
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
    required HypothesisPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'statement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statement = valueDes;
          break;
        case r'priorBasis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HypothesisInputPriorBasis),
          ) as HypothesisInputPriorBasis?;
          if (valueDes == null) continue;
          result.priorBasis.replace(valueDes);
          break;
        case r'ledgerOutcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ledgerOutcome = valueDes;
          break;
        case r'alternatives':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.alternatives.replace(valueDes);
          break;
        case r'probabilityOverride':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(HypothesisPatchProbabilityOverride),
          ) as HypothesisPatchProbabilityOverride?;
          if (valueDes == null) continue;
          result.probabilityOverride.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisPatchBuilder();
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
