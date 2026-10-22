//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ogc_collection200_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_collections.g.dart';

/// Collections list (112)
///
/// Properties:
/// * [links]
/// * [collections]
@BuiltValue()
abstract class OgcCollections
    implements Built<OgcCollections, OgcCollectionsBuilder> {
  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  @BuiltValueField(wireName: r'collections')
  BuiltList<OgcCollection200Response> get collections;

  OgcCollections._();

  factory OgcCollections([void updates(OgcCollectionsBuilder b)]) =
      _$OgcCollections;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCollectionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCollections> get serializer =>
      _$OgcCollectionsSerializer();
}

class _$OgcCollectionsSerializer
    implements PrimitiveSerializer<OgcCollections> {
  @override
  final Iterable<Type> types = const [OgcCollections, _$OgcCollections];

  @override
  final String wireName = r'OgcCollections';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCollections object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
    yield r'collections';
    yield serializers.serialize(
      object.collections,
      specifiedType: const FullType(BuiltList, [
        FullType(OgcCollection200Response),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCollections object, {
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
    required OgcCollectionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OgcLink),
                    ]),
                  )
                  as BuiltList<OgcLink>;
          result.links.replace(valueDes);
          break;
        case r'collections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OgcCollection200Response),
                    ]),
                  )
                  as BuiltList<OgcCollection200Response>;
          result.collections.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcCollections deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCollectionsBuilder();
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
