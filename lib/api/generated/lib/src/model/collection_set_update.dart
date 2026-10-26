//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/collection_source.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_set_update.g.dart';

/// Replace the instance collection set
///
/// Properties:
/// * [sources]
@BuiltValue()
abstract class CollectionSetUpdate
    implements Built<CollectionSetUpdate, CollectionSetUpdateBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<CollectionSource> get sources;

  CollectionSetUpdate._();

  factory CollectionSetUpdate([void updates(CollectionSetUpdateBuilder b)]) =
      _$CollectionSetUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionSetUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionSetUpdate> get serializer =>
      _$CollectionSetUpdateSerializer();
}

class _$CollectionSetUpdateSerializer
    implements PrimitiveSerializer<CollectionSetUpdate> {
  @override
  final Iterable<Type> types = const [
    CollectionSetUpdate,
    _$CollectionSetUpdate,
  ];

  @override
  final String wireName = r'CollectionSetUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionSetUpdate object, {
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
    CollectionSetUpdate object, {
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
    required CollectionSetUpdateBuilder result,
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
  CollectionSetUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionSetUpdateBuilder();
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
