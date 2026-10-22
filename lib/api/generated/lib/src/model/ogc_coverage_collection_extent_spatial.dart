//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection_extent_spatial.g.dart';

/// Bounds
///
/// Properties:
/// * [bbox]
/// * [crs]
@BuiltValue()
abstract class OgcCoverageCollectionExtentSpatial
    implements
        Built<
          OgcCoverageCollectionExtentSpatial,
          OgcCoverageCollectionExtentSpatialBuilder
        > {
  @BuiltValueField(wireName: r'bbox')
  BuiltList<BuiltList<num>>? get bbox;

  @BuiltValueField(wireName: r'crs')
  String? get crs;

  OgcCoverageCollectionExtentSpatial._();

  factory OgcCoverageCollectionExtentSpatial([
    void updates(OgcCoverageCollectionExtentSpatialBuilder b),
  ]) = _$OgcCoverageCollectionExtentSpatial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionExtentSpatialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollectionExtentSpatial> get serializer =>
      _$OgcCoverageCollectionExtentSpatialSerializer();
}

class _$OgcCoverageCollectionExtentSpatialSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionExtentSpatial> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollectionExtentSpatial,
    _$OgcCoverageCollectionExtentSpatial,
  ];

  @override
  final String wireName = r'OgcCoverageCollectionExtentSpatial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollectionExtentSpatial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltList, [FullType(num)]),
        ]),
      );
    }
    if (object.crs != null) {
      yield r'crs';
      yield serializers.serialize(
        object.crs,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCoverageCollectionExtentSpatial object, {
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
    required OgcCoverageCollectionExtentSpatialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BuiltList, [FullType(num)]),
                    ]),
                  )
                  as BuiltList<BuiltList<num>>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'crs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.crs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcCoverageCollectionExtentSpatial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionExtentSpatialBuilder();
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
