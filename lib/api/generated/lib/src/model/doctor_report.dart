//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/structure_diff.dart';
import 'package:foresignal_api/src/model/doctor_report_probe.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/doctor_finding.dart';
import 'package:foresignal_api/src/model/doctor_report_llm.dart';
import 'package:foresignal_api/src/model/doctor_report_fixture.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report.g.dart';

/// A persisted adapter-doctor report (retained 90 days); no raw upstream body is stored
///
/// Properties:
/// * [id] - ULID identifier
/// * [sourceId]
/// * [createdAt]
/// * [trigger]
/// * [status]
/// * [findings]
/// * [diff]
/// * [probe]
/// * [fixture]
/// * [llm]
/// * [adapterVersion]
@BuiltValue()
abstract class DoctorReport
    implements Built<DoctorReport, DoctorReportBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'trigger')
  DoctorReportTriggerEnum get trigger;
  // enum triggerEnum {  MANUAL,  AUTO,  MCP,  };

  @BuiltValueField(wireName: r'status')
  DoctorReportStatusEnum get status;
  // enum statusEnum {  OK,  DEGRADED_INFO,  BROKEN,  };

  @BuiltValueField(wireName: r'findings')
  BuiltList<DoctorFinding> get findings;

  @BuiltValueField(wireName: r'diff')
  StructureDiff? get diff;

  @BuiltValueField(wireName: r'probe')
  DoctorReportProbe? get probe;

  @BuiltValueField(wireName: r'fixture')
  DoctorReportFixture? get fixture;

  @BuiltValueField(wireName: r'llm')
  DoctorReportLlm? get llm;

  @BuiltValueField(wireName: r'adapterVersion')
  String? get adapterVersion;

  DoctorReport._();

  factory DoctorReport([void updates(DoctorReportBuilder b)]) = _$DoctorReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReport> get serializer => _$DoctorReportSerializer();
}

class _$DoctorReportSerializer implements PrimitiveSerializer<DoctorReport> {
  @override
  final Iterable<Type> types = const [DoctorReport, _$DoctorReport];

  @override
  final String wireName = r'DoctorReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'trigger';
    yield serializers.serialize(
      object.trigger,
      specifiedType: const FullType(DoctorReportTriggerEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DoctorReportStatusEnum),
    );
    yield r'findings';
    yield serializers.serialize(
      object.findings,
      specifiedType: const FullType(BuiltList, [FullType(DoctorFinding)]),
    );
    if (object.diff != null) {
      yield r'diff';
      yield serializers.serialize(
        object.diff,
        specifiedType: const FullType.nullable(StructureDiff),
      );
    }
    if (object.probe != null) {
      yield r'probe';
      yield serializers.serialize(
        object.probe,
        specifiedType: const FullType.nullable(DoctorReportProbe),
      );
    }
    if (object.fixture != null) {
      yield r'fixture';
      yield serializers.serialize(
        object.fixture,
        specifiedType: const FullType.nullable(DoctorReportFixture),
      );
    }
    if (object.llm != null) {
      yield r'llm';
      yield serializers.serialize(
        object.llm,
        specifiedType: const FullType.nullable(DoctorReportLlm),
      );
    }
    if (object.adapterVersion != null) {
      yield r'adapterVersion';
      yield serializers.serialize(
        object.adapterVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReport object, {
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
    required DoctorReportBuilder result,
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
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'trigger':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DoctorReportTriggerEnum),
                  )
                  as DoctorReportTriggerEnum;
          result.trigger = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DoctorReportStatusEnum),
                  )
                  as DoctorReportStatusEnum;
          result.status = valueDes;
          break;
        case r'findings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(DoctorFinding),
                    ]),
                  )
                  as BuiltList<DoctorFinding>;
          result.findings.replace(valueDes);
          break;
        case r'diff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StructureDiff),
                  )
                  as StructureDiff?;
          if (valueDes == null) continue;
          result.diff.replace(valueDes);
          break;
        case r'probe':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DoctorReportProbe),
                  )
                  as DoctorReportProbe?;
          if (valueDes == null) continue;
          result.probe.replace(valueDes);
          break;
        case r'fixture':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DoctorReportFixture),
                  )
                  as DoctorReportFixture?;
          if (valueDes == null) continue;
          result.fixture.replace(valueDes);
          break;
        case r'llm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DoctorReportLlm),
                  )
                  as DoctorReportLlm?;
          if (valueDes == null) continue;
          result.llm.replace(valueDes);
          break;
        case r'adapterVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.adapterVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportBuilder();
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

class DoctorReportTriggerEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANUAL')
  static const DoctorReportTriggerEnum MANUAL =
      _$doctorReportTriggerEnum_MANUAL;
  @BuiltValueEnumConst(wireName: r'AUTO')
  static const DoctorReportTriggerEnum AUTO = _$doctorReportTriggerEnum_AUTO;
  @BuiltValueEnumConst(wireName: r'MCP')
  static const DoctorReportTriggerEnum MCP = _$doctorReportTriggerEnum_MCP;

  static Serializer<DoctorReportTriggerEnum> get serializer =>
      _$doctorReportTriggerEnumSerializer;

  const DoctorReportTriggerEnum._(String name) : super(name);

  static BuiltSet<DoctorReportTriggerEnum> get values =>
      _$doctorReportTriggerEnumValues;
  static DoctorReportTriggerEnum valueOf(String name) =>
      _$doctorReportTriggerEnumValueOf(name);
}

class DoctorReportStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OK')
  static const DoctorReportStatusEnum OK = _$doctorReportStatusEnum_OK;
  @BuiltValueEnumConst(wireName: r'DEGRADED_INFO')
  static const DoctorReportStatusEnum DEGRADED_INFO =
      _$doctorReportStatusEnum_DEGRADED_INFO;
  @BuiltValueEnumConst(wireName: r'BROKEN')
  static const DoctorReportStatusEnum BROKEN = _$doctorReportStatusEnum_BROKEN;

  static Serializer<DoctorReportStatusEnum> get serializer =>
      _$doctorReportStatusEnumSerializer;

  const DoctorReportStatusEnum._(String name) : super(name);

  static BuiltSet<DoctorReportStatusEnum> get values =>
      _$doctorReportStatusEnumValues;
  static DoctorReportStatusEnum valueOf(String name) =>
      _$doctorReportStatusEnumValueOf(name);
}
