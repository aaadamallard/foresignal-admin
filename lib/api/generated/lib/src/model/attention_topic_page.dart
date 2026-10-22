//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/attention_topic.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_topic_page.g.dart';

/// A page of attention topics
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class AttentionTopicPage
    implements Built<AttentionTopicPage, AttentionTopicPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<AttentionTopic> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AttentionTopicPage._();

  factory AttentionTopicPage([void updates(AttentionTopicPageBuilder b)]) =
      _$AttentionTopicPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionTopicPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionTopicPage> get serializer =>
      _$AttentionTopicPageSerializer();
}

class _$AttentionTopicPageSerializer
    implements PrimitiveSerializer<AttentionTopicPage> {
  @override
  final Iterable<Type> types = const [AttentionTopicPage, _$AttentionTopicPage];

  @override
  final String wireName = r'AttentionTopicPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionTopicPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(AttentionTopic)]),
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
    AttentionTopicPage object, {
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
    required AttentionTopicPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AttentionTopic)]),
          ) as BuiltList<AttentionTopic>;
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
  AttentionTopicPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionTopicPageBuilder();
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
