//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_feed_item_authors_inner.g.dart';

/// JsonFeedItemAuthorsInner
///
/// Properties:
/// * [name]
@BuiltValue()
abstract class JsonFeedItemAuthorsInner
    implements
        Built<JsonFeedItemAuthorsInner, JsonFeedItemAuthorsInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  JsonFeedItemAuthorsInner._();

  factory JsonFeedItemAuthorsInner(
          [void updates(JsonFeedItemAuthorsInnerBuilder b)]) =
      _$JsonFeedItemAuthorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonFeedItemAuthorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonFeedItemAuthorsInner> get serializer =>
      _$JsonFeedItemAuthorsInnerSerializer();
}

class _$JsonFeedItemAuthorsInnerSerializer
    implements PrimitiveSerializer<JsonFeedItemAuthorsInner> {
  @override
  final Iterable<Type> types = const [
    JsonFeedItemAuthorsInner,
    _$JsonFeedItemAuthorsInner
  ];

  @override
  final String wireName = r'JsonFeedItemAuthorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonFeedItemAuthorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonFeedItemAuthorsInner object, {
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
    required JsonFeedItemAuthorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonFeedItemAuthorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonFeedItemAuthorsInnerBuilder();
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
