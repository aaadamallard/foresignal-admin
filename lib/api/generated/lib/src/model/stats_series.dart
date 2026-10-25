//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stats_series_series_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_series.g.dart';

/// Time series of activity measures (038)
///
/// Properties:
/// * [from]
/// * [to]
/// * [bucket]
/// * [measure]
/// * [groupBy]
/// * [timeField]
/// * [backend]
/// * [series]
/// * [retainedFrom]
@BuiltValue()
abstract class StatsSeries implements Built<StatsSeries, StatsSeriesBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'bucket')
  String get bucket;

  @BuiltValueField(wireName: r'measure')
  StatsSeriesMeasureEnum get measure;
  // enum measureEnum {  versions,  entities,  firsts,  tombstones,  edges,  alerts,  };

  @BuiltValueField(wireName: r'groupBy')
  StatsSeriesGroupByEnum? get groupBy;
  // enum groupByEnum {  none,  source,  kind,  };

  @BuiltValueField(wireName: r'timeField')
  StatsSeriesTimeFieldEnum? get timeField;
  // enum timeFieldEnum {  ingested,  effective,  observed,  event,  };

  @BuiltValueField(wireName: r'backend')
  StatsSeriesBackendEnum get backend;
  // enum backendEnum {  rollup,  raw,  mixed,  };

  @BuiltValueField(wireName: r'series')
  BuiltList<StatsSeriesSeriesInner> get series;

  @BuiltValueField(wireName: r'retainedFrom')
  DateTime? get retainedFrom;

  StatsSeries._();

  factory StatsSeries([void updates(StatsSeriesBuilder b)]) = _$StatsSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsSeries> get serializer => _$StatsSeriesSerializer();
}

class _$StatsSeriesSerializer implements PrimitiveSerializer<StatsSeries> {
  @override
  final Iterable<Type> types = const [StatsSeries, _$StatsSeries];

  @override
  final String wireName = r'StatsSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsSeries object, {
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
    yield r'measure';
    yield serializers.serialize(
      object.measure,
      specifiedType: const FullType(StatsSeriesMeasureEnum),
    );
    if (object.groupBy != null) {
      yield r'groupBy';
      yield serializers.serialize(
        object.groupBy,
        specifiedType: const FullType(StatsSeriesGroupByEnum),
      );
    }
    if (object.timeField != null) {
      yield r'timeField';
      yield serializers.serialize(
        object.timeField,
        specifiedType: const FullType(StatsSeriesTimeFieldEnum),
      );
    }
    yield r'backend';
    yield serializers.serialize(
      object.backend,
      specifiedType: const FullType(StatsSeriesBackendEnum),
    );
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType: const FullType(BuiltList, [
        FullType(StatsSeriesSeriesInner),
      ]),
    );
    if (object.retainedFrom != null) {
      yield r'retainedFrom';
      yield serializers.serialize(
        object.retainedFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsSeries object, {
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
    required StatsSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
          break;
        case r'bucket':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.bucket = valueDes;
          break;
        case r'measure':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatsSeriesMeasureEnum),
                  )
                  as StatsSeriesMeasureEnum;
          result.measure = valueDes;
          break;
        case r'groupBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StatsSeriesGroupByEnum,
                    ),
                  )
                  as StatsSeriesGroupByEnum?;
          if (valueDes == null) continue;
          result.groupBy = valueDes;
          break;
        case r'timeField':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StatsSeriesTimeFieldEnum,
                    ),
                  )
                  as StatsSeriesTimeFieldEnum?;
          if (valueDes == null) continue;
          result.timeField = valueDes;
          break;
        case r'backend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatsSeriesBackendEnum),
                  )
                  as StatsSeriesBackendEnum;
          result.backend = valueDes;
          break;
        case r'series':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(StatsSeriesSeriesInner),
                    ]),
                  )
                  as BuiltList<StatsSeriesSeriesInner>;
          result.series.replace(valueDes);
          break;
        case r'retainedFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.retainedFrom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsSeriesBuilder();
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

class StatsSeriesMeasureEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'versions')
  static const StatsSeriesMeasureEnum versions =
      _$statsSeriesMeasureEnum_versions;
  @BuiltValueEnumConst(wireName: r'entities')
  static const StatsSeriesMeasureEnum entities =
      _$statsSeriesMeasureEnum_entities;
  @BuiltValueEnumConst(wireName: r'firsts')
  static const StatsSeriesMeasureEnum firsts = _$statsSeriesMeasureEnum_firsts;
  @BuiltValueEnumConst(wireName: r'tombstones')
  static const StatsSeriesMeasureEnum tombstones =
      _$statsSeriesMeasureEnum_tombstones;
  @BuiltValueEnumConst(wireName: r'edges')
  static const StatsSeriesMeasureEnum edges = _$statsSeriesMeasureEnum_edges;
  @BuiltValueEnumConst(wireName: r'alerts')
  static const StatsSeriesMeasureEnum alerts = _$statsSeriesMeasureEnum_alerts;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsSeriesMeasureEnum unknownDefaultOpenApi =
      _$statsSeriesMeasureEnum_unknownDefaultOpenApi;

  static Serializer<StatsSeriesMeasureEnum> get serializer =>
      _$statsSeriesMeasureEnumSerializer;

  const StatsSeriesMeasureEnum._(String name) : super(name);

  static BuiltSet<StatsSeriesMeasureEnum> get values =>
      _$statsSeriesMeasureEnumValues;
  static StatsSeriesMeasureEnum valueOf(String name) =>
      _$statsSeriesMeasureEnumValueOf(name);
}

class StatsSeriesGroupByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const StatsSeriesGroupByEnum none = _$statsSeriesGroupByEnum_none;
  @BuiltValueEnumConst(wireName: r'source')
  static const StatsSeriesGroupByEnum source_ =
      _$statsSeriesGroupByEnum_source_;
  @BuiltValueEnumConst(wireName: r'kind')
  static const StatsSeriesGroupByEnum kind = _$statsSeriesGroupByEnum_kind;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsSeriesGroupByEnum unknownDefaultOpenApi =
      _$statsSeriesGroupByEnum_unknownDefaultOpenApi;

  static Serializer<StatsSeriesGroupByEnum> get serializer =>
      _$statsSeriesGroupByEnumSerializer;

  const StatsSeriesGroupByEnum._(String name) : super(name);

  static BuiltSet<StatsSeriesGroupByEnum> get values =>
      _$statsSeriesGroupByEnumValues;
  static StatsSeriesGroupByEnum valueOf(String name) =>
      _$statsSeriesGroupByEnumValueOf(name);
}

class StatsSeriesTimeFieldEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ingested')
  static const StatsSeriesTimeFieldEnum ingested =
      _$statsSeriesTimeFieldEnum_ingested;
  @BuiltValueEnumConst(wireName: r'effective')
  static const StatsSeriesTimeFieldEnum effective =
      _$statsSeriesTimeFieldEnum_effective;
  @BuiltValueEnumConst(wireName: r'observed')
  static const StatsSeriesTimeFieldEnum observed =
      _$statsSeriesTimeFieldEnum_observed;
  @BuiltValueEnumConst(wireName: r'event')
  static const StatsSeriesTimeFieldEnum event =
      _$statsSeriesTimeFieldEnum_event;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsSeriesTimeFieldEnum unknownDefaultOpenApi =
      _$statsSeriesTimeFieldEnum_unknownDefaultOpenApi;

  static Serializer<StatsSeriesTimeFieldEnum> get serializer =>
      _$statsSeriesTimeFieldEnumSerializer;

  const StatsSeriesTimeFieldEnum._(String name) : super(name);

  static BuiltSet<StatsSeriesTimeFieldEnum> get values =>
      _$statsSeriesTimeFieldEnumValues;
  static StatsSeriesTimeFieldEnum valueOf(String name) =>
      _$statsSeriesTimeFieldEnumValueOf(name);
}

class StatsSeriesBackendEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rollup')
  static const StatsSeriesBackendEnum rollup = _$statsSeriesBackendEnum_rollup;
  @BuiltValueEnumConst(wireName: r'raw')
  static const StatsSeriesBackendEnum raw = _$statsSeriesBackendEnum_raw;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const StatsSeriesBackendEnum mixed = _$statsSeriesBackendEnum_mixed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsSeriesBackendEnum unknownDefaultOpenApi =
      _$statsSeriesBackendEnum_unknownDefaultOpenApi;

  static Serializer<StatsSeriesBackendEnum> get serializer =>
      _$statsSeriesBackendEnumSerializer;

  const StatsSeriesBackendEnum._(String name) : super(name);

  static BuiltSet<StatsSeriesBackendEnum> get values =>
      _$statsSeriesBackendEnumValues;
  static StatsSeriesBackendEnum valueOf(String name) =>
      _$statsSeriesBackendEnumValueOf(name);
}
