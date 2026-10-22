//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/saved_view.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_view_page.g.dart';

/// A page of saved views (036)
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class SavedViewPage
    implements Built<SavedViewPage, SavedViewPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SavedView> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SavedViewPage._();

  factory SavedViewPage([void updates(SavedViewPageBuilder b)]) =
      _$SavedViewPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedViewPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedViewPage> get serializer =>
      _$SavedViewPageSerializer();
}

class _$SavedViewPageSerializer implements PrimitiveSerializer<SavedViewPage> {
  @override
  final Iterable<Type> types = const [SavedViewPage, _$SavedViewPage];

  @override
  final String wireName = r'SavedViewPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedViewPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SavedView)]),
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
    SavedViewPage object, {
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
    required SavedViewPageBuilder result,
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
                      FullType(SavedView),
                    ]),
                  )
                  as BuiltList<SavedView>;
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
  SavedViewPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedViewPageBuilder();
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
