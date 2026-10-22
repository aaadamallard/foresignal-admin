//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feed_key_created_urls_inner.g.dart';

/// Ready-made URL for one prefix
///
/// Properties:
/// * [prefix]
/// * [url]
@BuiltValue()
abstract class FeedKeyCreatedUrlsInner
    implements Built<FeedKeyCreatedUrlsInner, FeedKeyCreatedUrlsInnerBuilder> {
  @BuiltValueField(wireName: r'prefix')
  String get prefix;

  @BuiltValueField(wireName: r'url')
  String get url;

  FeedKeyCreatedUrlsInner._();

  factory FeedKeyCreatedUrlsInner([
    void updates(FeedKeyCreatedUrlsInnerBuilder b),
  ]) = _$FeedKeyCreatedUrlsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeedKeyCreatedUrlsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeedKeyCreatedUrlsInner> get serializer =>
      _$FeedKeyCreatedUrlsInnerSerializer();
}

class _$FeedKeyCreatedUrlsInnerSerializer
    implements PrimitiveSerializer<FeedKeyCreatedUrlsInner> {
  @override
  final Iterable<Type> types = const [
    FeedKeyCreatedUrlsInner,
    _$FeedKeyCreatedUrlsInner,
  ];

  @override
  final String wireName = r'FeedKeyCreatedUrlsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeedKeyCreatedUrlsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'prefix';
    yield serializers.serialize(
      object.prefix,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FeedKeyCreatedUrlsInner object, {
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
    required FeedKeyCreatedUrlsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.prefix = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeedKeyCreatedUrlsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeedKeyCreatedUrlsInnerBuilder();
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
