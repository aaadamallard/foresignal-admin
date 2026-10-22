//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/series_forecast_model_backtest.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_forecast_model.g.dart';

/// Selected forecasting method for a series and its rolling-origin backtest
///
/// Properties:
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [method]
/// * [params]
/// * [backtest]
/// * [selectedAt]
/// * [nextSelectionAt]
/// * [version]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class SeriesForecastModel
    implements Built<SeriesForecastModel, SeriesForecastModelBuilder> {
  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'method')
  SeriesForecastModelMethodEnum get method;
  // enum methodEnum {  seasonal-naive,  ets-ann,  ets-aaa,  nb-glm,  damped-trend,  };

  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  @BuiltValueField(wireName: r'backtest')
  SeriesForecastModelBacktest get backtest;

  @BuiltValueField(wireName: r'selectedAt')
  DateTime get selectedAt;

  @BuiltValueField(wireName: r'nextSelectionAt')
  DateTime? get nextSelectionAt;

  @BuiltValueField(wireName: r'version')
  String get version;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  SeriesForecastModel._();

  factory SeriesForecastModel([void updates(SeriesForecastModelBuilder b)]) =
      _$SeriesForecastModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesForecastModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesForecastModel> get serializer =>
      _$SeriesForecastModelSerializer();
}

class _$SeriesForecastModelSerializer
    implements PrimitiveSerializer<SeriesForecastModel> {
  @override
  final Iterable<Type> types = const [
    SeriesForecastModel,
    _$SeriesForecastModel,
  ];

  @override
  final String wireName = r'SeriesForecastModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesForecastModel object, {
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
      specifiedType: const FullType(SeriesForecastModelMethodEnum),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'backtest';
    yield serializers.serialize(
      object.backtest,
      specifiedType: const FullType(SeriesForecastModelBacktest),
    );
    yield r'selectedAt';
    yield serializers.serialize(
      object.selectedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.nextSelectionAt != null) {
      yield r'nextSelectionAt';
      yield serializers.serialize(
        object.nextSelectionAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastModel object, {
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
    required SeriesForecastModelBuilder result,
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
                    specifiedType: const FullType(
                      SeriesForecastModelMethodEnum,
                    ),
                  )
                  as SeriesForecastModelMethodEnum;
          result.method = valueDes;
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        case r'backtest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesForecastModelBacktest),
                  )
                  as SeriesForecastModelBacktest;
          result.backtest.replace(valueDes);
          break;
        case r'selectedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.selectedAt = valueDes;
          break;
        case r'nextSelectionAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.nextSelectionAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesForecastModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesForecastModelBuilder();
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

class SeriesForecastModelMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'seasonal-naive')
  static const SeriesForecastModelMethodEnum seasonalNaive =
      _$seriesForecastModelMethodEnum_seasonalNaive;
  @BuiltValueEnumConst(wireName: r'ets-ann')
  static const SeriesForecastModelMethodEnum etsAnn =
      _$seriesForecastModelMethodEnum_etsAnn;
  @BuiltValueEnumConst(wireName: r'ets-aaa')
  static const SeriesForecastModelMethodEnum etsAaa =
      _$seriesForecastModelMethodEnum_etsAaa;
  @BuiltValueEnumConst(wireName: r'nb-glm')
  static const SeriesForecastModelMethodEnum nbGlm =
      _$seriesForecastModelMethodEnum_nbGlm;
  @BuiltValueEnumConst(wireName: r'damped-trend')
  static const SeriesForecastModelMethodEnum dampedTrend =
      _$seriesForecastModelMethodEnum_dampedTrend;

  static Serializer<SeriesForecastModelMethodEnum> get serializer =>
      _$seriesForecastModelMethodEnumSerializer;

  const SeriesForecastModelMethodEnum._(String name) : super(name);

  static BuiltSet<SeriesForecastModelMethodEnum> get values =>
      _$seriesForecastModelMethodEnumValues;
  static SeriesForecastModelMethodEnum valueOf(String name) =>
      _$seriesForecastModelMethodEnumValueOf(name);
}
