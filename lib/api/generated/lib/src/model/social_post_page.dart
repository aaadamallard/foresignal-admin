//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_post_page.g.dart';

/// One page of social posts
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class SocialPostPage
    implements Built<SocialPostPage, SocialPostPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SocialPost> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SocialPostPage._();

  factory SocialPostPage([void updates(SocialPostPageBuilder b)]) =
      _$SocialPostPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPostPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPostPage> get serializer =>
      _$SocialPostPageSerializer();
}

class _$SocialPostPageSerializer
    implements PrimitiveSerializer<SocialPostPage> {
  @override
  final Iterable<Type> types = const [SocialPostPage, _$SocialPostPage];

  @override
  final String wireName = r'SocialPostPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPostPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SocialPost)]),
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
    SocialPostPage object, {
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
    required SocialPostPageBuilder result,
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
                      FullType(SocialPost),
                    ]),
                  )
                  as BuiltList<SocialPost>;
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
  SocialPostPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPostPageBuilder();
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
