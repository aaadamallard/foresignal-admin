//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecaster_comparison.g.dart';

/// Pairwise comparison on shared resolved questions with a paired bootstrap interval
///
/// Properties:
/// * [a]
/// * [b]
/// * [category]
/// * [nShared]
/// * [label]
/// * [metric]
/// * [meanScoreA]
/// * [meanScoreB]
/// * [meanDifference] - mean(A) − mean(B); negative favours A
/// * [interval] - Paired bootstrap 95% interval (1,000 resamples, deterministic seed)
/// * [scorerVersion]
/// * [computedAt]
@BuiltValue()
abstract class ForecasterComparison
    implements Built<ForecasterComparison, ForecasterComparisonBuilder> {
  @BuiltValueField(wireName: r'a')
  String get a;

  @BuiltValueField(wireName: r'b')
  String get b;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'nShared')
  int get nShared;

  @BuiltValueField(wireName: r'label')
  ForecasterComparisonLabelEnum get label;
  // enum labelEnum {  ok,  insufficient,  };

  @BuiltValueField(wireName: r'metric')
  ForecasterComparisonMetricEnum get metric;
  // enum metricEnum {  brier,  };

  @BuiltValueField(wireName: r'meanScoreA')
  num? get meanScoreA;

  @BuiltValueField(wireName: r'meanScoreB')
  num? get meanScoreB;

  /// mean(A) − mean(B); negative favours A
  @BuiltValueField(wireName: r'meanDifference')
  num? get meanDifference;

  /// Paired bootstrap 95% interval (1,000 resamples, deterministic seed)
  @BuiltValueField(wireName: r'interval')
  StatInterval? get interval;

  @BuiltValueField(wireName: r'scorerVersion')
  String get scorerVersion;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  ForecasterComparison._();

  factory ForecasterComparison([void updates(ForecasterComparisonBuilder b)]) =
      _$ForecasterComparison;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecasterComparisonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecasterComparison> get serializer =>
      _$ForecasterComparisonSerializer();
}

class _$ForecasterComparisonSerializer
    implements PrimitiveSerializer<ForecasterComparison> {
  @override
  final Iterable<Type> types = const [
    ForecasterComparison,
    _$ForecasterComparison
  ];

  @override
  final String wireName = r'ForecasterComparison';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecasterComparison object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'a';
    yield serializers.serialize(
      object.a,
      specifiedType: const FullType(String),
    );
    yield r'b';
    yield serializers.serialize(
      object.b,
      specifiedType: const FullType(String),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'nShared';
    yield serializers.serialize(
      object.nShared,
      specifiedType: const FullType(int),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(ForecasterComparisonLabelEnum),
    );
    yield r'metric';
    yield serializers.serialize(
      object.metric,
      specifiedType: const FullType(ForecasterComparisonMetricEnum),
    );
    if (object.meanScoreA != null) {
      yield r'meanScoreA';
      yield serializers.serialize(
        object.meanScoreA,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.meanScoreB != null) {
      yield r'meanScoreB';
      yield serializers.serialize(
        object.meanScoreB,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.meanDifference != null) {
      yield r'meanDifference';
      yield serializers.serialize(
        object.meanDifference,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType.nullable(StatInterval),
      );
    }
    yield r'scorerVersion';
    yield serializers.serialize(
      object.scorerVersion,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecasterComparison object, {
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
    required ForecasterComparisonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'a':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.a = valueDes;
          break;
        case r'b':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.b = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'nShared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nShared = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ForecasterComparisonLabelEnum),
          ) as ForecasterComparisonLabelEnum;
          result.label = valueDes;
          break;
        case r'metric':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ForecasterComparisonMetricEnum),
          ) as ForecasterComparisonMetricEnum;
          result.metric = valueDes;
          break;
        case r'meanScoreA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meanScoreA = valueDes;
          break;
        case r'meanScoreB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meanScoreB = valueDes;
          break;
        case r'meanDifference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meanDifference = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatInterval),
          ) as StatInterval?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        case r'scorerVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scorerVersion = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecasterComparison deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecasterComparisonBuilder();
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

class ForecasterComparisonLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ForecasterComparisonLabelEnum ok =
      _$forecasterComparisonLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const ForecasterComparisonLabelEnum insufficient =
      _$forecasterComparisonLabelEnum_insufficient;

  static Serializer<ForecasterComparisonLabelEnum> get serializer =>
      _$forecasterComparisonLabelEnumSerializer;

  const ForecasterComparisonLabelEnum._(String name) : super(name);

  static BuiltSet<ForecasterComparisonLabelEnum> get values =>
      _$forecasterComparisonLabelEnumValues;
  static ForecasterComparisonLabelEnum valueOf(String name) =>
      _$forecasterComparisonLabelEnumValueOf(name);
}

class ForecasterComparisonMetricEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'brier')
  static const ForecasterComparisonMetricEnum brier =
      _$forecasterComparisonMetricEnum_brier;

  static Serializer<ForecasterComparisonMetricEnum> get serializer =>
      _$forecasterComparisonMetricEnumSerializer;

  const ForecasterComparisonMetricEnum._(String name) : super(name);

  static BuiltSet<ForecasterComparisonMetricEnum> get values =>
      _$forecasterComparisonMetricEnumValues;
  static ForecasterComparisonMetricEnum valueOf(String name) =>
      _$forecasterComparisonMetricEnumValueOf(name);
}
