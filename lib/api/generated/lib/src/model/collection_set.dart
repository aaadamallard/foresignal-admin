//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/collection_source.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_set.g.dart';

/// The instance collection set; a source is pulled once when it is in this set and any user's view enables it (173)
///
/// Properties:
/// * [sources]
@BuiltValue()
abstract class CollectionSet
    implements Built<CollectionSet, CollectionSetBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<CollectionSource> get sources;

  CollectionSet._();

  factory CollectionSet([void updates(CollectionSetBuilder b)]) =
      _$CollectionSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionSet> get serializer =>
      _$CollectionSetSerializer();
}

class _$CollectionSetSerializer implements PrimitiveSerializer<CollectionSet> {
  @override
  final Iterable<Type> types = const [CollectionSet, _$CollectionSet];

  @override
  final String wireName = r'CollectionSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(CollectionSource)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionSet object, {
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
    required CollectionSetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(CollectionSource),
                    ]),
                  )
                  as BuiltList<CollectionSource>;
          result.sources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionSetBuilder();
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
