//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_event_member_join_reason.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_member.g.dart';

/// An evidence member of an intelligence event, pinned to an exact version with the join reason that admitted it
///
/// Properties:
/// * [id] - Member id
/// * [role]
/// * [memberType]
/// * [sourceId]
/// * [externalId]
/// * [seq] - Pinned version seq
/// * [version]
/// * [alertId]
/// * [anomalyId]
/// * [eventId] - ULID identifier
/// * [kind]
/// * [observedAt]
/// * [joinReason]
/// * [signalFamily] - Signal family from the shared registry (`intel/signal-families.json`, 119), e.g. `ais-behaviour`, `nav-warning`, `internet-measurement`
/// * [weight]
/// * [snapshot] - Payload snapshot (≤ 16 KB) so the evidence survives retention
/// * [addedAt]
/// * [addedBy] - Token id or `recipe:<id>`
@BuiltValue()
abstract class IntelEventMember
    implements Built<IntelEventMember, IntelEventMemberBuilder> {
  /// Member id
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'role')
  IntelEventMemberRoleEnum get role;
  // enum roleEnum {  supporting,  contradicting,  context,  };

  @BuiltValueField(wireName: r'memberType')
  IntelEventMemberMemberTypeEnum get memberType;
  // enum memberTypeEnum {  record,  alert,  anomaly,  event,  };

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  /// Pinned version seq
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  @BuiltValueField(wireName: r'anomalyId')
  int? get anomalyId;

  /// ULID identifier
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  @BuiltValueField(wireName: r'joinReason')
  IntelEventMemberJoinReason? get joinReason;

  /// Signal family from the shared registry (`intel/signal-families.json`, 119), e.g. `ais-behaviour`, `nav-warning`, `internet-measurement`
  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'weight')
  num? get weight;

  /// Payload snapshot (≤ 16 KB) so the evidence survives retention
  @BuiltValueField(wireName: r'snapshot')
  BuiltMap<String, JsonObject?>? get snapshot;

  @BuiltValueField(wireName: r'addedAt')
  DateTime get addedAt;

  /// Token id or `recipe:<id>`
  @BuiltValueField(wireName: r'addedBy')
  String get addedBy;

  IntelEventMember._();

  factory IntelEventMember([void updates(IntelEventMemberBuilder b)]) =
      _$IntelEventMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventMember> get serializer =>
      _$IntelEventMemberSerializer();
}

class _$IntelEventMemberSerializer
    implements PrimitiveSerializer<IntelEventMember> {
  @override
  final Iterable<Type> types = const [IntelEventMember, _$IntelEventMember];

  @override
  final String wireName = r'IntelEventMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(IntelEventMemberRoleEnum),
    );
    yield r'memberType';
    yield serializers.serialize(
      object.memberType,
      specifiedType: const FullType(IntelEventMemberMemberTypeEnum),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.anomalyId != null) {
      yield r'anomalyId';
      yield serializers.serialize(
        object.anomalyId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.eventId != null) {
      yield r'eventId';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.joinReason != null) {
      yield r'joinReason';
      yield serializers.serialize(
        object.joinReason,
        specifiedType: const FullType(IntelEventMemberJoinReason),
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
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.snapshot != null) {
      yield r'snapshot';
      yield serializers.serialize(
        object.snapshot,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'addedAt';
    yield serializers.serialize(
      object.addedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'addedBy';
    yield serializers.serialize(
      object.addedBy,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventMember object, {
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
    required IntelEventMemberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntelEventMemberRoleEnum),
                  )
                  as IntelEventMemberRoleEnum;
          result.role = valueDes;
          break;
        case r'memberType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelEventMemberMemberTypeEnum,
                    ),
                  )
                  as IntelEventMemberMemberTypeEnum;
          result.memberType = valueDes;
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
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
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
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'joinReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelEventMemberJoinReason,
                    ),
                  )
                  as IntelEventMemberJoinReason?;
          if (valueDes == null) continue;
          result.joinReason.replace(valueDes);
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
        case r'snapshot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.snapshot.replace(valueDes);
          break;
        case r'addedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.addedAt = valueDes;
          break;
        case r'addedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.addedBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventMemberBuilder();
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

class IntelEventMemberRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supporting')
  static const IntelEventMemberRoleEnum supporting =
      _$intelEventMemberRoleEnum_supporting;
  @BuiltValueEnumConst(wireName: r'contradicting')
  static const IntelEventMemberRoleEnum contradicting =
      _$intelEventMemberRoleEnum_contradicting;
  @BuiltValueEnumConst(wireName: r'context')
  static const IntelEventMemberRoleEnum context =
      _$intelEventMemberRoleEnum_context;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventMemberRoleEnum unknownDefaultOpenApi =
      _$intelEventMemberRoleEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventMemberRoleEnum> get serializer =>
      _$intelEventMemberRoleEnumSerializer;

  const IntelEventMemberRoleEnum._(String name) : super(name);

  static BuiltSet<IntelEventMemberRoleEnum> get values =>
      _$intelEventMemberRoleEnumValues;
  static IntelEventMemberRoleEnum valueOf(String name) =>
      _$intelEventMemberRoleEnumValueOf(name);
}

class IntelEventMemberMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const IntelEventMemberMemberTypeEnum record =
      _$intelEventMemberMemberTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const IntelEventMemberMemberTypeEnum alert =
      _$intelEventMemberMemberTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const IntelEventMemberMemberTypeEnum anomaly =
      _$intelEventMemberMemberTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'event')
  static const IntelEventMemberMemberTypeEnum event =
      _$intelEventMemberMemberTypeEnum_event;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventMemberMemberTypeEnum unknownDefaultOpenApi =
      _$intelEventMemberMemberTypeEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventMemberMemberTypeEnum> get serializer =>
      _$intelEventMemberMemberTypeEnumSerializer;

  const IntelEventMemberMemberTypeEnum._(String name) : super(name);

  static BuiltSet<IntelEventMemberMemberTypeEnum> get values =>
      _$intelEventMemberMemberTypeEnumValues;
  static IntelEventMemberMemberTypeEnum valueOf(String name) =>
      _$intelEventMemberMemberTypeEnumValueOf(name);
}
