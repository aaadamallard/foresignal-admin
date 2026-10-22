//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_style_metadata_layers_inner.g.dart';

/// One requested tile layer
///
/// Properties:
/// * [id]
/// * [kinds]
/// * [attribution]
/// * [minzoom]
/// * [aggBelowZoom]
@BuiltValue()
abstract class MapStyleMetadataLayersInner
    implements
        Built<MapStyleMetadataLayersInner, MapStyleMetadataLayersInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'minzoom')
  num? get minzoom;

  @BuiltValueField(wireName: r'aggBelowZoom')
  num? get aggBelowZoom;

  MapStyleMetadataLayersInner._();

  factory MapStyleMetadataLayersInner([
    void updates(MapStyleMetadataLayersInnerBuilder b),
  ]) = _$MapStyleMetadataLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapStyleMetadataLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapStyleMetadataLayersInner> get serializer =>
      _$MapStyleMetadataLayersInnerSerializer();
}

class _$MapStyleMetadataLayersInnerSerializer
    implements PrimitiveSerializer<MapStyleMetadataLayersInner> {
  @override
  final Iterable<Type> types = const [
    MapStyleMetadataLayersInner,
    _$MapStyleMetadataLayersInner,
  ];

  @override
  final String wireName = r'MapStyleMetadataLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapStyleMetadataLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(String),
      );
    }
    if (object.minzoom != null) {
      yield r'minzoom';
      yield serializers.serialize(
        object.minzoom,
        specifiedType: const FullType(num),
      );
    }
    if (object.aggBelowZoom != null) {
      yield r'aggBelowZoom';
      yield serializers.serialize(
        object.aggBelowZoom,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MapStyleMetadataLayersInner object, {
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
    required MapStyleMetadataLayersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.kinds.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'minzoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.minzoom = valueDes;
          break;
        case r'aggBelowZoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
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
  MapStyleMetadataLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapStyleMetadataLayersInnerBuilder();
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
