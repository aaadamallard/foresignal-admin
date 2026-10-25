//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/forecast_scorecard.dart';
import 'package:foresignal_api/src/model/forecast_evaluation_skipped.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_evaluation.g.dart';

/// A retrospective evaluation (103 job `forecast-evaluation`) and its scorecard
///
/// Properties:
/// * [id] - ULID identifier
/// * [forecasterId]
/// * [from]
/// * [to]
/// * [categories]
/// * [maxQuestions]
/// * [status]
/// * [progress]
/// * [questionsConsidered]
/// * [questionsEvaluated]
/// * [skipped]
/// * [scorecard]
/// * [caveats]
/// * [error]
/// * [createdBy]
/// * [createdAt]
/// * [startedAt]
/// * [finishedAt]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class ForecastEvaluation
    implements Built<ForecastEvaluation, ForecastEvaluationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'categories')
  BuiltList<String>? get categories;

  @BuiltValueField(wireName: r'maxQuestions')
  int? get maxQuestions;

  @BuiltValueField(wireName: r'status')
  ForecastEvaluationStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'progress')
  num? get progress;

  @BuiltValueField(wireName: r'questionsConsidered')
  int get questionsConsidered;

  @BuiltValueField(wireName: r'questionsEvaluated')
  int get questionsEvaluated;

  @BuiltValueField(wireName: r'skipped')
  ForecastEvaluationSkipped get skipped;

  @BuiltValueField(wireName: r'scorecard')
  ForecastScorecard? get scorecard;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  ForecastEvaluation._();

  factory ForecastEvaluation([void updates(ForecastEvaluationBuilder b)]) =
      _$ForecastEvaluation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastEvaluationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastEvaluation> get serializer =>
      _$ForecastEvaluationSerializer();
}

class _$ForecastEvaluationSerializer
    implements PrimitiveSerializer<ForecastEvaluation> {
  @override
  final Iterable<Type> types = const [ForecastEvaluation, _$ForecastEvaluation];

  @override
  final String wireName = r'ForecastEvaluation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastEvaluation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
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
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maxQuestions != null) {
      yield r'maxQuestions';
      yield serializers.serialize(
        object.maxQuestions,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ForecastEvaluationStatusEnum),
    );
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'questionsConsidered';
    yield serializers.serialize(
      object.questionsConsidered,
      specifiedType: const FullType(int),
    );
    yield r'questionsEvaluated';
    yield serializers.serialize(
      object.questionsEvaluated,
      specifiedType: const FullType(int),
    );
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(ForecastEvaluationSkipped),
    );
    if (object.scorecard != null) {
      yield r'scorecard';
      yield serializers.serialize(
        object.scorecard,
        specifiedType: const FullType.nullable(ForecastScorecard),
      );
    }
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
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
    ForecastEvaluation object, {
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
    required ForecastEvaluationBuilder result,
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
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
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
        case r'categories':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.categories.replace(valueDes);
          break;
        case r'maxQuestions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxQuestions = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastEvaluationStatusEnum),
                  )
                  as ForecastEvaluationStatusEnum;
          result.status = valueDes;
          break;
        case r'progress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.progress = valueDes;
          break;
        case r'questionsConsidered':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.questionsConsidered = valueDes;
          break;
        case r'questionsEvaluated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.questionsEvaluated = valueDes;
          break;
        case r'skipped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastEvaluationSkipped),
                  )
                  as ForecastEvaluationSkipped;
          result.skipped.replace(valueDes);
          break;
        case r'scorecard':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ForecastScorecard),
                  )
                  as ForecastScorecard?;
          if (valueDes == null) continue;
          result.scorecard.replace(valueDes);
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
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
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
  ForecastEvaluation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastEvaluationBuilder();
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

class ForecastEvaluationStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const ForecastEvaluationStatusEnum queued =
      _$forecastEvaluationStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const ForecastEvaluationStatusEnum running =
      _$forecastEvaluationStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const ForecastEvaluationStatusEnum done =
      _$forecastEvaluationStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ForecastEvaluationStatusEnum failed =
      _$forecastEvaluationStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const ForecastEvaluationStatusEnum cancelled =
      _$forecastEvaluationStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastEvaluationStatusEnum unknownDefaultOpenApi =
      _$forecastEvaluationStatusEnum_unknownDefaultOpenApi;

  static Serializer<ForecastEvaluationStatusEnum> get serializer =>
      _$forecastEvaluationStatusEnumSerializer;

  const ForecastEvaluationStatusEnum._(String name) : super(name);

  static BuiltSet<ForecastEvaluationStatusEnum> get values =>
      _$forecastEvaluationStatusEnumValues;
  static ForecastEvaluationStatusEnum valueOf(String name) =>
      _$forecastEvaluationStatusEnumValueOf(name);
}
