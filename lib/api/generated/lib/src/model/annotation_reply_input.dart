//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation_reply_input.g.dart';

/// A reply in a comment thread; `@handle` mentions notify principals who can see the target
///
/// Properties:
/// * [body] - Markdown
/// * [private]
@BuiltValue()
abstract class AnnotationReplyInput
    implements Built<AnnotationReplyInput, AnnotationReplyInputBuilder> {
  /// Markdown
  @BuiltValueField(wireName: r'body')
  String get body;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  AnnotationReplyInput._();

  factory AnnotationReplyInput([void updates(AnnotationReplyInputBuilder b)]) =
      _$AnnotationReplyInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationReplyInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnotationReplyInput> get serializer =>
      _$AnnotationReplyInputSerializer();
}

class _$AnnotationReplyInputSerializer
    implements PrimitiveSerializer<AnnotationReplyInput> {
  @override
  final Iterable<Type> types = const [
    AnnotationReplyInput,
    _$AnnotationReplyInput
  ];

  @override
  final String wireName = r'AnnotationReplyInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnotationReplyInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnotationReplyInput object, {
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
    required AnnotationReplyInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnotationReplyInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationReplyInputBuilder();
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
