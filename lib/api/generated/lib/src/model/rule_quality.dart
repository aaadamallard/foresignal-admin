//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/rule_quality_daily.dart';
import 'package:foresignal_api/src/model/rule_quality_signals.dart';
import 'package:foresignal_api/src/model/rule_quality_precision_ci.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_quality.g.dart';

/// Alert-quality statistics for one rule from 017 feedback (useful → positive; noise, false_positive → negative; late → neutral, per the code mapping)
///
/// Properties:
/// * [ruleId]
/// * [since]
/// * [alerts]
/// * [labelled]
/// * [labelledShare]
/// * [positive]
/// * [negative]
/// * [neutral]
/// * [precision] - positive ÷ (positive + negative); null when labelled < 5
/// * [precisionCi]
/// * [medianTimeToAck] - ISO-8601 duration
/// * [medianTimeToResolve] - ISO-8601 duration
/// * [flapping] - enter → exit within 10 min
/// * [duplicates] - Same entity within 2 × cooldown
/// * [severityDistribution]
/// * [feedbackMapping]
/// * [caveats]
/// * [signals]
/// * [signalScore] - Weighted implicit-signal score (ACK_FAST +0.5, SNOOZED −0.5, FLAP −0.5, UNOPENED −0.25), shown next to, never mixed into, feedback precision
/// * [daily] - Daily trend rows since `since`
/// * [signalWeights] - The weight table of signalScore (ACK_FAST 0.5, SNOOZED -0.5, FLAP -0.5, UNOPENED -0.25); signalScore = sum(weight x count) / alerts
@BuiltValue()
abstract class RuleQuality implements Built<RuleQuality, RuleQualityBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'since')
  DateTime get since;

  @BuiltValueField(wireName: r'alerts')
  int get alerts;

  @BuiltValueField(wireName: r'labelled')
  int get labelled;

  @BuiltValueField(wireName: r'labelledShare')
  num? get labelledShare;

  @BuiltValueField(wireName: r'positive')
  int get positive;

  @BuiltValueField(wireName: r'negative')
  int get negative;

  @BuiltValueField(wireName: r'neutral')
  int get neutral;

  /// positive ÷ (positive + negative); null when labelled < 5
  @BuiltValueField(wireName: r'precision')
  num? get precision;

  @BuiltValueField(wireName: r'precisionCi')
  RuleQualityPrecisionCi? get precisionCi;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'medianTimeToAck')
  String? get medianTimeToAck;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'medianTimeToResolve')
  String? get medianTimeToResolve;

  /// enter → exit within 10 min
  @BuiltValueField(wireName: r'flapping')
  int? get flapping;

  /// Same entity within 2 × cooldown
  @BuiltValueField(wireName: r'duplicates')
  int? get duplicates;

  @BuiltValueField(wireName: r'severityDistribution')
  BuiltMap<String, int>? get severityDistribution;

  @BuiltValueField(wireName: r'feedbackMapping')
  BuiltMap<String, RuleQualityFeedbackMappingEnum>? get feedbackMapping;
  // enum feedbackMappingEnum {  positive,  negative,  neutral,  };

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  @BuiltValueField(wireName: r'signals')
  RuleQualitySignals? get signals;

  /// Weighted implicit-signal score (ACK_FAST +0.5, SNOOZED −0.5, FLAP −0.5, UNOPENED −0.25), shown next to, never mixed into, feedback precision
  @BuiltValueField(wireName: r'signalScore')
  num? get signalScore;

  /// Daily trend rows since `since`
  @BuiltValueField(wireName: r'daily')
  BuiltList<RuleQualityDaily>? get daily;

  /// The weight table of signalScore (ACK_FAST 0.5, SNOOZED -0.5, FLAP -0.5, UNOPENED -0.25); signalScore = sum(weight x count) / alerts
  @BuiltValueField(wireName: r'signalWeights')
  BuiltMap<String, num>? get signalWeights;

  RuleQuality._();

  factory RuleQuality([void updates(RuleQualityBuilder b)]) = _$RuleQuality;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleQualityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleQuality> get serializer => _$RuleQualitySerializer();
}

class _$RuleQualitySerializer implements PrimitiveSerializer<RuleQuality> {
  @override
  final Iterable<Type> types = const [RuleQuality, _$RuleQuality];

  @override
  final String wireName = r'RuleQuality';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleQuality object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    yield r'alerts';
    yield serializers.serialize(
      object.alerts,
      specifiedType: const FullType(int),
    );
    yield r'labelled';
    yield serializers.serialize(
      object.labelled,
      specifiedType: const FullType(int),
    );
    if (object.labelledShare != null) {
      yield r'labelledShare';
      yield serializers.serialize(
        object.labelledShare,
        specifiedType: const FullType(num),
      );
    }
    yield r'positive';
    yield serializers.serialize(
      object.positive,
      specifiedType: const FullType(int),
    );
    yield r'negative';
    yield serializers.serialize(
      object.negative,
      specifiedType: const FullType(int),
    );
    yield r'neutral';
    yield serializers.serialize(
      object.neutral,
      specifiedType: const FullType(int),
    );
    if (object.precision != null) {
      yield r'precision';
      yield serializers.serialize(
        object.precision,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.precisionCi != null) {
      yield r'precisionCi';
      yield serializers.serialize(
        object.precisionCi,
        specifiedType: const FullType.nullable(RuleQualityPrecisionCi),
      );
    }
    if (object.medianTimeToAck != null) {
      yield r'medianTimeToAck';
      yield serializers.serialize(
        object.medianTimeToAck,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.medianTimeToResolve != null) {
      yield r'medianTimeToResolve';
      yield serializers.serialize(
        object.medianTimeToResolve,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.flapping != null) {
      yield r'flapping';
      yield serializers.serialize(
        object.flapping,
        specifiedType: const FullType(int),
      );
    }
    if (object.duplicates != null) {
      yield r'duplicates';
      yield serializers.serialize(
        object.duplicates,
        specifiedType: const FullType(int),
      );
    }
    if (object.severityDistribution != null) {
      yield r'severityDistribution';
      yield serializers.serialize(
        object.severityDistribution,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.feedbackMapping != null) {
      yield r'feedbackMapping';
      yield serializers.serialize(
        object.feedbackMapping,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(RuleQualityFeedbackMappingEnum),
        ]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.signals != null) {
      yield r'signals';
      yield serializers.serialize(
        object.signals,
        specifiedType: const FullType(RuleQualitySignals),
      );
    }
    if (object.signalScore != null) {
      yield r'signalScore';
      yield serializers.serialize(
        object.signalScore,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.daily != null) {
      yield r'daily';
      yield serializers.serialize(
        object.daily,
        specifiedType: const FullType(BuiltList, [FullType(RuleQualityDaily)]),
      );
    }
    if (object.signalWeights != null) {
      yield r'signalWeights';
      yield serializers.serialize(
        object.signalWeights,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(num),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleQuality object, {
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
    required RuleQualityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'since':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.since = valueDes;
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.alerts = valueDes;
          break;
        case r'labelled':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.labelled = valueDes;
          break;
        case r'labelledShare':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.labelledShare = valueDes;
          break;
        case r'positive':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.positive = valueDes;
          break;
        case r'negative':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.negative = valueDes;
          break;
        case r'neutral':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.neutral = valueDes;
          break;
        case r'precision':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.precision = valueDes;
          break;
        case r'precisionCi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleQualityPrecisionCi,
                    ),
                  )
                  as RuleQualityPrecisionCi?;
          if (valueDes == null) continue;
          result.precisionCi.replace(valueDes);
          break;
        case r'medianTimeToAck':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.medianTimeToAck = valueDes;
          break;
        case r'medianTimeToResolve':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.medianTimeToResolve = valueDes;
          break;
        case r'flapping':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.flapping = valueDes;
          break;
        case r'duplicates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.duplicates = valueDes;
          break;
        case r'severityDistribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.severityDistribution.replace(valueDes);
          break;
        case r'feedbackMapping':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(RuleQualityFeedbackMappingEnum),
                    ]),
                  )
                  as BuiltMap<String, RuleQualityFeedbackMappingEnum>?;
          if (valueDes == null) continue;
          result.feedbackMapping.replace(valueDes);
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
        case r'signals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RuleQualitySignals),
                  )
                  as RuleQualitySignals?;
          if (valueDes == null) continue;
          result.signals.replace(valueDes);
          break;
        case r'signalScore':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.signalScore = valueDes;
          break;
        case r'daily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleQualityDaily),
                    ]),
                  )
                  as BuiltList<RuleQualityDaily>?;
          if (valueDes == null) continue;
          result.daily.replace(valueDes);
          break;
        case r'signalWeights':
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
          result.signalWeights.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleQuality deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleQualityBuilder();
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

class RuleQualityFeedbackMappingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'positive')
  static const RuleQualityFeedbackMappingEnum positive =
      _$ruleQualityFeedbackMappingEnum_positive;
  @BuiltValueEnumConst(wireName: r'negative')
  static const RuleQualityFeedbackMappingEnum negative =
      _$ruleQualityFeedbackMappingEnum_negative;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const RuleQualityFeedbackMappingEnum neutral =
      _$ruleQualityFeedbackMappingEnum_neutral;

  static Serializer<RuleQualityFeedbackMappingEnum> get serializer =>
      _$ruleQualityFeedbackMappingEnumSerializer;

  const RuleQualityFeedbackMappingEnum._(String name) : super(name);

  static BuiltSet<RuleQualityFeedbackMappingEnum> get values =>
      _$ruleQualityFeedbackMappingEnumValues;
  static RuleQualityFeedbackMappingEnum valueOf(String name) =>
      _$ruleQualityFeedbackMappingEnumValueOf(name);
}
