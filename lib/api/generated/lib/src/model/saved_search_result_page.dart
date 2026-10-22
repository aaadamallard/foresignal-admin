//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/saved_search_hit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_result_page.g.dart';

/// One page of saved-search results
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
/// * [ranAt]
/// * [semantic] - Whether semantic (embedding) search contributed
@BuiltValue()
abstract class SavedSearchResultPage
    implements Built<SavedSearchResultPage, SavedSearchResultPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SavedSearchHit> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  @BuiltValueField(wireName: r'ranAt')
  DateTime? get ranAt;

  /// Whether semantic (embedding) search contributed
  @BuiltValueField(wireName: r'semantic')
  bool? get semantic;

  SavedSearchResultPage._();

  factory SavedSearchResultPage([
    void updates(SavedSearchResultPageBuilder b),
  ]) = _$SavedSearchResultPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchResultPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchResultPage> get serializer =>
      _$SavedSearchResultPageSerializer();
}

class _$SavedSearchResultPageSerializer
    implements PrimitiveSerializer<SavedSearchResultPage> {
  @override
  final Iterable<Type> types = const [
    SavedSearchResultPage,
    _$SavedSearchResultPage,
  ];

  @override
  final String wireName = r'SavedSearchResultPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchResultPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SavedSearchHit)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
    if (object.ranAt != null) {
      yield r'ranAt';
      yield serializers.serialize(
        object.ranAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.semantic != null) {
      yield r'semantic';
      yield serializers.serialize(
        object.semantic,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchResultPage object, {
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
    required SavedSearchResultPageBuilder result,
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
                      FullType(SavedSearchHit),
                    ]),
                  )
                  as BuiltList<SavedSearchHit>;
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
        case r'ranAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.ranAt = valueDes;
          break;
        case r'semantic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.semantic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchResultPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchResultPageBuilder();
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
