//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_timeline_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_timeline_page.g.dart';

/// A page of situation timeline entries in time order
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class SituationTimelinePage
    implements Built<SituationTimelinePage, SituationTimelinePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SituationTimelineEntry> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SituationTimelinePage._();

  factory SituationTimelinePage(
      [void updates(SituationTimelinePageBuilder b)]) = _$SituationTimelinePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationTimelinePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationTimelinePage> get serializer =>
      _$SituationTimelinePageSerializer();
}

class _$SituationTimelinePageSerializer
    implements PrimitiveSerializer<SituationTimelinePage> {
  @override
  final Iterable<Type> types = const [
    SituationTimelinePage,
    _$SituationTimelinePage
  ];

  @override
  final String wireName = r'SituationTimelinePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationTimelinePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(SituationTimelineEntry)]),
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
    SituationTimelinePage object, {
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
    required SituationTimelinePageBuilder result,
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
                const FullType(BuiltList, [FullType(SituationTimelineEntry)]),
          ) as BuiltList<SituationTimelineEntry>;
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
  SituationTimelinePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationTimelinePageBuilder();
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
