//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation_resolve_input.g.dart';

/// Resolve or reopen a comment thread
///
/// Properties:
/// * [resolved]
@BuiltValue()
abstract class AnnotationResolveInput
    implements Built<AnnotationResolveInput, AnnotationResolveInputBuilder> {
  @BuiltValueField(wireName: r'resolved')
  bool? get resolved;

  AnnotationResolveInput._();

  factory AnnotationResolveInput(
          [void updates(AnnotationResolveInputBuilder b)]) =
      _$AnnotationResolveInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationResolveInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnotationResolveInput> get serializer =>
      _$AnnotationResolveInputSerializer();
}

class _$AnnotationResolveInputSerializer
    implements PrimitiveSerializer<AnnotationResolveInput> {
  @override
  final Iterable<Type> types = const [
    AnnotationResolveInput,
    _$AnnotationResolveInput
  ];

  @override
  final String wireName = r'AnnotationResolveInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnotationResolveInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resolved != null) {
      yield r'resolved';
      yield serializers.serialize(
        object.resolved,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnotationResolveInput object, {
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
    required AnnotationResolveInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resolved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.resolved = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnotationResolveInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationResolveInputBuilder();
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
