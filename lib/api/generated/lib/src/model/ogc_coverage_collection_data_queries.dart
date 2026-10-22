//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_coverage_collection_data_queries_area.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_data_queries_position.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_data_queries_instances.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection_data_queries.g.dart';

/// EDR queries
///
/// Properties:
/// * [position]
/// * [area]
/// * [instances]
@BuiltValue()
abstract class OgcCoverageCollectionDataQueries
    implements
        Built<
          OgcCoverageCollectionDataQueries,
          OgcCoverageCollectionDataQueriesBuilder
        > {
  @BuiltValueField(wireName: r'position')
  OgcCoverageCollectionDataQueriesPosition? get position;

  @BuiltValueField(wireName: r'area')
  OgcCoverageCollectionDataQueriesArea? get area;

  @BuiltValueField(wireName: r'instances')
  OgcCoverageCollectionDataQueriesInstances? get instances;

  OgcCoverageCollectionDataQueries._();

  factory OgcCoverageCollectionDataQueries([
    void updates(OgcCoverageCollectionDataQueriesBuilder b),
  ]) = _$OgcCoverageCollectionDataQueries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionDataQueriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollectionDataQueries> get serializer =>
      _$OgcCoverageCollectionDataQueriesSerializer();
}

class _$OgcCoverageCollectionDataQueriesSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionDataQueries> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollectionDataQueries,
    _$OgcCoverageCollectionDataQueries,
  ];

  @override
  final String wireName = r'OgcCoverageCollectionDataQueries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollectionDataQueries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(OgcCoverageCollectionDataQueriesPosition),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType(OgcCoverageCollectionDataQueriesArea),
      );
    }
    if (object.instances != null) {
      yield r'instances';
      yield serializers.serialize(
        object.instances,
        specifiedType: const FullType(
          OgcCoverageCollectionDataQueriesInstances,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCoverageCollectionDataQueries object, {
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
    required OgcCoverageCollectionDataQueriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'position':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OgcCoverageCollectionDataQueriesPosition,
                    ),
                  )
                  as OgcCoverageCollectionDataQueriesPosition?;
          if (valueDes == null) continue;
          result.position.replace(valueDes);
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OgcCoverageCollectionDataQueriesArea,
                    ),
                  )
                  as OgcCoverageCollectionDataQueriesArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'instances':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OgcCoverageCollectionDataQueriesInstances,
                    ),
                  )
                  as OgcCoverageCollectionDataQueriesInstances?;
          if (valueDes == null) continue;
          result.instances.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcCoverageCollectionDataQueries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionDataQueriesBuilder();
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
