//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/scorecard_entry_interval_coverage.dart';
import 'package:foresignal_api/src/model/scorecard_entry_recalibration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/scorecard_entry_skill.dart';
import 'package:foresignal_api/src/model/scorecard_entry_bias.dart';
import 'package:foresignal_api/src/model/scorecard_entry_murphy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scorecard_entry.g.dart';

/// Scores, calibration, skill and bias of one forecaster in one category
///
/// Properties:
/// * [forecasterId]
/// * [forecasterType]
/// * [category] - Null = all categories
/// * [nResolved]
/// * [nForecasts]
/// * [label] - `insufficient` under 20 resolved questions
/// * [brier]
/// * [logScore]
/// * [rps]
/// * [crps]
/// * [timeAveragedBrier]
/// * [intervalCoverage]
/// * [murphy]
/// * [skill]
/// * [bias]
/// * [recalibration]
/// * [ensembleWeight]
@BuiltValue()
abstract class ScorecardEntry
    implements Built<ScorecardEntry, ScorecardEntryBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'forecasterType')
  ScorecardEntryForecasterTypeEnum? get forecasterType;
  // enum forecasterTypeEnum {  base-rate,  climatology,  persistence,  statistical,  precursor,  analog,  threshold,  impact,  indicator-bayes,  llm,  operator,  external,  ensemble,  };

  /// Null = all categories
  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'nResolved')
  int get nResolved;

  @BuiltValueField(wireName: r'nForecasts')
  int? get nForecasts;

  /// `insufficient` under 20 resolved questions
  @BuiltValueField(wireName: r'label')
  ScorecardEntryLabelEnum get label;
  // enum labelEnum {  ok,  insufficient,  };

  @BuiltValueField(wireName: r'brier')
  num? get brier;

  @BuiltValueField(wireName: r'logScore')
  num? get logScore;

  @BuiltValueField(wireName: r'rps')
  num? get rps;

  @BuiltValueField(wireName: r'crps')
  num? get crps;

  @BuiltValueField(wireName: r'timeAveragedBrier')
  num? get timeAveragedBrier;

  @BuiltValueField(wireName: r'intervalCoverage')
  ScorecardEntryIntervalCoverage? get intervalCoverage;

  @BuiltValueField(wireName: r'murphy')
  ScorecardEntryMurphy? get murphy;

  @BuiltValueField(wireName: r'skill')
  ScorecardEntrySkill? get skill;

  @BuiltValueField(wireName: r'bias')
  ScorecardEntryBias? get bias;

  @BuiltValueField(wireName: r'recalibration')
  ScorecardEntryRecalibration? get recalibration;

  @BuiltValueField(wireName: r'ensembleWeight')
  num? get ensembleWeight;

  ScorecardEntry._();

  factory ScorecardEntry([void updates(ScorecardEntryBuilder b)]) =
      _$ScorecardEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScorecardEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScorecardEntry> get serializer =>
      _$ScorecardEntrySerializer();
}

class _$ScorecardEntrySerializer
    implements PrimitiveSerializer<ScorecardEntry> {
  @override
  final Iterable<Type> types = const [ScorecardEntry, _$ScorecardEntry];

  @override
  final String wireName = r'ScorecardEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScorecardEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    if (object.forecasterType != null) {
      yield r'forecasterType';
      yield serializers.serialize(
        object.forecasterType,
        specifiedType: const FullType(ScorecardEntryForecasterTypeEnum),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'nResolved';
    yield serializers.serialize(
      object.nResolved,
      specifiedType: const FullType(int),
    );
    if (object.nForecasts != null) {
      yield r'nForecasts';
      yield serializers.serialize(
        object.nForecasts,
        specifiedType: const FullType(int),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(ScorecardEntryLabelEnum),
    );
    if (object.brier != null) {
      yield r'brier';
      yield serializers.serialize(
        object.brier,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.logScore != null) {
      yield r'logScore';
      yield serializers.serialize(
        object.logScore,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.rps != null) {
      yield r'rps';
      yield serializers.serialize(
        object.rps,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.crps != null) {
      yield r'crps';
      yield serializers.serialize(
        object.crps,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.timeAveragedBrier != null) {
      yield r'timeAveragedBrier';
      yield serializers.serialize(
        object.timeAveragedBrier,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.intervalCoverage != null) {
      yield r'intervalCoverage';
      yield serializers.serialize(
        object.intervalCoverage,
        specifiedType: const FullType(ScorecardEntryIntervalCoverage),
      );
    }
    if (object.murphy != null) {
      yield r'murphy';
      yield serializers.serialize(
        object.murphy,
        specifiedType: const FullType.nullable(ScorecardEntryMurphy),
      );
    }
    if (object.skill != null) {
      yield r'skill';
      yield serializers.serialize(
        object.skill,
        specifiedType: const FullType.nullable(ScorecardEntrySkill),
      );
    }
    if (object.bias != null) {
      yield r'bias';
      yield serializers.serialize(
        object.bias,
        specifiedType: const FullType.nullable(ScorecardEntryBias),
      );
    }
    if (object.recalibration != null) {
      yield r'recalibration';
      yield serializers.serialize(
        object.recalibration,
        specifiedType: const FullType.nullable(ScorecardEntryRecalibration),
      );
    }
    if (object.ensembleWeight != null) {
      yield r'ensembleWeight';
      yield serializers.serialize(
        object.ensembleWeight,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntry object, {
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
    required ScorecardEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
                    specifiedType: const FullType.nullable(
                      ScorecardEntryForecasterTypeEnum,
                    ),
                  )
                  as ScorecardEntryForecasterTypeEnum?;
          if (valueDes == null) continue;
          result.forecasterType = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'nResolved':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nResolved = valueDes;
          break;
        case r'nForecasts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nForecasts = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ScorecardEntryLabelEnum),
                  )
                  as ScorecardEntryLabelEnum;
          result.label = valueDes;
          break;
        case r'brier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.brier = valueDes;
          break;
        case r'logScore':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.logScore = valueDes;
          break;
        case r'rps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rps = valueDes;
          break;
        case r'crps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.crps = valueDes;
          break;
        case r'timeAveragedBrier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.timeAveragedBrier = valueDes;
          break;
        case r'intervalCoverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ScorecardEntryIntervalCoverage,
                    ),
                  )
                  as ScorecardEntryIntervalCoverage?;
          if (valueDes == null) continue;
          result.intervalCoverage.replace(valueDes);
          break;
        case r'murphy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ScorecardEntryMurphy,
                    ),
                  )
                  as ScorecardEntryMurphy?;
          if (valueDes == null) continue;
          result.murphy.replace(valueDes);
          break;
        case r'skill':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ScorecardEntrySkill),
                  )
                  as ScorecardEntrySkill?;
          if (valueDes == null) continue;
          result.skill.replace(valueDes);
          break;
        case r'bias':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ScorecardEntryBias),
                  )
                  as ScorecardEntryBias?;
          if (valueDes == null) continue;
          result.bias.replace(valueDes);
          break;
        case r'recalibration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ScorecardEntryRecalibration,
                    ),
                  )
                  as ScorecardEntryRecalibration?;
          if (valueDes == null) continue;
          result.recalibration.replace(valueDes);
          break;
        case r'ensembleWeight':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.ensembleWeight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScorecardEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScorecardEntryBuilder();
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

class ScorecardEntryForecasterTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'base-rate')
  static const ScorecardEntryForecasterTypeEnum baseRate =
      _$scorecardEntryForecasterTypeEnum_baseRate;
  @BuiltValueEnumConst(wireName: r'climatology')
  static const ScorecardEntryForecasterTypeEnum climatology =
      _$scorecardEntryForecasterTypeEnum_climatology;
  @BuiltValueEnumConst(wireName: r'persistence')
  static const ScorecardEntryForecasterTypeEnum persistence =
      _$scorecardEntryForecasterTypeEnum_persistence;
  @BuiltValueEnumConst(wireName: r'statistical')
  static const ScorecardEntryForecasterTypeEnum statistical =
      _$scorecardEntryForecasterTypeEnum_statistical;
  @BuiltValueEnumConst(wireName: r'precursor')
  static const ScorecardEntryForecasterTypeEnum precursor =
      _$scorecardEntryForecasterTypeEnum_precursor;
  @BuiltValueEnumConst(wireName: r'analog')
  static const ScorecardEntryForecasterTypeEnum analog =
      _$scorecardEntryForecasterTypeEnum_analog;
  @BuiltValueEnumConst(wireName: r'threshold')
  static const ScorecardEntryForecasterTypeEnum threshold =
      _$scorecardEntryForecasterTypeEnum_threshold;
  @BuiltValueEnumConst(wireName: r'impact')
  static const ScorecardEntryForecasterTypeEnum impact =
      _$scorecardEntryForecasterTypeEnum_impact;
  @BuiltValueEnumConst(wireName: r'indicator-bayes')
  static const ScorecardEntryForecasterTypeEnum indicatorBayes =
      _$scorecardEntryForecasterTypeEnum_indicatorBayes;
  @BuiltValueEnumConst(wireName: r'llm')
  static const ScorecardEntryForecasterTypeEnum llm =
      _$scorecardEntryForecasterTypeEnum_llm;
  @BuiltValueEnumConst(wireName: r'operator')
  static const ScorecardEntryForecasterTypeEnum operator_ =
      _$scorecardEntryForecasterTypeEnum_operator_;
  @BuiltValueEnumConst(wireName: r'external')
  static const ScorecardEntryForecasterTypeEnum external_ =
      _$scorecardEntryForecasterTypeEnum_external_;
  @BuiltValueEnumConst(wireName: r'ensemble')
  static const ScorecardEntryForecasterTypeEnum ensemble =
      _$scorecardEntryForecasterTypeEnum_ensemble;

  static Serializer<ScorecardEntryForecasterTypeEnum> get serializer =>
      _$scorecardEntryForecasterTypeEnumSerializer;

  const ScorecardEntryForecasterTypeEnum._(String name) : super(name);

  static BuiltSet<ScorecardEntryForecasterTypeEnum> get values =>
      _$scorecardEntryForecasterTypeEnumValues;
  static ScorecardEntryForecasterTypeEnum valueOf(String name) =>
      _$scorecardEntryForecasterTypeEnumValueOf(name);
}

/// `insufficient` under 20 resolved questions
class ScorecardEntryLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ScorecardEntryLabelEnum ok = _$scorecardEntryLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const ScorecardEntryLabelEnum insufficient =
      _$scorecardEntryLabelEnum_insufficient;

  static Serializer<ScorecardEntryLabelEnum> get serializer =>
      _$scorecardEntryLabelEnumSerializer;

  const ScorecardEntryLabelEnum._(String name) : super(name);

  static BuiltSet<ScorecardEntryLabelEnum> get values =>
      _$scorecardEntryLabelEnumValues;
  static ScorecardEntryLabelEnum valueOf(String name) =>
      _$scorecardEntryLabelEnumValueOf(name);
}
