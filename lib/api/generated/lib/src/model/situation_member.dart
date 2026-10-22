//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_join_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_member.g.dart';

/// A pinned member of a situation with its join reason and corroboration status
///
/// Properties:
/// * [id] - ULID identifier
/// * [situationId] - ULID identifier
/// * [memberType] - Member type
/// * [ref] - Member id, or `sourceId/externalId` for records
/// * [objectRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [seq] - Pinned record version seq (records)
/// * [version] - Pinned record version number (records)
/// * [kind] - Record kind or member kind
/// * [signalFamily] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
/// * [title] - Display title of the referenced object
/// * [severity] - Severity of the referenced object as it reported it
/// * [observedAt] - When the member was observed
/// * [role] - `core` members drive status and severity; `context` members do not
/// * [joinReason]
/// * [corroboration] - 116 evidence-group roll-up for this member
/// * [addedAt]
/// * [addedBy] - Actor: token id, `linker:<version>` or `analyst:<profile>`
@BuiltValue()
abstract class SituationMember
    implements Built<SituationMember, SituationMemberBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String get situationId;

  /// Member type
  @BuiltValueField(wireName: r'memberType')
  SituationMemberMemberTypeEnum get memberType;
  // enum memberTypeEnum {  intel_event,  finding,  alert,  anomaly,  record,  investigation,  };

  /// Member id, or `sourceId/externalId` for records
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'objectRef')
  String get objectRef;

  /// Pinned record version seq (records)
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  /// Pinned record version number (records)
  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Record kind or member kind
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  /// Display title of the referenced object
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Severity of the referenced object as it reported it
  @BuiltValueField(wireName: r'severity')
  String? get severity;

  /// When the member was observed
  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// `core` members drive status and severity; `context` members do not
  @BuiltValueField(wireName: r'role')
  SituationMemberRoleEnum get role;
  // enum roleEnum {  core,  context,  };

  @BuiltValueField(wireName: r'joinReason')
  SituationJoinReason? get joinReason;

  /// 116 evidence-group roll-up for this member
  @BuiltValueField(wireName: r'corroboration')
  String get corroboration;

  @BuiltValueField(wireName: r'addedAt')
  DateTime get addedAt;

  /// Actor: token id, `linker:<version>` or `analyst:<profile>`
  @BuiltValueField(wireName: r'addedBy')
  String get addedBy;

  SituationMember._();

  factory SituationMember([void updates(SituationMemberBuilder b)]) =
      _$SituationMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationMember> get serializer =>
      _$SituationMemberSerializer();
}

class _$SituationMemberSerializer
    implements PrimitiveSerializer<SituationMember> {
  @override
  final Iterable<Type> types = const [SituationMember, _$SituationMember];

  @override
  final String wireName = r'SituationMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'situationId';
    yield serializers.serialize(
      object.situationId,
      specifiedType: const FullType(String),
    );
    yield r'memberType';
    yield serializers.serialize(
      object.memberType,
      specifiedType: const FullType(SituationMemberMemberTypeEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'objectRef';
    yield serializers.serialize(
      object.objectRef,
      specifiedType: const FullType(String),
    );
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
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
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
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(SituationMemberRoleEnum),
    );
    if (object.joinReason != null) {
      yield r'joinReason';
      yield serializers.serialize(
        object.joinReason,
        specifiedType: const FullType.nullable(SituationJoinReason),
      );
    }
    yield r'corroboration';
    yield serializers.serialize(
      object.corroboration,
      specifiedType: const FullType(String),
    );
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
    SituationMember object, {
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
    required SituationMemberBuilder result,
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
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.situationId = valueDes;
          break;
        case r'memberType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SituationMemberMemberTypeEnum,
                    ),
                  )
                  as SituationMemberMemberTypeEnum;
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
        case r'objectRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.objectRef = valueDes;
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
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.severity = valueDes;
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
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationMemberRoleEnum),
                  )
                  as SituationMemberRoleEnum;
          result.role = valueDes;
          break;
        case r'joinReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SituationJoinReason),
                  )
                  as SituationJoinReason?;
          if (valueDes == null) continue;
          result.joinReason.replace(valueDes);
          break;
        case r'corroboration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.corroboration = valueDes;
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
  SituationMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationMemberBuilder();
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

/// Member type
class SituationMemberMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'intel_event')
  static const SituationMemberMemberTypeEnum intelEvent =
      _$situationMemberMemberTypeEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'finding')
  static const SituationMemberMemberTypeEnum finding =
      _$situationMemberMemberTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'alert')
  static const SituationMemberMemberTypeEnum alert =
      _$situationMemberMemberTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const SituationMemberMemberTypeEnum anomaly =
      _$situationMemberMemberTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'record')
  static const SituationMemberMemberTypeEnum record =
      _$situationMemberMemberTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const SituationMemberMemberTypeEnum investigation =
      _$situationMemberMemberTypeEnum_investigation;

  static Serializer<SituationMemberMemberTypeEnum> get serializer =>
      _$situationMemberMemberTypeEnumSerializer;

  const SituationMemberMemberTypeEnum._(String name) : super(name);

  static BuiltSet<SituationMemberMemberTypeEnum> get values =>
      _$situationMemberMemberTypeEnumValues;
  static SituationMemberMemberTypeEnum valueOf(String name) =>
      _$situationMemberMemberTypeEnumValueOf(name);
}

/// `core` members drive status and severity; `context` members do not
class SituationMemberRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'core')
  static const SituationMemberRoleEnum core = _$situationMemberRoleEnum_core;
  @BuiltValueEnumConst(wireName: r'context')
  static const SituationMemberRoleEnum context =
      _$situationMemberRoleEnum_context;

  static Serializer<SituationMemberRoleEnum> get serializer =>
      _$situationMemberRoleEnumSerializer;

  const SituationMemberRoleEnum._(String name) : super(name);

  static BuiltSet<SituationMemberRoleEnum> get values =>
      _$situationMemberRoleEnumValues;
  static SituationMemberRoleEnum valueOf(String name) =>
      _$situationMemberRoleEnumValueOf(name);
}
