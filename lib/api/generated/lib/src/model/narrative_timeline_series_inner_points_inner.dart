//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_timeline_series_inner_points_inner.g.dart';

/// One interval
///
/// Properties:
/// * [t]
/// * [posts]
/// * [uniqueAuthors]
@BuiltValue()
abstract class NarrativeTimelineSeriesInnerPointsInner
    implements
        Built<NarrativeTimelineSeriesInnerPointsInner,
            NarrativeTimelineSeriesInnerPointsInnerBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'posts')
  int get posts;

  @BuiltValueField(wireName: r'uniqueAuthors')
  int get uniqueAuthors;

  NarrativeTimelineSeriesInnerPointsInner._();

  factory NarrativeTimelineSeriesInnerPointsInner(
          [void updates(NarrativeTimelineSeriesInnerPointsInnerBuilder b)]) =
      _$NarrativeTimelineSeriesInnerPointsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeTimelineSeriesInnerPointsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeTimelineSeriesInnerPointsInner> get serializer =>
      _$NarrativeTimelineSeriesInnerPointsInnerSerializer();
}

class _$NarrativeTimelineSeriesInnerPointsInnerSerializer
    implements PrimitiveSerializer<NarrativeTimelineSeriesInnerPointsInner> {
  @override
  final Iterable<Type> types = const [
    NarrativeTimelineSeriesInnerPointsInner,
    _$NarrativeTimelineSeriesInnerPointsInner
  ];

  @override
  final String wireName = r'NarrativeTimelineSeriesInnerPointsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeTimelineSeriesInnerPointsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'posts';
    yield serializers.serialize(
      object.posts,
      specifiedType: const FullType(int),
    );
    yield r'uniqueAuthors';
    yield serializers.serialize(
      object.uniqueAuthors,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativeTimelineSeriesInnerPointsInner object, {
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
    required NarrativeTimelineSeriesInnerPointsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.t = valueDes;
          break;
        case r'posts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.posts = valueDes;
          break;
        case r'uniqueAuthors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.uniqueAuthors = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativeTimelineSeriesInnerPointsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeTimelineSeriesInnerPointsInnerBuilder();
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
