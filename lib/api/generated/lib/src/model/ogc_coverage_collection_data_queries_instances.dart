//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection_data_queries_instances.g.dart';

/// EDR instances query
///
/// Properties:
/// * [link]
@BuiltValue()
abstract class OgcCoverageCollectionDataQueriesInstances
    implements
        Built<OgcCoverageCollectionDataQueriesInstances,
            OgcCoverageCollectionDataQueriesInstancesBuilder> {
  @BuiltValueField(wireName: r'link')
  OgcLink? get link;

  OgcCoverageCollectionDataQueriesInstances._();

  factory OgcCoverageCollectionDataQueriesInstances(
          [void updates(OgcCoverageCollectionDataQueriesInstancesBuilder b)]) =
      _$OgcCoverageCollectionDataQueriesInstances;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionDataQueriesInstancesBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollectionDataQueriesInstances> get serializer =>
      _$OgcCoverageCollectionDataQueriesInstancesSerializer();
}

class _$OgcCoverageCollectionDataQueriesInstancesSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionDataQueriesInstances> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollectionDataQueriesInstances,
    _$OgcCoverageCollectionDataQueriesInstances
  ];

  @override
  final String wireName = r'OgcCoverageCollectionDataQueriesInstances';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollectionDataQueriesInstances object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(OgcLink),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCoverageCollectionDataQueriesInstances object, {
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
    required OgcCoverageCollectionDataQueriesInstancesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OgcLink),
          ) as OgcLink?;
          if (valueDes == null) continue;
          result.link.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcCoverageCollectionDataQueriesInstances deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionDataQueriesInstancesBuilder();
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
