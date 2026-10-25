//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:foresignal_api/src/model/question_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_question_summary.g.dart';

/// Compact forecast question for lists and SSE events
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
@BuiltValue()
abstract class ForecastQuestionSummary
    implements Built<ForecastQuestionSummary, ForecastQuestionSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'type')
  ForecastQuestionSummaryTypeEnum get type;
  // enum typeEnum {  binary,  multiple,  ordered,  numeric,  };

  @BuiltValueField(wireName: r'status')
  ForecastQuestionSummaryStatusEnum get status;
  // enum statusEnum {  open,  closed,  resolved,  annulled,  };

  /// e.g. `conflict`, `maritime`, `markets`, `weather-impact`, `activity`
  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'resolverType')
  ForecastQuestionSummaryResolverTypeEnum get resolverType;
  // enum resolverTypeEnum {  event-exists,  count-threshold,  series-value,  alert-fired,  situation-status,  hypothesis-outcome,  manual,  };

  @BuiltValueField(wireName: r'opensAt')
  DateTime get opensAt;

  @BuiltValueField(wireName: r'closesAt')
  DateTime get closesAt;

  @BuiltValueField(wireName: r'resolveBy')
  DateTime get resolveBy;

  @BuiltValueField(wireName: r'origin')
  ForecastQuestionSummaryOriginEnum get origin;
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

  ForecastQuestionSummary._();

  factory ForecastQuestionSummary([
    void updates(ForecastQuestionSummaryBuilder b),
  ]) = _$ForecastQuestionSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastQuestionSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastQuestionSummary> get serializer =>
      _$ForecastQuestionSummarySerializer();
}

class _$ForecastQuestionSummarySerializer
    implements PrimitiveSerializer<ForecastQuestionSummary> {
  @override
  final Iterable<Type> types = const [
    ForecastQuestionSummary,
    _$ForecastQuestionSummary,
  ];

  @override
  final String wireName = r'ForecastQuestionSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastQuestionSummary object, {
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
      specifiedType: const FullType(ForecastQuestionSummaryTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ForecastQuestionSummaryStatusEnum),
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
      specifiedType: const FullType(ForecastQuestionSummaryResolverTypeEnum),
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
      specifiedType: const FullType(ForecastQuestionSummaryOriginEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastQuestionSummary object, {
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
    required ForecastQuestionSummaryBuilder result,
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
                    specifiedType: const FullType(
                      ForecastQuestionSummaryTypeEnum,
                    ),
                  )
                  as ForecastQuestionSummaryTypeEnum;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastQuestionSummaryStatusEnum,
                    ),
                  )
                  as ForecastQuestionSummaryStatusEnum;
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
                      ForecastQuestionSummaryResolverTypeEnum,
                    ),
                  )
                  as ForecastQuestionSummaryResolverTypeEnum;
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
                    specifiedType: const FullType(
                      ForecastQuestionSummaryOriginEnum,
                    ),
                  )
                  as ForecastQuestionSummaryOriginEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastQuestionSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastQuestionSummaryBuilder();
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

class ForecastQuestionSummaryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'binary')
  static const ForecastQuestionSummaryTypeEnum binary =
      _$forecastQuestionSummaryTypeEnum_binary;
  @BuiltValueEnumConst(wireName: r'multiple')
  static const ForecastQuestionSummaryTypeEnum multiple =
      _$forecastQuestionSummaryTypeEnum_multiple;
  @BuiltValueEnumConst(wireName: r'ordered')
  static const ForecastQuestionSummaryTypeEnum ordered =
      _$forecastQuestionSummaryTypeEnum_ordered;
  @BuiltValueEnumConst(wireName: r'numeric')
  static const ForecastQuestionSummaryTypeEnum numeric =
      _$forecastQuestionSummaryTypeEnum_numeric;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionSummaryTypeEnum unknownDefaultOpenApi =
      _$forecastQuestionSummaryTypeEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionSummaryTypeEnum> get serializer =>
      _$forecastQuestionSummaryTypeEnumSerializer;

  const ForecastQuestionSummaryTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionSummaryTypeEnum> get values =>
      _$forecastQuestionSummaryTypeEnumValues;
  static ForecastQuestionSummaryTypeEnum valueOf(String name) =>
      _$forecastQuestionSummaryTypeEnumValueOf(name);
}

class ForecastQuestionSummaryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const ForecastQuestionSummaryStatusEnum open =
      _$forecastQuestionSummaryStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'closed')
  static const ForecastQuestionSummaryStatusEnum closed =
      _$forecastQuestionSummaryStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const ForecastQuestionSummaryStatusEnum resolved =
      _$forecastQuestionSummaryStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'annulled')
  static const ForecastQuestionSummaryStatusEnum annulled =
      _$forecastQuestionSummaryStatusEnum_annulled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionSummaryStatusEnum unknownDefaultOpenApi =
      _$forecastQuestionSummaryStatusEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionSummaryStatusEnum> get serializer =>
      _$forecastQuestionSummaryStatusEnumSerializer;

  const ForecastQuestionSummaryStatusEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionSummaryStatusEnum> get values =>
      _$forecastQuestionSummaryStatusEnumValues;
  static ForecastQuestionSummaryStatusEnum valueOf(String name) =>
      _$forecastQuestionSummaryStatusEnumValueOf(name);
}

class ForecastQuestionSummaryResolverTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event-exists')
  static const ForecastQuestionSummaryResolverTypeEnum eventExists =
      _$forecastQuestionSummaryResolverTypeEnum_eventExists;
  @BuiltValueEnumConst(wireName: r'count-threshold')
  static const ForecastQuestionSummaryResolverTypeEnum countThreshold =
      _$forecastQuestionSummaryResolverTypeEnum_countThreshold;
  @BuiltValueEnumConst(wireName: r'series-value')
  static const ForecastQuestionSummaryResolverTypeEnum seriesValue =
      _$forecastQuestionSummaryResolverTypeEnum_seriesValue;
  @BuiltValueEnumConst(wireName: r'alert-fired')
  static const ForecastQuestionSummaryResolverTypeEnum alertFired =
      _$forecastQuestionSummaryResolverTypeEnum_alertFired;
  @BuiltValueEnumConst(wireName: r'situation-status')
  static const ForecastQuestionSummaryResolverTypeEnum situationStatus =
      _$forecastQuestionSummaryResolverTypeEnum_situationStatus;
  @BuiltValueEnumConst(wireName: r'hypothesis-outcome')
  static const ForecastQuestionSummaryResolverTypeEnum hypothesisOutcome =
      _$forecastQuestionSummaryResolverTypeEnum_hypothesisOutcome;
  @BuiltValueEnumConst(wireName: r'manual')
  static const ForecastQuestionSummaryResolverTypeEnum manual =
      _$forecastQuestionSummaryResolverTypeEnum_manual;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionSummaryResolverTypeEnum unknownDefaultOpenApi =
      _$forecastQuestionSummaryResolverTypeEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionSummaryResolverTypeEnum> get serializer =>
      _$forecastQuestionSummaryResolverTypeEnumSerializer;

  const ForecastQuestionSummaryResolverTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionSummaryResolverTypeEnum> get values =>
      _$forecastQuestionSummaryResolverTypeEnumValues;
  static ForecastQuestionSummaryResolverTypeEnum valueOf(String name) =>
      _$forecastQuestionSummaryResolverTypeEnumValueOf(name);
}

class ForecastQuestionSummaryOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const ForecastQuestionSummaryOriginEnum operator_ =
      _$forecastQuestionSummaryOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ForecastQuestionSummaryOriginEnum agent =
      _$forecastQuestionSummaryOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'system')
  static const ForecastQuestionSummaryOriginEnum system =
      _$forecastQuestionSummaryOriginEnum_system;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const ForecastQuestionSummaryOriginEnum analyst =
      _$forecastQuestionSummaryOriginEnum_analyst;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastQuestionSummaryOriginEnum unknownDefaultOpenApi =
      _$forecastQuestionSummaryOriginEnum_unknownDefaultOpenApi;

  static Serializer<ForecastQuestionSummaryOriginEnum> get serializer =>
      _$forecastQuestionSummaryOriginEnumSerializer;

  const ForecastQuestionSummaryOriginEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionSummaryOriginEnum> get values =>
      _$forecastQuestionSummaryOriginEnumValues;
  static ForecastQuestionSummaryOriginEnum valueOf(String name) =>
      _$forecastQuestionSummaryOriginEnumValueOf(name);
}
