//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/collection_gap.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_gap_page.g.dart';

/// Page of collection gaps
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class CollectionGapPage
    implements Built<CollectionGapPage, CollectionGapPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<CollectionGap> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  CollectionGapPage._();

  factory CollectionGapPage([void updates(CollectionGapPageBuilder b)]) =
      _$CollectionGapPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionGapPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionGapPage> get serializer =>
      _$CollectionGapPageSerializer();
}

class _$CollectionGapPageSerializer
    implements PrimitiveSerializer<CollectionGapPage> {
  @override
  final Iterable<Type> types = const [CollectionGapPage, _$CollectionGapPage];

  @override
  final String wireName = r'CollectionGapPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionGapPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CollectionGap)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionGapPage object, {
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
    required CollectionGapPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(CollectionGap),
                    ]),
                  )
                  as BuiltList<CollectionGap>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionGapPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionGapPageBuilder();
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
