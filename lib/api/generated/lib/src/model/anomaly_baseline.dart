//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/anomaly_baseline_slot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_baseline.g.dart';

/// Learned baseline of an anomaly rule
///
/// Properties:
/// * [ruleId]
/// * [slotMode]
/// * [bucket]
/// * [weeksAvailable]
/// * [minWeeks]
/// * [learning]
/// * [learningUntil]
/// * [lowConfidence]
/// * [samplePath] - Which store the samples come from
/// * [slots]
@BuiltValue()
abstract class AnomalyBaseline
    implements Built<AnomalyBaseline, AnomalyBaselineBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'slotMode')
  AnomalyBaselineSlotModeEnum get slotMode;
  // enum slotModeEnum {  hour-of-week,  hour-of-day,  };

  @BuiltValueField(wireName: r'bucket')
  AnomalyBaselineBucketEnum get bucket;
  // enum bucketEnum {  15m,  1h,  };

  @BuiltValueField(wireName: r'weeksAvailable')
  num get weeksAvailable;

  @BuiltValueField(wireName: r'minWeeks')
  int? get minWeeks;

  @BuiltValueField(wireName: r'learning')
  bool get learning;

  @BuiltValueField(wireName: r'learningUntil')
  DateTime? get learningUntil;

  @BuiltValueField(wireName: r'lowConfidence')
  bool? get lowConfidence;

  /// Which store the samples come from
  @BuiltValueField(wireName: r'samplePath')
  AnomalyBaselineSamplePathEnum? get samplePath;
  // enum samplePathEnum {  activity_sample,  activity_rollup,  };

  @BuiltValueField(wireName: r'slots')
  BuiltList<AnomalyBaselineSlot> get slots;

  AnomalyBaseline._();

  factory AnomalyBaseline([void updates(AnomalyBaselineBuilder b)]) =
      _$AnomalyBaseline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyBaselineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyBaseline> get serializer =>
      _$AnomalyBaselineSerializer();
}

class _$AnomalyBaselineSerializer
    implements PrimitiveSerializer<AnomalyBaseline> {
  @override
  final Iterable<Type> types = const [AnomalyBaseline, _$AnomalyBaseline];

  @override
  final String wireName = r'AnomalyBaseline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyBaseline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'slotMode';
    yield serializers.serialize(
      object.slotMode,
      specifiedType: const FullType(AnomalyBaselineSlotModeEnum),
    );
    yield r'bucket';
    yield serializers.serialize(
      object.bucket,
      specifiedType: const FullType(AnomalyBaselineBucketEnum),
    );
    yield r'weeksAvailable';
    yield serializers.serialize(
      object.weeksAvailable,
      specifiedType: const FullType(num),
    );
    if (object.minWeeks != null) {
      yield r'minWeeks';
      yield serializers.serialize(
        object.minWeeks,
        specifiedType: const FullType(int),
      );
    }
    yield r'learning';
    yield serializers.serialize(
      object.learning,
      specifiedType: const FullType(bool),
    );
    if (object.learningUntil != null) {
      yield r'learningUntil';
      yield serializers.serialize(
        object.learningUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lowConfidence != null) {
      yield r'lowConfidence';
      yield serializers.serialize(
        object.lowConfidence,
        specifiedType: const FullType(bool),
      );
    }
    if (object.samplePath != null) {
      yield r'samplePath';
      yield serializers.serialize(
        object.samplePath,
        specifiedType: const FullType(AnomalyBaselineSamplePathEnum),
      );
    }
    yield r'slots';
    yield serializers.serialize(
      object.slots,
      specifiedType: const FullType(BuiltList, [FullType(AnomalyBaselineSlot)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyBaseline object, {
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
    required AnomalyBaselineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'slotMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnomalyBaselineSlotModeEnum),
          ) as AnomalyBaselineSlotModeEnum;
          result.slotMode = valueDes;
          break;
        case r'bucket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnomalyBaselineBucketEnum),
          ) as AnomalyBaselineBucketEnum;
          result.bucket = valueDes;
          break;
        case r'weeksAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.weeksAvailable = valueDes;
          break;
        case r'minWeeks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minWeeks = valueDes;
          break;
        case r'learning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.learning = valueDes;
          break;
        case r'learningUntil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.learningUntil = valueDes;
          break;
        case r'lowConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.lowConfidence = valueDes;
          break;
        case r'samplePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AnomalyBaselineSamplePathEnum),
          ) as AnomalyBaselineSamplePathEnum?;
          if (valueDes == null) continue;
          result.samplePath = valueDes;
          break;
        case r'slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AnomalyBaselineSlot)]),
          ) as BuiltList<AnomalyBaselineSlot>;
          result.slots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyBaseline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyBaselineBuilder();
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

class AnomalyBaselineSlotModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour-of-week')
  static const AnomalyBaselineSlotModeEnum hourOfWeek =
      _$anomalyBaselineSlotModeEnum_hourOfWeek;
  @BuiltValueEnumConst(wireName: r'hour-of-day')
  static const AnomalyBaselineSlotModeEnum hourOfDay =
      _$anomalyBaselineSlotModeEnum_hourOfDay;

  static Serializer<AnomalyBaselineSlotModeEnum> get serializer =>
      _$anomalyBaselineSlotModeEnumSerializer;

  const AnomalyBaselineSlotModeEnum._(String name) : super(name);

  static BuiltSet<AnomalyBaselineSlotModeEnum> get values =>
      _$anomalyBaselineSlotModeEnumValues;
  static AnomalyBaselineSlotModeEnum valueOf(String name) =>
      _$anomalyBaselineSlotModeEnumValueOf(name);
}

class AnomalyBaselineBucketEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'15m')
  static const AnomalyBaselineBucketEnum n15m =
      _$anomalyBaselineBucketEnum_n15m;
  @BuiltValueEnumConst(wireName: r'1h')
  static const AnomalyBaselineBucketEnum n1h = _$anomalyBaselineBucketEnum_n1h;

  static Serializer<AnomalyBaselineBucketEnum> get serializer =>
      _$anomalyBaselineBucketEnumSerializer;

  const AnomalyBaselineBucketEnum._(String name) : super(name);

  static BuiltSet<AnomalyBaselineBucketEnum> get values =>
      _$anomalyBaselineBucketEnumValues;
  static AnomalyBaselineBucketEnum valueOf(String name) =>
      _$anomalyBaselineBucketEnumValueOf(name);
}

/// Which store the samples come from
class AnomalyBaselineSamplePathEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'activity_sample')
  static const AnomalyBaselineSamplePathEnum activitySample =
      _$anomalyBaselineSamplePathEnum_activitySample;
  @BuiltValueEnumConst(wireName: r'activity_rollup')
  static const AnomalyBaselineSamplePathEnum activityRollup =
      _$anomalyBaselineSamplePathEnum_activityRollup;

  static Serializer<AnomalyBaselineSamplePathEnum> get serializer =>
      _$anomalyBaselineSamplePathEnumSerializer;

  const AnomalyBaselineSamplePathEnum._(String name) : super(name);

  static BuiltSet<AnomalyBaselineSamplePathEnum> get values =>
      _$anomalyBaselineSamplePathEnumValues;
  static AnomalyBaselineSamplePathEnum valueOf(String name) =>
      _$anomalyBaselineSamplePathEnumValueOf(name);
}
