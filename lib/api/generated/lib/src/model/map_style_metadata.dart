//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_style_metadata.g.dart';

/// MapStyleMetadata
///
/// Properties:
/// * [foresignal]
@BuiltValue()
abstract class MapStyleMetadata
    implements Built<MapStyleMetadata, MapStyleMetadataBuilder> {
  @BuiltValueField(wireName: r'foresignal')
  MapStyleMetadata? get foresignal;

  MapStyleMetadata._();

  factory MapStyleMetadata([void updates(MapStyleMetadataBuilder b)]) =
      _$MapStyleMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapStyleMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapStyleMetadata> get serializer =>
      _$MapStyleMetadataSerializer();
}

class _$MapStyleMetadataSerializer
    implements PrimitiveSerializer<MapStyleMetadata> {
  @override
  final Iterable<Type> types = const [MapStyleMetadata, _$MapStyleMetadata];

  @override
  final String wireName = r'MapStyleMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapStyleMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.foresignal != null) {
      yield r'foresignal';
      yield serializers.serialize(
        object.foresignal,
        specifiedType: const FullType(MapStyleMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MapStyleMetadata object, {
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
    required MapStyleMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'foresignal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MapStyleMetadata),
          ) as MapStyleMetadata?;
          if (valueDes == null) continue;
          result.foresignal.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MapStyleMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapStyleMetadataBuilder();
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
