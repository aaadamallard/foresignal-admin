//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/annotation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation_thread.g.dart';

/// A comment thread: a root annotation with its replies (129 annotations extended by 130)
///
/// Properties:
/// * [root]
/// * [replies]
/// * [replyCount]
/// * [resolved]
/// * [lastActivityAt]
@BuiltValue()
abstract class AnnotationThread
    implements Built<AnnotationThread, AnnotationThreadBuilder> {
  @BuiltValueField(wireName: r'root')
  Annotation get root;

  @BuiltValueField(wireName: r'replies')
  BuiltList<Annotation> get replies;

  @BuiltValueField(wireName: r'replyCount')
  int get replyCount;

  @BuiltValueField(wireName: r'resolved')
  bool get resolved;

  @BuiltValueField(wireName: r'lastActivityAt')
  DateTime get lastActivityAt;

  AnnotationThread._();

  factory AnnotationThread([void updates(AnnotationThreadBuilder b)]) =
      _$AnnotationThread;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationThreadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnotationThread> get serializer =>
      _$AnnotationThreadSerializer();
}

class _$AnnotationThreadSerializer
    implements PrimitiveSerializer<AnnotationThread> {
  @override
  final Iterable<Type> types = const [AnnotationThread, _$AnnotationThread];

  @override
  final String wireName = r'AnnotationThread';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnotationThread object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'root';
    yield serializers.serialize(
      object.root,
      specifiedType: const FullType(Annotation),
    );
    yield r'replies';
    yield serializers.serialize(
      object.replies,
      specifiedType: const FullType(BuiltList, [FullType(Annotation)]),
    );
    yield r'replyCount';
    yield serializers.serialize(
      object.replyCount,
      specifiedType: const FullType(int),
    );
    yield r'resolved';
    yield serializers.serialize(
      object.resolved,
      specifiedType: const FullType(bool),
    );
    yield r'lastActivityAt';
    yield serializers.serialize(
      object.lastActivityAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnotationThread object, {
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
    required AnnotationThreadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'root':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Annotation),
                  )
                  as Annotation;
          result.root.replace(valueDes);
          break;
        case r'replies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Annotation),
                    ]),
                  )
                  as BuiltList<Annotation>;
          result.replies.replace(valueDes);
          break;
        case r'replyCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.replyCount = valueDes;
          break;
        case r'resolved':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.resolved = valueDes;
          break;
        case r'lastActivityAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.lastActivityAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnotationThread deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationThreadBuilder();
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
