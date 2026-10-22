//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/series_point.dart';
import 'package:foresignal_api/src/model/series_catalog_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_point_page.g.dart';

/// Points of one series in `periodStart` order, with its catalogue entry (093)
///
/// Properties:
/// * [series]
/// * [items]
/// * [nextCursor]
/// * [truncated] - More points exist in [from, to) than `limit`
@BuiltValue()
abstract class SeriesPointPage
    implements Built<SeriesPointPage, SeriesPointPageBuilder> {
  @BuiltValueField(wireName: r'series')
  SeriesCatalogEntry get series;

  @BuiltValueField(wireName: r'items')
  BuiltList<SeriesPoint> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  /// More points exist in [from, to) than `limit`
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  SeriesPointPage._();

  factory SeriesPointPage([void updates(SeriesPointPageBuilder b)]) =
      _$SeriesPointPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesPointPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesPointPage> get serializer =>
      _$SeriesPointPageSerializer();
}

class _$SeriesPointPageSerializer
    implements PrimitiveSerializer<SeriesPointPage> {
  @override
  final Iterable<Type> types = const [SeriesPointPage, _$SeriesPointPage];

  @override
  final String wireName = r'SeriesPointPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesPointPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType: const FullType(SeriesCatalogEntry),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SeriesPoint)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesPointPage object, {
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
    required SeriesPointPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'series':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesCatalogEntry),
                  )
                  as SeriesCatalogEntry;
          result.series.replace(valueDes);
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SeriesPoint),
                    ]),
                  )
                  as BuiltList<SeriesPoint>;
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
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesPointPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesPointPageBuilder();
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
