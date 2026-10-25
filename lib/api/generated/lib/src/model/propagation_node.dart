//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_node.g.dart';

/// A propagation graph node
///
/// Properties:
/// * [id]
/// * [type]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [platform]
/// * [observedAt]
/// * [evidenceGroupId] - ULID identifier
/// * [memberCount] - Posts collapsed into an `evidence-group` node
/// * [label]
@BuiltValue()
abstract class PropagationNode
    implements Built<PropagationNode, PropagationNodeBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  PropagationNodeTypeEnum get type;
  // enum typeEnum {  post,  evidence-group,  news-article,  official-record,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'platform')
  String? get platform;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'evidenceGroupId')
  String? get evidenceGroupId;

  /// Posts collapsed into an `evidence-group` node
  @BuiltValueField(wireName: r'memberCount')
  int? get memberCount;

  @BuiltValueField(wireName: r'label')
  String? get label;

  PropagationNode._();

  factory PropagationNode([void updates(PropagationNodeBuilder b)]) =
      _$PropagationNode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationNodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationNode> get serializer =>
      _$PropagationNodeSerializer();
}

class _$PropagationNodeSerializer
    implements PrimitiveSerializer<PropagationNode> {
  @override
  final Iterable<Type> types = const [PropagationNode, _$PropagationNode];

  @override
  final String wireName = r'PropagationNode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationNode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PropagationNodeTypeEnum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.evidenceGroupId != null) {
      yield r'evidenceGroupId';
      yield serializers.serialize(
        object.evidenceGroupId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.memberCount != null) {
      yield r'memberCount';
      yield serializers.serialize(
        object.memberCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationNode object, {
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
    required PropagationNodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PropagationNodeTypeEnum),
                  )
                  as PropagationNodeTypeEnum;
          result.type = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        case r'evidenceGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.evidenceGroupId = valueDes;
          break;
        case r'memberCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.memberCount = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropagationNode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationNodeBuilder();
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

class PropagationNodeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'post')
  static const PropagationNodeTypeEnum post = _$propagationNodeTypeEnum_post;
  @BuiltValueEnumConst(wireName: r'evidence-group')
  static const PropagationNodeTypeEnum evidenceGroup =
      _$propagationNodeTypeEnum_evidenceGroup;
  @BuiltValueEnumConst(wireName: r'news-article')
  static const PropagationNodeTypeEnum newsArticle =
      _$propagationNodeTypeEnum_newsArticle;
  @BuiltValueEnumConst(wireName: r'official-record')
  static const PropagationNodeTypeEnum officialRecord =
      _$propagationNodeTypeEnum_officialRecord;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PropagationNodeTypeEnum unknownDefaultOpenApi =
      _$propagationNodeTypeEnum_unknownDefaultOpenApi;

  static Serializer<PropagationNodeTypeEnum> get serializer =>
      _$propagationNodeTypeEnumSerializer;

  const PropagationNodeTypeEnum._(String name) : super(name);

  static BuiltSet<PropagationNodeTypeEnum> get values =>
      _$propagationNodeTypeEnumValues;
  static PropagationNodeTypeEnum valueOf(String name) =>
      _$propagationNodeTypeEnumValueOf(name);
}
