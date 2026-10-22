//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_record_payload.g.dart';

/// Payload of `rule-windows` records of kind `anomaly` (externalId `{ruleId}:{groupKey}`)
///
/// Properties:
/// * [ruleId]
/// * [name]
/// * [groupKey]
/// * [state]
/// * [observed]
/// * [expected]
/// * [pValue]
/// * [classification]
/// * [detector]
/// * [automated]
@BuiltValue()
abstract class AnomalyRecordPayload
    implements Built<AnomalyRecordPayload, AnomalyRecordPayloadBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'groupKey')
  String get groupKey;

  @BuiltValueField(wireName: r'state')
  AnomalyRecordPayloadStateEnum? get state;
  // enum stateEnum {  active,  clear,  unknown,  learning,  };

  @BuiltValueField(wireName: r'observed')
  int? get observed;

  @BuiltValueField(wireName: r'expected')
  num? get expected;

  @BuiltValueField(wireName: r'pValue')
  num? get pValue;

  @BuiltValueField(wireName: r'classification')
  AnomalyRecordPayloadClassificationEnum get classification;
  // enum classificationEnum {  activity-up,  activity-down,  coverage-drop,  insufficient-coverage,  learning,  normal,  };

  @BuiltValueField(wireName: r'detector')
  DetectorRef? get detector;

  @BuiltValueField(wireName: r'automated')
  bool? get automated;

  AnomalyRecordPayload._();

  factory AnomalyRecordPayload([void updates(AnomalyRecordPayloadBuilder b)]) =
      _$AnomalyRecordPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyRecordPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyRecordPayload> get serializer =>
      _$AnomalyRecordPayloadSerializer();
}

class _$AnomalyRecordPayloadSerializer
    implements PrimitiveSerializer<AnomalyRecordPayload> {
  @override
  final Iterable<Type> types = const [
    AnomalyRecordPayload,
    _$AnomalyRecordPayload,
  ];

  @override
  final String wireName = r'AnomalyRecordPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyRecordPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'groupKey';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(AnomalyRecordPayloadStateEnum),
      );
    }
    if (object.observed != null) {
      yield r'observed';
      yield serializers.serialize(
        object.observed,
        specifiedType: const FullType(int),
      );
    }
    if (object.expected != null) {
      yield r'expected';
      yield serializers.serialize(
        object.expected,
        specifiedType: const FullType(num),
      );
    }
    if (object.pValue != null) {
      yield r'pValue';
      yield serializers.serialize(
        object.pValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'classification';
    yield serializers.serialize(
      object.classification,
      specifiedType: const FullType(AnomalyRecordPayloadClassificationEnum),
    );
    if (object.detector != null) {
      yield r'detector';
      yield serializers.serialize(
        object.detector,
        specifiedType: const FullType(DetectorRef),
      );
    }
    if (object.automated != null) {
      yield r'automated';
      yield serializers.serialize(
        object.automated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyRecordPayload object, {
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
    required AnomalyRecordPayloadBuilder result,
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'groupKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.groupKey = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnomalyRecordPayloadStateEnum,
                    ),
                  )
                  as AnomalyRecordPayloadStateEnum?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'observed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.observed = valueDes;
          break;
        case r'expected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.expected = valueDes;
          break;
        case r'pValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pValue = valueDes;
          break;
        case r'classification':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AnomalyRecordPayloadClassificationEnum,
                    ),
                  )
                  as AnomalyRecordPayloadClassificationEnum;
          result.classification = valueDes;
          break;
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DetectorRef),
                  )
                  as DetectorRef?;
          if (valueDes == null) continue;
          result.detector.replace(valueDes);
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.automated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyRecordPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyRecordPayloadBuilder();
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

class AnomalyRecordPayloadStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const AnomalyRecordPayloadStateEnum active =
      _$anomalyRecordPayloadStateEnum_active;
  @BuiltValueEnumConst(wireName: r'clear')
  static const AnomalyRecordPayloadStateEnum clear =
      _$anomalyRecordPayloadStateEnum_clear;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const AnomalyRecordPayloadStateEnum unknown =
      _$anomalyRecordPayloadStateEnum_unknown;
  @BuiltValueEnumConst(wireName: r'learning')
  static const AnomalyRecordPayloadStateEnum learning =
      _$anomalyRecordPayloadStateEnum_learning;

  static Serializer<AnomalyRecordPayloadStateEnum> get serializer =>
      _$anomalyRecordPayloadStateEnumSerializer;

  const AnomalyRecordPayloadStateEnum._(String name) : super(name);

  static BuiltSet<AnomalyRecordPayloadStateEnum> get values =>
      _$anomalyRecordPayloadStateEnumValues;
  static AnomalyRecordPayloadStateEnum valueOf(String name) =>
      _$anomalyRecordPayloadStateEnumValueOf(name);
}

class AnomalyRecordPayloadClassificationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'activity-up')
  static const AnomalyRecordPayloadClassificationEnum activityUp =
      _$anomalyRecordPayloadClassificationEnum_activityUp;
  @BuiltValueEnumConst(wireName: r'activity-down')
  static const AnomalyRecordPayloadClassificationEnum activityDown =
      _$anomalyRecordPayloadClassificationEnum_activityDown;
  @BuiltValueEnumConst(wireName: r'coverage-drop')
  static const AnomalyRecordPayloadClassificationEnum coverageDrop =
      _$anomalyRecordPayloadClassificationEnum_coverageDrop;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const AnomalyRecordPayloadClassificationEnum insufficientCoverage =
      _$anomalyRecordPayloadClassificationEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'learning')
  static const AnomalyRecordPayloadClassificationEnum learning =
      _$anomalyRecordPayloadClassificationEnum_learning;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnomalyRecordPayloadClassificationEnum normal =
      _$anomalyRecordPayloadClassificationEnum_normal;

  static Serializer<AnomalyRecordPayloadClassificationEnum> get serializer =>
      _$anomalyRecordPayloadClassificationEnumSerializer;

  const AnomalyRecordPayloadClassificationEnum._(String name) : super(name);

  static BuiltSet<AnomalyRecordPayloadClassificationEnum> get values =>
      _$anomalyRecordPayloadClassificationEnumValues;
  static AnomalyRecordPayloadClassificationEnum valueOf(String name) =>
      _$anomalyRecordPayloadClassificationEnumValueOf(name);
}
