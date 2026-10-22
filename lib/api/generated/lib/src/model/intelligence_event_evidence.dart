//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_event_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intelligence_event_evidence.g.dart';

/// Observed members
///
/// Properties:
/// * [memberCount]
/// * [signalFamilies]
/// * [members]
@BuiltValue()
abstract class IntelligenceEventEvidence
    implements
        Built<IntelligenceEventEvidence, IntelligenceEventEvidenceBuilder> {
  @BuiltValueField(wireName: r'memberCount')
  int get memberCount;

  @BuiltValueField(wireName: r'signalFamilies')
  BuiltList<String>? get signalFamilies;

  @BuiltValueField(wireName: r'members')
  BuiltList<IntelEventMember> get members;

  IntelligenceEventEvidence._();

  factory IntelligenceEventEvidence(
          [void updates(IntelligenceEventEvidenceBuilder b)]) =
      _$IntelligenceEventEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelligenceEventEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelligenceEventEvidence> get serializer =>
      _$IntelligenceEventEvidenceSerializer();
}

class _$IntelligenceEventEvidenceSerializer
    implements PrimitiveSerializer<IntelligenceEventEvidence> {
  @override
  final Iterable<Type> types = const [
    IntelligenceEventEvidence,
    _$IntelligenceEventEvidence
  ];

  @override
  final String wireName = r'IntelligenceEventEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelligenceEventEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberCount';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
    if (object.signalFamilies != null) {
      yield r'signalFamilies';
      yield serializers.serialize(
        object.signalFamilies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(IntelEventMember)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventEvidence object, {
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
    required IntelligenceEventEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'memberCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberCount = valueDes;
          break;
        case r'signalFamilies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.signalFamilies.replace(valueDes);
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(IntelEventMember)]),
          ) as BuiltList<IntelEventMember>;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelligenceEventEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligenceEventEvidenceBuilder();
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
