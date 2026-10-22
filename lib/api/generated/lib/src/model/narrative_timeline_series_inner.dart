//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/narrative_timeline_series_inner_points_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_timeline_series_inner.g.dart';

/// One platform
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [points]
@BuiltValue()
abstract class NarrativeTimelineSeriesInner
    implements
        Built<
          NarrativeTimelineSeriesInner,
          NarrativeTimelineSeriesInnerBuilder
        > {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'points')
  BuiltList<NarrativeTimelineSeriesInnerPointsInner> get points;

  NarrativeTimelineSeriesInner._();

  factory NarrativeTimelineSeriesInner([
    void updates(NarrativeTimelineSeriesInnerBuilder b),
  ]) = _$NarrativeTimelineSeriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeTimelineSeriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeTimelineSeriesInner> get serializer =>
      _$NarrativeTimelineSeriesInnerSerializer();
}

class _$NarrativeTimelineSeriesInnerSerializer
    implements PrimitiveSerializer<NarrativeTimelineSeriesInner> {
  @override
  final Iterable<Type> types = const [
    NarrativeTimelineSeriesInner,
    _$NarrativeTimelineSeriesInner,
  ];

  @override
  final String wireName = r'NarrativeTimelineSeriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeTimelineSeriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [
        FullType(NarrativeTimelineSeriesInnerPointsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativeTimelineSeriesInner object, {
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
    required NarrativeTimelineSeriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'points':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NarrativeTimelineSeriesInnerPointsInner),
                    ]),
                  )
                  as BuiltList<NarrativeTimelineSeriesInnerPointsInner>;
          result.points.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativeTimelineSeriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeTimelineSeriesInnerBuilder();
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
