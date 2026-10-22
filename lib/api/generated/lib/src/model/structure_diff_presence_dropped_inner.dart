//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structure_diff_presence_dropped_inner.g.dart';

/// Presence drop ≥ 50 points
///
/// Properties:
/// * [path]
/// * [from]
/// * [to]
@BuiltValue()
abstract class StructureDiffPresenceDroppedInner
    implements
        Built<
          StructureDiffPresenceDroppedInner,
          StructureDiffPresenceDroppedInnerBuilder
        > {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'from')
  num get from;

  @BuiltValueField(wireName: r'to')
  num get to;

  StructureDiffPresenceDroppedInner._();

  factory StructureDiffPresenceDroppedInner([
    void updates(StructureDiffPresenceDroppedInnerBuilder b),
  ]) = _$StructureDiffPresenceDroppedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructureDiffPresenceDroppedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructureDiffPresenceDroppedInner> get serializer =>
      _$StructureDiffPresenceDroppedInnerSerializer();
}

class _$StructureDiffPresenceDroppedInnerSerializer
    implements PrimitiveSerializer<StructureDiffPresenceDroppedInner> {
  @override
  final Iterable<Type> types = const [
    StructureDiffPresenceDroppedInner,
    _$StructureDiffPresenceDroppedInner,
  ];

  @override
  final String wireName = r'StructureDiffPresenceDroppedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructureDiffPresenceDroppedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(num),
    );
    yield r'to';
    yield serializers.serialize(object.to, specifiedType: const FullType(num));
  }

  @override
  Object serialize(
    Serializers serializers,
    StructureDiffPresenceDroppedInner object, {
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
    required StructureDiffPresenceDroppedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.path = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructureDiffPresenceDroppedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureDiffPresenceDroppedInnerBuilder();
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
