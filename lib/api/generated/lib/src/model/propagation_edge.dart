//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_edge.g.dart';

/// A directed propagation edge with its time delta
///
/// Properties:
/// * [from]
/// * [to]
/// * [type]
/// * [deltaSeconds]
/// * [count] - Edges collapsed into this one
@BuiltValue()
abstract class PropagationEdge
    implements Built<PropagationEdge, PropagationEdgeBuilder> {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'type')
  PropagationEdgeTypeEnum get type;
  // enum typeEnum {  repost,  quote,  reply,  link,  text-match,  media-match,  cross-platform,  };

  @BuiltValueField(wireName: r'deltaSeconds')
  num get deltaSeconds;

  /// Edges collapsed into this one
  @BuiltValueField(wireName: r'count')
  int? get count;

  PropagationEdge._();

  factory PropagationEdge([void updates(PropagationEdgeBuilder b)]) =
      _$PropagationEdge;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationEdgeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationEdge> get serializer =>
      _$PropagationEdgeSerializer();
}

class _$PropagationEdgeSerializer
    implements PrimitiveSerializer<PropagationEdge> {
  @override
  final Iterable<Type> types = const [PropagationEdge, _$PropagationEdge];

  @override
  final String wireName = r'PropagationEdge';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationEdge object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PropagationEdgeTypeEnum),
    );
    yield r'deltaSeconds';
    yield serializers.serialize(
      object.deltaSeconds,
      specifiedType: const FullType(num),
    );
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationEdge object, {
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
    required PropagationEdgeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.to = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PropagationEdgeTypeEnum),
                  )
                  as PropagationEdgeTypeEnum;
          result.type = valueDes;
          break;
        case r'deltaSeconds':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.deltaSeconds = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropagationEdge deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationEdgeBuilder();
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

class PropagationEdgeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'repost')
  static const PropagationEdgeTypeEnum repost =
      _$propagationEdgeTypeEnum_repost;
  @BuiltValueEnumConst(wireName: r'quote')
  static const PropagationEdgeTypeEnum quote = _$propagationEdgeTypeEnum_quote;
  @BuiltValueEnumConst(wireName: r'reply')
  static const PropagationEdgeTypeEnum reply = _$propagationEdgeTypeEnum_reply;
  @BuiltValueEnumConst(wireName: r'link')
  static const PropagationEdgeTypeEnum link = _$propagationEdgeTypeEnum_link;
  @BuiltValueEnumConst(wireName: r'text-match')
  static const PropagationEdgeTypeEnum textMatch =
      _$propagationEdgeTypeEnum_textMatch;
  @BuiltValueEnumConst(wireName: r'media-match')
  static const PropagationEdgeTypeEnum mediaMatch =
      _$propagationEdgeTypeEnum_mediaMatch;
  @BuiltValueEnumConst(wireName: r'cross-platform')
  static const PropagationEdgeTypeEnum crossPlatform =
      _$propagationEdgeTypeEnum_crossPlatform;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PropagationEdgeTypeEnum unknownDefaultOpenApi =
      _$propagationEdgeTypeEnum_unknownDefaultOpenApi;

  static Serializer<PropagationEdgeTypeEnum> get serializer =>
      _$propagationEdgeTypeEnumSerializer;

  const PropagationEdgeTypeEnum._(String name) : super(name);

  static BuiltSet<PropagationEdgeTypeEnum> get values =>
      _$propagationEdgeTypeEnumValues;
  static PropagationEdgeTypeEnum valueOf(String name) =>
      _$propagationEdgeTypeEnumValueOf(name);
}
