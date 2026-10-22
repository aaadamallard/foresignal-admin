//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/series_forecast_forecasts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_forecast.g.dart';

/// Latest method-selected quantile forecasts for one series (`series-forecast` 1.0.0)
///
/// Properties:
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [method]
/// * [version]
/// * [madeAt]
/// * [asOfSeq]
/// * [manifestId] - ULID identifier
/// * [units] - `standardised` for LOCAL_ONLY series when the caller may not see local values
/// * [unit]
/// * [forecasts]
/// * [questionIds] - Ledger questions opened for this series
/// * [caveats]
@BuiltValue()
abstract class SeriesForecast
    implements Built<SeriesForecast, SeriesForecastBuilder> {
  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'method')
  SeriesForecastMethodEnum get method;
  // enum methodEnum {  seasonal-naive,  ets-ann,  ets-aaa,  nb-glm,  damped-trend,  };

  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'madeAt')
  DateTime get madeAt;

  @BuiltValueField(wireName: r'asOfSeq')
  int get asOfSeq;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  /// `standardised` for LOCAL_ONLY series when the caller may not see local values
  @BuiltValueField(wireName: r'units')
  SeriesForecastUnitsEnum get units;
  // enum unitsEnum {  native,  standardised,  };

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'forecasts')
  BuiltList<SeriesForecastForecastsInner> get forecasts;

  /// Ledger questions opened for this series
  @BuiltValueField(wireName: r'questionIds')
  BuiltList<String>? get questionIds;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  SeriesForecast._();

  factory SeriesForecast([void updates(SeriesForecastBuilder b)]) =
      _$SeriesForecast;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesForecastBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesForecast> get serializer =>
      _$SeriesForecastSerializer();
}

class _$SeriesForecastSerializer
    implements PrimitiveSerializer<SeriesForecast> {
  @override
  final Iterable<Type> types = const [SeriesForecast, _$SeriesForecast];

  @override
  final String wireName = r'SeriesForecast';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesForecast object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(SeriesForecastMethodEnum),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'madeAt';
    yield serializers.serialize(
      object.madeAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'asOfSeq';
    yield serializers.serialize(
      object.asOfSeq,
      specifiedType: const FullType(int),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'units';
    yield serializers.serialize(
      object.units,
      specifiedType: const FullType(SeriesForecastUnitsEnum),
    );
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'forecasts';
    yield serializers.serialize(
      object.forecasts,
      specifiedType: const FullType(BuiltList, [
        FullType(SeriesForecastForecastsInner),
      ]),
    );
    if (object.questionIds != null) {
      yield r'questionIds';
      yield serializers.serialize(
        object.questionIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecast object, {
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
    required SeriesForecastBuilder result,
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
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesForecastMethodEnum),
                  )
                  as SeriesForecastMethodEnum;
          result.method = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'madeAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.madeAt = valueDes;
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.asOfSeq = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesForecastUnitsEnum),
                  )
                  as SeriesForecastUnitsEnum;
          result.units = valueDes;
          break;
        case r'unit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'forecasts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SeriesForecastForecastsInner),
                    ]),
                  )
                  as BuiltList<SeriesForecastForecastsInner>;
          result.forecasts.replace(valueDes);
          break;
        case r'questionIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.questionIds.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesForecast deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesForecastBuilder();
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

class SeriesForecastMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'seasonal-naive')
  static const SeriesForecastMethodEnum seasonalNaive =
      _$seriesForecastMethodEnum_seasonalNaive;
  @BuiltValueEnumConst(wireName: r'ets-ann')
  static const SeriesForecastMethodEnum etsAnn =
      _$seriesForecastMethodEnum_etsAnn;
  @BuiltValueEnumConst(wireName: r'ets-aaa')
  static const SeriesForecastMethodEnum etsAaa =
      _$seriesForecastMethodEnum_etsAaa;
  @BuiltValueEnumConst(wireName: r'nb-glm')
  static const SeriesForecastMethodEnum nbGlm =
      _$seriesForecastMethodEnum_nbGlm;
  @BuiltValueEnumConst(wireName: r'damped-trend')
  static const SeriesForecastMethodEnum dampedTrend =
      _$seriesForecastMethodEnum_dampedTrend;

  static Serializer<SeriesForecastMethodEnum> get serializer =>
      _$seriesForecastMethodEnumSerializer;

  const SeriesForecastMethodEnum._(String name) : super(name);

  static BuiltSet<SeriesForecastMethodEnum> get values =>
      _$seriesForecastMethodEnumValues;
  static SeriesForecastMethodEnum valueOf(String name) =>
      _$seriesForecastMethodEnumValueOf(name);
}

/// `standardised` for LOCAL_ONLY series when the caller may not see local values
class SeriesForecastUnitsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'native')
  static const SeriesForecastUnitsEnum native_ =
      _$seriesForecastUnitsEnum_native_;
  @BuiltValueEnumConst(wireName: r'standardised')
  static const SeriesForecastUnitsEnum standardised =
      _$seriesForecastUnitsEnum_standardised;

  static Serializer<SeriesForecastUnitsEnum> get serializer =>
      _$seriesForecastUnitsEnumSerializer;

  const SeriesForecastUnitsEnum._(String name) : super(name);

  static BuiltSet<SeriesForecastUnitsEnum> get values =>
      _$seriesForecastUnitsEnumValues;
  static SeriesForecastUnitsEnum valueOf(String name) =>
      _$seriesForecastUnitsEnumValueOf(name);
}
