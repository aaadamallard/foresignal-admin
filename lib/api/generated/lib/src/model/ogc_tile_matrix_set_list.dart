//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ogc_tile_matrix_set_list_tile_matrix_sets_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_matrix_set_list.g.dart';

/// Tile matrix sets offered
///
/// Properties:
/// * [tileMatrixSets]
@BuiltValue()
abstract class OgcTileMatrixSetList
    implements Built<OgcTileMatrixSetList, OgcTileMatrixSetListBuilder> {
  @BuiltValueField(wireName: r'tileMatrixSets')
  BuiltList<OgcTileMatrixSetListTileMatrixSetsInner> get tileMatrixSets;

  OgcTileMatrixSetList._();

  factory OgcTileMatrixSetList([void updates(OgcTileMatrixSetListBuilder b)]) =
      _$OgcTileMatrixSetList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileMatrixSetListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileMatrixSetList> get serializer =>
      _$OgcTileMatrixSetListSerializer();
}

class _$OgcTileMatrixSetListSerializer
    implements PrimitiveSerializer<OgcTileMatrixSetList> {
  @override
  final Iterable<Type> types = const [
    OgcTileMatrixSetList,
    _$OgcTileMatrixSetList
  ];

  @override
  final String wireName = r'OgcTileMatrixSetList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileMatrixSetList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tileMatrixSets';
    yield serializers.serialize(
      object.tileMatrixSets,
      specifiedType: const FullType(
          BuiltList, [FullType(OgcTileMatrixSetListTileMatrixSetsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileMatrixSetList object, {
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
    required OgcTileMatrixSetListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tileMatrixSets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OgcTileMatrixSetListTileMatrixSetsInner)]),
          ) as BuiltList<OgcTileMatrixSetListTileMatrixSetsInner>;
          result.tileMatrixSets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileMatrixSetList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileMatrixSetListBuilder();
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
