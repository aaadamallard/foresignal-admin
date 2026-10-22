//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/cycle_run_roles_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_packet.dart';
import 'package:foresignal_api/src/model/maintenance_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_run.g.dart';

/// One run of an analysis cycle or an on-demand situation assessment
///
/// Properties:
/// * [id] - ULID identifier
/// * [cycleId] - ULID identifier
/// * [situationId] - ULID identifier
/// * [cadence]
/// * [trigger]
/// * [status]
/// * [periodStart]
/// * [periodEnd]
/// * [previousRunId] - ULID identifier
/// * [startedAt]
/// * [finishedAt]
/// * [packet]
/// * [roles]
/// * [tokensUsed]
/// * [assessmentId] - ULID identifier
/// * [maintenance]
/// * [manifestId] - ULID identifier
/// * [warnings]
/// * [error]
@BuiltValue()
abstract class CycleRun implements Built<CycleRun, CycleRunBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'cycleId')
  String? get cycleId;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'cadence')
  CycleRunCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  on-demand,  };

  @BuiltValueField(wireName: r'trigger')
  CycleRunTriggerEnum get trigger;
  // enum triggerEnum {  schedule,  missed,  manual,  situation,  };

  @BuiltValueField(wireName: r'status')
  CycleRunStatusEnum get status;
  // enum statusEnum {  queued,  running,  ok,  partial,  digest-only,  failed,  };

  @BuiltValueField(wireName: r'periodStart')
  DateTime get periodStart;

  @BuiltValueField(wireName: r'periodEnd')
  DateTime get periodEnd;

  /// ULID identifier
  @BuiltValueField(wireName: r'previousRunId')
  String? get previousRunId;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'packet')
  CyclePacket? get packet;

  @BuiltValueField(wireName: r'roles')
  BuiltList<CycleRunRolesInner>? get roles;

  @BuiltValueField(wireName: r'tokensUsed')
  int? get tokensUsed;

  /// ULID identifier
  @BuiltValueField(wireName: r'assessmentId')
  String? get assessmentId;

  @BuiltValueField(wireName: r'maintenance')
  MaintenanceRun? get maintenance;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'error')
  String? get error;

  CycleRun._();

  factory CycleRun([void updates(CycleRunBuilder b)]) = _$CycleRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CycleRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CycleRun> get serializer => _$CycleRunSerializer();
}

class _$CycleRunSerializer implements PrimitiveSerializer<CycleRun> {
  @override
  final Iterable<Type> types = const [CycleRun, _$CycleRun];

  @override
  final String wireName = r'CycleRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CycleRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.cycleId != null) {
      yield r'cycleId';
      yield serializers.serialize(
        object.cycleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(CycleRunCadenceEnum),
    );
    yield r'trigger';
    yield serializers.serialize(
      object.trigger,
      specifiedType: const FullType(CycleRunTriggerEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(CycleRunStatusEnum),
    );
    yield r'periodStart';
    yield serializers.serialize(
      object.periodStart,
      specifiedType: const FullType(DateTime),
    );
    yield r'periodEnd';
    yield serializers.serialize(
      object.periodEnd,
      specifiedType: const FullType(DateTime),
    );
    if (object.previousRunId != null) {
      yield r'previousRunId';
      yield serializers.serialize(
        object.previousRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.packet != null) {
      yield r'packet';
      yield serializers.serialize(
        object.packet,
        specifiedType: const FullType.nullable(CyclePacket),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType:
            const FullType(BuiltList, [FullType(CycleRunRolesInner)]),
      );
    }
    if (object.tokensUsed != null) {
      yield r'tokensUsed';
      yield serializers.serialize(
        object.tokensUsed,
        specifiedType: const FullType(int),
      );
    }
    if (object.assessmentId != null) {
      yield r'assessmentId';
      yield serializers.serialize(
        object.assessmentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maintenance != null) {
      yield r'maintenance';
      yield serializers.serialize(
        object.maintenance,
        specifiedType: const FullType.nullable(MaintenanceRun),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CycleRun object, {
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
    required CycleRunBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'cycleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cycleId = valueDes;
          break;
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'cadence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CycleRunCadenceEnum),
          ) as CycleRunCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'trigger':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CycleRunTriggerEnum),
          ) as CycleRunTriggerEnum;
          result.trigger = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CycleRunStatusEnum),
          ) as CycleRunStatusEnum;
          result.status = valueDes;
          break;
        case r'periodStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.periodStart = valueDes;
          break;
        case r'periodEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.periodEnd = valueDes;
          break;
        case r'previousRunId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousRunId = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'packet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CyclePacket),
          ) as CyclePacket?;
          if (valueDes == null) continue;
          result.packet.replace(valueDes);
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CycleRunRolesInner)]),
          ) as BuiltList<CycleRunRolesInner>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'tokensUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tokensUsed = valueDes;
          break;
        case r'assessmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assessmentId = valueDes;
          break;
        case r'maintenance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MaintenanceRun),
          ) as MaintenanceRun?;
          if (valueDes == null) continue;
          result.maintenance.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CycleRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CycleRunBuilder();
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

class CycleRunCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const CycleRunCadenceEnum daily = _$cycleRunCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const CycleRunCadenceEnum weekly = _$cycleRunCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const CycleRunCadenceEnum monthly = _$cycleRunCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'on-demand')
  static const CycleRunCadenceEnum onDemand = _$cycleRunCadenceEnum_onDemand;

  static Serializer<CycleRunCadenceEnum> get serializer =>
      _$cycleRunCadenceEnumSerializer;

  const CycleRunCadenceEnum._(String name) : super(name);

  static BuiltSet<CycleRunCadenceEnum> get values =>
      _$cycleRunCadenceEnumValues;
  static CycleRunCadenceEnum valueOf(String name) =>
      _$cycleRunCadenceEnumValueOf(name);
}

class CycleRunTriggerEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'schedule')
  static const CycleRunTriggerEnum schedule = _$cycleRunTriggerEnum_schedule;
  @BuiltValueEnumConst(wireName: r'missed')
  static const CycleRunTriggerEnum missed = _$cycleRunTriggerEnum_missed;
  @BuiltValueEnumConst(wireName: r'manual')
  static const CycleRunTriggerEnum manual = _$cycleRunTriggerEnum_manual;
  @BuiltValueEnumConst(wireName: r'situation')
  static const CycleRunTriggerEnum situation = _$cycleRunTriggerEnum_situation;

  static Serializer<CycleRunTriggerEnum> get serializer =>
      _$cycleRunTriggerEnumSerializer;

  const CycleRunTriggerEnum._(String name) : super(name);

  static BuiltSet<CycleRunTriggerEnum> get values =>
      _$cycleRunTriggerEnumValues;
  static CycleRunTriggerEnum valueOf(String name) =>
      _$cycleRunTriggerEnumValueOf(name);
}

class CycleRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const CycleRunStatusEnum queued = _$cycleRunStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const CycleRunStatusEnum running = _$cycleRunStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'ok')
  static const CycleRunStatusEnum ok = _$cycleRunStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'partial')
  static const CycleRunStatusEnum partial = _$cycleRunStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'digest-only')
  static const CycleRunStatusEnum digestOnly = _$cycleRunStatusEnum_digestOnly;
  @BuiltValueEnumConst(wireName: r'failed')
  static const CycleRunStatusEnum failed = _$cycleRunStatusEnum_failed;

  static Serializer<CycleRunStatusEnum> get serializer =>
      _$cycleRunStatusEnumSerializer;

  const CycleRunStatusEnum._(String name) : super(name);

  static BuiltSet<CycleRunStatusEnum> get values => _$cycleRunStatusEnumValues;
  static CycleRunStatusEnum valueOf(String name) =>
      _$cycleRunStatusEnumValueOf(name);
}
