//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_coverage_collection_extent_temporal.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_extent_spatial.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection_extent.g.dart';

/// Spatial and temporal extent
///
/// Properties:
/// * [spatial]
/// * [temporal]
@BuiltValue()
abstract class OgcCoverageCollectionExtent
    implements
        Built<OgcCoverageCollectionExtent, OgcCoverageCollectionExtentBuilder> {
  @BuiltValueField(wireName: r'spatial')
  OgcCoverageCollectionExtentSpatial? get spatial;

  @BuiltValueField(wireName: r'temporal')
  OgcCoverageCollectionExtentTemporal? get temporal;

  OgcCoverageCollectionExtent._();

  factory OgcCoverageCollectionExtent(
          [void updates(OgcCoverageCollectionExtentBuilder b)]) =
      _$OgcCoverageCollectionExtent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionExtentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollectionExtent> get serializer =>
      _$OgcCoverageCollectionExtentSerializer();
}

class _$OgcCoverageCollectionExtentSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionExtent> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollectionExtent,
    _$OgcCoverageCollectionExtent
  ];

  @override
  final String wireName = r'OgcCoverageCollectionExtent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollectionExtent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.spatial != null) {
      yield r'spatial';
      yield serializers.serialize(
        object.spatial,
        specifiedType: const FullType(OgcCoverageCollectionExtentSpatial),
      );
    }
    if (object.temporal != null) {
      yield r'temporal';
      yield serializers.serialize(
        object.temporal,
        specifiedType: const FullType(OgcCoverageCollectionExtentTemporal),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCoverageCollectionExtent object, {
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
    required OgcCoverageCollectionExtentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'spatial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(OgcCoverageCollectionExtentSpatial),
          ) as OgcCoverageCollectionExtentSpatial?;
          if (valueDes == null) continue;
          result.spatial.replace(valueDes);
          break;
        case r'temporal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(OgcCoverageCollectionExtentTemporal),
          ) as OgcCoverageCollectionExtentTemporal?;
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
  OgcCoverageCollectionExtent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionExtentBuilder();
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
