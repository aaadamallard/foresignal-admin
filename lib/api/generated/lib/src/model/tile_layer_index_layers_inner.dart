//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_layer_index_layers_inner.g.dart';

/// TileLayerIndexLayersInner
///
/// Properties:
/// * [id] - Layer id (source id or kind)
/// * [type]
/// * [name]
/// * [tilejson] - URL of the layer's TileJSON
/// * [aggBelowZoom] - Zoom below which `agg=auto` aggregates; null = never
@BuiltValue()
abstract class TileLayerIndexLayersInner
    implements
        Built<TileLayerIndexLayersInner, TileLayerIndexLayersInnerBuilder> {
  /// Layer id (source id or kind)
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  TileLayerIndexLayersInnerTypeEnum get type;
  // enum typeEnum {  source,  kind,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  /// URL of the layer's TileJSON
  @BuiltValueField(wireName: r'tilejson')
  String get tilejson;

  /// Zoom below which `agg=auto` aggregates; null = never
  @BuiltValueField(wireName: r'aggBelowZoom')
  int? get aggBelowZoom;

  TileLayerIndexLayersInner._();

  factory TileLayerIndexLayersInner(
          [void updates(TileLayerIndexLayersInnerBuilder b)]) =
      _$TileLayerIndexLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileLayerIndexLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileLayerIndexLayersInner> get serializer =>
      _$TileLayerIndexLayersInnerSerializer();
}

class _$TileLayerIndexLayersInnerSerializer
    implements PrimitiveSerializer<TileLayerIndexLayersInner> {
  @override
  final Iterable<Type> types = const [
    TileLayerIndexLayersInner,
    _$TileLayerIndexLayersInner
  ];

  @override
  final String wireName = r'TileLayerIndexLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileLayerIndexLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TileLayerIndexLayersInnerTypeEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'tilejson';
    yield serializers.serialize(
      object.tilejson,
      specifiedType: const FullType(String),
    );
    if (object.aggBelowZoom != null) {
      yield r'aggBelowZoom';
      yield serializers.serialize(
        object.aggBelowZoom,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TileLayerIndexLayersInner object, {
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
    required TileLayerIndexLayersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TileLayerIndexLayersInnerTypeEnum),
          ) as TileLayerIndexLayersInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'tilejson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tilejson = valueDes;
          break;
        case r'aggBelowZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.aggBelowZoom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileLayerIndexLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileLayerIndexLayersInnerBuilder();
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

class TileLayerIndexLayersInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'source')
  static const TileLayerIndexLayersInnerTypeEnum source_ =
      _$tileLayerIndexLayersInnerTypeEnum_source_;
  @BuiltValueEnumConst(wireName: r'kind')
  static const TileLayerIndexLayersInnerTypeEnum kind =
      _$tileLayerIndexLayersInnerTypeEnum_kind;

  static Serializer<TileLayerIndexLayersInnerTypeEnum> get serializer =>
      _$tileLayerIndexLayersInnerTypeEnumSerializer;

  const TileLayerIndexLayersInnerTypeEnum._(String name) : super(name);

  static BuiltSet<TileLayerIndexLayersInnerTypeEnum> get values =>
      _$tileLayerIndexLayersInnerTypeEnumValues;
  static TileLayerIndexLayersInnerTypeEnum valueOf(String name) =>
      _$tileLayerIndexLayersInnerTypeEnumValueOf(name);
}
