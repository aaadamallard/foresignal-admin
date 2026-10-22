//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/tile_layer_index_layers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_layer_index.g.dart';

/// Index of vector-tile layers (one per source id and per kind with a visible source)
///
/// Properties:
/// * [tilejson]
/// * [layers]
@BuiltValue()
abstract class TileLayerIndex
    implements Built<TileLayerIndex, TileLayerIndexBuilder> {
  @BuiltValueField(wireName: r'tilejson')
  TileLayerIndexTilejsonEnum get tilejson;
  // enum tilejsonEnum {  3.0.0,  };

  @BuiltValueField(wireName: r'layers')
  BuiltList<TileLayerIndexLayersInner> get layers;

  TileLayerIndex._();

  factory TileLayerIndex([void updates(TileLayerIndexBuilder b)]) =
      _$TileLayerIndex;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileLayerIndexBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileLayerIndex> get serializer =>
      _$TileLayerIndexSerializer();
}

class _$TileLayerIndexSerializer
    implements PrimitiveSerializer<TileLayerIndex> {
  @override
  final Iterable<Type> types = const [TileLayerIndex, _$TileLayerIndex];

  @override
  final String wireName = r'TileLayerIndex';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileLayerIndex object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tilejson';
    yield serializers.serialize(
      object.tilejson,
      specifiedType: const FullType(TileLayerIndexTilejsonEnum),
    );
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType: const FullType(BuiltList, [
        FullType(TileLayerIndexLayersInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TileLayerIndex object, {
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
    required TileLayerIndexBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tilejson':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TileLayerIndexTilejsonEnum),
                  )
                  as TileLayerIndexTilejsonEnum;
          result.tilejson = valueDes;
          break;
        case r'layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(TileLayerIndexLayersInner),
                    ]),
                  )
                  as BuiltList<TileLayerIndexLayersInner>;
          result.layers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileLayerIndex deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileLayerIndexBuilder();
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

class TileLayerIndexTilejsonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'3.0.0')
  static const TileLayerIndexTilejsonEnum n3period0Period0 =
      _$tileLayerIndexTilejsonEnum_n3period0Period0;

  static Serializer<TileLayerIndexTilejsonEnum> get serializer =>
      _$tileLayerIndexTilejsonEnumSerializer;

  const TileLayerIndexTilejsonEnum._(String name) : super(name);

  static BuiltSet<TileLayerIndexTilejsonEnum> get values =>
      _$tileLayerIndexTilejsonEnumValues;
  static TileLayerIndexTilejsonEnum valueOf(String name) =>
      _$tileLayerIndexTilejsonEnumValueOf(name);
}
