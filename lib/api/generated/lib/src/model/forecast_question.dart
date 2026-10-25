//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:foresignal_api/src/model/question_links.dart';
import 'package:foresignal_api/src/model/forecast_score.dart';
import 'package:foresignal_api/src/model/forecast_resolution.dart';
import 'package:foresignal_api/src/model/question_outcomes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_resolver.dart';
import 'package:foresignal_api/src/model/forecast.dart';
import 'package:foresignal_api/src/model/question_annulment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_question.g.dart';

/// A forecast question with criteria, resolver, latest forecasts per forecaster, ensemble, ICD term and scores
///
/// Properties:
/// * [id] - ULID identifier
/// * [title]
/// * [type]
/// * [status]
/// * [category] - e.g. `conflict`, `maritime`, `markets`, `weather-impact`, `activity`
/// * [tags]
/// * [resolverType]
/// * [opensAt]
/// * [closesAt]
/// * [resolveBy]
/// * [origin]
/// * [links]
/// * [private]
/// * [forecastCount]
/// * [ensembleProbability] - Latest ensemble probability (binary questions)
/// * [estimativeTerm]
/// * [resolvedOutcome]
/// * [resolvedValue]
/// * [outcomes]
/// * [resolutionCriteria]
/// * [resolver]
/// * [resolution]
/// * [annulment]
/// * [dedupKey]
/// * [latestForecasts] - Latest forecast per forecaster, newest first
/// * [ensemble]
/// * [scores] - Present once resolved
/// * [createdAt]
/// * [updatedAt]
/// * [baselineNotes] - Why a baseline forecaster that supports this kind of question forecast nothing, by forecaster id (e.g. no reference family, no covered history)
/// * [manifestId] - 116 manifest of the question's opening
@BuiltValue()
abstract class ForecastQuestion
    implements Built<ForecastQuestion, ForecastQuestionBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'type')
  ForecastQuestionTypeEnum get type;
  // enum typeEnum {  binary,  multiple,  ordered,  numeric,  };

  @BuiltValueField(wireName: r'status')
  ForecastQuestionStatusEnum get status;
  // enum statusEnum {  open,  closed,  resolved,  annulled,  };

  /// e.g. `conflict`, `maritime`, `markets`, `weather-impact`, `activity`
  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'resolverType')
  ForecastQuestionResolverTypeEnum get resolverType;
  // enum resolverTypeEnum {  event-exists,  count-threshold,  series-value,  alert-fired,  situation-status,  hypothesis-outcome,  manual,  };

  @BuiltValueField(wireName: r'opensAt')
  DateTime get opensAt;

  @BuiltValueField(wireName: r'closesAt')
  DateTime get closesAt;

  @BuiltValueField(wireName: r'resolveBy')
  DateTime get resolveBy;

  @BuiltValueField(wireName: r'origin')
  ForecastQuestionOriginEnum get origin;
  // enum originEnum {  operator,  agent,  system,  analyst,  };

  @BuiltValueField(wireName: r'links')
  QuestionLinks? get links;

  @BuiltValueField(wireName: r'private')
  bool get private;

  @BuiltValueField(wireName: r'forecastCount')
  int? get forecastCount;

  /// Latest ensemble probability (binary questions)
  @BuiltValueField(wireName: r'ensembleProbability')
  num? get ensembleProbability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'resolvedOutcome')
  String? get resolvedOutcome;

  @BuiltValueField(wireName: r'resolvedValue')
  num? get resolvedValue;

  @BuiltValueField(wireName: r'outcomes')
  QuestionOutcomes? get outcomes;

  @BuiltValueField(wireName: r'resolutionCriteria')
  String get resolutionCriteria;

  @BuiltValueField(wireName: r'resolver')
  ForecastResolver get resolver;

  @BuiltValueField(wireName: r'resolution')
  ForecastResolution? get resolution;

  @BuiltValueField(wireName: r'annulment')
  QuestionAnnulment? get annulment;

  @BuiltValueField(wireName: r'dedupKey')
  String? get dedupKey;

  /// Latest forecast per forecaster, newest first
  @BuiltValueField(wireName: r'latestForecasts')
  BuiltList<Forecast> get latestForecasts;

  @BuiltValueField(wireName: r'ensemble')
  Forecast? get ensemble;

  /// Present once resolved
  @BuiltValueField(wireName: r'scores')
  BuiltList<ForecastScore>? get scores;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  /// Why a baseline forecaster that supports this kind of question forecast nothing, by forecaster id (e.g. no reference family, no covered history)
  @BuiltValueField(wireName: r'baselineNotes')
  BuiltMap<String, String>? get baselineNotes;

  /// 116 manifest of the question's opening
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  ForecastQuestion._();

  factory ForecastQuestion([void updates(ForecastQuestionBuilder b)]) =
      _$ForecastQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastQuestion> get serializer =>
      _$ForecastQuestionSerializer();
}

class _$ForecastQuestionSerializer
    implements PrimitiveSerializer<ForecastQuestion> {
  @override
  final Iterable<Type> types = const [ForecastQuestion, _$ForecastQuestion];

  @override
  final String wireName = r'ForecastQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ForecastQuestionTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ForecastQuestionStatusEnum),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(String),
    );
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'resolverType';
    yield serializers.serialize(
      object.resolverType,
      specifiedType: const FullType(ForecastQuestionResolverTypeEnum),
    );
    yield r'opensAt';
    yield serializers.serialize(
      object.opensAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'closesAt';
    yield serializers.serialize(
      object.closesAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'resolveBy';
    yield serializers.serialize(
      object.resolveBy,
      specifiedType: const FullType(DateTime),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(ForecastQuestionOriginEnum),
    );
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(QuestionLinks),
      );
    }
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    if (object.forecastCount != null) {
      yield r'forecastCount';
      yield serializers.serialize(
        object.forecastCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.ensembleProbability != null) {
      yield r'ensembleProbability';
      yield serializers.serialize(
        object.ensembleProbability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType.nullable(IcdTerm),
      );
    }
    if (object.resolvedOutcome != null) {
      yield r'resolvedOutcome';
      yield serializers.serialize(
        object.resolvedOutcome,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.resolvedValue != null) {
      yield r'resolvedValue';
      yield serializers.serialize(
        object.resolvedValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.outcomes != null) {
      yield r'outcomes';
      yield serializers.serialize(
        object.outcomes,
        specifiedType: const FullType(QuestionOutcomes),
      );
    }
    yield r'resolutionCriteria';
    yield serializers.serialize(
      object.resolutionCriteria,
      specifiedType: const FullType(String),
    );
    yield r'resolver';
    yield serializers.serialize(
      object.resolver,
      specifiedType: const FullType(ForecastResolver),
    );
    if (object.resolution != null) {
      yield r'resolution';
      yield serializers.serialize(
        object.resolution,
        specifiedType: const FullType.nullable(ForecastResolution),
      );
    }
    if (object.annulment != null) {
      yield r'annulment';
      yield serializers.serialize(
        object.annulment,
        specifiedType: const FullType.nullable(QuestionAnnulment),
      );
    }
    if (object.dedupKey != null) {
      yield r'dedupKey';
      yield serializers.serialize(
        object.dedupKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'latestForecasts';
    yield serializers.serialize(
      object.latestForecasts,
      specifiedType: const FullType(BuiltList, [FullType(Forecast)]),
    );
    if (object.ensemble != null) {
      yield r'ensemble';
      yield serializers.serialize(
        object.ensemble,
        specifiedType: const FullType.nullable(Forecast),
      );
    }
    if (object.scores != null) {
      yield r'scores';
      yield serializers.serialize(
        object.scores,
        specifiedType: const FullType(BuiltList, [FullType(ForecastScore)]),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.baselineNotes != null) {
      yield r'baselineNotes';
      yield serializers.serialize(
        object.baselineNotes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
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
    ForecastQuestion object, {
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
    required ForecastQuestionBuilder result,
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
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastQuestionTypeEnum),
                  )
                  as ForecastQuestionTypeEnum;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastQuestionStatusEnum),
                  )
                  as ForecastQuestionStatusEnum;
          result.status = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.category = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'resolverType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastQuestionResolverTypeEnum,
                    ),
                  )
                  as ForecastQuestionResolverTypeEnum;
          result.resolverType = valueDes;
          break;
        case r'opensAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.opensAt = valueDes;
          break;
        case r'closesAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.closesAt = valueDes;
          break;
        case r'resolveBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.resolveBy = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastQuestionOriginEnum),
                  )
                  as ForecastQuestionOriginEnum;
          result.origin = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuestionLinks),
                  )
                  as QuestionLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
          break;
        case r'forecastCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.forecastCount = valueDes;
          break;
        case r'ensembleProbability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.ensembleProbability = valueDes;
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
        case r'resolvedOutcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.resolvedOutcome = valueDes;
          break;
        case r'resolvedValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.resolvedValue = valueDes;
          break;
        case r'outcomes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuestionOutcomes),
                  )
                  as QuestionOutcomes?;
          if (valueDes == null) continue;
          result.outcomes.replace(valueDes);
          break;
        case r'resolutionCriteria':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.resolutionCriteria = valueDes;
          break;
        case r'resolver':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastResolver),
                  )
                  as ForecastResolver;
          result.resolver.replace(valueDes);
          break;
        case r'resolution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ForecastResolution),
                  )
                  as ForecastResolution?;
          if (valueDes == null) continue;
          result.resolution.replace(valueDes);
          break;
        case r'annulment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuestionAnnulment),
                  )
                  as QuestionAnnulment?;
          if (valueDes == null) continue;
          result.annulment.replace(valueDes);
          break;
        case r'dedupKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dedupKey = valueDes;
          break;
        case r'latestForecasts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Forecast),
                    ]),
                  )
                  as BuiltList<Forecast>;
          result.latestForecasts.replace(valueDes);
          break;
        case r'ensemble':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Forecast),
                  )
                  as Forecast?;
          if (valueDes == null) continue;
          result.ensemble.replace(valueDes);
          break;
        case r'scores':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ForecastScore),
                    ]),
                  )
                  as BuiltList<ForecastScore>?;
          if (valueDes == null) continue;
          result.scores.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'baselineNotes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.baselineNotes.replace(valueDes);
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
  ForecastQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastQuestionBuilder();
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

class ForecastQuestionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'binary')
  static const ForecastQuestionTypeEnum binary =
      _$forecastQuestionTypeEnum_binary;
  @BuiltValueEnumConst(wireName: r'multiple')
  static const ForecastQuestionTypeEnum multiple =
      _$forecastQuestionTypeEnum_multiple;
  @BuiltValueEnumConst(wireName: r'ordered')
  static const ForecastQuestionTypeEnum ordered =
      _$forecastQuestionTypeEnum_ordered;
  @BuiltValueEnumConst(wireName: r'numeric')
  static const ForecastQuestionTypeEnum numeric =
      _$forecastQuestionTypeEnum_numeric;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionTypeEnum unknownDefaultOpenApi =
      _$forecastQuestionTypeEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionTypeEnum> get serializer =>
      _$forecastQuestionTypeEnumSerializer;

  const ForecastQuestionTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionTypeEnum> get values =>
      _$forecastQuestionTypeEnumValues;
  static ForecastQuestionTypeEnum valueOf(String name) =>
      _$forecastQuestionTypeEnumValueOf(name);
}

class ForecastQuestionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const ForecastQuestionStatusEnum open =
      _$forecastQuestionStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'closed')
  static const ForecastQuestionStatusEnum closed =
      _$forecastQuestionStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const ForecastQuestionStatusEnum resolved =
      _$forecastQuestionStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'annulled')
  static const ForecastQuestionStatusEnum annulled =
      _$forecastQuestionStatusEnum_annulled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionStatusEnum unknownDefaultOpenApi =
      _$forecastQuestionStatusEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionStatusEnum> get serializer =>
      _$forecastQuestionStatusEnumSerializer;

  const ForecastQuestionStatusEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionStatusEnum> get values =>
      _$forecastQuestionStatusEnumValues;
  static ForecastQuestionStatusEnum valueOf(String name) =>
      _$forecastQuestionStatusEnumValueOf(name);
}

class ForecastQuestionResolverTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event-exists')
  static const ForecastQuestionResolverTypeEnum eventExists =
      _$forecastQuestionResolverTypeEnum_eventExists;
  @BuiltValueEnumConst(wireName: r'count-threshold')
  static const ForecastQuestionResolverTypeEnum countThreshold =
      _$forecastQuestionResolverTypeEnum_countThreshold;
  @BuiltValueEnumConst(wireName: r'series-value')
  static const ForecastQuestionResolverTypeEnum seriesValue =
      _$forecastQuestionResolverTypeEnum_seriesValue;
  @BuiltValueEnumConst(wireName: r'alert-fired')
  static const ForecastQuestionResolverTypeEnum alertFired =
      _$forecastQuestionResolverTypeEnum_alertFired;
  @BuiltValueEnumConst(wireName: r'situation-status')
  static const ForecastQuestionResolverTypeEnum situationStatus =
      _$forecastQuestionResolverTypeEnum_situationStatus;
  @BuiltValueEnumConst(wireName: r'hypothesis-outcome')
  static const ForecastQuestionResolverTypeEnum hypothesisOutcome =
      _$forecastQuestionResolverTypeEnum_hypothesisOutcome;
  @BuiltValueEnumConst(wireName: r'manual')
  static const ForecastQuestionResolverTypeEnum manual =
      _$forecastQuestionResolverTypeEnum_manual;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionResolverTypeEnum unknownDefaultOpenApi =
      _$forecastQuestionResolverTypeEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionResolverTypeEnum> get serializer =>
      _$forecastQuestionResolverTypeEnumSerializer;

  const ForecastQuestionResolverTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionResolverTypeEnum> get values =>
      _$forecastQuestionResolverTypeEnumValues;
  static ForecastQuestionResolverTypeEnum valueOf(String name) =>
      _$forecastQuestionResolverTypeEnumValueOf(name);
}

class ForecastQuestionOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const ForecastQuestionOriginEnum operator_ =
      _$forecastQuestionOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ForecastQuestionOriginEnum agent =
      _$forecastQuestionOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'system')
  static const ForecastQuestionOriginEnum system =
      _$forecastQuestionOriginEnum_system;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const ForecastQuestionOriginEnum analyst =
      _$forecastQuestionOriginEnum_analyst;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionOriginEnum unknownDefaultOpenApi =
      _$forecastQuestionOriginEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionOriginEnum> get serializer =>
      _$forecastQuestionOriginEnumSerializer;

  const ForecastQuestionOriginEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionOriginEnum> get values =>
      _$forecastQuestionOriginEnumValues;
  static ForecastQuestionOriginEnum valueOf(String name) =>
      _$forecastQuestionOriginEnumValueOf(name);
}
