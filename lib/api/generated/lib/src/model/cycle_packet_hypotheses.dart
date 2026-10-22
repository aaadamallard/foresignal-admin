//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_packet_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_packet_hypotheses.g.dart';

/// Hypothesis changes
///
/// Properties:
/// * [revisions]
/// * [bandChanges]
/// * [indicatorsObserved]
/// * [indicatorsAbsent]
/// * [indicatorsUnknownCoverage]
/// * [assumptionsBroken]
/// * [assumptionsQuestioned]
/// * [dueForReview]
@BuiltValue()
abstract class CyclePacketHypotheses
    implements Built<CyclePacketHypotheses, CyclePacketHypothesesBuilder> {
  @BuiltValueField(wireName: r'revisions')
  BuiltList<CyclePacketItem>? get revisions;

  @BuiltValueField(wireName: r'bandChanges')
  BuiltList<CyclePacketItem>? get bandChanges;

  @BuiltValueField(wireName: r'indicatorsObserved')
  BuiltList<CyclePacketItem>? get indicatorsObserved;

  @BuiltValueField(wireName: r'indicatorsAbsent')
  BuiltList<CyclePacketItem>? get indicatorsAbsent;

  @BuiltValueField(wireName: r'indicatorsUnknownCoverage')
  BuiltList<CyclePacketItem>? get indicatorsUnknownCoverage;

  @BuiltValueField(wireName: r'assumptionsBroken')
  BuiltList<CyclePacketItem>? get assumptionsBroken;

  @BuiltValueField(wireName: r'assumptionsQuestioned')
  BuiltList<CyclePacketItem>? get assumptionsQuestioned;

  @BuiltValueField(wireName: r'dueForReview')
  BuiltList<CyclePacketItem>? get dueForReview;

  CyclePacketHypotheses._();

  factory CyclePacketHypotheses(
      [void updates(CyclePacketHypothesesBuilder b)]) = _$CyclePacketHypotheses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CyclePacketHypothesesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CyclePacketHypotheses> get serializer =>
      _$CyclePacketHypothesesSerializer();
}

class _$CyclePacketHypothesesSerializer
    implements PrimitiveSerializer<CyclePacketHypotheses> {
  @override
  final Iterable<Type> types = const [
    CyclePacketHypotheses,
    _$CyclePacketHypotheses
  ];

  @override
  final String wireName = r'CyclePacketHypotheses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CyclePacketHypotheses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.revisions != null) {
      yield r'revisions';
      yield serializers.serialize(
        object.revisions,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.bandChanges != null) {
      yield r'bandChanges';
      yield serializers.serialize(
        object.bandChanges,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.indicatorsObserved != null) {
      yield r'indicatorsObserved';
      yield serializers.serialize(
        object.indicatorsObserved,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.indicatorsAbsent != null) {
      yield r'indicatorsAbsent';
      yield serializers.serialize(
        object.indicatorsAbsent,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.indicatorsUnknownCoverage != null) {
      yield r'indicatorsUnknownCoverage';
      yield serializers.serialize(
        object.indicatorsUnknownCoverage,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.assumptionsBroken != null) {
      yield r'assumptionsBroken';
      yield serializers.serialize(
        object.assumptionsBroken,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.assumptionsQuestioned != null) {
      yield r'assumptionsQuestioned';
      yield serializers.serialize(
        object.assumptionsQuestioned,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.dueForReview != null) {
      yield r'dueForReview';
      yield serializers.serialize(
        object.dueForReview,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CyclePacketHypotheses object, {
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
    required CyclePacketHypothesesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revisions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.revisions.replace(valueDes);
          break;
        case r'bandChanges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.bandChanges.replace(valueDes);
          break;
        case r'indicatorsObserved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.indicatorsObserved.replace(valueDes);
          break;
        case r'indicatorsAbsent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.indicatorsAbsent.replace(valueDes);
          break;
        case r'indicatorsUnknownCoverage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.indicatorsUnknownCoverage.replace(valueDes);
          break;
        case r'assumptionsBroken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.assumptionsBroken.replace(valueDes);
          break;
        case r'assumptionsQuestioned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.assumptionsQuestioned.replace(valueDes);
          break;
        case r'dueForReview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.dueForReview.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CyclePacketHypotheses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CyclePacketHypothesesBuilder();
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
