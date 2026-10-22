//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/cluster_timeline_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cluster_timeline_page.g.dart';

/// One page of a cluster timeline
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class ClusterTimelinePage
    implements Built<ClusterTimelinePage, ClusterTimelinePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ClusterTimelineItem> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ClusterTimelinePage._();

  factory ClusterTimelinePage([void updates(ClusterTimelinePageBuilder b)]) =
      _$ClusterTimelinePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClusterTimelinePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClusterTimelinePage> get serializer =>
      _$ClusterTimelinePageSerializer();
}

class _$ClusterTimelinePageSerializer
    implements PrimitiveSerializer<ClusterTimelinePage> {
  @override
  final Iterable<Type> types = const [
    ClusterTimelinePage,
    _$ClusterTimelinePage
  ];

  @override
  final String wireName = r'ClusterTimelinePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClusterTimelinePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ClusterTimelineItem)]),
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
    ClusterTimelinePage object, {
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
    required ClusterTimelinePageBuilder result,
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
                const FullType(BuiltList, [FullType(ClusterTimelineItem)]),
          ) as BuiltList<ClusterTimelineItem>;
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
  ClusterTimelinePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClusterTimelinePageBuilder();
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
