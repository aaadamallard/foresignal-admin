//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_related_page_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_related_page.g.dart';

/// Links of a chronicle at the disclosure level the caller is allowed
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class ChronicleRelatedPage
    implements Built<ChronicleRelatedPage, ChronicleRelatedPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ChronicleRelatedPageItemsInner> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ChronicleRelatedPage._();

  factory ChronicleRelatedPage([void updates(ChronicleRelatedPageBuilder b)]) =
      _$ChronicleRelatedPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleRelatedPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleRelatedPage> get serializer =>
      _$ChronicleRelatedPageSerializer();
}

class _$ChronicleRelatedPageSerializer
    implements PrimitiveSerializer<ChronicleRelatedPage> {
  @override
  final Iterable<Type> types = const [
    ChronicleRelatedPage,
    _$ChronicleRelatedPage,
  ];

  @override
  final String wireName = r'ChronicleRelatedPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleRelatedPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(ChronicleRelatedPageItemsInner),
      ]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleRelatedPage object, {
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
    required ChronicleRelatedPageBuilder result,
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
                      FullType(ChronicleRelatedPageItemsInner),
                    ]),
                  )
                  as BuiltList<ChronicleRelatedPageItemsInner>;
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
  ChronicleRelatedPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleRelatedPageBuilder();
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
