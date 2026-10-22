//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/transit_catalog_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transit_catalog_page.g.dart';

/// Page of transit catalogue rows (070)
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class TransitCatalogPage
    implements Built<TransitCatalogPage, TransitCatalogPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<TransitCatalogEntry> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  TransitCatalogPage._();

  factory TransitCatalogPage([void updates(TransitCatalogPageBuilder b)]) =
      _$TransitCatalogPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransitCatalogPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransitCatalogPage> get serializer =>
      _$TransitCatalogPageSerializer();
}

class _$TransitCatalogPageSerializer
    implements PrimitiveSerializer<TransitCatalogPage> {
  @override
  final Iterable<Type> types = const [TransitCatalogPage, _$TransitCatalogPage];

  @override
  final String wireName = r'TransitCatalogPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransitCatalogPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(TransitCatalogEntry)]),
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
    TransitCatalogPage object, {
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
    required TransitCatalogPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TransitCatalogEntry)]),
          ) as BuiltList<TransitCatalogEntry>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  TransitCatalogPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitCatalogPageBuilder();
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
