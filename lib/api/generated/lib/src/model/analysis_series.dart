//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/watch_pair.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_series.g.dart';

/// A registered analysis series that detectors run on
///
/// Properties:
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [enabled]
/// * [detectors]
/// * [frequency]
/// * [family] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
/// * [regionCode] - 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
/// * [watchPairs]
/// * [origin] - `auto` rows come from nightly auto-registration; `operator` rows are never removed automatically
/// * [createdAt]
/// * [lastRunAt]
/// * [lastError]
@BuiltValue()
abstract class AnalysisSeries
    implements Built<AnalysisSeries, AnalysisSeriesBuilder> {
  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'detectors')
  BuiltList<AnalysisSeriesDetectorsEnum> get detectors;
  // enum detectorsEnum {  changepoint-cusum,  changepoint-bocpd,  forecast,  };

  @BuiltValueField(wireName: r'frequency')
  AnalysisSeriesFrequencyEnum get frequency;
  // enum frequencyEnum {  hour,  day,  week,  };

  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'family')
  String? get family;

  /// 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'watchPairs')
  BuiltList<WatchPair>? get watchPairs;

  /// `auto` rows come from nightly auto-registration; `operator` rows are never removed automatically
  @BuiltValueField(wireName: r'origin')
  AnalysisSeriesOriginEnum get origin;
  // enum originEnum {  auto,  operator,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  AnalysisSeries._();

  factory AnalysisSeries([void updates(AnalysisSeriesBuilder b)]) =
      _$AnalysisSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisSeries> get serializer =>
      _$AnalysisSeriesSerializer();
}

class _$AnalysisSeriesSerializer
    implements PrimitiveSerializer<AnalysisSeries> {
  @override
  final Iterable<Type> types = const [AnalysisSeries, _$AnalysisSeries];

  @override
  final String wireName = r'AnalysisSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'detectors';
    yield serializers.serialize(
      object.detectors,
      specifiedType:
          const FullType(BuiltList, [FullType(AnalysisSeriesDetectorsEnum)]),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(AnalysisSeriesFrequencyEnum),
    );
    if (object.family != null) {
      yield r'family';
      yield serializers.serialize(
        object.family,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.watchPairs != null) {
      yield r'watchPairs';
      yield serializers.serialize(
        object.watchPairs,
        specifiedType: const FullType(BuiltList, [FullType(WatchPair)]),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(AnalysisSeriesOriginEnum),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeries object, {
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
    required AnalysisSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'detectors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(AnalysisSeriesDetectorsEnum)]),
          ) as BuiltList<AnalysisSeriesDetectorsEnum>;
          result.detectors.replace(valueDes);
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisSeriesFrequencyEnum),
          ) as AnalysisSeriesFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'family':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.family = valueDes;
          break;
        case r'regionCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'watchPairs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WatchPair)]),
          ) as BuiltList<WatchPair>?;
          if (valueDes == null) continue;
          result.watchPairs.replace(valueDes);
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisSeriesOriginEnum),
          ) as AnalysisSeriesOriginEnum;
          result.origin = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'lastRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisSeriesBuilder();
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

class AnalysisSeriesDetectorsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'changepoint-cusum')
  static const AnalysisSeriesDetectorsEnum changepointCusum =
      _$analysisSeriesDetectorsEnum_changepointCusum;
  @BuiltValueEnumConst(wireName: r'changepoint-bocpd')
  static const AnalysisSeriesDetectorsEnum changepointBocpd =
      _$analysisSeriesDetectorsEnum_changepointBocpd;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const AnalysisSeriesDetectorsEnum forecast =
      _$analysisSeriesDetectorsEnum_forecast;

  static Serializer<AnalysisSeriesDetectorsEnum> get serializer =>
      _$analysisSeriesDetectorsEnumSerializer;

  const AnalysisSeriesDetectorsEnum._(String name) : super(name);

  static BuiltSet<AnalysisSeriesDetectorsEnum> get values =>
      _$analysisSeriesDetectorsEnumValues;
  static AnalysisSeriesDetectorsEnum valueOf(String name) =>
      _$analysisSeriesDetectorsEnumValueOf(name);
}

class AnalysisSeriesFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour')
  static const AnalysisSeriesFrequencyEnum hour =
      _$analysisSeriesFrequencyEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const AnalysisSeriesFrequencyEnum day =
      _$analysisSeriesFrequencyEnum_day;
  @BuiltValueEnumConst(wireName: r'week')
  static const AnalysisSeriesFrequencyEnum week =
      _$analysisSeriesFrequencyEnum_week;

  static Serializer<AnalysisSeriesFrequencyEnum> get serializer =>
      _$analysisSeriesFrequencyEnumSerializer;

  const AnalysisSeriesFrequencyEnum._(String name) : super(name);

  static BuiltSet<AnalysisSeriesFrequencyEnum> get values =>
      _$analysisSeriesFrequencyEnumValues;
  static AnalysisSeriesFrequencyEnum valueOf(String name) =>
      _$analysisSeriesFrequencyEnumValueOf(name);
}

/// `auto` rows come from nightly auto-registration; `operator` rows are never removed automatically
class AnalysisSeriesOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const AnalysisSeriesOriginEnum auto = _$analysisSeriesOriginEnum_auto;
  @BuiltValueEnumConst(wireName: r'operator')
  static const AnalysisSeriesOriginEnum operator_ =
      _$analysisSeriesOriginEnum_operator_;

  static Serializer<AnalysisSeriesOriginEnum> get serializer =>
      _$analysisSeriesOriginEnumSerializer;

  const AnalysisSeriesOriginEnum._(String name) : super(name);

  static BuiltSet<AnalysisSeriesOriginEnum> get values =>
      _$analysisSeriesOriginEnumValues;
  static AnalysisSeriesOriginEnum valueOf(String name) =>
      _$analysisSeriesOriginEnumValueOf(name);
}
