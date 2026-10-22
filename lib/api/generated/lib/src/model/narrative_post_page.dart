//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/narrative_post.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_post_page.g.dart';

/// One page of narrative member posts
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class NarrativePostPage
    implements Built<NarrativePostPage, NarrativePostPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<NarrativePost> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  NarrativePostPage._();

  factory NarrativePostPage([void updates(NarrativePostPageBuilder b)]) =
      _$NarrativePostPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativePostPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativePostPage> get serializer =>
      _$NarrativePostPageSerializer();
}

class _$NarrativePostPageSerializer
    implements PrimitiveSerializer<NarrativePostPage> {
  @override
  final Iterable<Type> types = const [NarrativePostPage, _$NarrativePostPage];

  @override
  final String wireName = r'NarrativePostPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativePostPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(NarrativePost)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativePostPage object, {
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
    required NarrativePostPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NarrativePost),
                    ]),
                  )
                  as BuiltList<NarrativePost>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  NarrativePostPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativePostPageBuilder();
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
