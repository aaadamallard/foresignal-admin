//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_sprite_index_value.g.dart';

/// MapSpriteIndexValue
///
/// Properties:
/// * [x]
/// * [y]
/// * [width]
/// * [height]
/// * [pixelRatio]
/// * [sdf]
@BuiltValue()
abstract class MapSpriteIndexValue
    implements Built<MapSpriteIndexValue, MapSpriteIndexValueBuilder> {
  @BuiltValueField(wireName: r'x')
  int get x;

  @BuiltValueField(wireName: r'y')
  int get y;

  @BuiltValueField(wireName: r'width')
  int get width;

  @BuiltValueField(wireName: r'height')
  int get height;

  @BuiltValueField(wireName: r'pixelRatio')
  num get pixelRatio;

  @BuiltValueField(wireName: r'sdf')
  bool? get sdf;

  MapSpriteIndexValue._();

  factory MapSpriteIndexValue([void updates(MapSpriteIndexValueBuilder b)]) =
      _$MapSpriteIndexValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapSpriteIndexValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapSpriteIndexValue> get serializer =>
      _$MapSpriteIndexValueSerializer();
}

class _$MapSpriteIndexValueSerializer
    implements PrimitiveSerializer<MapSpriteIndexValue> {
  @override
  final Iterable<Type> types = const [
    MapSpriteIndexValue,
    _$MapSpriteIndexValue,
  ];

  @override
  final String wireName = r'MapSpriteIndexValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapSpriteIndexValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'x';
    yield serializers.serialize(object.x, specifiedType: const FullType(int));
    yield r'y';
    yield serializers.serialize(object.y, specifiedType: const FullType(int));
    yield r'width';
    yield serializers.serialize(
      object.width,
      specifiedType: const FullType(int),
    );
    yield r'height';
    yield serializers.serialize(
      object.height,
      specifiedType: const FullType(int),
    );
    yield r'pixelRatio';
    yield serializers.serialize(
      object.pixelRatio,
      specifiedType: const FullType(num),
    );
    if (object.sdf != null) {
      yield r'sdf';
      yield serializers.serialize(
        object.sdf,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MapSpriteIndexValue object, {
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
    required MapSpriteIndexValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'x':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.y = valueDes;
          break;
        case r'width':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.height = valueDes;
          break;
        case r'pixelRatio':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pixelRatio = valueDes;
          break;
        case r'sdf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sdf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MapSpriteIndexValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapSpriteIndexValueBuilder();
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
