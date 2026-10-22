//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_refs_request.g.dart';

/// Object references to assign or unassign in bulk
///
/// Properties:
/// * [refs]
@BuiltValue()
abstract class TagRefsRequest
    implements Built<TagRefsRequest, TagRefsRequestBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  TagRefsRequest._();

  factory TagRefsRequest([void updates(TagRefsRequestBuilder b)]) =
      _$TagRefsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagRefsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagRefsRequest> get serializer =>
      _$TagRefsRequestSerializer();
}

class _$TagRefsRequestSerializer
    implements PrimitiveSerializer<TagRefsRequest> {
  @override
  final Iterable<Type> types = const [TagRefsRequest, _$TagRefsRequest];

  @override
  final String wireName = r'TagRefsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagRefsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagRefsRequest object, {
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
    required TagRefsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagRefsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagRefsRequestBuilder();
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
