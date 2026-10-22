//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/tile_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_key_page.g.dart';

/// Page of tile keys
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class TileKeyPage implements Built<TileKeyPage, TileKeyPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<TileKey> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  TileKeyPage._();

  factory TileKeyPage([void updates(TileKeyPageBuilder b)]) = _$TileKeyPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileKeyPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileKeyPage> get serializer => _$TileKeyPageSerializer();
}

class _$TileKeyPageSerializer implements PrimitiveSerializer<TileKeyPage> {
  @override
  final Iterable<Type> types = const [TileKeyPage, _$TileKeyPage];

  @override
  final String wireName = r'TileKeyPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileKeyPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(TileKey)]),
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
    TileKeyPage object, {
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
    required TileKeyPageBuilder result,
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
                      FullType(TileKey),
                    ]),
                  )
                  as BuiltList<TileKey>;
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
  TileKeyPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileKeyPageBuilder();
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
