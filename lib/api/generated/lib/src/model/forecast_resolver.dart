//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_selector.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/resolver_area.dart';
import 'package:foresignal_api/src/model/situation_status.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_resolver.g.dart';

/// Machine resolver (pure, versioned, validated) or `{type: manual}`; shown verbatim to every forecaster
///
/// Properties:
/// * [type]
/// * [selector]
/// * [area]
/// * [window]
/// * [op] - count-threshold, series-value (omit op and threshold for a numeric question)
/// * [threshold] - count-threshold, series-value (omit op and threshold for a numeric question: a series-value aggregate, or since 126 a count-threshold count; a referenceFamily selector then counts the events in its reference history, one source per region)
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [period] - series-value: a single period, e.g. `2026-11` or `2026-W45`
/// * [aggregate] - series-value
/// * [ruleId] - alert-fired: 017 rule id
/// * [situationId] - ULID identifier
/// * [status]
/// * [minSeverity]
/// * [setId] - ULID identifier
/// * [version] - Resolver version (server-set)
@BuiltValue()
abstract class ForecastResolver
    implements Built<ForecastResolver, ForecastResolverBuilder> {
  @BuiltValueField(wireName: r'type')
  ForecastResolverTypeEnum get type;
  // enum typeEnum {  event-exists,  count-threshold,  series-value,  alert-fired,  situation-status,  hypothesis-outcome,  manual,  };

  @BuiltValueField(wireName: r'selector')
  EventSelector? get selector;

  @BuiltValueField(wireName: r'area')
  ResolverArea? get area;

  @BuiltValueField(wireName: r'window')
  TimeRange? get window;

  /// count-threshold, series-value (omit op and threshold for a numeric question)
  @BuiltValueField(wireName: r'op')
  ForecastResolverOpEnum? get op;
  // enum opEnum {  gt,  gte,  lt,  lte,  eq,  };

  /// count-threshold, series-value (omit op and threshold for a numeric question: a series-value aggregate, or since 126 a count-threshold count; a referenceFamily selector then counts the events in its reference history, one source per region)
  @BuiltValueField(wireName: r'threshold')
  num? get threshold;

  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  /// series-value: a single period, e.g. `2026-11` or `2026-W45`
  @BuiltValueField(wireName: r'period')
  String? get period;

  /// series-value
  @BuiltValueField(wireName: r'aggregate')
  ForecastResolverAggregateEnum? get aggregate;
  // enum aggregateEnum {  last,  mean,  max,  sum,  };

  /// alert-fired: 017 rule id
  @BuiltValueField(wireName: r'ruleId')
  String? get ruleId;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'status')
  SituationStatus? get status;
  // enum statusEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'minSeverity')
  Severity? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String? get setId;

  /// Resolver version (server-set)
  @BuiltValueField(wireName: r'version')
  String? get version;

  ForecastResolver._();

  factory ForecastResolver([void updates(ForecastResolverBuilder b)]) =
      _$ForecastResolver;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastResolverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastResolver> get serializer =>
      _$ForecastResolverSerializer();
}

class _$ForecastResolverSerializer
    implements PrimitiveSerializer<ForecastResolver> {
  @override
  final Iterable<Type> types = const [ForecastResolver, _$ForecastResolver];

  @override
  final String wireName = r'ForecastResolver';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastResolver object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ForecastResolverTypeEnum),
    );
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(EventSelector),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType(ResolverArea),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(TimeRange),
      );
    }
    if (object.op != null) {
      yield r'op';
      yield serializers.serialize(
        object.op,
        specifiedType: const FullType(ForecastResolverOpEnum),
      );
    }
    if (object.threshold != null) {
      yield r'threshold';
      yield serializers.serialize(
        object.threshold,
        specifiedType: const FullType(num),
      );
    }
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(String),
      );
    }
    if (object.aggregate != null) {
      yield r'aggregate';
      yield serializers.serialize(
        object.aggregate,
        specifiedType: const FullType(ForecastResolverAggregateEnum),
      );
    }
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SituationStatus),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(Severity),
      );
    }
    if (object.setId != null) {
      yield r'setId';
      yield serializers.serialize(
        object.setId,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastResolver object, {
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
    required ForecastResolverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ForecastResolverTypeEnum),
          ) as ForecastResolverTypeEnum;
          result.type = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EventSelector),
          ) as EventSelector?;
          if (valueDes == null) continue;
          result.selector.replace(valueDes);
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResolverArea),
          ) as ResolverArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimeRange),
          ) as TimeRange?;
          if (valueDes == null) continue;
          result.window.replace(valueDes);
          break;
        case r'op':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ForecastResolverOpEnum),
          ) as ForecastResolverOpEnum?;
          if (valueDes == null) continue;
          result.op = valueDes;
          break;
        case r'threshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.threshold = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.period = valueDes;
          break;
        case r'aggregate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ForecastResolverAggregateEnum),
          ) as ForecastResolverAggregateEnum?;
          if (valueDes == null) continue;
          result.aggregate = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ruleId = valueDes;
          break;
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SituationStatus),
          ) as SituationStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Severity),
          ) as Severity?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'setId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.setId = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastResolver deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastResolverBuilder();
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

class ForecastResolverTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event-exists')
  static const ForecastResolverTypeEnum eventExists =
      _$forecastResolverTypeEnum_eventExists;
  @BuiltValueEnumConst(wireName: r'count-threshold')
  static const ForecastResolverTypeEnum countThreshold =
      _$forecastResolverTypeEnum_countThreshold;
  @BuiltValueEnumConst(wireName: r'series-value')
  static const ForecastResolverTypeEnum seriesValue =
      _$forecastResolverTypeEnum_seriesValue;
  @BuiltValueEnumConst(wireName: r'alert-fired')
  static const ForecastResolverTypeEnum alertFired =
      _$forecastResolverTypeEnum_alertFired;
  @BuiltValueEnumConst(wireName: r'situation-status')
  static const ForecastResolverTypeEnum situationStatus =
      _$forecastResolverTypeEnum_situationStatus;
  @BuiltValueEnumConst(wireName: r'hypothesis-outcome')
  static const ForecastResolverTypeEnum hypothesisOutcome =
      _$forecastResolverTypeEnum_hypothesisOutcome;
  @BuiltValueEnumConst(wireName: r'manual')
  static const ForecastResolverTypeEnum manual =
      _$forecastResolverTypeEnum_manual;

  static Serializer<ForecastResolverTypeEnum> get serializer =>
      _$forecastResolverTypeEnumSerializer;

  const ForecastResolverTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastResolverTypeEnum> get values =>
      _$forecastResolverTypeEnumValues;
  static ForecastResolverTypeEnum valueOf(String name) =>
      _$forecastResolverTypeEnumValueOf(name);
}

/// count-threshold, series-value (omit op and threshold for a numeric question)
class ForecastResolverOpEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'gt')
  static const ForecastResolverOpEnum gt = _$forecastResolverOpEnum_gt;
  @BuiltValueEnumConst(wireName: r'gte')
  static const ForecastResolverOpEnum gte = _$forecastResolverOpEnum_gte;
  @BuiltValueEnumConst(wireName: r'lt')
  static const ForecastResolverOpEnum lt = _$forecastResolverOpEnum_lt;
  @BuiltValueEnumConst(wireName: r'lte')
  static const ForecastResolverOpEnum lte = _$forecastResolverOpEnum_lte;
  @BuiltValueEnumConst(wireName: r'eq')
  static const ForecastResolverOpEnum eq = _$forecastResolverOpEnum_eq;

  static Serializer<ForecastResolverOpEnum> get serializer =>
      _$forecastResolverOpEnumSerializer;

  const ForecastResolverOpEnum._(String name) : super(name);

  static BuiltSet<ForecastResolverOpEnum> get values =>
      _$forecastResolverOpEnumValues;
  static ForecastResolverOpEnum valueOf(String name) =>
      _$forecastResolverOpEnumValueOf(name);
}

/// series-value
class ForecastResolverAggregateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'last')
  static const ForecastResolverAggregateEnum last =
      _$forecastResolverAggregateEnum_last;
  @BuiltValueEnumConst(wireName: r'mean')
  static const ForecastResolverAggregateEnum mean =
      _$forecastResolverAggregateEnum_mean;
  @BuiltValueEnumConst(wireName: r'max')
  static const ForecastResolverAggregateEnum max =
      _$forecastResolverAggregateEnum_max;
  @BuiltValueEnumConst(wireName: r'sum')
  static const ForecastResolverAggregateEnum sum =
      _$forecastResolverAggregateEnum_sum;

  static Serializer<ForecastResolverAggregateEnum> get serializer =>
      _$forecastResolverAggregateEnumSerializer;

  const ForecastResolverAggregateEnum._(String name) : super(name);

  static BuiltSet<ForecastResolverAggregateEnum> get values =>
      _$forecastResolverAggregateEnumValues;
  static ForecastResolverAggregateEnum valueOf(String name) =>
      _$forecastResolverAggregateEnumValueOf(name);
}
