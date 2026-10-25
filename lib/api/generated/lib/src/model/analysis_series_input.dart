//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/watch_pair.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_series_input.g.dart';

/// Create or replace an operator analysis-series row (upsert by `ref`)
///
/// Properties:
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [enabled]
/// * [detectors]
/// * [frequency]
/// * [family] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
/// * [regionCode] - 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
/// * [watchPairs]
@BuiltValue()
abstract class AnalysisSeriesInput
    implements Built<AnalysisSeriesInput, AnalysisSeriesInputBuilder> {
  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'detectors')
  BuiltList<AnalysisSeriesInputDetectorsEnum>? get detectors;
  // enum detectorsEnum {  changepoint-cusum,  changepoint-bocpd,  forecast,  };

  @BuiltValueField(wireName: r'frequency')
  AnalysisSeriesInputFrequencyEnum? get frequency;
  // enum frequencyEnum {  hour,  day,  week,  };

  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'family')
  String? get family;

  /// 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'watchPairs')
  BuiltList<WatchPair>? get watchPairs;

  AnalysisSeriesInput._();

  factory AnalysisSeriesInput([void updates(AnalysisSeriesInputBuilder b)]) =
      _$AnalysisSeriesInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisSeriesInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisSeriesInput> get serializer =>
      _$AnalysisSeriesInputSerializer();
}

class _$AnalysisSeriesInputSerializer
    implements PrimitiveSerializer<AnalysisSeriesInput> {
  @override
  final Iterable<Type> types = const [
    AnalysisSeriesInput,
    _$AnalysisSeriesInput,
  ];

  @override
  final String wireName = r'AnalysisSeriesInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisSeriesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.detectors != null) {
      yield r'detectors';
      yield serializers.serialize(
        object.detectors,
        specifiedType: const FullType(BuiltList, [
          FullType(AnalysisSeriesInputDetectorsEnum),
        ]),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(AnalysisSeriesInputFrequencyEnum),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeriesInput object, {
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
    required AnalysisSeriesInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'detectors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnalysisSeriesInputDetectorsEnum),
                    ]),
                  )
                  as BuiltList<AnalysisSeriesInputDetectorsEnum>?;
          if (valueDes == null) continue;
          result.detectors.replace(valueDes);
          break;
        case r'frequency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalysisSeriesInputFrequencyEnum,
                    ),
                  )
                  as AnalysisSeriesInputFrequencyEnum?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.family = valueDes;
          break;
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'watchPairs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(WatchPair),
                    ]),
                  )
                  as BuiltList<WatchPair>?;
          if (valueDes == null) continue;
          result.watchPairs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisSeriesInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisSeriesInputBuilder();
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

class AnalysisSeriesInputDetectorsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'changepoint-cusum')
  static const AnalysisSeriesInputDetectorsEnum changepointCusum =
      _$analysisSeriesInputDetectorsEnum_changepointCusum;
  @BuiltValueEnumConst(wireName: r'changepoint-bocpd')
  static const AnalysisSeriesInputDetectorsEnum changepointBocpd =
      _$analysisSeriesInputDetectorsEnum_changepointBocpd;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const AnalysisSeriesInputDetectorsEnum forecast =
      _$analysisSeriesInputDetectorsEnum_forecast;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalysisSeriesInputDetectorsEnum unknownDefaultOpenApi =
      _$analysisSeriesInputDetectorsEnum_unknownDefaultOpenApi;

  static Serializer<AnalysisSeriesInputDetectorsEnum> get serializer =>
      _$analysisSeriesInputDetectorsEnumSerializer;

  const AnalysisSeriesInputDetectorsEnum._(String name) : super(name);

  static BuiltSet<AnalysisSeriesInputDetectorsEnum> get values =>
      _$analysisSeriesInputDetectorsEnumValues;
  static AnalysisSeriesInputDetectorsEnum valueOf(String name) =>
      _$analysisSeriesInputDetectorsEnumValueOf(name);
}

class AnalysisSeriesInputFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour')
  static const AnalysisSeriesInputFrequencyEnum hour =
      _$analysisSeriesInputFrequencyEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const AnalysisSeriesInputFrequencyEnum day =
      _$analysisSeriesInputFrequencyEnum_day;
  @BuiltValueEnumConst(wireName: r'week')
  static const AnalysisSeriesInputFrequencyEnum week =
      _$analysisSeriesInputFrequencyEnum_week;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalysisSeriesInputFrequencyEnum unknownDefaultOpenApi =
      _$analysisSeriesInputFrequencyEnum_unknownDefaultOpenApi;

  static Serializer<AnalysisSeriesInputFrequencyEnum> get serializer =>
      _$analysisSeriesInputFrequencyEnumSerializer;

  const AnalysisSeriesInputFrequencyEnum._(String name) : super(name);

  static BuiltSet<AnalysisSeriesInputFrequencyEnum> get values =>
      _$analysisSeriesInputFrequencyEnumValues;
  static AnalysisSeriesInputFrequencyEnum valueOf(String name) =>
      _$analysisSeriesInputFrequencyEnumValueOf(name);
}
