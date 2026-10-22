//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/taxii_collection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taxii_collections.g.dart';

/// TAXII 2.1 collections resource
///
/// Properties:
/// * [collections]
@BuiltValue()
abstract class TaxiiCollections
    implements Built<TaxiiCollections, TaxiiCollectionsBuilder> {
  @BuiltValueField(wireName: r'collections')
  BuiltList<TaxiiCollection>? get collections;

  TaxiiCollections._();

  factory TaxiiCollections([void updates(TaxiiCollectionsBuilder b)]) =
      _$TaxiiCollections;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaxiiCollectionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaxiiCollections> get serializer =>
      _$TaxiiCollectionsSerializer();
}

class _$TaxiiCollectionsSerializer
    implements PrimitiveSerializer<TaxiiCollections> {
  @override
  final Iterable<Type> types = const [TaxiiCollections, _$TaxiiCollections];

  @override
  final String wireName = r'TaxiiCollections';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaxiiCollections object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.collections != null) {
      yield r'collections';
      yield serializers.serialize(
        object.collections,
        specifiedType: const FullType(BuiltList, [FullType(TaxiiCollection)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaxiiCollections object, {
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
    required TaxiiCollectionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'collections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TaxiiCollection),
                    ]),
                  )
                  as BuiltList<TaxiiCollection>?;
          if (valueDes == null) continue;
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
  TaxiiCollections deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaxiiCollectionsBuilder();
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
