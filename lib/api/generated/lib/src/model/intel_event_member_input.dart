//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_member_input.g.dart';

/// A member to add to an intelligence event; the referenced item must exist (records are verified by seq)
///
/// Properties:
/// * [memberType]
/// * [role]
/// * [sourceId]
/// * [externalId]
/// * [seq] - Required for records
/// * [alertId]
/// * [anomalyId]
/// * [eventId] - ULID identifier
/// * [signalFamily] - Ignored: the server derives a member's signal family from the recipe registry (invariant INT-3). Accepted for compatibility only.
/// * [weight] - Ignored: the server derives a member's weight from the recipe registry (invariant INT-3). Accepted for compatibility only.
@BuiltValue()
abstract class IntelEventMemberInput
    implements Built<IntelEventMemberInput, IntelEventMemberInputBuilder> {
  @BuiltValueField(wireName: r'memberType')
  IntelEventMemberInputMemberTypeEnum get memberType;
  // enum memberTypeEnum {  record,  alert,  anomaly,  event,  };

  @BuiltValueField(wireName: r'role')
  IntelEventMemberInputRoleEnum? get role;
  // enum roleEnum {  supporting,  contradicting,  context,  };

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  /// Required for records
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  @BuiltValueField(wireName: r'anomalyId')
  int? get anomalyId;

  /// ULID identifier
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  /// Ignored: the server derives a member's signal family from the recipe registry (invariant INT-3). Accepted for compatibility only.
  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  /// Ignored: the server derives a member's weight from the recipe registry (invariant INT-3). Accepted for compatibility only.
  @BuiltValueField(wireName: r'weight')
  num? get weight;

  IntelEventMemberInput._();

  factory IntelEventMemberInput([
    void updates(IntelEventMemberInputBuilder b),
  ]) = _$IntelEventMemberInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventMemberInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventMemberInput> get serializer =>
      _$IntelEventMemberInputSerializer();
}

class _$IntelEventMemberInputSerializer
    implements PrimitiveSerializer<IntelEventMemberInput> {
  @override
  final Iterable<Type> types = const [
    IntelEventMemberInput,
    _$IntelEventMemberInput,
  ];

  @override
  final String wireName = r'IntelEventMemberInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventMemberInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberType';
    yield serializers.serialize(
      object.memberType,
      specifiedType: const FullType(IntelEventMemberInputMemberTypeEnum),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(IntelEventMemberInputRoleEnum),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType(int),
      );
    }
    if (object.anomalyId != null) {
      yield r'anomalyId';
      yield serializers.serialize(
        object.anomalyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.eventId != null) {
      yield r'eventId';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType(String),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType(String),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventMemberInput object, {
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
    required IntelEventMemberInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'memberType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelEventMemberInputMemberTypeEnum,
                    ),
                  )
                  as IntelEventMemberInputMemberTypeEnum;
          result.memberType = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelEventMemberInputRoleEnum,
                    ),
                  )
                  as IntelEventMemberInputRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'alertId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'anomalyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.anomalyId = valueDes;
          break;
        case r'eventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.eventId = valueDes;
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        case r'weight':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventMemberInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventMemberInputBuilder();
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

class IntelEventMemberInputMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const IntelEventMemberInputMemberTypeEnum record =
      _$intelEventMemberInputMemberTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const IntelEventMemberInputMemberTypeEnum alert =
      _$intelEventMemberInputMemberTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const IntelEventMemberInputMemberTypeEnum anomaly =
      _$intelEventMemberInputMemberTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'event')
  static const IntelEventMemberInputMemberTypeEnum event =
      _$intelEventMemberInputMemberTypeEnum_event;

  static Serializer<IntelEventMemberInputMemberTypeEnum> get serializer =>
      _$intelEventMemberInputMemberTypeEnumSerializer;

  const IntelEventMemberInputMemberTypeEnum._(String name) : super(name);

  static BuiltSet<IntelEventMemberInputMemberTypeEnum> get values =>
      _$intelEventMemberInputMemberTypeEnumValues;
  static IntelEventMemberInputMemberTypeEnum valueOf(String name) =>
      _$intelEventMemberInputMemberTypeEnumValueOf(name);
}

class IntelEventMemberInputRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supporting')
  static const IntelEventMemberInputRoleEnum supporting =
      _$intelEventMemberInputRoleEnum_supporting;
  @BuiltValueEnumConst(wireName: r'contradicting')
  static const IntelEventMemberInputRoleEnum contradicting =
      _$intelEventMemberInputRoleEnum_contradicting;
  @BuiltValueEnumConst(wireName: r'context')
  static const IntelEventMemberInputRoleEnum context =
      _$intelEventMemberInputRoleEnum_context;

  static Serializer<IntelEventMemberInputRoleEnum> get serializer =>
      _$intelEventMemberInputRoleEnumSerializer;

  const IntelEventMemberInputRoleEnum._(String name) : super(name);

  static BuiltSet<IntelEventMemberInputRoleEnum> get values =>
      _$intelEventMemberInputRoleEnumValues;
  static IntelEventMemberInputRoleEnum valueOf(String name) =>
      _$intelEventMemberInputRoleEnumValueOf(name);
}
