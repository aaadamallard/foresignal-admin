//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_member_input.g.dart';

/// A member to add to a situation; records are pinned and verified by `seq`
///
/// Properties:
/// * [memberType]
/// * [ref] - Member id, or `sourceId/externalId` for records
/// * [seq] - Record version seq to pin (required for records)
/// * [role]
/// * [moveFromSituationId] - Move the member from this situation (logged on both)
@BuiltValue()
abstract class SituationMemberInput
    implements Built<SituationMemberInput, SituationMemberInputBuilder> {
  @BuiltValueField(wireName: r'memberType')
  SituationMemberInputMemberTypeEnum get memberType;
  // enum memberTypeEnum {  intel_event,  finding,  alert,  anomaly,  record,  investigation,  };

  /// Member id, or `sourceId/externalId` for records
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Record version seq to pin (required for records)
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'role')
  SituationMemberInputRoleEnum? get role;
  // enum roleEnum {  core,  context,  };

  /// Move the member from this situation (logged on both)
  @BuiltValueField(wireName: r'moveFromSituationId')
  String? get moveFromSituationId;

  SituationMemberInput._();

  factory SituationMemberInput([void updates(SituationMemberInputBuilder b)]) =
      _$SituationMemberInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationMemberInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationMemberInput> get serializer =>
      _$SituationMemberInputSerializer();
}

class _$SituationMemberInputSerializer
    implements PrimitiveSerializer<SituationMemberInput> {
  @override
  final Iterable<Type> types = const [
    SituationMemberInput,
    _$SituationMemberInput,
  ];

  @override
  final String wireName = r'SituationMemberInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationMemberInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberType';
    yield serializers.serialize(
      object.memberType,
      specifiedType: const FullType(SituationMemberInputMemberTypeEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(SituationMemberInputRoleEnum),
      );
    }
    if (object.moveFromSituationId != null) {
      yield r'moveFromSituationId';
      yield serializers.serialize(
        object.moveFromSituationId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationMemberInput object, {
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
    required SituationMemberInputBuilder result,
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
                      SituationMemberInputMemberTypeEnum,
                    ),
                  )
                  as SituationMemberInputMemberTypeEnum;
          result.memberType = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
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
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationMemberInputRoleEnum,
                    ),
                  )
                  as SituationMemberInputRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'moveFromSituationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.moveFromSituationId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationMemberInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationMemberInputBuilder();
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

class SituationMemberInputMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'intel_event')
  static const SituationMemberInputMemberTypeEnum intelEvent =
      _$situationMemberInputMemberTypeEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'finding')
  static const SituationMemberInputMemberTypeEnum finding =
      _$situationMemberInputMemberTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'alert')
  static const SituationMemberInputMemberTypeEnum alert =
      _$situationMemberInputMemberTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const SituationMemberInputMemberTypeEnum anomaly =
      _$situationMemberInputMemberTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'record')
  static const SituationMemberInputMemberTypeEnum record =
      _$situationMemberInputMemberTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const SituationMemberInputMemberTypeEnum investigation =
      _$situationMemberInputMemberTypeEnum_investigation;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SituationMemberInputMemberTypeEnum unknownDefaultOpenApi =
      _$situationMemberInputMemberTypeEnum_unknownDefaultOpenApi;

  static Serializer<SituationMemberInputMemberTypeEnum> get serializer =>
      _$situationMemberInputMemberTypeEnumSerializer;

  const SituationMemberInputMemberTypeEnum._(String name) : super(name);

  static BuiltSet<SituationMemberInputMemberTypeEnum> get values =>
      _$situationMemberInputMemberTypeEnumValues;
  static SituationMemberInputMemberTypeEnum valueOf(String name) =>
      _$situationMemberInputMemberTypeEnumValueOf(name);
}

class SituationMemberInputRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'core')
  static const SituationMemberInputRoleEnum core =
      _$situationMemberInputRoleEnum_core;
  @BuiltValueEnumConst(wireName: r'context')
  static const SituationMemberInputRoleEnum context =
      _$situationMemberInputRoleEnum_context;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SituationMemberInputRoleEnum unknownDefaultOpenApi =
      _$situationMemberInputRoleEnum_unknownDefaultOpenApi;

  static Serializer<SituationMemberInputRoleEnum> get serializer =>
      _$situationMemberInputRoleEnumSerializer;

  const SituationMemberInputRoleEnum._(String name) : super(name);

  static BuiltSet<SituationMemberInputRoleEnum> get values =>
      _$situationMemberInputRoleEnumValues;
  static SituationMemberInputRoleEnum valueOf(String name) =>
      _$situationMemberInputRoleEnumValueOf(name);
}
