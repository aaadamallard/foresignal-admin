//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_cue.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_page.g.dart';

/// One page of cues
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class SocialCuePage
    implements Built<SocialCuePage, SocialCuePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SocialCue> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SocialCuePage._();

  factory SocialCuePage([void updates(SocialCuePageBuilder b)]) =
      _$SocialCuePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCuePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCuePage> get serializer =>
      _$SocialCuePageSerializer();
}

class _$SocialCuePageSerializer implements PrimitiveSerializer<SocialCuePage> {
  @override
  final Iterable<Type> types = const [SocialCuePage, _$SocialCuePage];

  @override
  final String wireName = r'SocialCuePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCuePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SocialCue)]),
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
    SocialCuePage object, {
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
    required SocialCuePageBuilder result,
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
                      FullType(SocialCue),
                    ]),
                  )
                  as BuiltList<SocialCue>;
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
  SocialCuePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCuePageBuilder();
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
