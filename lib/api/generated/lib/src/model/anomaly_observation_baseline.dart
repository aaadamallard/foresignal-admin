//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_observation_baseline.g.dart';

/// Baseline summary used
///
/// Properties:
/// * [weeks]
/// * [slotMode]
/// * [mean]
/// * [variance]
/// * [model]
@BuiltValue()
abstract class AnomalyObservationBaseline
    implements
        Built<AnomalyObservationBaseline, AnomalyObservationBaselineBuilder> {
  @BuiltValueField(wireName: r'weeks')
  num get weeks;

  @BuiltValueField(wireName: r'slotMode')
  AnomalyObservationBaselineSlotModeEnum get slotMode;
  // enum slotModeEnum {  hour-of-week,  hour-of-day,  };

  @BuiltValueField(wireName: r'mean')
  num get mean;

  @BuiltValueField(wireName: r'variance')
  num get variance;

  @BuiltValueField(wireName: r'model')
  AnomalyObservationBaselineModelEnum get model;
  // enum modelEnum {  poisson,  nb,  };

  AnomalyObservationBaseline._();

  factory AnomalyObservationBaseline([
    void updates(AnomalyObservationBaselineBuilder b),
  ]) = _$AnomalyObservationBaseline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyObservationBaselineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyObservationBaseline> get serializer =>
      _$AnomalyObservationBaselineSerializer();
}

class _$AnomalyObservationBaselineSerializer
    implements PrimitiveSerializer<AnomalyObservationBaseline> {
  @override
  final Iterable<Type> types = const [
    AnomalyObservationBaseline,
    _$AnomalyObservationBaseline,
  ];

  @override
  final String wireName = r'AnomalyObservationBaseline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyObservationBaseline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'weeks';
    yield serializers.serialize(
      object.weeks,
      specifiedType: const FullType(num),
    );
    yield r'slotMode';
    yield serializers.serialize(
      object.slotMode,
      specifiedType: const FullType(AnomalyObservationBaselineSlotModeEnum),
    );
    yield r'mean';
    yield serializers.serialize(
      object.mean,
      specifiedType: const FullType(num),
    );
    yield r'variance';
    yield serializers.serialize(
      object.variance,
      specifiedType: const FullType(num),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(AnomalyObservationBaselineModelEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationBaseline object, {
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
    required AnomalyObservationBaselineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weeks':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.weeks = valueDes;
          break;
        case r'slotMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AnomalyObservationBaselineSlotModeEnum,
                    ),
                  )
                  as AnomalyObservationBaselineSlotModeEnum;
          result.slotMode = valueDes;
          break;
        case r'mean':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.mean = valueDes;
          break;
        case r'variance':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.variance = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AnomalyObservationBaselineModelEnum,
                    ),
                  )
                  as AnomalyObservationBaselineModelEnum;
          result.model = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyObservationBaseline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyObservationBaselineBuilder();
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

class AnomalyObservationBaselineSlotModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour-of-week')
  static const AnomalyObservationBaselineSlotModeEnum hourOfWeek =
      _$anomalyObservationBaselineSlotModeEnum_hourOfWeek;
  @BuiltValueEnumConst(wireName: r'hour-of-day')
  static const AnomalyObservationBaselineSlotModeEnum hourOfDay =
      _$anomalyObservationBaselineSlotModeEnum_hourOfDay;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnomalyObservationBaselineSlotModeEnum unknownDefaultOpenApi =
      _$anomalyObservationBaselineSlotModeEnum_unknownDefaultOpenApi;

  static Serializer<AnomalyObservationBaselineSlotModeEnum> get serializer =>
      _$anomalyObservationBaselineSlotModeEnumSerializer;

  const AnomalyObservationBaselineSlotModeEnum._(String name) : super(name);

  static BuiltSet<AnomalyObservationBaselineSlotModeEnum> get values =>
      _$anomalyObservationBaselineSlotModeEnumValues;
  static AnomalyObservationBaselineSlotModeEnum valueOf(String name) =>
      _$anomalyObservationBaselineSlotModeEnumValueOf(name);
}

class AnomalyObservationBaselineModelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'poisson')
  static const AnomalyObservationBaselineModelEnum poisson =
      _$anomalyObservationBaselineModelEnum_poisson;
  @BuiltValueEnumConst(wireName: r'nb')
  static const AnomalyObservationBaselineModelEnum nb =
      _$anomalyObservationBaselineModelEnum_nb;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnomalyObservationBaselineModelEnum unknownDefaultOpenApi =
      _$anomalyObservationBaselineModelEnum_unknownDefaultOpenApi;

  static Serializer<AnomalyObservationBaselineModelEnum> get serializer =>
      _$anomalyObservationBaselineModelEnumSerializer;

  const AnomalyObservationBaselineModelEnum._(String name) : super(name);

  static BuiltSet<AnomalyObservationBaselineModelEnum> get values =>
      _$anomalyObservationBaselineModelEnumValues;
  static AnomalyObservationBaselineModelEnum valueOf(String name) =>
      _$anomalyObservationBaselineModelEnumValueOf(name);
}
