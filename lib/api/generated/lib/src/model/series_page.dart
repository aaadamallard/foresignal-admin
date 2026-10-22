//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/series_catalog_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_page.g.dart';

/// Page of series catalogue entries (093)
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class SeriesPage implements Built<SeriesPage, SeriesPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SeriesCatalogEntry> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SeriesPage._();

  factory SeriesPage([void updates(SeriesPageBuilder b)]) = _$SeriesPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesPage> get serializer => _$SeriesPageSerializer();
}

class _$SeriesPageSerializer implements PrimitiveSerializer<SeriesPage> {
  @override
  final Iterable<Type> types = const [SeriesPage, _$SeriesPage];

  @override
  final String wireName = r'SeriesPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SeriesCatalogEntry)]),
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
    SeriesPage object, {
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
    required SeriesPageBuilder result,
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
                      FullType(SeriesCatalogEntry),
                    ]),
                  )
                  as BuiltList<SeriesCatalogEntry>;
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
  SeriesPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesPageBuilder();
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
