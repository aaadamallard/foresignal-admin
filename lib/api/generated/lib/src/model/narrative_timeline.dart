//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/narrative_timeline_series_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_timeline.g.dart';

/// Posts and unique authors per platform per interval for one narrative
///
/// Properties:
/// * [narrativeId] - ULID identifier
/// * [interval]
/// * [series]
@BuiltValue()
abstract class NarrativeTimeline
    implements Built<NarrativeTimeline, NarrativeTimelineBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'interval')
  NarrativeTimelineIntervalEnum get interval;
  // enum intervalEnum {  PT5M,  PT15M,  PT1H,  P1D,  };

  @BuiltValueField(wireName: r'series')
  BuiltList<NarrativeTimelineSeriesInner> get series;

  NarrativeTimeline._();

  factory NarrativeTimeline([void updates(NarrativeTimelineBuilder b)]) =
      _$NarrativeTimeline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeTimelineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeTimeline> get serializer =>
      _$NarrativeTimelineSerializer();
}

class _$NarrativeTimelineSerializer
    implements PrimitiveSerializer<NarrativeTimeline> {
  @override
  final Iterable<Type> types = const [NarrativeTimeline, _$NarrativeTimeline];

  @override
  final String wireName = r'NarrativeTimeline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeTimeline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(NarrativeTimelineIntervalEnum),
    );
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType:
          const FullType(BuiltList, [FullType(NarrativeTimelineSeriesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativeTimeline object, {
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
    required NarrativeTimelineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narrativeId = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NarrativeTimelineIntervalEnum),
          ) as NarrativeTimelineIntervalEnum;
          result.interval = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(NarrativeTimelineSeriesInner)]),
          ) as BuiltList<NarrativeTimelineSeriesInner>;
          result.series.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativeTimeline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeTimelineBuilder();
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

class NarrativeTimelineIntervalEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PT5M')
  static const NarrativeTimelineIntervalEnum PT5M =
      _$narrativeTimelineIntervalEnum_PT5M;
  @BuiltValueEnumConst(wireName: r'PT15M')
  static const NarrativeTimelineIntervalEnum PT15M =
      _$narrativeTimelineIntervalEnum_PT15M;
  @BuiltValueEnumConst(wireName: r'PT1H')
  static const NarrativeTimelineIntervalEnum PT1H =
      _$narrativeTimelineIntervalEnum_PT1H;
  @BuiltValueEnumConst(wireName: r'P1D')
  static const NarrativeTimelineIntervalEnum P1D =
      _$narrativeTimelineIntervalEnum_P1D;

  static Serializer<NarrativeTimelineIntervalEnum> get serializer =>
      _$narrativeTimelineIntervalEnumSerializer;

  const NarrativeTimelineIntervalEnum._(String name) : super(name);

  static BuiltSet<NarrativeTimelineIntervalEnum> get values =>
      _$narrativeTimelineIntervalEnumValues;
  static NarrativeTimelineIntervalEnum valueOf(String name) =>
      _$narrativeTimelineIntervalEnumValueOf(name);
}
