//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ask_thread_page_items_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_thread_page.g.dart';

/// AskThreadPage
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class AskThreadPage
    implements Built<AskThreadPage, AskThreadPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<AskThreadPageItemsInner> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AskThreadPage._();

  factory AskThreadPage([void updates(AskThreadPageBuilder b)]) =
      _$AskThreadPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskThreadPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskThreadPage> get serializer =>
      _$AskThreadPageSerializer();
}

class _$AskThreadPageSerializer implements PrimitiveSerializer<AskThreadPage> {
  @override
  final Iterable<Type> types = const [AskThreadPage, _$AskThreadPage];

  @override
  final String wireName = r'AskThreadPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskThreadPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(AskThreadPageItemsInner),
      ]),
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
    AskThreadPage object, {
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
    required AskThreadPageBuilder result,
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
                      FullType(AskThreadPageItemsInner),
                    ]),
                  )
                  as BuiltList<AskThreadPageItemsInner>;
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
  AskThreadPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskThreadPageBuilder();
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
