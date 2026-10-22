//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/doctor_report_summary_top_finding.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report_summary.g.dart';

/// Latest doctor report summary on source health
///
/// Properties:
/// * [id] - ULID identifier
/// * [status]
/// * [topFinding]
/// * [createdAt]
@BuiltValue()
abstract class DoctorReportSummary
    implements Built<DoctorReportSummary, DoctorReportSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  DoctorReportSummaryStatusEnum get status;
  // enum statusEnum {  OK,  DEGRADED_INFO,  BROKEN,  };

  @BuiltValueField(wireName: r'topFinding')
  DoctorReportSummaryTopFinding? get topFinding;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  DoctorReportSummary._();

  factory DoctorReportSummary([void updates(DoctorReportSummaryBuilder b)]) =
      _$DoctorReportSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReportSummary> get serializer =>
      _$DoctorReportSummarySerializer();
}

class _$DoctorReportSummarySerializer
    implements PrimitiveSerializer<DoctorReportSummary> {
  @override
  final Iterable<Type> types = const [
    DoctorReportSummary,
    _$DoctorReportSummary
  ];

  @override
  final String wireName = r'DoctorReportSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReportSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DoctorReportSummaryStatusEnum),
    );
    if (object.topFinding != null) {
      yield r'topFinding';
      yield serializers.serialize(
        object.topFinding,
        specifiedType: const FullType.nullable(DoctorReportSummaryTopFinding),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportSummary object, {
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
    required DoctorReportSummaryBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DoctorReportSummaryStatusEnum),
          ) as DoctorReportSummaryStatusEnum;
          result.status = valueDes;
          break;
        case r'topFinding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(DoctorReportSummaryTopFinding),
          ) as DoctorReportSummaryTopFinding?;
          if (valueDes == null) continue;
          result.topFinding.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReportSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportSummaryBuilder();
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

class DoctorReportSummaryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OK')
  static const DoctorReportSummaryStatusEnum OK =
      _$doctorReportSummaryStatusEnum_OK;
  @BuiltValueEnumConst(wireName: r'DEGRADED_INFO')
  static const DoctorReportSummaryStatusEnum DEGRADED_INFO =
      _$doctorReportSummaryStatusEnum_DEGRADED_INFO;
  @BuiltValueEnumConst(wireName: r'BROKEN')
  static const DoctorReportSummaryStatusEnum BROKEN =
      _$doctorReportSummaryStatusEnum_BROKEN;

  static Serializer<DoctorReportSummaryStatusEnum> get serializer =>
      _$doctorReportSummaryStatusEnumSerializer;

  const DoctorReportSummaryStatusEnum._(String name) : super(name);

  static BuiltSet<DoctorReportSummaryStatusEnum> get values =>
      _$doctorReportSummaryStatusEnumValues;
  static DoctorReportSummaryStatusEnum valueOf(String name) =>
      _$doctorReportSummaryStatusEnumValueOf(name);
}
