//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/forecast_citations_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast.g.dart';

/// An immutable, timestamped forecast; a new one supersedes it
///
/// Properties:
/// * [id] - ULID identifier
/// * [questionId] - ULID identifier
/// * [forecasterId]
/// * [forecasterType] - Expected to grow (`x-extensible-enum`): a client must accept a value not listed here.
/// * [madeAt] - Server-set
/// * [asOfSeq] - Server-set knowledge cutoff in seq
/// * [knowledgeCutoff] - Model knowledge cutoff for LLM forecasters
/// * [probability] - Binary questions
/// * [distribution] - Multiple/ordered: outcome label → probability, summing to 1 ± 1e-6
/// * [quantiles] - Numeric: p05, p10, p25, p50, p75, p90, p95, monotone
/// * [estimativeTerm]
/// * [rationale] - Markdown
/// * [claims] - Typed claims (LLM forecasters)
/// * [citations]
/// * [inputs] - Inputs: `baseRateIds`, `analogIds`, `precursorId`, `model`, `provider`, `effort`, `samples`, `promptHash`, `rawProbability` (before LLM caps), `weights` (ensemble)
/// * [supersedesId] - ULID identifier
/// * [recalibrated] - True for Platt-recalibrated ensemble inputs
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class Forecast implements Built<Forecast, ForecastBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  /// Expected to grow (`x-extensible-enum`): a client must accept a value not listed here.
  @BuiltValueField(wireName: r'forecasterType')
  String get forecasterType;

  /// Server-set
  @BuiltValueField(wireName: r'madeAt')
  DateTime get madeAt;

  /// Server-set knowledge cutoff in seq
  @BuiltValueField(wireName: r'asOfSeq')
  int get asOfSeq;

  /// Model knowledge cutoff for LLM forecasters
  @BuiltValueField(wireName: r'knowledgeCutoff')
  Date? get knowledgeCutoff;

  /// Binary questions
  @BuiltValueField(wireName: r'probability')
  num? get probability;

  /// Multiple/ordered: outcome label → probability, summing to 1 ± 1e-6
  @BuiltValueField(wireName: r'distribution')
  BuiltMap<String, num>? get distribution;

  /// Numeric: p05, p10, p25, p50, p75, p90, p95, monotone
  @BuiltValueField(wireName: r'quantiles')
  Quantiles? get quantiles;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  /// Markdown
  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  /// Typed claims (LLM forecasters)
  @BuiltValueField(wireName: r'claims')
  BuiltList<BuiltMap<String, JsonObject?>>? get claims;

  @BuiltValueField(wireName: r'citations')
  BuiltList<ForecastCitationsInner>? get citations;

  /// Inputs: `baseRateIds`, `analogIds`, `precursorId`, `model`, `provider`, `effort`, `samples`, `promptHash`, `rawProbability` (before LLM caps), `weights` (ensemble)
  @BuiltValueField(wireName: r'inputs')
  BuiltMap<String, JsonObject?>? get inputs;

  /// ULID identifier
  @BuiltValueField(wireName: r'supersedesId')
  String? get supersedesId;

  /// True for Platt-recalibrated ensemble inputs
  @BuiltValueField(wireName: r'recalibrated')
  bool get recalibrated;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  Forecast._();

  factory Forecast([void updates(ForecastBuilder b)]) = _$Forecast;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Forecast> get serializer => _$ForecastSerializer();
}

class _$ForecastSerializer implements PrimitiveSerializer<Forecast> {
  @override
  final Iterable<Type> types = const [Forecast, _$Forecast];

  @override
  final String wireName = r'Forecast';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Forecast object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'forecasterType';
    yield serializers.serialize(
      object.forecasterType,
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
    if (object.knowledgeCutoff != null) {
      yield r'knowledgeCutoff';
      yield serializers.serialize(
        object.knowledgeCutoff,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.distribution != null) {
      yield r'distribution';
      yield serializers.serialize(
        object.distribution,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(num),
        ]),
      );
    }
    if (object.quantiles != null) {
      yield r'quantiles';
      yield serializers.serialize(
        object.quantiles,
        specifiedType: const FullType.nullable(Quantiles),
      );
    }
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType.nullable(IcdTerm),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.claims != null) {
      yield r'claims';
      yield serializers.serialize(
        object.claims,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [
          FullType(ForecastCitationsInner),
        ]),
      );
    }
    if (object.inputs != null) {
      yield r'inputs';
      yield serializers.serialize(
        object.inputs,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.supersedesId != null) {
      yield r'supersedesId';
      yield serializers.serialize(
        object.supersedesId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'recalibrated';
    yield serializers.serialize(
      object.recalibrated,
      specifiedType: const FullType(bool),
    );
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Forecast object, {
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
    required ForecastBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.questionId = valueDes;
          break;
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
        case r'forecasterType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterType = valueDes;
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
        case r'knowledgeCutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'distribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.distribution.replace(valueDes);
          break;
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quantiles),
                  )
                  as Quantiles?;
          if (valueDes == null) continue;
          result.quantiles.replace(valueDes);
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IcdTerm),
                  )
                  as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'claims':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.claims.replace(valueDes);
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ForecastCitationsInner),
                    ]),
                  )
                  as BuiltList<ForecastCitationsInner>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'inputs':
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
          result.inputs.replace(valueDes);
          break;
        case r'supersedesId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.supersedesId = valueDes;
          break;
        case r'recalibrated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.recalibrated = valueDes;
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
  Forecast deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastBuilder();
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
