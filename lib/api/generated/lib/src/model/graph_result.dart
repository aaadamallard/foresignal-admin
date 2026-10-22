//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/relation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'graph_result.g.dart';

/// Nodes (envelopes) and edges for graph views
///
/// Properties:
/// * [nodes]
/// * [edges]
/// * [missing]
/// * [truncated]
/// * [asOf]
@BuiltValue()
abstract class GraphResult implements Built<GraphResult, GraphResultBuilder> {
  @BuiltValueField(wireName: r'nodes')
  BuiltList<ObjectEnvelope> get nodes;

  @BuiltValueField(wireName: r'edges')
  BuiltList<Relation> get edges;

  @BuiltValueField(wireName: r'missing')
  BuiltList<String>? get missing;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  GraphResult._();

  factory GraphResult([void updates(GraphResultBuilder b)]) = _$GraphResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GraphResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GraphResult> get serializer => _$GraphResultSerializer();
}

class _$GraphResultSerializer implements PrimitiveSerializer<GraphResult> {
  @override
  final Iterable<Type> types = const [GraphResult, _$GraphResult];

  @override
  final String wireName = r'GraphResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GraphResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nodes';
    yield serializers.serialize(
      object.nodes,
      specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
    );
    yield r'edges';
    yield serializers.serialize(
      object.edges,
      specifiedType: const FullType(BuiltList, [FullType(Relation)]),
    );
    if (object.missing != null) {
      yield r'missing';
      yield serializers.serialize(
        object.missing,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GraphResult object, {
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
    required GraphResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>;
          result.nodes.replace(valueDes);
          break;
        case r'edges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Relation),
                    ]),
                  )
                  as BuiltList<Relation>;
          result.edges.replace(valueDes);
          break;
        case r'missing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.missing.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GraphResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GraphResultBuilder();
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
