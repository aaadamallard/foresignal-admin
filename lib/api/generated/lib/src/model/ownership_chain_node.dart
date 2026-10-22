//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ownership_chain_node_paths_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ownership_chain_node.g.dart';

/// An entity reached through ownership / affiliation edges, with the chain from each seed that reached it
///
/// Properties:
/// * [node]
/// * [reachedFrom] - The seeds whose chain reaches this entity
/// * [weakestEdgeLabel] - Weakest edge across the reaching chains (104 vocabulary)
/// * [paths]
@BuiltValue()
abstract class OwnershipChainNode
    implements Built<OwnershipChainNode, OwnershipChainNodeBuilder> {
  @BuiltValueField(wireName: r'node')
  ObjectEnvelope get node;

  /// The seeds whose chain reaches this entity
  @BuiltValueField(wireName: r'reachedFrom')
  BuiltList<String> get reachedFrom;

  /// Weakest edge across the reaching chains (104 vocabulary)
  @BuiltValueField(wireName: r'weakestEdgeLabel')
  OwnershipChainNodeWeakestEdgeLabelEnum get weakestEdgeLabel;
  // enum weakestEdgeLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  @BuiltValueField(wireName: r'paths')
  BuiltList<OwnershipChainNodePathsInner> get paths;

  OwnershipChainNode._();

  factory OwnershipChainNode([void updates(OwnershipChainNodeBuilder b)]) =
      _$OwnershipChainNode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OwnershipChainNodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnershipChainNode> get serializer =>
      _$OwnershipChainNodeSerializer();
}

class _$OwnershipChainNodeSerializer
    implements PrimitiveSerializer<OwnershipChainNode> {
  @override
  final Iterable<Type> types = const [OwnershipChainNode, _$OwnershipChainNode];

  @override
  final String wireName = r'OwnershipChainNode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnershipChainNode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'node';
    yield serializers.serialize(
      object.node,
      specifiedType: const FullType(ObjectEnvelope),
    );
    yield r'reachedFrom';
    yield serializers.serialize(
      object.reachedFrom,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'weakestEdgeLabel';
    yield serializers.serialize(
      object.weakestEdgeLabel,
      specifiedType: const FullType(OwnershipChainNodeWeakestEdgeLabelEnum),
    );
    yield r'paths';
    yield serializers.serialize(
      object.paths,
      specifiedType: const FullType(BuiltList, [
        FullType(OwnershipChainNodePathsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnershipChainNode object, {
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
    required OwnershipChainNodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'node':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectEnvelope),
                  )
                  as ObjectEnvelope;
          result.node.replace(valueDes);
          break;
        case r'reachedFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.reachedFrom.replace(valueDes);
          break;
        case r'weakestEdgeLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      OwnershipChainNodeWeakestEdgeLabelEnum,
                    ),
                  )
                  as OwnershipChainNodeWeakestEdgeLabelEnum;
          result.weakestEdgeLabel = valueDes;
          break;
        case r'paths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OwnershipChainNodePathsInner),
                    ]),
                  )
                  as BuiltList<OwnershipChainNodePathsInner>;
          result.paths.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OwnershipChainNode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipChainNodeBuilder();
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

/// Weakest edge across the reaching chains (104 vocabulary)
class OwnershipChainNodeWeakestEdgeLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const OwnershipChainNodeWeakestEdgeLabelEnum confirmed =
      _$ownershipChainNodeWeakestEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const OwnershipChainNodeWeakestEdgeLabelEnum likely =
      _$ownershipChainNodeWeakestEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const OwnershipChainNodeWeakestEdgeLabelEnum possible =
      _$ownershipChainNodeWeakestEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const OwnershipChainNodeWeakestEdgeLabelEnum speculative =
      _$ownershipChainNodeWeakestEdgeLabelEnum_speculative;

  static Serializer<OwnershipChainNodeWeakestEdgeLabelEnum> get serializer =>
      _$ownershipChainNodeWeakestEdgeLabelEnumSerializer;

  const OwnershipChainNodeWeakestEdgeLabelEnum._(String name) : super(name);

  static BuiltSet<OwnershipChainNodeWeakestEdgeLabelEnum> get values =>
      _$ownershipChainNodeWeakestEdgeLabelEnumValues;
  static OwnershipChainNodeWeakestEdgeLabelEnum valueOf(String name) =>
      _$ownershipChainNodeWeakestEdgeLabelEnumValueOf(name);
}
