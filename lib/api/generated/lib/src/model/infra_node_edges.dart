//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/infra_edge.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_node_edges.g.dart';

/// Present on getInfraNode
///
/// Properties:
/// * [in_]
/// * [out_]
@BuiltValue()
abstract class InfraNodeEdges
    implements Built<InfraNodeEdges, InfraNodeEdgesBuilder> {
  @BuiltValueField(wireName: r'in')
  BuiltList<InfraEdge>? get in_;

  @BuiltValueField(wireName: r'out')
  BuiltList<InfraEdge>? get out_;

  InfraNodeEdges._();

  factory InfraNodeEdges([void updates(InfraNodeEdgesBuilder b)]) =
      _$InfraNodeEdges;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraNodeEdgesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraNodeEdges> get serializer =>
      _$InfraNodeEdgesSerializer();
}

class _$InfraNodeEdgesSerializer
    implements PrimitiveSerializer<InfraNodeEdges> {
  @override
  final Iterable<Type> types = const [InfraNodeEdges, _$InfraNodeEdges];

  @override
  final String wireName = r'InfraNodeEdges';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraNodeEdges object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.in_ != null) {
      yield r'in';
      yield serializers.serialize(
        object.in_,
        specifiedType: const FullType(BuiltList, [FullType(InfraEdge)]),
      );
    }
    if (object.out_ != null) {
      yield r'out';
      yield serializers.serialize(
        object.out_,
        specifiedType: const FullType(BuiltList, [FullType(InfraEdge)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraNodeEdges object, {
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
    required InfraNodeEdgesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(InfraEdge)]),
          ) as BuiltList<InfraEdge>?;
          if (valueDes == null) continue;
          result.in_.replace(valueDes);
          break;
        case r'out':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(InfraEdge)]),
          ) as BuiltList<InfraEdge>?;
          if (valueDes == null) continue;
          result.out_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraNodeEdges deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraNodeEdgesBuilder();
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
