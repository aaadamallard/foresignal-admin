//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_collection_extent_temporal.dart';
import 'package:foresignal_api/src/model/ogc_collection_extent_spatial.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_collection_extent.g.dart';

/// Spatial and temporal extent
///
/// Properties:
/// * [spatial]
/// * [temporal]
@BuiltValue()
abstract class OgcCollectionExtent
    implements Built<OgcCollectionExtent, OgcCollectionExtentBuilder> {
  @BuiltValueField(wireName: r'spatial')
  OgcCollectionExtentSpatial? get spatial;

  @BuiltValueField(wireName: r'temporal')
  OgcCollectionExtentTemporal? get temporal;

  OgcCollectionExtent._();

  factory OgcCollectionExtent([void updates(OgcCollectionExtentBuilder b)]) =
      _$OgcCollectionExtent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCollectionExtentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCollectionExtent> get serializer =>
      _$OgcCollectionExtentSerializer();
}

class _$OgcCollectionExtentSerializer
    implements PrimitiveSerializer<OgcCollectionExtent> {
  @override
  final Iterable<Type> types = const [
    OgcCollectionExtent,
    _$OgcCollectionExtent,
  ];

  @override
  final String wireName = r'OgcCollectionExtent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCollectionExtent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.spatial != null) {
      yield r'spatial';
      yield serializers.serialize(
        object.spatial,
        specifiedType: const FullType(OgcCollectionExtentSpatial),
      );
    }
    if (object.temporal != null) {
      yield r'temporal';
      yield serializers.serialize(
        object.temporal,
        specifiedType: const FullType(OgcCollectionExtentTemporal),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCollectionExtent object, {
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
    required OgcCollectionExtentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'spatial':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OgcCollectionExtentSpatial,
                    ),
                  )
                  as OgcCollectionExtentSpatial?;
          if (valueDes == null) continue;
          result.spatial.replace(valueDes);
          break;
        case r'temporal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OgcCollectionExtentTemporal,
                    ),
                  )
                  as OgcCollectionExtentTemporal?;
          if (valueDes == null) continue;
          result.temporal.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcCollectionExtent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCollectionExtentBuilder();
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
