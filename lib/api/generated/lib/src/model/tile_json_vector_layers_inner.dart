//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_json_vector_layers_inner.g.dart';

/// TileJsonVectorLayersInner
///
/// Properties:
/// * [id]
/// * [description]
/// * [minzoom]
/// * [maxzoom]
/// * [fields] - Property name → description (fieldSpecs label and unit, else String/Number)
@BuiltValue()
abstract class TileJsonVectorLayersInner
    implements
        Built<TileJsonVectorLayersInner, TileJsonVectorLayersInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'minzoom')
  int? get minzoom;

  @BuiltValueField(wireName: r'maxzoom')
  int? get maxzoom;

  /// Property name → description (fieldSpecs label and unit, else String/Number)
  @BuiltValueField(wireName: r'fields')
  BuiltMap<String, String> get fields;

  TileJsonVectorLayersInner._();

  factory TileJsonVectorLayersInner([
    void updates(TileJsonVectorLayersInnerBuilder b),
  ]) = _$TileJsonVectorLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileJsonVectorLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileJsonVectorLayersInner> get serializer =>
      _$TileJsonVectorLayersInnerSerializer();
}

class _$TileJsonVectorLayersInnerSerializer
    implements PrimitiveSerializer<TileJsonVectorLayersInner> {
  @override
  final Iterable<Type> types = const [
    TileJsonVectorLayersInner,
    _$TileJsonVectorLayersInner,
  ];

  @override
  final String wireName = r'TileJsonVectorLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileJsonVectorLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.minzoom != null) {
      yield r'minzoom';
      yield serializers.serialize(
        object.minzoom,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxzoom != null) {
      yield r'maxzoom';
      yield serializers.serialize(
        object.maxzoom,
        specifiedType: const FullType(int),
      );
    }
    yield r'fields';
    yield serializers.serialize(
      object.fields,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(String),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TileJsonVectorLayersInner object, {
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
    required TileJsonVectorLayersInnerBuilder result,
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
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'minzoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minzoom = valueDes;
          break;
        case r'maxzoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxzoom = valueDes;
          break;
        case r'fields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileJsonVectorLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileJsonVectorLayersInnerBuilder();
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
