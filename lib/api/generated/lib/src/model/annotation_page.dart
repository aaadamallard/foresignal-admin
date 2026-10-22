//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/annotation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation_page.g.dart';

/// Page of annotations, newest first
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class AnnotationPage
    implements Built<AnnotationPage, AnnotationPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Annotation> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AnnotationPage._();

  factory AnnotationPage([void updates(AnnotationPageBuilder b)]) =
      _$AnnotationPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnotationPage> get serializer =>
      _$AnnotationPageSerializer();
}

class _$AnnotationPageSerializer
    implements PrimitiveSerializer<AnnotationPage> {
  @override
  final Iterable<Type> types = const [AnnotationPage, _$AnnotationPage];

  @override
  final String wireName = r'AnnotationPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnotationPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Annotation)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnotationPage object, {
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
    required AnnotationPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Annotation)]),
          ) as BuiltList<Annotation>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnotationPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationPageBuilder();
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
