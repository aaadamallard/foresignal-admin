//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_packet_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_packet_situations.g.dart';

/// Situation changes (118 snapshot diffs)
///
/// Properties:
/// * [new_]
/// * [activated]
/// * [escalated]
/// * [dormant]
/// * [closed]
@BuiltValue()
abstract class CyclePacketSituations
    implements Built<CyclePacketSituations, CyclePacketSituationsBuilder> {
  @BuiltValueField(wireName: r'new')
  BuiltList<CyclePacketItem>? get new_;

  @BuiltValueField(wireName: r'activated')
  BuiltList<CyclePacketItem>? get activated;

  @BuiltValueField(wireName: r'escalated')
  BuiltList<CyclePacketItem>? get escalated;

  @BuiltValueField(wireName: r'dormant')
  BuiltList<CyclePacketItem>? get dormant;

  @BuiltValueField(wireName: r'closed')
  BuiltList<CyclePacketItem>? get closed;

  CyclePacketSituations._();

  factory CyclePacketSituations(
      [void updates(CyclePacketSituationsBuilder b)]) = _$CyclePacketSituations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CyclePacketSituationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CyclePacketSituations> get serializer =>
      _$CyclePacketSituationsSerializer();
}

class _$CyclePacketSituationsSerializer
    implements PrimitiveSerializer<CyclePacketSituations> {
  @override
  final Iterable<Type> types = const [
    CyclePacketSituations,
    _$CyclePacketSituations
  ];

  @override
  final String wireName = r'CyclePacketSituations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CyclePacketSituations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.new_ != null) {
      yield r'new';
      yield serializers.serialize(
        object.new_,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.activated != null) {
      yield r'activated';
      yield serializers.serialize(
        object.activated,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.escalated != null) {
      yield r'escalated';
      yield serializers.serialize(
        object.escalated,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.dormant != null) {
      yield r'dormant';
      yield serializers.serialize(
        object.dormant,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.closed != null) {
      yield r'closed';
      yield serializers.serialize(
        object.closed,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CyclePacketSituations object, {
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
    required CyclePacketSituationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.new_.replace(valueDes);
          break;
        case r'activated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.activated.replace(valueDes);
          break;
        case r'escalated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.escalated.replace(valueDes);
          break;
        case r'dormant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.dormant.replace(valueDes);
          break;
        case r'closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(CyclePacketItem)]),
          ) as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.closed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CyclePacketSituations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CyclePacketSituationsBuilder();
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
