//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection_data_queries_position.g.dart';

/// EDR position query
///
/// Properties:
/// * [link]
@BuiltValue()
abstract class OgcCoverageCollectionDataQueriesPosition
    implements
        Built<OgcCoverageCollectionDataQueriesPosition,
            OgcCoverageCollectionDataQueriesPositionBuilder> {
  @BuiltValueField(wireName: r'link')
  OgcLink? get link;

  OgcCoverageCollectionDataQueriesPosition._();

  factory OgcCoverageCollectionDataQueriesPosition(
          [void updates(OgcCoverageCollectionDataQueriesPositionBuilder b)]) =
      _$OgcCoverageCollectionDataQueriesPosition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionDataQueriesPositionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollectionDataQueriesPosition> get serializer =>
      _$OgcCoverageCollectionDataQueriesPositionSerializer();
}

class _$OgcCoverageCollectionDataQueriesPositionSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionDataQueriesPosition> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollectionDataQueriesPosition,
    _$OgcCoverageCollectionDataQueriesPosition
  ];

  @override
  final String wireName = r'OgcCoverageCollectionDataQueriesPosition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollectionDataQueriesPosition object, {
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
    OgcCoverageCollectionDataQueriesPosition object, {
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
    required OgcCoverageCollectionDataQueriesPositionBuilder result,
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
  OgcCoverageCollectionDataQueriesPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionDataQueriesPositionBuilder();
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
