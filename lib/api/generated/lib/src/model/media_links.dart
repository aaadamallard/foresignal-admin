//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_links.g.dart';

/// Expanded links (documents have no thumbnail links)
///
/// Properties:
/// * [self]
/// * [meta]
/// * [thumbnail256]
/// * [thumbnail1024]
@BuiltValue()
abstract class MediaLinks implements Built<MediaLinks, MediaLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  String? get self;

  @BuiltValueField(wireName: r'meta')
  String? get meta;

  @BuiltValueField(wireName: r'thumbnail256')
  String? get thumbnail256;

  @BuiltValueField(wireName: r'thumbnail1024')
  String? get thumbnail1024;

  MediaLinks._();

  factory MediaLinks([void updates(MediaLinksBuilder b)]) = _$MediaLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaLinks> get serializer => _$MediaLinksSerializer();
}

class _$MediaLinksSerializer implements PrimitiveSerializer<MediaLinks> {
  @override
  final Iterable<Type> types = const [MediaLinks, _$MediaLinks];

  @override
  final String wireName = r'MediaLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(String),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(String),
      );
    }
    if (object.thumbnail256 != null) {
      yield r'thumbnail256';
      yield serializers.serialize(
        object.thumbnail256,
        specifiedType: const FullType(String),
      );
    }
    if (object.thumbnail1024 != null) {
      yield r'thumbnail1024';
      yield serializers.serialize(
        object.thumbnail1024,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaLinks object, {
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
    required MediaLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.self = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.meta = valueDes;
          break;
        case r'thumbnail256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.thumbnail256 = valueDes;
          break;
        case r'thumbnail1024':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.thumbnail1024 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaLinksBuilder();
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
