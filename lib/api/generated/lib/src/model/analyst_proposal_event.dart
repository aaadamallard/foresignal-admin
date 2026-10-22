//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analyst_proposal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_proposal_event.g.dart';

/// SSE payload `analyst.proposal` on topic `analyst`
///
/// Properties:
/// * [change]
/// * [proposal]
@BuiltValue()
abstract class AnalystProposalEvent
    implements Built<AnalystProposalEvent, AnalystProposalEventBuilder> {
  @BuiltValueField(wireName: r'change')
  AnalystProposalEventChangeEnum get change;
  // enum changeEnum {  created,  executed,  rejected,  expired,  failed,  };

  @BuiltValueField(wireName: r'proposal')
  AnalystProposal get proposal;

  AnalystProposalEvent._();

  factory AnalystProposalEvent([void updates(AnalystProposalEventBuilder b)]) =
      _$AnalystProposalEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProposalEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProposalEvent> get serializer =>
      _$AnalystProposalEventSerializer();
}

class _$AnalystProposalEventSerializer
    implements PrimitiveSerializer<AnalystProposalEvent> {
  @override
  final Iterable<Type> types = const [
    AnalystProposalEvent,
    _$AnalystProposalEvent,
  ];

  @override
  final String wireName = r'AnalystProposalEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProposalEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'change';
    yield serializers.serialize(
      object.change,
      specifiedType: const FullType(AnalystProposalEventChangeEnum),
    );
    yield r'proposal';
    yield serializers.serialize(
      object.proposal,
      specifiedType: const FullType(AnalystProposal),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProposalEvent object, {
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
    required AnalystProposalEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'change':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AnalystProposalEventChangeEnum,
                    ),
                  )
                  as AnalystProposalEventChangeEnum;
          result.change = valueDes;
          break;
        case r'proposal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystProposal),
                  )
                  as AnalystProposal;
          result.proposal.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProposalEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProposalEventBuilder();
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

class AnalystProposalEventChangeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'created')
  static const AnalystProposalEventChangeEnum created =
      _$analystProposalEventChangeEnum_created;
  @BuiltValueEnumConst(wireName: r'executed')
  static const AnalystProposalEventChangeEnum executed =
      _$analystProposalEventChangeEnum_executed;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AnalystProposalEventChangeEnum rejected =
      _$analystProposalEventChangeEnum_rejected;
  @BuiltValueEnumConst(wireName: r'expired')
  static const AnalystProposalEventChangeEnum expired =
      _$analystProposalEventChangeEnum_expired;
  @BuiltValueEnumConst(wireName: r'failed')
  static const AnalystProposalEventChangeEnum failed =
      _$analystProposalEventChangeEnum_failed;

  static Serializer<AnalystProposalEventChangeEnum> get serializer =>
      _$analystProposalEventChangeEnumSerializer;

  const AnalystProposalEventChangeEnum._(String name) : super(name);

  static BuiltSet<AnalystProposalEventChangeEnum> get values =>
      _$analystProposalEventChangeEnumValues;
  static AnalystProposalEventChangeEnum valueOf(String name) =>
      _$analystProposalEventChangeEnumValueOf(name);
}
