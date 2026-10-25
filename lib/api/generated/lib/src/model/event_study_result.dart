//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_study_result_events_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/event_study_result_caar.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/event_study_result_windows.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_result.g.dart';

/// Result of an event study (the `result` of a 103 job of type `event-study`)
///
/// Properties:
/// * [detector]
/// * [definitionHash]
/// * [target] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [frequency]
/// * [transform]
/// * [windows]
/// * [range]
/// * [asOfSeq]
/// * [placeboSeed] - Deterministic seed (hash of definition and range)
/// * [nEvents]
/// * [nClusters]
/// * [nExcluded]
/// * [events]
/// * [caar]
/// * [caveats] - 103 caveats plus `FEW_EVENTS`, `LAGGED_PUBLICATION`, `DAILY_RESOLUTION_ONLY`
/// * [valuesWithheld]
/// * [truncated]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class EventStudyResult
    implements Built<EventStudyResult, EventStudyResultBuilder> {
  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  @BuiltValueField(wireName: r'definitionHash')
  String? get definitionHash;

  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'target')
  String get target;

  @BuiltValueField(wireName: r'frequency')
  EventStudyResultFrequencyEnum get frequency;
  // enum frequencyEnum {  day,  week,  };

  @BuiltValueField(wireName: r'transform')
  EventStudyResultTransformEnum? get transform;
  // enum transformEnum {  log-return,  log-level-standardised,  weekly-difference-standardised,  anscombe-residual,  };

  @BuiltValueField(wireName: r'windows')
  EventStudyResultWindows get windows;

  @BuiltValueField(wireName: r'range')
  TimeRange? get range;

  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  /// Deterministic seed (hash of definition and range)
  @BuiltValueField(wireName: r'placeboSeed')
  String? get placeboSeed;

  @BuiltValueField(wireName: r'nEvents')
  int get nEvents;

  @BuiltValueField(wireName: r'nClusters')
  int? get nClusters;

  @BuiltValueField(wireName: r'nExcluded')
  int? get nExcluded;

  @BuiltValueField(wireName: r'events')
  BuiltList<EventStudyResultEventsInner> get events;

  @BuiltValueField(wireName: r'caar')
  EventStudyResultCaar get caar;

  /// 103 caveats plus `FEW_EVENTS`, `LAGGED_PUBLICATION`, `DAILY_RESOLUTION_ONLY`
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  @BuiltValueField(wireName: r'valuesWithheld')
  bool? get valuesWithheld;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  EventStudyResult._();

  factory EventStudyResult([void updates(EventStudyResultBuilder b)]) =
      _$EventStudyResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyResult> get serializer =>
      _$EventStudyResultSerializer();
}

class _$EventStudyResultSerializer
    implements PrimitiveSerializer<EventStudyResult> {
  @override
  final Iterable<Type> types = const [EventStudyResult, _$EventStudyResult];

  @override
  final String wireName = r'EventStudyResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    if (object.definitionHash != null) {
      yield r'definitionHash';
      yield serializers.serialize(
        object.definitionHash,
        specifiedType: const FullType(String),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(String),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(EventStudyResultFrequencyEnum),
    );
    if (object.transform != null) {
      yield r'transform';
      yield serializers.serialize(
        object.transform,
        specifiedType: const FullType(EventStudyResultTransformEnum),
      );
    }
    yield r'windows';
    yield serializers.serialize(
      object.windows,
      specifiedType: const FullType(EventStudyResultWindows),
    );
    if (object.range != null) {
      yield r'range';
      yield serializers.serialize(
        object.range,
        specifiedType: const FullType(TimeRange),
      );
    }
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.placeboSeed != null) {
      yield r'placeboSeed';
      yield serializers.serialize(
        object.placeboSeed,
        specifiedType: const FullType(String),
      );
    }
    yield r'nEvents';
    yield serializers.serialize(
      object.nEvents,
      specifiedType: const FullType(int),
    );
    if (object.nClusters != null) {
      yield r'nClusters';
      yield serializers.serialize(
        object.nClusters,
        specifiedType: const FullType(int),
      );
    }
    if (object.nExcluded != null) {
      yield r'nExcluded';
      yield serializers.serialize(
        object.nExcluded,
        specifiedType: const FullType(int),
      );
    }
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [
        FullType(EventStudyResultEventsInner),
      ]),
    );
    yield r'caar';
    yield serializers.serialize(
      object.caar,
      specifiedType: const FullType(EventStudyResultCaar),
    );
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    if (object.valuesWithheld != null) {
      yield r'valuesWithheld';
      yield serializers.serialize(
        object.valuesWithheld,
        specifiedType: const FullType(bool),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResult object, {
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
    required EventStudyResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DetectorRef),
                  )
                  as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'definitionHash':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.definitionHash = valueDes;
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.target = valueDes;
          break;
        case r'frequency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      EventStudyResultFrequencyEnum,
                    ),
                  )
                  as EventStudyResultFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'transform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EventStudyResultTransformEnum,
                    ),
                  )
                  as EventStudyResultTransformEnum?;
          if (valueDes == null) continue;
          result.transform = valueDes;
          break;
        case r'windows':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventStudyResultWindows),
                  )
                  as EventStudyResultWindows;
          result.windows.replace(valueDes);
          break;
        case r'range':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TimeRange),
                  )
                  as TimeRange?;
          if (valueDes == null) continue;
          result.range.replace(valueDes);
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'placeboSeed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeboSeed = valueDes;
          break;
        case r'nEvents':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nEvents = valueDes;
          break;
        case r'nClusters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nClusters = valueDes;
          break;
        case r'nExcluded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nExcluded = valueDes;
          break;
        case r'events':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(EventStudyResultEventsInner),
                    ]),
                  )
                  as BuiltList<EventStudyResultEventsInner>;
          result.events.replace(valueDes);
          break;
        case r'caar':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventStudyResultCaar),
                  )
                  as EventStudyResultCaar;
          result.caar.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        case r'valuesWithheld':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.valuesWithheld = valueDes;
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
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyResultBuilder();
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

class EventStudyResultFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'day')
  static const EventStudyResultFrequencyEnum day =
      _$eventStudyResultFrequencyEnum_day;
  @BuiltValueEnumConst(wireName: r'week')
  static const EventStudyResultFrequencyEnum week =
      _$eventStudyResultFrequencyEnum_week;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EventStudyResultFrequencyEnum unknownDefaultOpenApi =
      _$eventStudyResultFrequencyEnum_unknownDefaultOpenApi;

  static Serializer<EventStudyResultFrequencyEnum> get serializer =>
      _$eventStudyResultFrequencyEnumSerializer;

  const EventStudyResultFrequencyEnum._(String name) : super(name);

  static BuiltSet<EventStudyResultFrequencyEnum> get values =>
      _$eventStudyResultFrequencyEnumValues;
  static EventStudyResultFrequencyEnum valueOf(String name) =>
      _$eventStudyResultFrequencyEnumValueOf(name);
}

class EventStudyResultTransformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'log-return')
  static const EventStudyResultTransformEnum logReturn =
      _$eventStudyResultTransformEnum_logReturn;
  @BuiltValueEnumConst(wireName: r'log-level-standardised')
  static const EventStudyResultTransformEnum logLevelStandardised =
      _$eventStudyResultTransformEnum_logLevelStandardised;
  @BuiltValueEnumConst(wireName: r'weekly-difference-standardised')
  static const EventStudyResultTransformEnum weeklyDifferenceStandardised =
      _$eventStudyResultTransformEnum_weeklyDifferenceStandardised;
  @BuiltValueEnumConst(wireName: r'anscombe-residual')
  static const EventStudyResultTransformEnum anscombeResidual =
      _$eventStudyResultTransformEnum_anscombeResidual;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EventStudyResultTransformEnum unknownDefaultOpenApi =
      _$eventStudyResultTransformEnum_unknownDefaultOpenApi;

  static Serializer<EventStudyResultTransformEnum> get serializer =>
      _$eventStudyResultTransformEnumSerializer;

  const EventStudyResultTransformEnum._(String name) : super(name);

  static BuiltSet<EventStudyResultTransformEnum> get values =>
      _$eventStudyResultTransformEnumValues;
  static EventStudyResultTransformEnum valueOf(String name) =>
      _$eventStudyResultTransformEnumValueOf(name);
}
