//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/media_outlet.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_outlet_page.g.dart';

/// One page of outlets
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class MediaOutletPage
    implements Built<MediaOutletPage, MediaOutletPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<MediaOutlet> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  MediaOutletPage._();

  factory MediaOutletPage([void updates(MediaOutletPageBuilder b)]) =
      _$MediaOutletPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaOutletPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaOutletPage> get serializer =>
      _$MediaOutletPageSerializer();
}

class _$MediaOutletPageSerializer
    implements PrimitiveSerializer<MediaOutletPage> {
  @override
  final Iterable<Type> types = const [MediaOutletPage, _$MediaOutletPage];

  @override
  final String wireName = r'MediaOutletPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaOutletPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(MediaOutlet)]),
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
    MediaOutletPage object, {
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
    required MediaOutletPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MediaOutlet)]),
          ) as BuiltList<MediaOutlet>;
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
  MediaOutletPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaOutletPageBuilder();
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
