//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/timeline_bucket.dart';
import 'package:foresignal_api/src/model/timeline_alerts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline.g.dart';

/// Event-density histogram for scrubbers (037)
///
/// Properties:
/// * [from]
/// * [to]
/// * [bucket]
/// * [timeField]
/// * [measure]
/// * [groupBy]
/// * [buckets]
/// * [alerts] - Alert counts per bucket by severity, parallel to `buckets` (only with includeAlerts)
/// * [maxBucket]
/// * [approximate]
/// * [retainedFrom]
/// * [backend] - 038 serves ingested ranges older than retention from the rollup
@BuiltValue()
abstract class Timeline implements Built<Timeline, TimelineBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'bucket')
  String get bucket;

  @BuiltValueField(wireName: r'timeField')
  TimelineTimeFieldEnum get timeField;
  // enum timeFieldEnum {  effective,  observed,  event,  ingested,  };

  @BuiltValueField(wireName: r'measure')
  TimelineMeasureEnum? get measure;
  // enum measureEnum {  versions,  entities,  };

  @BuiltValueField(wireName: r'groupBy')
  TimelineGroupByEnum? get groupBy;
  // enum groupByEnum {  none,  kind,  source,  };

  @BuiltValueField(wireName: r'buckets')
  BuiltList<TimelineBucket> get buckets;

  /// Alert counts per bucket by severity, parallel to `buckets` (only with includeAlerts)
  @BuiltValueField(wireName: r'alerts')
  BuiltList<TimelineAlertsInner>? get alerts;

  @BuiltValueField(wireName: r'maxBucket')
  int? get maxBucket;

  @BuiltValueField(wireName: r'approximate')
  bool? get approximate;

  @BuiltValueField(wireName: r'retainedFrom')
  DateTime? get retainedFrom;

  /// 038 serves ingested ranges older than retention from the rollup
  @BuiltValueField(wireName: r'backend')
  TimelineBackendEnum? get backend;
  // enum backendEnum {  raw,  rollup,  mixed,  };

  Timeline._();

  factory Timeline([void updates(TimelineBuilder b)]) = _$Timeline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Timeline> get serializer => _$TimelineSerializer();
}

class _$TimelineSerializer implements PrimitiveSerializer<Timeline> {
  @override
  final Iterable<Type> types = const [Timeline, _$Timeline];

  @override
  final String wireName = r'Timeline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Timeline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    yield r'bucket';
    yield serializers.serialize(
      object.bucket,
      specifiedType: const FullType(String),
    );
    yield r'timeField';
    yield serializers.serialize(
      object.timeField,
      specifiedType: const FullType(TimelineTimeFieldEnum),
    );
    if (object.measure != null) {
      yield r'measure';
      yield serializers.serialize(
        object.measure,
        specifiedType: const FullType(TimelineMeasureEnum),
      );
    }
    if (object.groupBy != null) {
      yield r'groupBy';
      yield serializers.serialize(
        object.groupBy,
        specifiedType: const FullType(TimelineGroupByEnum),
      );
    }
    yield r'buckets';
    yield serializers.serialize(
      object.buckets,
      specifiedType: const FullType(BuiltList, [FullType(TimelineBucket)]),
    );
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType:
            const FullType(BuiltList, [FullType(TimelineAlertsInner)]),
      );
    }
    if (object.maxBucket != null) {
      yield r'maxBucket';
      yield serializers.serialize(
        object.maxBucket,
        specifiedType: const FullType(int),
      );
    }
    if (object.approximate != null) {
      yield r'approximate';
      yield serializers.serialize(
        object.approximate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.retainedFrom != null) {
      yield r'retainedFrom';
      yield serializers.serialize(
        object.retainedFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.backend != null) {
      yield r'backend';
      yield serializers.serialize(
        object.backend,
        specifiedType: const FullType(TimelineBackendEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Timeline object, {
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
    required TimelineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.to = valueDes;
          break;
        case r'bucket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bucket = valueDes;
          break;
        case r'timeField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimelineTimeFieldEnum),
          ) as TimelineTimeFieldEnum;
          result.timeField = valueDes;
          break;
        case r'measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimelineMeasureEnum),
          ) as TimelineMeasureEnum?;
          if (valueDes == null) continue;
          result.measure = valueDes;
          break;
        case r'groupBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimelineGroupByEnum),
          ) as TimelineGroupByEnum?;
          if (valueDes == null) continue;
          result.groupBy = valueDes;
          break;
        case r'buckets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TimelineBucket)]),
          ) as BuiltList<TimelineBucket>;
          result.buckets.replace(valueDes);
          break;
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(TimelineAlertsInner)]),
          ) as BuiltList<TimelineAlertsInner>?;
          if (valueDes == null) continue;
          result.alerts.replace(valueDes);
          break;
        case r'maxBucket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxBucket = valueDes;
          break;
        case r'approximate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.approximate = valueDes;
          break;
        case r'retainedFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.retainedFrom = valueDes;
          break;
        case r'backend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimelineBackendEnum),
          ) as TimelineBackendEnum?;
          if (valueDes == null) continue;
          result.backend = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Timeline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineBuilder();
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

class TimelineTimeFieldEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'effective')
  static const TimelineTimeFieldEnum effective =
      _$timelineTimeFieldEnum_effective;
  @BuiltValueEnumConst(wireName: r'observed')
  static const TimelineTimeFieldEnum observed =
      _$timelineTimeFieldEnum_observed;
  @BuiltValueEnumConst(wireName: r'event')
  static const TimelineTimeFieldEnum event = _$timelineTimeFieldEnum_event;
  @BuiltValueEnumConst(wireName: r'ingested')
  static const TimelineTimeFieldEnum ingested =
      _$timelineTimeFieldEnum_ingested;

  static Serializer<TimelineTimeFieldEnum> get serializer =>
      _$timelineTimeFieldEnumSerializer;

  const TimelineTimeFieldEnum._(String name) : super(name);

  static BuiltSet<TimelineTimeFieldEnum> get values =>
      _$timelineTimeFieldEnumValues;
  static TimelineTimeFieldEnum valueOf(String name) =>
      _$timelineTimeFieldEnumValueOf(name);
}

class TimelineMeasureEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'versions')
  static const TimelineMeasureEnum versions = _$timelineMeasureEnum_versions;
  @BuiltValueEnumConst(wireName: r'entities')
  static const TimelineMeasureEnum entities = _$timelineMeasureEnum_entities;

  static Serializer<TimelineMeasureEnum> get serializer =>
      _$timelineMeasureEnumSerializer;

  const TimelineMeasureEnum._(String name) : super(name);

  static BuiltSet<TimelineMeasureEnum> get values =>
      _$timelineMeasureEnumValues;
  static TimelineMeasureEnum valueOf(String name) =>
      _$timelineMeasureEnumValueOf(name);
}

class TimelineGroupByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const TimelineGroupByEnum none = _$timelineGroupByEnum_none;
  @BuiltValueEnumConst(wireName: r'kind')
  static const TimelineGroupByEnum kind = _$timelineGroupByEnum_kind;
  @BuiltValueEnumConst(wireName: r'source')
  static const TimelineGroupByEnum source_ = _$timelineGroupByEnum_source_;

  static Serializer<TimelineGroupByEnum> get serializer =>
      _$timelineGroupByEnumSerializer;

  const TimelineGroupByEnum._(String name) : super(name);

  static BuiltSet<TimelineGroupByEnum> get values =>
      _$timelineGroupByEnumValues;
  static TimelineGroupByEnum valueOf(String name) =>
      _$timelineGroupByEnumValueOf(name);
}

/// 038 serves ingested ranges older than retention from the rollup
class TimelineBackendEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'raw')
  static const TimelineBackendEnum raw = _$timelineBackendEnum_raw;
  @BuiltValueEnumConst(wireName: r'rollup')
  static const TimelineBackendEnum rollup = _$timelineBackendEnum_rollup;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const TimelineBackendEnum mixed = _$timelineBackendEnum_mixed;

  static Serializer<TimelineBackendEnum> get serializer =>
      _$timelineBackendEnumSerializer;

  const TimelineBackendEnum._(String name) : super(name);

  static BuiltSet<TimelineBackendEnum> get values =>
      _$timelineBackendEnumValues;
  static TimelineBackendEnum valueOf(String name) =>
      _$timelineBackendEnumValueOf(name);
}
