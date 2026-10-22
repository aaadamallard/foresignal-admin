//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structure_diff_type_changed_inner.g.dart';

/// Path type change
///
/// Properties:
/// * [path]
/// * [from]
/// * [to]
@BuiltValue()
abstract class StructureDiffTypeChangedInner
    implements
        Built<
          StructureDiffTypeChangedInner,
          StructureDiffTypeChangedInnerBuilder
        > {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructureDiffTypeChangedInner._();

  factory StructureDiffTypeChangedInner([
    void updates(StructureDiffTypeChangedInnerBuilder b),
  ]) = _$StructureDiffTypeChangedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructureDiffTypeChangedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructureDiffTypeChangedInner> get serializer =>
      _$StructureDiffTypeChangedInnerSerializer();
}

class _$StructureDiffTypeChangedInnerSerializer
    implements PrimitiveSerializer<StructureDiffTypeChangedInner> {
  @override
  final Iterable<Type> types = const [
    StructureDiffTypeChangedInner,
    _$StructureDiffTypeChangedInner,
  ];

  @override
  final String wireName = r'StructureDiffTypeChangedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructureDiffTypeChangedInner object, {
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
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructureDiffTypeChangedInner object, {
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
    required StructureDiffTypeChangedInnerBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructureDiffTypeChangedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureDiffTypeChangedInnerBuilder();
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
