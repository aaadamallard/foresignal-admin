//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ogc_tile_set_list_tilesets_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_set_list.g.dart';

/// Tilesets of a collection
///
/// Properties:
/// * [tilesets]
@BuiltValue()
abstract class OgcTileSetList
    implements Built<OgcTileSetList, OgcTileSetListBuilder> {
  @BuiltValueField(wireName: r'tilesets')
  BuiltList<OgcTileSetListTilesetsInner> get tilesets;

  OgcTileSetList._();

  factory OgcTileSetList([void updates(OgcTileSetListBuilder b)]) =
      _$OgcTileSetList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileSetListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileSetList> get serializer =>
      _$OgcTileSetListSerializer();
}

class _$OgcTileSetListSerializer
    implements PrimitiveSerializer<OgcTileSetList> {
  @override
  final Iterable<Type> types = const [OgcTileSetList, _$OgcTileSetList];

  @override
  final String wireName = r'OgcTileSetList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileSetList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tilesets';
    yield serializers.serialize(
      object.tilesets,
      specifiedType:
          const FullType(BuiltList, [FullType(OgcTileSetListTilesetsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileSetList object, {
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
    required OgcTileSetListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tilesets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OgcTileSetListTilesetsInner)]),
          ) as BuiltList<OgcTileSetListTilesetsInner>;
          result.tilesets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileSetList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileSetListBuilder();
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
