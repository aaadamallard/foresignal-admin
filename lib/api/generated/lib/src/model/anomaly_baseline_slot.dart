//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_baseline_slot.g.dart';

/// Baseline statistics for one slot (hour-of-week or hour-of-day) of one group
///
/// Properties:
/// * [groupKey]
/// * [slot] - 0–167 (hour-of-week) or 0–23 (hour-of-day)
/// * [n] - Coverage-ok, unflagged samples
/// * [mean]
/// * [variance]
/// * [model]
@BuiltValue()
abstract class AnomalyBaselineSlot
    implements Built<AnomalyBaselineSlot, AnomalyBaselineSlotBuilder> {
  @BuiltValueField(wireName: r'groupKey')
  String get groupKey;

  /// 0–167 (hour-of-week) or 0–23 (hour-of-day)
  @BuiltValueField(wireName: r'slot')
  int get slot;

  /// Coverage-ok, unflagged samples
  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'mean')
  num get mean;

  @BuiltValueField(wireName: r'variance')
  num get variance;

  @BuiltValueField(wireName: r'model')
  AnomalyBaselineSlotModelEnum get model;
  // enum modelEnum {  poisson,  nb,  };

  AnomalyBaselineSlot._();

  factory AnomalyBaselineSlot([void updates(AnomalyBaselineSlotBuilder b)]) =
      _$AnomalyBaselineSlot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyBaselineSlotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyBaselineSlot> get serializer =>
      _$AnomalyBaselineSlotSerializer();
}

class _$AnomalyBaselineSlotSerializer
    implements PrimitiveSerializer<AnomalyBaselineSlot> {
  @override
  final Iterable<Type> types = const [
    AnomalyBaselineSlot,
    _$AnomalyBaselineSlot
  ];

  @override
  final String wireName = r'AnomalyBaselineSlot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyBaselineSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupKey';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    yield r'slot';
    yield serializers.serialize(
      object.slot,
      specifiedType: const FullType(int),
    );
    yield r'n';
    yield serializers.serialize(
      object.n,
      specifiedType: const FullType(int),
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
      specifiedType: const FullType(AnomalyBaselineSlotModelEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyBaselineSlot object, {
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
    required AnomalyBaselineSlotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupKey = valueDes;
          break;
        case r'slot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.slot = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n = valueDes;
          break;
        case r'mean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.mean = valueDes;
          break;
        case r'variance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.variance = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnomalyBaselineSlotModelEnum),
          ) as AnomalyBaselineSlotModelEnum;
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
  AnomalyBaselineSlot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyBaselineSlotBuilder();
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

class AnomalyBaselineSlotModelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'poisson')
  static const AnomalyBaselineSlotModelEnum poisson =
      _$anomalyBaselineSlotModelEnum_poisson;
  @BuiltValueEnumConst(wireName: r'nb')
  static const AnomalyBaselineSlotModelEnum nb =
      _$anomalyBaselineSlotModelEnum_nb;

  static Serializer<AnomalyBaselineSlotModelEnum> get serializer =>
      _$anomalyBaselineSlotModelEnumSerializer;

  const AnomalyBaselineSlotModelEnum._(String name) : super(name);

  static BuiltSet<AnomalyBaselineSlotModelEnum> get values =>
      _$anomalyBaselineSlotModelEnumValues;
  static AnomalyBaselineSlotModelEnum valueOf(String name) =>
      _$anomalyBaselineSlotModelEnumValueOf(name);
}
